package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q72.class */
public final class q72 implements wa2<r72> {

    /* renamed from: a */
    private final Context f28335a;

    /* renamed from: b */
    private final s03 f28336b;

    public q72(Context context, s03 s03Var) {
        this.f28335a = context;
        this.f28336b = s03Var;
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<r72> zza() {
        return this.f28336b.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.p72

            /* renamed from: a */
            private final q72 f27889a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27889a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bundle bundle;
                String str;
                String str2;
                String str3;
                C5667s.m18160d();
                C6889qk mo17963b = C5667s.m18156h().m12230p().mo17963b();
                if (mo17963b == null) {
                    bundle = null;
                } else if (!C5667s.m18156h().m12230p().mo17959e() || !C5667s.m18156h().m12230p().mo17958f()) {
                    if (mo17963b.m11860h()) {
                        mo17963b.m11862f();
                    }
                    C6481fk m11863e = mo17963b.m11863e();
                    if (m11863e != null) {
                        String m15176b = m11863e.m15176b();
                        String m15175c = m11863e.m15175c();
                        String m15174d = m11863e.m15174d();
                        if (m15176b != null) {
                            C5667s.m18156h().m12230p().mo17985B(m15176b);
                        }
                        str2 = m15174d;
                        str = m15176b;
                        str3 = m15175c;
                        if (m15174d != null) {
                            C5667s.m18156h().m12230p().mo17983H0(m15174d);
                            str2 = m15174d;
                            str = m15176b;
                            str3 = m15175c;
                        }
                    } else {
                        str = C5667s.m18156h().m12230p().mo17960d();
                        str2 = C5667s.m18156h().m12230p().mo17957g();
                        str3 = null;
                    }
                    Bundle bundle2 = new Bundle(1);
                    if (!C5667s.m18156h().m12230p().mo17958f()) {
                        if (str2 == null || TextUtils.isEmpty(str2)) {
                            bundle2.putString("v_fp_vertical", "no_hash");
                        } else {
                            bundle2.putString("v_fp_vertical", str2);
                        }
                    }
                    if (str != null && !C5667s.m18156h().m12230p().mo17959e()) {
                        bundle2.putString("fingerprint", str);
                        if (!str.equals(str3)) {
                            bundle2.putString("v_fp", str3);
                        }
                    }
                    bundle = null;
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                } else {
                    bundle = null;
                }
                return new r72(bundle);
            }
        });
    }
}
