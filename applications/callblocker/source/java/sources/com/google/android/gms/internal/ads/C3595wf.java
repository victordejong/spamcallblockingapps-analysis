package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.wf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wf.class */
public final class C3595wf {

    /* renamed from: a */
    private final Object f17543a = new Object();
    @GuardedBy("lock")

    /* renamed from: b */
    private String f17544b = "";
    @GuardedBy("lock")

    /* renamed from: c */
    private String f17545c = "";
    @GuardedBy("lock")

    /* renamed from: d */
    private boolean f17546d = false;

    /* renamed from: e */
    private String f17547e = "";

    /* renamed from: a */
    private final String m6896a(Context context) {
        String str;
        synchronized (this.f17543a) {
            if (TextUtils.isEmpty(this.f17544b)) {
                C2341q.m14744c();
                this.f17544b = C3567ve.m6966c(context, "debug_signals_id.txt");
                if (TextUtils.isEmpty(this.f17544b)) {
                    C2341q.m14744c();
                    this.f17544b = C3567ve.m7011a();
                    C2341q.m14744c();
                    C3567ve.m6974b(context, "debug_signals_id.txt", this.f17544b);
                }
            }
            str = this.f17544b;
        }
        return str;
    }

    /* renamed from: a */
    private final void m6893a(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            C3556uu.m6747d("Can not create dialog without Activity Context");
        } else {
            C3567ve.f17498a.post(new RunnableC3593wd(this, context, str, z, z2));
        }
    }

    /* renamed from: b */
    private final boolean m6891b(Context context, String str, String str2) {
        boolean z;
        String m6887d = m6887d(context, m6886d(context, (String) dyx.m8158e().m7876a(edi.f16419bY), str, str2).toString(), str2);
        if (TextUtils.isEmpty(m6887d)) {
            C3556uu.m6751b("Not linked for in app preview.");
            z = false;
        } else {
            try {
                JSONObject jSONObject = new JSONObject(m6887d.trim());
                String optString = jSONObject.optString("gct");
                this.f17547e = jSONObject.optString("status");
                synchronized (this.f17543a) {
                    this.f17545c = optString;
                }
                z = true;
            } catch (JSONException e) {
                C3556uu.m6746d("Fail to get in app preview response json.", e);
                z = false;
            }
        }
        return z;
    }

    /* renamed from: c */
    private final void m6888c(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = m6886d(context, (String) dyx.m8158e().m7876a(edi.f16474ca), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        C2341q.m14744c();
        C3567ve.m7003a(context, str, buildUpon.build().toString());
    }

    /* renamed from: c */
    private final boolean m6889c(Context context, String str, String str2) {
        boolean z;
        String m6887d = m6887d(context, m6886d(context, (String) dyx.m8158e().m7876a(edi.f16420bZ), str, str2).toString(), str2);
        if (TextUtils.isEmpty(m6887d)) {
            C3556uu.m6751b("Not linked for debug signals.");
            z = false;
        } else {
            try {
                z = "1".equals(new JSONObject(m6887d.trim()).optString("debug_mode"));
                synchronized (this.f17543a) {
                    this.f17546d = z;
                }
            } catch (JSONException e) {
                C3556uu.m6746d("Fail to get debug mode response json.", e);
                z = false;
            }
        }
        return z;
    }

    /* renamed from: d */
    private final Uri m6886d(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("linkedDeviceId", m6896a(context));
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    /* renamed from: d */
    private static String m6887d(Context context, String str, String str2) {
        String str3;
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", C2341q.m14744c().m6975b(context, str2));
        crt<String> m6869a = new C3606wq(context).m6869a(str, hashMap);
        try {
            str3 = m6869a.get(((Integer) dyx.m8158e().m7876a(edi.f16475cb)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String valueOf = String.valueOf(str);
            C3556uu.m6748c(valueOf.length() != 0 ? "Interrupted while retriving a response from: ".concat(valueOf) : new String("Interrupted while retriving a response from: "), e);
            m6869a.cancel(true);
            str3 = null;
            return str3;
        } catch (TimeoutException e2) {
            String valueOf2 = String.valueOf(str);
            C3556uu.m6748c(valueOf2.length() != 0 ? "Timeout while retriving a response from: ".concat(valueOf2) : new String("Timeout while retriving a response from: "), e2);
            m6869a.cancel(true);
            str3 = null;
            return str3;
        } catch (Exception e3) {
            String valueOf3 = String.valueOf(str);
            C3556uu.m6748c(valueOf3.length() != 0 ? "Error retriving a response from: ".concat(valueOf3) : new String("Error retriving a response from: "), e3);
            str3 = null;
            return str3;
        }
        return str3;
    }

    /* renamed from: e */
    private final void m6885e(Context context, String str, String str2) {
        C2341q.m14744c();
        C3567ve.m7006a(context, m6886d(context, (String) dyx.m8158e().m7876a(edi.f16418bX), str, str2));
    }

    /* renamed from: a */
    public final String m6897a() {
        String str;
        synchronized (this.f17543a) {
            str = this.f17545c;
        }
        return str;
    }

    /* renamed from: a */
    public final void m6895a(Context context, String str, String str2) {
        if (!m6891b(context, str, str2)) {
            m6893a(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
        } else if ("2".equals(this.f17547e)) {
            C3556uu.m6751b("Creative is not pushed for this device.");
            m6893a(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(this.f17547e)) {
            C3556uu.m6751b("The app is not linked for creative preview.");
            m6885e(context, str, str2);
        } else if (!"0".equals(this.f17547e)) {
        } else {
            C3556uu.m6751b("Device is linked for in app preview.");
            m6893a(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    /* renamed from: a */
    public final void m6894a(Context context, String str, String str2, String str3) {
        boolean m6892b = m6892b();
        if (!m6889c(context, str, str2)) {
            m6885e(context, str, str2);
            return;
        }
        if (!m6892b && !TextUtils.isEmpty(str3)) {
            m6888c(context, str2, str3, str);
        }
        C3556uu.m6751b("Device is linked for debug signals.");
        m6893a(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    /* renamed from: b */
    public final boolean m6892b() {
        boolean z;
        synchronized (this.f17543a) {
            z = this.f17546d;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m6890b(Context context, String str, String str2, String str3) {
        boolean z;
        if (TextUtils.isEmpty(str2) || !C2341q.m14734m().m6892b()) {
            z = false;
        } else {
            C3556uu.m6751b("Sending troubleshooting signals to the server.");
            m6888c(context, str, str2, str3);
            z = true;
        }
        return z;
    }
}
