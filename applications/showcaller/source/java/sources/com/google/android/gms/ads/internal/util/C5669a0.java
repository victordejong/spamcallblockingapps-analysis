package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.util.C6233k;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.lq1;
import com.google.android.gms.internal.ads.r03;
import com.google.android.gms.internal.ads.zzdyb;
import com.yanzhenjie.nohttp.Headers;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.internal.util.a0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/a0.class */
public final class C5669a0 {

    /* renamed from: a */
    private final Object f18435a = new Object();

    /* renamed from: b */
    private String f18436b = "";

    /* renamed from: c */
    private String f18437c = "";

    /* renamed from: d */
    private boolean f18438d = false;

    /* renamed from: e */
    private boolean f18439e = false;

    /* renamed from: f */
    protected String f18440f = "";

    /* renamed from: g */
    private lq1 f18441g;

    /* renamed from: o */
    protected static final String m18122o(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(Headers.HEAD_KEY_USER_AGENT, C5667s.m18160d().m18092P(context, str2));
        r03<String> m17986b = new C5730r0(context).m17986b(0, str, hashMap, null);
        try {
            return m17986b.get(((Integer) C7192yr.m8714c().m14263c(C6679kw.f25706h3)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String valueOf = String.valueOf(str);
            ei0.m15466d(valueOf.length() != 0 ? "Interrupted while retrieving a response from: ".concat(valueOf) : new String("Interrupted while retrieving a response from: "), e);
            m17986b.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String valueOf2 = String.valueOf(str);
            ei0.m15466d(valueOf2.length() != 0 ? "Timeout while retrieving a response from: ".concat(valueOf2) : new String("Timeout while retrieving a response from: "), e2);
            m17986b.cancel(true);
            return null;
        } catch (Exception e3) {
            String valueOf3 = String.valueOf(str);
            ei0.m15466d(valueOf3.length() != 0 ? "Error retrieving a response from: ".concat(valueOf3) : new String("Error retrieving a response from: "), e3);
            return null;
        }
    }

    /* renamed from: p */
    private final Uri m18121p(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        synchronized (this.f18435a) {
            if (TextUtils.isEmpty(this.f18436b)) {
                C5667s.m18160d();
                try {
                    str5 = new String(C6233k.m16787d(context.openFileInput("debug_signals_id.txt"), true), "UTF-8");
                } catch (IOException e) {
                    ei0.m15469a("Error reading from internal storage.");
                    str5 = "";
                }
                this.f18436b = str5;
                if (TextUtils.isEmpty(str5)) {
                    C5667s.m18160d();
                    this.f18436b = UUID.randomUUID().toString();
                    C5667s.m18160d();
                    String str6 = this.f18436b;
                    try {
                        FileOutputStream openFileOutput = context.openFileOutput("debug_signals_id.txt", 0);
                        openFileOutput.write(str6.getBytes("UTF-8"));
                        openFileOutput.close();
                    } catch (Exception e2) {
                        ei0.m15466d("Error writing to file in internal storage.", e2);
                    }
                }
            }
            str4 = this.f18436b;
        }
        buildUpon.appendQueryParameter("linkedDeviceId", str4);
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    /* renamed from: a */
    public final void m18136a(lq1 lq1Var) {
        this.f18441g = lq1Var;
    }

    /* renamed from: b */
    public final lq1 m18135b() {
        return this.f18441g;
    }

    /* renamed from: c */
    public final void m18134c(Context context) {
        lq1 lq1Var;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25474E6)).booleanValue() || (lq1Var = this.f18441g) == null) {
            return;
        }
        lq1Var.m13445k(new BinderC5747x(this, context), zzdyb.DEBUG_MENU);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009d  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m18133d(android.content.Context r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.C5669a0.m18133d(android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    /* renamed from: e */
    public final boolean m18132e(Context context, String str, String str2) {
        String m18122o = m18122o(context, m18121p(context, (String) C7192yr.m8714c().m14263c(C6679kw.f25690f3), str, str2).toString(), str2);
        if (TextUtils.isEmpty(m18122o)) {
            ei0.m15469a("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(m18122o.trim()).optString("debug_mode"));
            m18127j(equals);
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25474E6)).booleanValue()) {
                AbstractC5728q1 m12230p = C5667s.m18156h().m12230p();
                if (true != equals) {
                    str = "";
                }
                m12230p.mo17974N0(str);
            }
            return equals;
        } catch (JSONException e) {
            ei0.m15463g("Fail to get debug mode response json.", e);
            return false;
        }
    }

    /* renamed from: f */
    public final void m18131f(Context context, String str, String str2) {
        C5667s.m18160d();
        C5679c2.m18051x(context, m18121p(context, (String) C7192yr.m8714c().m14263c(C6679kw.f25674d3), str, str2));
    }

    /* renamed from: g */
    public final boolean m18130g(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !m18124m()) {
            return false;
        }
        ei0.m15469a("Sending troubleshooting signals to the server.");
        m18129h(context, str, str2, str3);
        return true;
    }

    /* renamed from: h */
    public final void m18129h(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = m18121p(context, (String) C7192yr.m8714c().m14263c(C6679kw.f25698g3), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        C5667s.m18160d();
        C5679c2.m18061n(context, str, buildUpon.build().toString());
    }

    /* renamed from: i */
    public final String m18128i() {
        String str;
        synchronized (this.f18435a) {
            str = this.f18437c;
        }
        return str;
    }

    /* renamed from: j */
    public final void m18127j(boolean z) {
        synchronized (this.f18435a) {
            this.f18439e = z;
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25474E6)).booleanValue()) {
                C5667s.m18156h().m12230p().mo17981I0(z);
                lq1 lq1Var = this.f18441g;
                if (lq1Var != null) {
                    lq1Var.m13454b(z);
                }
            }
        }
    }

    /* renamed from: k */
    public final boolean m18126k() {
        boolean z;
        synchronized (this.f18435a) {
            z = this.f18439e;
        }
        return z;
    }

    /* renamed from: l */
    public final void m18125l(boolean z) {
        synchronized (this.f18435a) {
            this.f18438d = z;
        }
    }

    /* renamed from: m */
    public final boolean m18124m() {
        boolean z;
        synchronized (this.f18435a) {
            z = this.f18438d;
        }
        return z;
    }

    /* renamed from: n */
    public final void m18123n(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            ei0.m15465e("Can not create dialog without Activity Context");
        } else {
            C5679c2.f18451a.post(new RunnableC5753z(this, context, str, z, z2));
        }
    }
}
