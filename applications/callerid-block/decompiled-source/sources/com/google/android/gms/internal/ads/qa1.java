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
        xt2 b = C1407r.m8916h().m4585l().m8879b();
        if (b == null) {
            bundle = null;
        } else if (!C1407r.m8916h().m4585l().m8874f() || !C1407r.m8916h().m4585l().m8876e()) {
            if (b.m4836h()) {
                b.m4838f();
            }
            mt2 e = b.m4839e();
            if (e != null) {
                String b2 = e.m6493b();
                String c = e.m6492c();
                String d = e.m6491d();
                if (b2 != null) {
                    C1407r.m8916h().m4585l().m8865z(b2);
                }
                str3 = d;
                str2 = b2;
                str = c;
                if (d != null) {
                    C1407r.m8916h().m4585l().m8891L0(d);
                    str3 = d;
                    str2 = b2;
                    str = c;
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
