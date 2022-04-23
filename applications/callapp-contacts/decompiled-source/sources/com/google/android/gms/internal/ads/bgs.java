package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.b.a;
import androidx.b.g;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgs.class */
public final class bgs extends er {

    /* renamed from: a  reason: collision with root package name */
    private final Context f24408a;

    /* renamed from: b  reason: collision with root package name */
    private final bcr f24409b;

    /* renamed from: c  reason: collision with root package name */
    private bdo f24410c;

    /* renamed from: d  reason: collision with root package name */
    private bcf f24411d;

    public bgs(Context context, bcr bcrVar, bdo bdoVar, bcf bcfVar) {
        this.f24408a = context;
        this.f24409b = bcrVar;
        this.f24410c = bdoVar;
        this.f24411d = bcfVar;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final String a(String str) {
        return this.f24409b.B().get(str);
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final List<String> a() {
        int i;
        g<String, de> y = this.f24409b.y();
        g<String, String> B = this.f24409b.B();
        String[] strArr = new String[y.size() + B.size()];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 < y.size()) {
                strArr[i4] = y.b(i3);
                i3++;
                i4++;
            }
        }
        while (i2 < B.size()) {
            strArr[i] = B.b(i2);
            i2++;
            i++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final boolean a(b bVar) {
        Object a2 = d.a(bVar);
        if (!(a2 instanceof ViewGroup)) {
            return false;
        }
        bdo bdoVar = this.f24410c;
        if (!(bdoVar != null && bdoVar.a((ViewGroup) a2))) {
            return false;
        }
        this.f24409b.v().a(new bgv(this));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final dr b(String str) {
        return this.f24409b.y().get(str);
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final String b() {
        return this.f24409b.u();
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final void b(b bVar) {
        bcf bcfVar;
        Object a2 = d.a(bVar);
        if ((a2 instanceof View) && this.f24409b.x() != null && (bcfVar = this.f24411d) != null) {
            bcfVar.c((View) a2);
        }
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final void c() {
        bcf bcfVar = this.f24411d;
        if (bcfVar != null) {
            bcfVar.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final void c(String str) {
        bcf bcfVar = this.f24411d;
        if (bcfVar != null) {
            bcfVar.a(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final emk d() {
        return this.f24409b.b();
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final void e() {
        bcf bcfVar = this.f24411d;
        if (bcfVar != null) {
            bcfVar.a();
        }
        this.f24411d = null;
        this.f24410c = null;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final b f() {
        return d.a(this.f24408a);
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final b g() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final boolean h() {
        bcf bcfVar = this.f24411d;
        return (bcfVar == null || bcfVar.f24161c.d()) && this.f24409b.w() != null && this.f24409b.v() == null;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final boolean i() {
        b x = this.f24409b.x();
        if (x != null) {
            zzr.zzlk().a(x);
            if (!((Boolean) ekb.e().a(aq.cX)).booleanValue() || this.f24409b.w() == null) {
                return true;
            }
            this.f24409b.w().a("onSdkLoaded", new a());
            return true;
        }
        zzd.zzez("Trying to start OMID session before creation.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.eo
    public final void j() {
        String A = this.f24409b.A();
        if ("Google".equals(A)) {
            zzd.zzez("Illegal argument specified for omid partner name.");
            return;
        }
        bcf bcfVar = this.f24411d;
        if (bcfVar != null) {
            bcfVar.a(A, false);
        }
    }
}
