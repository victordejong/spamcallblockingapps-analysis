package p459j.p460a.p582w0.p583a5;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.ads.AdError;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.share.FacebookShareActivity;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
/* renamed from: j.a.w0.a5.d */
/* loaded from: classes3-dex2jar.jar:j/a/w0/a5/d.class */
public class C13895d {

    /* renamed from: a */
    public static final String[] f31221a = {"com.whatsapp", "jp.naver.line.android", "com.facebook.katana", "com.facebook.orca", "com.twitter.android", "com.kakao.talk", "com.nhn.android.band"};

    /* renamed from: b */
    public static final String[] f31222b = {"com.kakao.talk", "com.facebook.katana", "jp.naver.line.android", "com.facebook.orca", "com.whatsapp", "com.twitter.android", "com.nhn.android.band"};

    /* renamed from: c */
    public static final String[] f31223c = {"com.facebook.katana", "jp.naver.line.android", "com.facebook.orca", "com.whatsapp", "com.twitter.android", "com.kakao.talk", "com.nhn.android.band"};

    /* renamed from: d */
    public static final String[] f31224d = {"com.whatsapp", "jp.naver.line.android", "com.facebook.orca", "com.twitter.android", "com.kakao.talk", "com.nhn.android.band"};

    /* renamed from: e */
    public static final String[] f31225e = {"com.kakao.talk", "jp.naver.line.android", "com.facebook.orca", "com.whatsapp", "com.twitter.android", "com.nhn.android.band"};

    /* renamed from: j.a.w0.a5.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a5/d$a.class */
    public static final class View$OnClickListenerC13896a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f31226a;

        /* renamed from: b */
        public final /* synthetic */ Context f31227b;

        /* renamed from: c */
        public final /* synthetic */ String f31228c;

        /* renamed from: d */
        public final /* synthetic */ DialogC14618f f31229d;

        public View$OnClickListenerC13896a(boolean z, Context context, String str, DialogC14618f fVar) {
            this.f31226a = z;
            this.f31227b = context;
            this.f31228c = str;
            this.f31229d = fVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = (String) view.getTag();
            if (str == null) {
                return;
            }
            if (!str.equalsIgnoreCase("com.facebook.katana") || !this.f31226a) {
                try {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("text/plain");
                    intent.putExtra("android.intent.extra.TEXT", this.f31228c);
                    intent.setPackage(str);
                    intent.setFlags(268435456);
                    this.f31227b.startActivity(intent);
                } catch (Exception e) {
                    C14687h.m861a(this.f31227b, String.format(C13895d.m3123a((int) R$string.error_code_client), e.getClass().getSimpleName()), 1).m858c();
                    e.printStackTrace();
                }
                this.f31229d.dismiss();
                return;
            }
            Intent intent2 = new Intent(this.f31227b, FacebookShareActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("mCaption", this.f31228c);
            bundle.putBoolean("share_image", true);
            bundle.putBoolean("can_edit", true);
            intent2.putExtras(bundle);
            intent2.setFlags(268435456);
            this.f31227b.startActivity(intent2);
            this.f31229d.dismiss();
        }
    }

    /* renamed from: j.a.w0.a5.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a5/d$b.class */
    public static final class DialogInterface$OnClickListenerC13897b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f31230a;

        /* renamed from: b */
        public final /* synthetic */ String f31231b;

        public DialogInterface$OnClickListenerC13897b(Context context, String str) {
            this.f31230a = context;
            this.f31231b = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C13895d.m3113b(this.f31230a, this.f31231b);
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.w0.a5.d$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a5/d$c.class */
    public static final class DialogInterface$OnDismissListenerC13898c implements DialogInterface.OnDismissListener {
        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
        }
    }

    /* renamed from: j.a.w0.a5.d$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a5/d$d.class */
    public static final class View$OnClickListenerC13899d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f31232a;

        /* renamed from: b */
        public final /* synthetic */ Context f31233b;

        /* renamed from: c */
        public final /* synthetic */ DialogC14618f f31234c;

        public View$OnClickListenerC13899d(String str, Context context, DialogC14618f fVar) {
            this.f31232a = str;
            this.f31233b = context;
            this.f31234c = fVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = (String) view.getTag();
            if (str != null) {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", this.f31232a);
                intent.setPackage(str);
                intent.setFlags(268435456);
                this.f31233b.startActivity(intent);
                this.f31234c.setOnDismissListener(null);
                this.f31234c.dismiss();
            }
        }
    }

    /* renamed from: j.a.w0.a5.d$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a5/d$e.class */
    public static final class DialogInterface$OnClickListenerC13900e implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f31235a;

        /* renamed from: b */
        public final /* synthetic */ String f31236b;

        /* renamed from: c */
        public final /* synthetic */ Context f31237c;

        public DialogInterface$OnClickListenerC13900e(String str, String str2, Context context) {
            this.f31235a = str;
            this.f31236b = str2;
            this.f31237c = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (this.f31235a != "custom_spam" || TextUtils.isEmpty(this.f31236b)) {
                C13895d.m3114b(this.f31237c);
            } else {
                C13895d.m3113b(this.f31237c, this.f31236b);
            }
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.w0.a5.d$f */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a5/d$f.class */
    public static final class DialogInterface$OnDismissListenerC13901f implements DialogInterface.OnDismissListener {
        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
        }
    }

    /* renamed from: j.a.w0.a5.d$g */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a5/d$g.class */
    public static final class View$OnClickListenerC13902g implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f31238a;

        /* renamed from: b */
        public final /* synthetic */ String f31239b;

        /* renamed from: c */
        public final /* synthetic */ String f31240c;

        /* renamed from: d */
        public final /* synthetic */ DialogC14618f f31241d;

        public View$OnClickListenerC13902g(Context context, String str, String str2, DialogC14618f fVar) {
            this.f31238a = context;
            this.f31239b = str;
            this.f31240c = str2;
            this.f31241d = fVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = (String) view.getTag();
            if (str != null) {
                Intent intent = new Intent("android.intent.action.SEND");
                if (str.equalsIgnoreCase("com.instagram.android")) {
                    intent.setType("image/png");
                    intent.putExtra("android.intent.extra.STREAM", Uri.parse("android.resource://" + this.f31238a.getPackageName() + "/" + R$drawable.whoscall_share_photo));
                } else {
                    intent.setType("text/plain");
                    String str2 = this.f31239b;
                    if (str2 == "spam") {
                        intent.putExtra("android.intent.extra.TEXT", C13895d.m3123a((int) R$string.sharedialog_promote_message));
                    } else if (str2 != "custom_spam" || TextUtils.isEmpty(this.f31240c)) {
                        intent.putExtra("android.intent.extra.TEXT", C13895d.m3123a((int) R$string.aboutus_promote_message));
                    } else {
                        intent.putExtra("android.intent.extra.TEXT", this.f31240c);
                    }
                }
                intent.setPackage(str);
                intent.setFlags(268435456);
                try {
                    this.f31238a.startActivity(intent);
                } catch (ActivityNotFoundException e) {
                }
                this.f31241d.dismiss();
            }
        }
    }

    /* renamed from: j.a.w0.a5.d$h */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a5/d$h.class */
    public static final class DialogInterface$OnClickListenerC13903h implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f31242a;

        /* renamed from: b */
        public final /* synthetic */ String f31243b;

        public DialogInterface$OnClickListenerC13903h(Context context, String str) {
            this.f31242a = context;
            this.f31243b = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C13895d.m3113b(this.f31242a, this.f31243b);
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.w0.a5.d$i */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a5/d$i.class */
    public static final class DialogInterface$OnDismissListenerC13904i implements DialogInterface.OnDismissListener {
        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
        }
    }

    /* renamed from: a */
    public static int m3118a(PackageInfo packageInfo) {
        return TextUtils.equals("com.nhn.android.band", packageInfo.packageName) ? R$drawable.ic_share_band : TextUtils.equals("com.facebook.katana", packageInfo.packageName) ? R$drawable.ic_share_fb : TextUtils.equals("com.instagram.android", packageInfo.packageName) ? R$drawable.ic_share_insta : TextUtils.equals("com.kakao.talk", packageInfo.packageName) ? R$drawable.ic_share_kakao : TextUtils.equals("jp.naver.line.android", packageInfo.packageName) ? R$drawable.ic_share_line : TextUtils.equals("com.twitter.android", packageInfo.packageName) ? R$drawable.ic_share_twitter : TextUtils.equals("com.whatsapp", packageInfo.packageName) ? R$drawable.ic_share_what : TextUtils.equals("com.facebook.orca", packageInfo.packageName) ? R$drawable.ic_share_messenger : -1;
    }

    /* renamed from: a */
    public static PackageInfo m3116a(HashMap<String, PackageInfo> hashMap, String str) {
        if (C14017g4.m2830F()) {
            if (hashMap.containsKey("jp.naver.line.android")) {
                return hashMap.get("jp.naver.line.android");
            }
            if (hashMap.containsKey("com.facebook.orca")) {
                return hashMap.get("com.facebook.orca");
            }
            if (hashMap.containsKey("com.facebook.katana")) {
                return hashMap.get("com.facebook.katana");
            }
            return null;
        } else if (C14017g4.m2831E()) {
            if (hashMap.containsKey("com.nhn.android.band")) {
                return hashMap.get("com.nhn.android.band");
            }
            if (hashMap.containsKey("com.kakao.talk")) {
                return hashMap.get("com.kakao.talk");
            }
            if (hashMap.containsKey("com.facebook.katana")) {
                return hashMap.get("com.facebook.katana");
            }
            return null;
        } else if (C14017g4.m2832D()) {
            if (hashMap.containsKey("jp.naver.line.android")) {
                return hashMap.get("jp.naver.line.android");
            }
            if (hashMap.containsKey("com.twitter.android")) {
                return hashMap.get("com.twitter.android");
            }
            if (hashMap.containsKey("com.facebook.katana")) {
                return hashMap.get("com.facebook.katana");
            }
            return null;
        } else if (C14017g4.m2829G()) {
            if (hashMap.containsKey("jp.naver.line.android")) {
                return hashMap.get("jp.naver.line.android");
            }
            if (hashMap.containsKey("com.facebook.orca")) {
                return hashMap.get("com.facebook.orca");
            }
            if (hashMap.containsKey("com.facebook.katana")) {
                return hashMap.get("com.facebook.katana");
            }
            return null;
        } else if (C14017g4.m2835A()) {
            if (hashMap.containsKey("com.whatsapp")) {
                return hashMap.get("com.whatsapp");
            }
            if (hashMap.containsKey("com.facebook.orca")) {
                return hashMap.get("com.facebook.orca");
            }
            if (hashMap.containsKey("com.facebook.katana")) {
                return hashMap.get("com.facebook.katana");
            }
            return null;
        } else if (C14017g4.m2834B()) {
            if (hashMap.containsKey("com.whatsapp")) {
                return hashMap.get("com.whatsapp");
            }
            if (hashMap.containsKey("com.facebook.orca")) {
                return hashMap.get("com.facebook.orca");
            }
            if (hashMap.containsKey("com.facebook.katana")) {
                return hashMap.get("com.facebook.katana");
            }
            return null;
        } else if (C14017g4.m2828H()) {
            if (hashMap.containsKey("com.facebook.orca")) {
                return hashMap.get("com.facebook.orca");
            }
            if (hashMap.containsKey("com.twitter.android")) {
                return hashMap.get("com.twitter.android");
            }
            if (hashMap.containsKey("com.facebook.katana")) {
                return hashMap.get("com.facebook.katana");
            }
            return null;
        } else if (hashMap.containsKey("com.facebook.orca")) {
            return hashMap.get("com.facebook.orca");
        } else {
            if (hashMap.containsKey("com.whatsapp")) {
                return hashMap.get("com.whatsapp");
            }
            if (hashMap.containsKey("com.facebook.katana")) {
                return hashMap.get("com.facebook.katana");
            }
            return null;
        }
    }

    /* renamed from: a */
    public static PackageInfo m3115a(HashMap<String, PackageInfo> hashMap, String[] strArr) {
        for (String str : strArr) {
            if (hashMap.get(str) != null) {
                PackageInfo packageInfo = hashMap.get(str);
                hashMap.remove(str);
                return packageInfo;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static String m3123a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public static String m3120a(Context context, String str, String str2, String str3) {
        String str4 = str;
        if (!C14217x3.m2160b(str2)) {
            str4 = str + "\n" + String.format(m3123a((int) R$string.callend_share_content_number), str2);
        }
        String str5 = str4;
        if (!C14217x3.m2160b(str3)) {
            str5 = str4 + "\n" + String.format(m3123a((int) R$string.callend_share_content_address), str3);
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(str5);
            sb.append("\n");
            sb.append(String.format(m3123a((int) R$string.callend_share_content_description), "http://whoscall.com/apps/share/numbers/" + URLEncoder.encode(C14108o4.m2474l(str2), "UTF-8")));
            sb.append("?country=");
            sb.append(C14017g4.m2810n().toUpperCase(Locale.US));
            str5 = sb.toString();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return str5;
    }

    /* renamed from: a */
    public static ArrayList<PackageInfo> m3121a(Context context, String str) {
        ArrayList<PackageInfo> arrayList = new ArrayList<>();
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        HashMap hashMap = new HashMap();
        for (PackageInfo packageInfo : installedPackages) {
            if (m3117a(packageInfo.packageName, str)) {
                hashMap.put(packageInfo.packageName, packageInfo);
            }
        }
        if (hashMap.size() > 0) {
            int size = hashMap.size();
            for (int i = 0; i < size; i++) {
                PackageInfo a = m3116a(hashMap, str);
                if (a != null) {
                    hashMap.remove(a.packageName);
                    arrayList.add(a);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m3122a(Context context) {
        PackageInfo a;
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(new ContextThemeWrapper(context, 2131952205));
        View inflate = LayoutInflater.from(context).inflate(R$layout.dialog_share_app, (ViewGroup) null);
        fVar.m986a(inflate);
        fVar.m976c(m3123a((int) R$string.callend_share_dialog_title));
        r0[0].setVisibility(4);
        r0[1].setVisibility(4);
        View[] viewArr = {inflate.findViewById(R$id.rl_shareview_1), inflate.findViewById(R$id.rl_shareview_2), inflate.findViewById(R$id.rl_shareview_3)};
        viewArr[2].setVisibility(4);
        ImageView imageView = (ImageView) inflate.findViewById(R$id.iv_shareicon_1);
        ImageView imageView2 = (ImageView) inflate.findViewById(R$id.iv_shareicon_2);
        ImageView imageView3 = (ImageView) inflate.findViewById(R$id.iv_shareicon_3);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_sharetext_1);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_sharetext_2);
        TextView textView3 = (TextView) inflate.findViewById(R$id.tv_sharetext_3);
        PackageManager packageManager = context.getPackageManager();
        List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
        HashMap hashMap = new HashMap();
        String[] strArr = C14017g4.m2831E() ? f31225e : f31224d;
        for (PackageInfo packageInfo : installedPackages) {
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (strArr[i].equalsIgnoreCase(packageInfo.packageName)) {
                    hashMap.put(packageInfo.packageName, packageInfo);
                    break;
                } else {
                    i++;
                }
            }
        }
        String a2 = m3123a((int) R$string.share_notification_callwasblocked_context);
        if (hashMap.size() > 0) {
            fVar.m978b(m3123a((int) R$string.sharedialog_more), new DialogInterface$OnClickListenerC13897b(context, a2));
            DialogC14618f a3 = fVar.m989a();
            if (!(context instanceof Activity)) {
                a3.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
                C13878a3.m3244a(a3);
            } else {
                a3.show();
            }
            a3.setOnDismissListener(new DialogInterface$OnDismissListenerC13898c());
            a3.show();
            for (int i2 = 0; i2 < 3 && (a = m3115a(hashMap, strArr)) != null; i2++) {
                new ImageView[]{imageView, imageView2, imageView3}[i2].setImageDrawable(a.applicationInfo.loadIcon(packageManager));
                new TextView[]{textView, textView2, textView3}[i2].setText(a.applicationInfo.loadLabel(packageManager));
                viewArr[i2].setVisibility(0);
                viewArr[i2].setTag(a.packageName);
                viewArr[i2].setOnClickListener(new View$OnClickListenerC13899d(a2, context, a3));
            }
            return;
        }
        m3113b(context, a2);
    }

    /* renamed from: a */
    public static void m3119a(Context context, String str, String str2, String str3, boolean z, boolean z2) {
        PackageInfo a;
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(new ContextThemeWrapper(context, 2131952205));
        View inflate = LayoutInflater.from(context).inflate(R$layout.dialog_share_app, (ViewGroup) null);
        fVar.m986a(inflate);
        fVar.m976c(m3123a((int) R$string.callend_share_dialog_title));
        r0[0].setVisibility(4);
        r0[1].setVisibility(4);
        View[] viewArr = {inflate.findViewById(R$id.rl_shareview_1), inflate.findViewById(R$id.rl_shareview_2), inflate.findViewById(R$id.rl_shareview_3)};
        viewArr[2].setVisibility(4);
        ImageView imageView = (ImageView) inflate.findViewById(R$id.iv_shareicon_1);
        ImageView imageView2 = (ImageView) inflate.findViewById(R$id.iv_shareicon_2);
        ImageView imageView3 = (ImageView) inflate.findViewById(R$id.iv_shareicon_3);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_sharetext_1);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_sharetext_2);
        TextView textView3 = (TextView) inflate.findViewById(R$id.tv_sharetext_3);
        PackageManager packageManager = context.getPackageManager();
        List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
        HashMap hashMap = new HashMap();
        String[] strArr = z2 ? C14017g4.m2830F() ? f31223c : C14017g4.m2831E() ? f31222b : f31221a : C14017g4.m2831E() ? f31225e : f31224d;
        for (PackageInfo packageInfo : installedPackages) {
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (strArr[i].equalsIgnoreCase(packageInfo.packageName)) {
                    hashMap.put(packageInfo.packageName, packageInfo);
                    break;
                } else {
                    i++;
                }
            }
        }
        String a2 = m3120a(context, str, str2, str3);
        if (hashMap.size() > 0) {
            fVar.m978b(m3123a((int) R$string.sharedialog_more), new DialogInterface$OnClickListenerC13903h(context, a2));
            DialogC14618f a3 = fVar.m989a();
            if (!(context instanceof Activity)) {
                a3.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
                C13878a3.m3244a(a3);
            } else {
                a3.show();
            }
            a3.setOnDismissListener(new DialogInterface$OnDismissListenerC13904i());
            int i2 = 0;
            while (i2 < 3 && (a = m3115a(hashMap, strArr)) != null) {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", a2);
                intent.setPackage(a.packageName);
                intent.setFlags(268435456);
                if (!C14217x3.m2189a(context, intent)) {
                    i2--;
                } else {
                    new ImageView[]{imageView, imageView2, imageView3}[i2].setImageDrawable(a.applicationInfo.loadIcon(packageManager));
                    new TextView[]{textView, textView2, textView3}[i2].setText(a.applicationInfo.loadLabel(packageManager));
                    viewArr[i2].setVisibility(0);
                    viewArr[i2].setTag(a.packageName);
                    viewArr[i2].setOnClickListener(new View$OnClickListenerC13896a(z2, context, a2, a3));
                }
                i2++;
            }
            return;
        }
        m3113b(context, a2);
    }

    /* renamed from: a */
    public static boolean m3117a(String str, String str2) {
        return C14017g4.m2830F() ? str.equalsIgnoreCase("jp.naver.line.android") || str.equalsIgnoreCase("com.facebook.orca") || str.equalsIgnoreCase("com.facebook.katana") : C14017g4.m2831E() ? str.equalsIgnoreCase("com.nhn.android.band") || str.equalsIgnoreCase("com.kakao.talk") || str.equalsIgnoreCase("com.facebook.katana") : C14017g4.m2832D() ? str.equalsIgnoreCase("jp.naver.line.android") || str.equalsIgnoreCase("com.twitter.android") || str.equalsIgnoreCase("com.facebook.katana") : C14017g4.m2829G() ? str.equalsIgnoreCase("jp.naver.line.android") || str.equalsIgnoreCase("com.facebook.orca") || str.equalsIgnoreCase("com.facebook.katana") : C14017g4.m2835A() ? str.equalsIgnoreCase("com.whatsapp") || str.equalsIgnoreCase("com.facebook.orca") || str.equalsIgnoreCase("com.facebook.katana") : C14017g4.m2834B() ? str.equalsIgnoreCase("com.whatsapp") || str.equalsIgnoreCase("com.facebook.orca") || str.equalsIgnoreCase("com.facebook.katana") : C14017g4.m2828H() ? str.equalsIgnoreCase("com.facebook.orca") || str.equalsIgnoreCase("com.twitter.android") || str.equalsIgnoreCase("com.facebook.katana") : str.equalsIgnoreCase("com.facebook.orca") || str.equalsIgnoreCase("com.whatsapp") || str.equalsIgnoreCase("com.facebook.katana");
    }

    /* renamed from: b */
    public static void m3114b(Context context) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", m3123a((int) R$string.aboutus_promote_message));
        Intent createChooser = Intent.createChooser(intent, m3123a((int) R$string.sharedialog_more_title));
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            createChooser.setFlags(268435456);
            context.startActivity(createChooser);
        }
    }

    /* renamed from: b */
    public static void m3113b(Context context, String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str);
        Intent createChooser = Intent.createChooser(intent, m3123a((int) R$string.sharedialog_more_title));
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            createChooser.setFlags(268435456);
            context.startActivity(createChooser);
        }
    }

    /* renamed from: b */
    public static void m3112b(Context context, String str, String str2, String str3) {
        try {
            ArrayList<PackageInfo> a = m3121a(context, C14017g4.m2810n());
            if (a.size() > 0) {
                DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(context);
                View inflate = LayoutInflater.from(context).inflate(R$layout.dialog_share_app, (ViewGroup) null);
                fVar.m986a(inflate);
                if (TextUtils.isEmpty(str2)) {
                    fVar.m976c(m3123a((int) R$string.sharedialog_title2));
                } else {
                    fVar.m976c(str2);
                }
                r0[0].setVisibility(4);
                r0[1].setVisibility(4);
                View[] viewArr = {inflate.findViewById(R$id.rl_shareview_1), inflate.findViewById(R$id.rl_shareview_2), inflate.findViewById(R$id.rl_shareview_3)};
                viewArr[2].setVisibility(4);
                ImageView imageView = (ImageView) inflate.findViewById(R$id.iv_shareicon_1);
                ImageView imageView2 = (ImageView) inflate.findViewById(R$id.iv_shareicon_2);
                ImageView imageView3 = (ImageView) inflate.findViewById(R$id.iv_shareicon_3);
                TextView textView = (TextView) inflate.findViewById(R$id.tv_sharetext_1);
                TextView textView2 = (TextView) inflate.findViewById(R$id.tv_sharetext_2);
                TextView textView3 = (TextView) inflate.findViewById(R$id.tv_sharetext_3);
                fVar.m978b(m3123a((int) R$string.sharedialog_more), new DialogInterface$OnClickListenerC13900e(str, str3, context));
                DialogC14618f a2 = fVar.m989a();
                if (!(context instanceof Activity)) {
                    a2.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
                    C13878a3.m3244a(a2);
                } else {
                    a2.show();
                }
                a2.setOnDismissListener(new DialogInterface$OnDismissListenerC13901f());
                PackageManager packageManager = context.getPackageManager();
                int size = a.size();
                int i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    PackageInfo packageInfo = a.get(i2);
                    i = i;
                    if (packageInfo != null) {
                        new ImageView[]{imageView, imageView2, imageView3}[i].setImageDrawable(packageInfo.applicationInfo.loadIcon(packageManager));
                        new TextView[]{textView, textView2, textView3}[i].setText(packageInfo.applicationInfo.loadLabel(packageManager));
                        viewArr[i].setVisibility(0);
                        viewArr[i].setTag(packageInfo.packageName);
                        viewArr[i].setOnClickListener(new View$OnClickListenerC13902g(context, str, str3, a2));
                        i++;
                    }
                }
            } else if (str != "custom_spam" || TextUtils.isEmpty(str3)) {
                m3114b(context);
            } else {
                m3113b(context, str3);
            }
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    /* renamed from: c */
    public static void m3111c(Context context, String str) {
        m3112b(context, str, null, null);
    }
}
