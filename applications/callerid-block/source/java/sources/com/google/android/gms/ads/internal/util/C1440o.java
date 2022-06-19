package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.common.util.C1615l;
import com.google.android.gms.internal.ads.C1674c;
import com.google.android.gms.internal.ads.C1842m3;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.rz1;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.internal.util.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/o.class */
public final class C1440o {

    /* renamed from: a */
    private final Object f5615a = new Object();
    @GuardedBy("lock")

    /* renamed from: b */
    private String f5616b = "";
    @GuardedBy("lock")

    /* renamed from: c */
    private String f5617c = "";
    @GuardedBy("lock")

    /* renamed from: d */
    private boolean f5618d = false;

    /* renamed from: e */
    protected String f5619e = "";

    /* renamed from: h */
    protected static final String m8729h(Context context, String str, String str2) {
        String str3;
        Throwable e;
        String str4;
        String str5;
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", C1407r.m8920d().m8788J(context, str2));
        rz1<String> m8844b = new C1414d0(context).m8844b(0, str, hashMap, null);
        try {
            return m8844b.get(((Integer) C1674c.m7906c().m6878b(C1842m3.f7240E2)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            str4 = String.valueOf(str);
            str5 = "Interrupted while retrieving a response from: ";
            if (str4.length() == 0) {
                str3 = new String("Interrupted while retrieving a response from: ");
                C1894po.m6182d(str3, e);
                m8844b.cancel(true);
                return null;
            }
            str3 = str5.concat(str4);
            C1894po.m6182d(str3, e);
            m8844b.cancel(true);
            return null;
        } catch (TimeoutException e3) {
            e = e3;
            str4 = String.valueOf(str);
            str5 = "Timeout while retrieving a response from: ";
            if (str4.length() == 0) {
                str3 = new String("Timeout while retrieving a response from: ");
                C1894po.m6182d(str3, e);
                m8844b.cancel(true);
                return null;
            }
            str3 = str5.concat(str4);
            C1894po.m6182d(str3, e);
            m8844b.cancel(true);
            return null;
        } catch (Exception e4) {
            String valueOf = String.valueOf(str);
            C1894po.m6182d(valueOf.length() != 0 ? "Error retrieving a response from: ".concat(valueOf) : new String("Error retrieving a response from: "), e4);
            return null;
        }
    }

    /* renamed from: i */
    private final void m8728i(Context context, String str, String str2) {
        C1407r.m8920d();
        C1433l1.m8745v(context, m8727j(context, (String) C1674c.m7906c().m6878b(C1842m3.f7212A2), str, str2));
    }

    /* renamed from: j */
    private final Uri m8727j(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        synchronized (this.f5615a) {
            if (TextUtils.isEmpty(this.f5616b)) {
                C1407r.m8920d();
                try {
                    str5 = new String(C1615l.m8219d(context.openFileInput("debug_signals_id.txt"), true), "UTF-8");
                } catch (IOException e) {
                    C1894po.m6185a("Error reading from internal storage.");
                    str5 = "";
                }
                this.f5616b = str5;
                if (TextUtils.isEmpty(str5)) {
                    C1407r.m8920d();
                    this.f5616b = UUID.randomUUID().toString();
                    C1407r.m8920d();
                    String str6 = this.f5616b;
                    try {
                        FileOutputStream openFileOutput = context.openFileOutput("debug_signals_id.txt", 0);
                        openFileOutput.write(str6.getBytes("UTF-8"));
                        openFileOutput.close();
                    } catch (Exception e2) {
                        C1894po.m6182d("Error writing to file in internal storage.", e2);
                    }
                }
            }
            str4 = this.f5616b;
        }
        buildUpon.appendQueryParameter("linkedDeviceId", str4);
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    /* renamed from: a */
    public final void m8736a(Context context, String str, String str2) {
        String m8729h = m8729h(context, m8727j(context, (String) C1674c.m7906c().m6878b(C1842m3.f7219B2), str, str2).toString(), str2);
        if (TextUtils.isEmpty(m8729h)) {
            C1894po.m6185a("Not linked for in app preview.");
        } else {
            try {
                JSONObject jSONObject = new JSONObject(m8729h.trim());
                String optString = jSONObject.optString("gct");
                this.f5619e = jSONObject.optString("status");
                synchronized (this.f5615a) {
                    this.f5617c = optString;
                }
                if ("2".equals(this.f5619e)) {
                    C1894po.m6185a("Creative is not pushed for this device.");
                    m8730g(context, "There was no creative pushed from DFP to the device.", false, false);
                    return;
                } else if ("1".equals(this.f5619e)) {
                    C1894po.m6185a("The app is not linked for creative preview.");
                    m8728i(context, str, str2);
                    return;
                } else if (!"0".equals(this.f5619e)) {
                    return;
                } else {
                    C1894po.m6185a("Device is linked for in app preview.");
                    m8730g(context, "The device is successfully linked for creative preview.", false, true);
                    return;
                }
            } catch (JSONException e) {
                C1894po.m6179g("Fail to get in app preview response json.", e);
            }
        }
        m8730g(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
    }

    /* renamed from: b */
    public final void m8735b(Context context, String str, String str2, String str3) {
        boolean m8731f = m8731f();
        String m8729h = m8729h(context, m8727j(context, (String) C1674c.m7906c().m6878b(C1842m3.f7226C2), str, str2).toString(), str2);
        if (TextUtils.isEmpty(m8729h)) {
            C1894po.m6185a("Not linked for debug signals.");
        } else {
            try {
                boolean equals = "1".equals(new JSONObject(m8729h.trim()).optString("debug_mode"));
                synchronized (this.f5615a) {
                    this.f5618d = equals;
                }
                if (equals) {
                    if (!m8731f && !TextUtils.isEmpty(str3)) {
                        m8733d(context, str2, str3, str);
                    }
                    C1894po.m6185a("Device is linked for debug signals.");
                    m8730g(context, "The device is successfully linked for troubleshooting.", false, true);
                    return;
                }
            } catch (JSONException e) {
                C1894po.m6179g("Fail to get debug mode response json.", e);
            }
        }
        m8728i(context, str, str2);
    }

    /* renamed from: c */
    public final boolean m8734c(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !C1407r.m8910n().m8731f()) {
            return false;
        }
        C1894po.m6185a("Sending troubleshooting signals to the server.");
        m8733d(context, str, str2, str3);
        return true;
    }

    /* renamed from: d */
    public final void m8733d(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = m8727j(context, (String) C1674c.m7906c().m6878b(C1842m3.f7233D2), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        C1407r.m8920d();
        C1433l1.m8755l(context, str, buildUpon.build().toString());
    }

    /* renamed from: e */
    public final String m8732e() {
        String str;
        synchronized (this.f5615a) {
            str = this.f5617c;
        }
        return str;
    }

    /* renamed from: f */
    public final boolean m8731f() {
        boolean z;
        synchronized (this.f5615a) {
            z = this.f5618d;
        }
        return z;
    }

    /* renamed from: g */
    protected final void m8730g(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            C1894po.m6181e("Can not create dialog without Activity Context");
        } else {
            C1433l1.f5594i.post(new RunnableC1437n(this, context, str, z, z2));
        }
    }
}
