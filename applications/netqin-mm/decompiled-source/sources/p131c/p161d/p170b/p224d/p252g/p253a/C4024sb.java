package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbjv;
import com.google.android.gms.internal.ads.zzbrr;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbys;
import com.google.android.gms.internal.ads.zzcni;
import com.google.android.gms.internal.ads.zzdan;
import com.google.android.gms.internal.ads.zzdao;
import com.google.android.gms.internal.ads.zzdbd;
import com.google.android.gms.internal.ads.zzdpp;
import com.google.android.gms.internal.ads.zzepe;
/* renamed from: c.d.b.d.g.a.sb */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/sb.class */
public final class C4024sb implements zzdan {

    /* renamed from: a */
    public zzbtp f15269a;

    /* renamed from: b */
    public zzdbd f15270b;

    /* renamed from: c */
    public final /* synthetic */ zzbjv f15271c;

    public C4024sb(zzbjv zzbjvVar) {
        this.f15271c = zzbjvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    /* renamed from: a */
    public final /* synthetic */ zzdan mo13697a(zzbtp zzbtpVar) {
        zzepe.m12189a(zzbtpVar);
        this.f15269a = zzbtpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    @Deprecated
    /* renamed from: a */
    public final /* synthetic */ zzdan mo13696a(zzbys zzbysVar) {
        zzepe.m12189a(zzbysVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    /* renamed from: a */
    public final /* synthetic */ zzdan mo13695a(zzdbd zzdbdVar) {
        zzepe.m12189a(zzdbdVar);
        this.f15270b = zzdbdVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    /* renamed from: a */
    public final zzdao mo13698a() {
        zzepe.m12188a(this.f15269a, zzbtp.class);
        zzepe.m12188a(this.f15270b, zzdbd.class);
        return new C3987rb(this.f15271c, this.f15270b, new zzbrr(), new zzcni(), this.f15269a, new zzdpp());
    }
}
