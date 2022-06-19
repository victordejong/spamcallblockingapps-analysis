package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u52.class */
public final class u52 implements wa2<v52> {

    /* renamed from: a */
    private final s03 f30530a;

    /* renamed from: b */
    private final ol1 f30531b;

    /* renamed from: c */
    private final vp1 f30532c;

    /* renamed from: d */
    private final w52 f30533d;

    public u52(s03 s03Var, ol1 ol1Var, vp1 vp1Var, w52 w52Var) {
        this.f30530a = s03Var;
        this.f30531b = ol1Var;
        this.f30532c = vp1Var;
        this.f30533d = w52Var;
    }

    /* renamed from: a */
    public final /* synthetic */ v52 m10407a() {
        List<String> asList = Arrays.asList(((String) C7192yr.m8714c().m14263c(C6679kw.f25612W0)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                ok2 m12597b = this.f30531b.m12597b(str, new JSONObject());
                m12597b.m12617q();
                Bundle bundle2 = new Bundle();
                try {
                    zzbya m12633a = m12597b.m12633a();
                    if (m12633a != null) {
                        bundle2.putString("sdk_version", m12633a.toString());
                    }
                } catch (zzfaw e) {
                }
                try {
                    zzbya m12634C = m12597b.m12634C();
                    if (m12634C != null) {
                        bundle2.putString("adapter_version", m12634C.toString());
                    }
                } catch (zzfaw e2) {
                }
                bundle.putBundle(str, bundle2);
            } catch (zzfaw e3) {
            }
        }
        return new v52(bundle, null);
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<v52> zza() {
        if (iv2.m14268c((String) C7192yr.m8714c().m14263c(C6679kw.f25612W0)) || this.f30533d.m9778b() || !this.f30532c.m9903m()) {
            return k03.m14003a(new v52(new Bundle(), null));
        }
        this.f30533d.m9779a(true);
        return this.f30530a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.s52

            /* renamed from: a */
            private final u52 f29410a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29410a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f29410a.m10407a();
            }
        });
    }
}
