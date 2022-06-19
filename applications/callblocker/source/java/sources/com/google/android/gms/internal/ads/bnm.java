package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.C2396s;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bnm.class */
public final class bnm implements bmy<akk, chs, bof> {

    /* renamed from: a */
    private final Context f11608a;

    /* renamed from: b */
    private final C3647yd f11609b;

    /* renamed from: c */
    private final alh f11610c;

    /* renamed from: d */
    private final Executor f11611d;

    public bnm(Context context, C3647yd c3647yd, alh alhVar, Executor executor) {
        this.f11608a = context;
        this.f11609b = c3647yd;
        this.f11610c = alhVar;
        this.f11611d = executor;
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: a */
    public final void mo11709a(chd chdVar, cgr cgrVar, bmx<chs, bof> bmxVar) {
        dyd dydVar = chdVar.f13034a.f13017a.f13041e;
        dyd dydVar2 = dydVar.f16102m ? new dyd(this.f11608a, C2396s.m14609a(dydVar.f16094e, dydVar.f16091b)) : chk.m11312a(this.f11608a, cgrVar.f12996r);
        if (this.f11609b.f17638c < 4100000) {
            bmxVar.f11571b.m11287a(this.f11608a, dydVar2, chdVar.f13034a.f13017a.f13040d, cgrVar.f12997s.toString(), bmxVar.f11572c);
        } else {
            bmxVar.f11571b.m11286a(this.f11608a, dydVar2, chdVar.f13034a.f13017a.f13040d, cgrVar.f12997s.toString(), C3614wy.m6857a((AbstractC3615wz) cgrVar.f12994p), bmxVar.f11572c);
        }
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: b */
    public final /* synthetic */ akk mo11708b(chd chdVar, cgr cgrVar, bmx<chs, bof> bmxVar) {
        alh alhVar = this.f11610c;
        amy amyVar = new amy(chdVar, cgrVar, bmxVar.f11570a);
        View m11293a = bmxVar.f11571b.m11293a();
        chs chsVar = bmxVar.f11571b;
        chsVar.getClass();
        akj mo12971a = alhVar.mo12971a(amyVar, new ako(m11293a, null, bnp.m11753a(chsVar), cgrVar.f12996r.get(0)));
        mo12971a.mo13021j().m12420a(bmxVar.f11571b.m11293a());
        mo12971a.mo12944a().m12773a((aqk) new aio(bmxVar.f11571b), this.f11611d);
        bmxVar.f11572c.m11742a((AbstractC3286ku) mo12971a.mo12939f());
        return mo12971a.mo13023h();
    }
}
