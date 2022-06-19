package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.j41;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s12.class */
public final class s12<AdT, AdapterT, ListenerT extends j41> implements qw1<AdT> {

    /* renamed from: a */
    private final sw1<AdapterT, ListenerT> f29366a;

    /* renamed from: b */
    private final xw1<AdT, AdapterT, ListenerT> f29367b;

    /* renamed from: c */
    private final yn2 f29368c;

    /* renamed from: d */
    private final s03 f29369d;

    public s12(yn2 yn2Var, s03 s03Var, sw1<AdapterT, ListenerT> sw1Var, xw1<AdT, AdapterT, ListenerT> xw1Var) {
        this.f29368c = yn2Var;
        this.f29369d = s03Var;
        this.f29367b = xw1Var;
        this.f29366a = sw1Var;
    }

    /* renamed from: e */
    public static final String m11180e(String str, int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 31);
        sb.append("Error from: ");
        sb.append(str);
        sb.append(", code: ");
        sb.append(i);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        return !ej2Var.f22248t.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<AdT> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        tw1<AdapterT, ListenerT> tw1Var;
        Iterator<String> it = ej2Var.f22248t.iterator();
        while (true) {
            if (!it.hasNext()) {
                tw1Var = null;
                break;
            }
            try {
                tw1Var = this.f29366a.mo10443a(it.next(), ej2Var.f22250v);
                break;
            } catch (zzfaw e) {
            }
        }
        if (tw1Var == null) {
            return k03.m14001c(new zzehe("Unable to instantiate mediation adapter class."));
        }
        vi0 vi0Var = new vi0();
        tw1Var.f30387c.mo12788A4(new r12(this, tw1Var, vi0Var));
        if (ej2Var.f22201I) {
            Bundle bundle = rj2Var.f28998a.f27577a.f32077d.f33671p;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            Bundle bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle3);
            }
            bundle3.putBoolean("render_test_ad_label", true);
        }
        return kn2.m13841d(new dn2(this, rj2Var, ej2Var, tw1Var) { // from class: com.google.android.gms.internal.ads.o12

            /* renamed from: a */
            private final s12 f27397a;

            /* renamed from: b */
            private final rj2 f27398b;

            /* renamed from: c */
            private final ej2 f27399c;

            /* renamed from: d */
            private final tw1 f27400d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27397a = this;
                this.f27398b = rj2Var;
                this.f27399c = ej2Var;
                this.f27400d = tw1Var;
            }

            @Override // com.google.android.gms.internal.ads.dn2
            public final void zza() {
                this.f27397a.m11181d(this.f27398b, this.f27399c, this.f27400d);
            }
        }, this.f29369d, zzfem.ADAPTER_LOAD_AD_SYN, this.f29368c).m11832j(zzfem.ADAPTER_LOAD_AD_ACK).m11837e(vi0Var).m11832j(zzfem.ADAPTER_WRAP_ADAPTER).m11840b(new cn2(this, rj2Var, ej2Var, tw1Var) { // from class: com.google.android.gms.internal.ads.q12

            /* renamed from: a */
            private final s12 f28280a;

            /* renamed from: b */
            private final rj2 f28281b;

            /* renamed from: c */
            private final ej2 f28282c;

            /* renamed from: d */
            private final tw1 f28283d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28280a = this;
                this.f28281b = rj2Var;
                this.f28282c = ej2Var;
                this.f28283d = tw1Var;
            }

            @Override // com.google.android.gms.internal.ads.cn2
            /* renamed from: a */
            public final Object mo8162a(Object obj) {
                return this.f28280a.m11182c(this.f28281b, this.f28282c, this.f28283d, (Void) obj);
            }
        }).m11833i();
    }

    /* renamed from: c */
    public final /* synthetic */ Object m11182c(rj2 rj2Var, ej2 ej2Var, tw1 tw1Var, Void r9) {
        return this.f29367b.mo8656b(rj2Var, ej2Var, tw1Var);
    }

    /* renamed from: d */
    public final /* synthetic */ void m11181d(rj2 rj2Var, ej2 ej2Var, tw1 tw1Var) {
        this.f29367b.mo8657a(rj2Var, ej2Var, tw1Var);
    }
}
