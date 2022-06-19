package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.C6217a;
import com.google.android.gms.internal.measurement.AbstractC7502p3;
/* renamed from: com.google.android.gms.measurement.internal.f4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/f4.class */
final class RunnableC7709f4 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7502p3 f35244d;

    /* renamed from: e */
    final /* synthetic */ ServiceConnection f35245e;

    /* renamed from: f */
    final /* synthetic */ ServiceConnectionC7721g4 f35246f;

    public RunnableC7709f4(ServiceConnectionC7721g4 serviceConnectionC7721g4, AbstractC7502p3 abstractC7502p3, ServiceConnection serviceConnection) {
        this.f35246f = serviceConnectionC7721g4;
        this.f35244d = abstractC7502p3;
        this.f35245e = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        ServiceConnectionC7721g4 serviceConnectionC7721g4 = this.f35246f;
        C7733h4 c7733h4 = serviceConnectionC7721g4.f35286b;
        str = serviceConnectionC7721g4.f35285a;
        AbstractC7502p3 abstractC7502p3 = this.f35244d;
        ServiceConnection serviceConnection = this.f35245e;
        c7733h4.f35302a.mo6029b().mo6113f();
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        Bundle bundle2 = null;
        try {
            Bundle mo7029H2 = abstractC7502p3.mo7029H2(bundle);
            if (mo7029H2 == null) {
                c7733h4.f35302a.mo6047C().m6195m().m6216a("Install Referrer Service returned a null response");
            } else {
                bundle2 = mo7029H2;
            }
        } catch (Exception e) {
            c7733h4.f35302a.mo6047C().m6195m().m6215b("Exception occurred while retrieving the Install Referrer", e.getMessage());
        }
        c7733h4.f35302a.mo6029b().mo6113f();
        if (bundle2 != null) {
            long j = bundle2.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                c7733h4.f35302a.mo6047C().m6192p().m6216a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundle2.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    c7733h4.f35302a.mo6047C().m6195m().m6216a("No referrer defined in Install Referrer response");
                } else {
                    c7733h4.f35302a.mo6047C().m6187u().m6215b("InstallReferrer API result", string);
                    Bundle m5964k0 = c7733h4.f35302a.m6043G().m5964k0(Uri.parse(string.length() != 0 ? "?".concat(string) : new String("?")));
                    if (m5964k0 == null) {
                        c7733h4.f35302a.mo6047C().m6195m().m6216a("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = m5964k0.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = bundle2.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                c7733h4.f35302a.mo6047C().m6195m().m6216a("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                m5964k0.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == c7733h4.f35302a.m6005z().f35197g.m6588a()) {
                            c7733h4.f35302a.mo6047C().m6187u().m6216a("Install Referrer campaign has already been logged");
                        } else if (c7733h4.f35302a.m6022i()) {
                            c7733h4.f35302a.m6005z().f35197g.m6587b(j);
                            c7733h4.f35302a.mo6047C().m6187u().m6215b("Logging Install Referrer campaign from sdk with ", "referrer API");
                            m5964k0.putString("_cis", "referrer API");
                            c7733h4.f35302a.m6044F().m5917X("auto", "_cmp", m5964k0);
                        }
                    }
                }
            }
        }
        C6217a.m16846b().m16845c(c7733h4.f35302a.mo6030a(), serviceConnection);
    }
}
