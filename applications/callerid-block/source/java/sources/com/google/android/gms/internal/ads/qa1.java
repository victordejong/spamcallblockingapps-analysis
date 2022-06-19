package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qa1.class */
final /* synthetic */ class qa1 implements Callable {
    qa1(ra1 ra1Var) {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bundle bundle;
        String str;
        String str2;
        String str3;
        C1407r.m8920d();
        xt2 m8879b = C1407r.m8916h().m4585l().m8879b();
        if (m8879b == null) {
            bundle = null;
        } else if (!C1407r.m8916h().m4585l().m8874f() || !C1407r.m8916h().m4585l().m8876e()) {
            if (m8879b.m4836h()) {
                m8879b.m4838f();
            }
            mt2 m4839e = m8879b.m4839e();
            if (m4839e != null) {
                String m6493b = m4839e.m6493b();
                String m6492c = m4839e.m6492c();
                String m6491d = m4839e.m6491d();
                if (m6493b != null) {
                    C1407r.m8916h().m4585l().m8865z(m6493b);
                }
                str3 = m6491d;
                str2 = m6493b;
                str = m6492c;
                if (m6491d != null) {
                    C1407r.m8916h().m4585l().m8891L0(m6491d);
                    str3 = m6491d;
                    str2 = m6493b;
                    str = m6492c;
                }
            } else {
                str2 = C1407r.m8916h().m4585l().m8878d();
                str3 = C1407r.m8916h().m4585l().m8872h();
                str = null;
            }
            Bundle bundle2 = new Bundle(1);
            if (!C1407r.m8916h().m4585l().m8876e()) {
                if (str3 == null || TextUtils.isEmpty(str3)) {
                    str3 = "no_hash";
                }
                bundle2.putString("v_fp_vertical", str3);
            }
            if (str2 != null && !C1407r.m8916h().m4585l().m8874f()) {
                bundle2.putString("fingerprint", str2);
                if (!str2.equals(str)) {
                    bundle2.putString("v_fp", str);
                }
            }
            bundle = null;
            if (!bundle2.isEmpty()) {
                bundle = bundle2;
            }
        } else {
            bundle = null;
        }
        return new sa1(bundle);
    }
}
