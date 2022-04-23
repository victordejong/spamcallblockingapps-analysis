package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeab;
import com.google.android.gms.internal.ads.zzeag;
import com.google.android.gms.internal.ads.zzeap;
import com.google.android.gms.internal.ads.zzear;
import com.google.android.gms.internal.ads.zzeas;
import java.security.GeneralSecurityException;
import java.util.Set;
/* renamed from: c.d.b.d.g.a.y20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/y20.class */
public final class y20 implements zzear.AbstractC7257a {

    /* renamed from: a */
    public final /* synthetic */ zzeas f16088a;

    /* renamed from: b */
    public final /* synthetic */ zzeag f16089b;

    public y20(zzeas zzeasVar, zzeag zzeagVar) {
        this.f16088a = zzeasVar;
        this.f16089b = zzeagVar;
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: a */
    public final Class<?> mo12912a() {
        return this.f16089b.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: b */
    public final <Q> zzeab<Q> mo12910b(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new zzeap(this.f16088a, this.f16089b, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: b */
    public final Set<Class<?>> mo12911b() {
        return this.f16088a.m12950d();
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: c */
    public final zzeab<?> mo12909c() {
        zzeas zzeasVar = this.f16088a;
        return new zzeap(zzeasVar, this.f16089b, zzeasVar.m12949e());
    }

    @Override // com.google.android.gms.internal.ads.zzear.AbstractC7257a
    /* renamed from: d */
    public final Class<?> mo12908d() {
        return this.f16088a.getClass();
    }
}
