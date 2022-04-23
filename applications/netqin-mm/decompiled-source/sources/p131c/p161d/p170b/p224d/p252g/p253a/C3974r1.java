package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzakr;
import com.google.android.gms.internal.ads.zzalm;
import com.google.android.gms.internal.ads.zzalp;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzbad;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.r1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/r1.class */
public final class C3974r1 implements zzahq<zzalp> {

    /* renamed from: a */
    public final /* synthetic */ zzalm f14850a;

    /* renamed from: b */
    public final /* synthetic */ zzaki f14851b;

    /* renamed from: c */
    public final /* synthetic */ zzakr f14852c;

    public C3974r1(zzakr zzakrVar, zzalm zzalmVar, zzaki zzakiVar) {
        this.f14852c = zzakrVar;
        this.f14850a = zzalmVar;
        this.f14851b = zzakiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzalp zzalpVar, Map map) {
        Object obj;
        zzbad zzbadVar;
        obj = this.f14852c.f24158a;
        synchronized (obj) {
            if (!(this.f14850a.m15829a() == -1 || this.f14850a.m15829a() == 1)) {
                this.f14852c.f24165h = 0;
                zzbadVar = this.f14852c.f24162e;
                zzbadVar.mo15974a(this.f14851b);
                this.f14850a.m15826a((zzalm) this.f14851b);
                this.f14852c.f24164g = this.f14850a;
                zzayp.m16153g("Successfully loaded JS Engine.");
            }
        }
    }
}
