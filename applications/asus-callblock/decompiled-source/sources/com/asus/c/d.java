package com.asus.c;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.a.b;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.vcard.VCardConfig;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/asus/c/d.class */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static final String f2549b = d.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private Activity f2550a;
    private List<Map<String, Object>> d;
    private AlertDialog c = null;
    private String e = BuildConfig.FLAVOR;
    private String f = BuildConfig.FLAVOR;
    private SpannableString g = null;
    private AlertDialog h = null;
    private View.OnClickListener i = new View.OnClickListener() { // from class: com.asus.c.d.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i;
            switch (view.getId()) {
                case 2131296344:
                    i = 0;
                    break;
                case 2131296345:
                    i = 1;
                    break;
                case 2131296346:
                    i = 2;
                    break;
                case 2131296347:
                    i = 3;
                    break;
                default:
                    i = 0;
                    break;
            }
            String obj = ((Map) d.this.d.get(i)).get("PKG_NAME").toString();
            if (obj.equals("com.facebook.katana")) {
                d.this.a(d.this.f2550a.getResources().getString(2131755135));
            }
            String obj2 = ((Map) d.this.d.get(i)).get("INFO_NAME").toString();
            if (!obj.equalsIgnoreCase(BuildConfig.FLAVOR) || !obj2.equalsIgnoreCase(BuildConfig.FLAVOR)) {
                b.a();
                b.a(16, d.this.f2550a, "ShareVia_Share", "ShareVia_Send", obj, null);
                b.a();
                b.a(16, d.this.f2550a, "Click App", true);
                Intent intent = new Intent();
                intent.putExtra("android.intent.extra.SUBJECT", "subject");
                intent.putExtra("android.intent.extra.TEXT", d.this.e);
                intent.setType("text/plain");
                intent.setAction("android.intent.action.SEND");
                intent.setFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
                intent.setComponent(new ComponentName(obj, obj2));
                try {
                    d.this.f2550a.startActivity(intent);
                } catch (ActivityNotFoundException e) {
                    Log.d(d.f2549b, "ActivityNotFoundException");
                }
                d.this.c.dismiss();
                return;
            }
            d.this.c.dismiss();
            d.this.a(d.this.e, "other button");
        }
    };
    private final int j = 4;
    private final String k = "text/plain";

    public d(Activity activity) {
        this.f2550a = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        this.g = new SpannableString(str);
        this.g.setSpan(new StyleSpan(1), 0, this.g.length(), 33);
        this.e = this.f2550a.getResources().getString(2131756124) + "\n" + ((Object) this.g) + "\n\n";
        if (PhoneCapabilityTester.isCNSku()) {
            this.e += this.f2550a.getResources().getString(2131755132);
        } else {
            this.e += this.f2550a.getResources().getString(2131755133);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        b.a();
        b.a(16, this.f2550a, "ShareVia_Statistics", "ShareVia_More_Come_From", str2, null);
        b.a();
        b.a(16, this.f2550a, "Display More", true);
        this.h = new a(this.f2550a, str, "Tool Bar").create();
        this.h.show();
    }

    private int b(String str) {
        int i = 0;
        i = 0;
        String[] stringArray = this.f2550a.getResources().getStringArray(2130837525);
        String[] stringArray2 = this.f2550a.getResources().getStringArray(2130837526);
        if (PhoneCapabilityTester.isCNSku()) {
            while (i < stringArray2.length) {
                if (str.equalsIgnoreCase(stringArray2[i])) {
                    break;
                }
                i++;
            }
            i = -1;
        } else {
            while (i < stringArray.length) {
                if (str.equalsIgnoreCase(stringArray[i])) {
                    break;
                }
                i++;
            }
            i = -1;
        }
        return i;
    }

    private List<Map<String, Object>> c() {
        PackageManager packageManager = this.f2550a.getPackageManager();
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.SEND").setType("text/plain"), 0);
        int length = this.f2550a.getResources().getStringArray(2130837525).length;
        if (PhoneCapabilityTester.isCNSku()) {
            length = this.f2550a.getResources().getStringArray(2130837526).length;
        }
        Drawable[] drawableArr = new Drawable[length];
        String[] strArr = new String[length];
        String[] strArr2 = new String[length];
        String[] strArr3 = new String[length];
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            int b2 = b(resolveInfo.activityInfo.packageName);
            b.a();
            b.a(16, this.f2550a, "ShareVia_Statistics", "ShareVia_All_Installed_Send_App", resolveInfo.activityInfo.packageName, null);
            if (b2 == length) {
                break;
            }
            Drawable loadIcon = resolveInfo.loadIcon(packageManager);
            String charSequence = resolveInfo.loadLabel(packageManager).toString();
            if (b2 != -1 && !charSequence.equalsIgnoreCase("LINE Keep") && !charSequence.equalsIgnoreCase("Direct Message")) {
                drawableArr[b2] = loadIcon;
                strArr[b2] = charSequence;
                strArr2[b2] = resolveInfo.activityInfo.packageName;
                strArr3[b2] = resolveInfo.activityInfo.name;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < length; i++) {
            if (!(drawableArr[i] == null || strArr[i] == null || arrayList.size() >= 4)) {
                HashMap hashMap = new HashMap();
                hashMap.put("IMAGE", drawableArr[i]);
                hashMap.put("TEXT", strArr[i]);
                hashMap.put("PKG_NAME", strArr2[i]);
                hashMap.put("INFO_NAME", strArr3[i]);
                arrayList.add(hashMap);
            }
        }
        if (arrayList.size() == 4) {
            arrayList.remove(3);
        }
        HashMap hashMap2 = new HashMap();
        hashMap2.put("IMAGE", this.f2550a.getResources().getDrawable(2131165479));
        hashMap2.put("PKG_NAME", BuildConfig.FLAVOR);
        hashMap2.put("INFO_NAME", BuildConfig.FLAVOR);
        arrayList.add(hashMap2);
        return arrayList;
    }

    public final void a() {
        if (this.c == null || !this.c.isShowing()) {
            this.f = this.f2550a.getResources().getString(2131756122);
            if (!this.f.contains("hashtag")) {
                this.f += "(Hashtag)";
            }
            a(this.f2550a.getResources().getString(2131755134));
            this.d = c();
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f2550a);
            builder.setTitle(2131756123);
            int[] iArr = {2131296344, 2131296345, 2131296346, 2131296347};
            View inflate = this.f2550a.getLayoutInflater().inflate(2131427502, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(2131297281);
            textView.setText(this.f);
            textView.append("\n");
            textView.append(this.g);
            View findViewById = inflate.findViewById(2131297288);
            for (int i = 0; i < this.d.size(); i++) {
                View findViewById2 = findViewById.findViewById(iArr[i]);
                ((ImageView) findViewById2.findViewById(2131296342)).setImageDrawable((Drawable) this.d.get(i).get("IMAGE"));
                findViewById2.setOnClickListener(this.i);
            }
            switch (this.d.size()) {
                case 2:
                    findViewById.findViewById(iArr[2]).setVisibility(8);
                case 3:
                    findViewById.findViewById(iArr[3]).setVisibility(8);
                    break;
            }
            builder.setView(inflate);
            this.c = builder.create();
            this.c.setCanceledOnTouchOutside(false);
            if (this.d.size() > 1) {
                b.a();
                b.a(16, this.f2550a, "Display Share Dialog", true);
                this.c.show();
                return;
            }
            a(this.e, "show directly");
        }
    }
}
