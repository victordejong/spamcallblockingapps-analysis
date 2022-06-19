package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.p023b.C0428a;
import androidx.p023b.C0441g;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgs.class */
public final class bgs extends AbstractBinderC12535er {

    /* renamed from: a */
    private final Context f43889a;

    /* renamed from: b */
    private final bcr f43890b;

    /* renamed from: c */
    private bdo f43891c;

    /* renamed from: d */
    private bcf f43892d;

    public bgs(Context context, bcr bcrVar, bdo bdoVar, bcf bcfVar) {
        this.f43889a = context;
        this.f43890b = bcrVar;
        this.f43891c = bdoVar;
        this.f43892d = bcfVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: a */
    public final String mo14709a(String str) {
        return this.f43890b.m18200B().get(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: a */
    public final List<String> mo14711a() {
        int i;
        int i2;
        C0441g<String, BinderC12325de> m18147y = this.f43890b.m18147y();
        C0441g<String, String> m18200B = this.f43890b.m18200B();
        String[] strArr = new String[m18147y.size() + m18200B.size()];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = 0;
            i2 = i4;
            if (i3 < m18147y.size()) {
                strArr[i4] = m18147y.m45517b(i3);
                i3++;
                i4++;
            }
        }
        while (i < m18200B.size()) {
            strArr[i2] = m18200B.m45517b(i);
            i++;
            i2++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: a */
    public final boolean mo14710a(AbstractC12126b abstractC12126b) {
        Object m18980a = BinderC12129d.m18980a(abstractC12126b);
        if (!(m18980a instanceof ViewGroup)) {
            return false;
        }
        bdo bdoVar = this.f43891c;
        if (!(bdoVar != null && bdoVar.m18125a((ViewGroup) m18980a))) {
            return false;
        }
        this.f43890b.m18150v().mo13779a(new bgv(this));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: b */
    public final AbstractC12394dr mo14706b(String str) {
        return this.f43890b.m18147y().get(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: b */
    public final String mo14708b() {
        return this.f43890b.m18151u();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: b */
    public final void mo14707b(AbstractC12126b abstractC12126b) {
        bcf bcfVar;
        Object m18980a = BinderC12129d.m18980a(abstractC12126b);
        if (!(m18980a instanceof View) || this.f43890b.m18148x() == null || (bcfVar = this.f43892d) == null) {
            return;
        }
        bcfVar.m18215c((View) m18980a);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: c */
    public final void mo14705c() {
        bcf bcfVar = this.f43892d;
        if (bcfVar != null) {
            bcfVar.m18221b();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: c */
    public final void mo14704c(String str) {
        bcf bcfVar = this.f43892d;
        if (bcfVar != null) {
            bcfVar.m18223a(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: d */
    public final emk mo14703d() {
        return this.f43890b.m18178b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: e */
    public final void mo14702e() {
        bcf bcfVar = this.f43892d;
        if (bcfVar != null) {
            bcfVar.mo18235a();
        }
        this.f43892d = null;
        this.f43891c = null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: f */
    public final AbstractC12126b mo14701f() {
        return BinderC12129d.m18979a(this.f43889a);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: g */
    public final AbstractC12126b mo14700g() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: h */
    public final boolean mo14699h() {
        bcf bcfVar = this.f43892d;
        return (bcfVar == null || bcfVar.f43525c.mo18139d()) && this.f43890b.m18149w() != null && this.f43890b.m18150v() == null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: i */
    public final boolean mo14698i() {
        AbstractC12126b m18148x = this.f43890b.m18148x();
        if (m18148x == null) {
            zzd.zzez("Trying to start OMID session before creation.");
            return false;
        }
        zzr.zzlk().m14224a(m18148x);
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42767cX)).booleanValue() || this.f43890b.m18149w() == null) {
            return true;
        }
        this.f43890b.m18149w().mo13770a("onSdkLoaded", new C0428a());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: j */
    public final void mo14697j() {
        String m18201A = this.f43890b.m18201A();
        if ("Google".equals(m18201A)) {
            zzd.zzez("Illegal argument specified for omid partner name.");
            return;
        }
        bcf bcfVar = this.f43892d;
        if (bcfVar == null) {
            return;
        }
        bcfVar.m18222a(m18201A, false);
    }
}
