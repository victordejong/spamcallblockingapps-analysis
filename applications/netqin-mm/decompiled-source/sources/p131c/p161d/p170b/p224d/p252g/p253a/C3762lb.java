package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbjv;
import com.google.android.gms.internal.ads.zzdnm;
import com.google.android.gms.internal.ads.zzdnn;
import com.google.android.gms.internal.ads.zzepe;
/* renamed from: c.d.b.d.g.a.lb */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/lb.class */
public final class C3762lb implements zzdnm {

    /* renamed from: a */
    public Context f13949a;

    /* renamed from: b */
    public String f13950b;

    /* renamed from: c */
    public final /* synthetic */ zzbjv f13951c;

    public C3762lb(zzbjv zzbjvVar) {
        this.f13951c = zzbjvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdnm
    /* renamed from: a */
    public final /* synthetic */ zzdnm mo13480a(Context context) {
        zzepe.m12189a(context);
        this.f13949a = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdnm
    /* renamed from: a */
    public final /* synthetic */ zzdnm mo13479a(String str) {
        this.f13950b = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdnm
    /* renamed from: a */
    public final zzdnn mo13481a() {
        zzepe.m12188a(this.f13949a, Context.class);
        return new C3873ob(this.f13951c, this.f13949a, this.f13950b);
    }
}
