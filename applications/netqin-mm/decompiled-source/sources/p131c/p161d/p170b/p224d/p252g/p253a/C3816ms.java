package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzdgu;
import com.google.android.gms.internal.ads.zzdya;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
/* renamed from: c.d.b.d.g.a.ms */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ms.class */
public final /* synthetic */ class C3816ms implements zzdya {

    /* renamed from: a */
    public static final zzdya f14197a = new C3816ms();

    @Override // com.google.android.gms.internal.ads.zzdya
    /* renamed from: d */
    public final zzdzc mo13006d(Object obj) {
        final String str = (String) obj;
        return zzdyq.m12988a(new zzdgu(str) { // from class: c.d.b.d.g.a.ns

            /* renamed from: a */
            public final String f14269a;

            {
                this.f14269a = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdgu
            /* renamed from: a */
            public final void mo13578a(Object obj2) {
                ((Bundle) obj2).putString("ms", this.f14269a);
            }
        });
    }
}
