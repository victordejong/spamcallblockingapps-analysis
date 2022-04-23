package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Arrays;
import java.util.List;
import p012b.p035f.C0793g;
import p131c.p161d.p170b.p224d.p252g.p253a.C3733kj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcif.class */
public final class zzcif extends zzaez {

    /* renamed from: a */
    public final Context f26058a;

    /* renamed from: b */
    public final zzcei f26059b;

    /* renamed from: c */
    public zzcfe f26060c;

    /* renamed from: d */
    public zzcdx f26061d;

    public zzcif(Context context, zzcei zzceiVar, zzcfe zzcfeVar, zzcdx zzcdxVar) {
        this.f26058a = context;
        this.f26059b = zzceiVar;
        this.f26060c = zzcfeVar;
        this.f26061d = zzcdxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: H1 */
    public final IObjectWrapper mo14224H1() {
        return ObjectWrapper.m17020a(this.f26058a);
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: V0 */
    public final void mo14223V0() {
        String x = this.f26059b.m14673x();
        if ("Google".equals(x)) {
            zzbbq.m15852d("Illegal argument specified for omid partner name.");
            return;
        }
        zzcdx zzcdxVar = this.f26061d;
        if (zzcdxVar != null) {
            zzcdxVar.m14751a(x, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: c0 */
    public final String mo14221c0() {
        return this.f26059b.m14692e();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final void destroy() {
        zzcdx zzcdxVar = this.f26061d;
        if (zzcdxVar != null) {
            zzcdxVar.mo14764a();
        }
        this.f26061d = null;
        this.f26060c = null;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final zzyo getVideoController() {
        return this.f26059b.m14683n();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: j1 */
    public final boolean mo14220j1() {
        IObjectWrapper v = this.f26059b.m14675v();
        if (v != null) {
            zzp.m17954r().m16417a(v);
            return true;
        }
        zzbbq.m15852d("Trying to start OMID session before creation.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: m */
    public final void mo14219m() {
        zzcdx zzcdxVar = this.f26061d;
        if (zzcdxVar != null) {
            zzcdxVar.m14739j();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: o */
    public final zzaee mo14218o(String str) {
        return this.f26059b.m14674w().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: p1 */
    public final List<String> mo14217p1() {
        int i;
        C0793g<String, zzadq> w = this.f26059b.m14674w();
        C0793g<String, String> y = this.f26059b.m14672y();
        String[] strArr = new String[w.size() + y.size()];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 < w.size()) {
                strArr[i4] = w.m36013c(i3);
                i3++;
                i4++;
            }
        }
        while (i2 < y.size()) {
            strArr[i] = y.m36013c(i2);
            i2++;
            i++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: q */
    public final void mo14216q(IObjectWrapper iObjectWrapper) {
        zzcdx zzcdxVar;
        Object Q = ObjectWrapper.m17021Q(iObjectWrapper);
        if ((Q instanceof View) && this.f26059b.m14675v() != null && (zzcdxVar = this.f26061d) != null) {
            zzcdxVar.m14747b((View) Q);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: s */
    public final void mo14215s(String str) {
        zzcdx zzcdxVar = this.f26061d;
        if (zzcdxVar != null) {
            zzcdxVar.m14752a(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: s1 */
    public final boolean mo14214s1() {
        zzcdx zzcdxVar = this.f26061d;
        return (zzcdxVar == null || zzcdxVar.m14737l()) && this.f26059b.m14676u() != null && this.f26059b.m14677t() == null;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: v */
    public final IObjectWrapper mo14213v() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: v */
    public final String mo14212v(String str) {
        return this.f26059b.m14672y().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: w */
    public final boolean mo14211w(IObjectWrapper iObjectWrapper) {
        Object Q = ObjectWrapper.m17021Q(iObjectWrapper);
        if (!(Q instanceof ViewGroup)) {
            return false;
        }
        zzcfe zzcfeVar = this.f26060c;
        if (!(zzcfeVar != null && zzcfeVar.m14355a((ViewGroup) Q))) {
            return false;
        }
        this.f26059b.m14677t().mo15588a(new C3733kj(this));
        return true;
    }
}
