package p134j4;

import android.content.Context;
import java.io.File;
import p189o4.AbstractC3882s;
import p189o4.C3881r;
/* renamed from: j4.i1 */
/* loaded from: classes-dex2jar.jar:j4/i1.class */
public final class C3215i1 implements AbstractC3882s {

    /* renamed from: a */
    public final AbstractC3882s f10837a;

    /* renamed from: b */
    public final AbstractC3882s f10838b;

    /* renamed from: c */
    public final AbstractC3882s f10839c;

    /* renamed from: d */
    public final AbstractC3882s f10840d;

    /* renamed from: e */
    public final AbstractC3882s f10841e;

    /* renamed from: f */
    public final AbstractC3882s f10842f;

    /* renamed from: g */
    public final AbstractC3882s f10843g;

    public C3215i1(AbstractC3882s abstractC3882s, AbstractC3882s abstractC3882s2, AbstractC3882s abstractC3882s3, AbstractC3882s abstractC3882s4, AbstractC3882s abstractC3882s5, AbstractC3882s abstractC3882s6, AbstractC3882s abstractC3882s7) {
        this.f10837a = abstractC3882s;
        this.f10838b = abstractC3882s2;
        this.f10839c = abstractC3882s3;
        this.f10840d = abstractC3882s4;
        this.f10841e = abstractC3882s5;
        this.f10842f = abstractC3882s6;
        this.f10843g = abstractC3882s7;
    }

    @Override // p189o4.AbstractC3882s
    public final /* bridge */ /* synthetic */ Object zza() {
        String str = (String) this.f10837a.zza();
        Object zza = this.f10838b.zza();
        Object zza2 = this.f10839c.zza();
        Context m2534a = ((C3224k2) this.f10840d).m2534a();
        Object zza3 = this.f10841e.zza();
        return new C3211h1(str != null ? new File(m2534a.getExternalFilesDir(null), str) : m2534a.getExternalFilesDir(null), (C3250t) zza, (C3245r0) zza2, m2534a, (C3252t1) zza3, C3881r.m1736a(this.f10842f), (C3246r1) this.f10843g.zza());
    }
}
