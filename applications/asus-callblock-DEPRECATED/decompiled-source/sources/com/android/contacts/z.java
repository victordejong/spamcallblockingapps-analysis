package com.android.contacts;

import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.widget.TextView;
import com.android.contacts.calllog.n;
import com.android.contacts.calllog.t;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public final Resources f2216a;

    /* renamed from: b  reason: collision with root package name */
    public final t f2217b;
    public int c;
    public int d;
    public Context e;
    Map<String, String> f = new HashMap();
    private final n g;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/z$a.class */
    private final class a extends AsyncTask<String, Void, String> {

        /* renamed from: b  reason: collision with root package name */
        private TextView f2219b;
        private String c;

        a(TextView textView) {
            this.f2219b = textView;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(String[] strArr) {
            String[] strArr2 = strArr;
            if (z.this.e == null) {
                return null;
            }
            this.c = strArr2[0];
            Integer.parseInt(strArr2[1]);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            String str2 = str;
            Log.d("PhoneCallDetailsHelper", "ATT Caller Name = " + PhoneCapabilityTester.privacyLogCheck(str2));
            if (str2 != null) {
                this.f2219b.setText(str2);
                z.this.f.put(this.c, str2);
                return;
            }
            z.this.f.put(this.c, " ");
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    public z(Context context, Resources resources, n nVar, t tVar) {
        this.e = context;
        this.f2216a = resources;
        this.g = nVar;
        this.f2217b = tVar;
        if (com.android.contacts.skin.a.b()) {
            this.c = resources.getColor(2131034159);
            this.d = resources.getColor(2131034161);
        } else if (com.android.contacts.skin.a.c()) {
            this.c = com.android.contacts.skin.a.a(2);
            this.d = com.android.contacts.skin.a.a(2);
        } else {
            this.c = resources.getColor(2131034158);
            this.d = resources.getColor(2131034160);
        }
    }

    private static String a(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((i == 0 && charAt == '+') || PhoneNumberUtils.isISODigit(charAt) || charAt == '#' || charAt == '*' || charAt == ',') {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public final void a() {
        if (this.f != null) {
            this.f.clear();
        }
    }

    public final void a(TextView textView, y yVar) {
        CharSequence charSequence;
        CharSequence a2 = this.f2217b.a(yVar.f2214a, this.f2216a.getString(2131756348));
        if (!TextUtils.isEmpty(yVar.h)) {
            charSequence = yVar.h;
        } else if (PhoneCapabilityTester.isATTSku()) {
            String str = this.f.get(a(String.valueOf(yVar.f2214a)));
            if (str == null || str.equals(" ")) {
                try {
                    new a(textView).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, a(String.valueOf(yVar.f2214a)), String.valueOf(yVar.i));
                    textView.setText(a2);
                    return;
                } catch (Exception e) {
                    Log.d("PhoneCallDetailsHelper", "Fail to get ATT Caller Name Exception = " + e.toString());
                    charSequence = a2;
                }
            } else {
                textView.setText(str);
                return;
            }
        } else {
            charSequence = a2;
        }
        textView.setText(charSequence);
    }
}
