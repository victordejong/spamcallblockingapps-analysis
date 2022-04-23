package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.C1362c;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.internal.util.C1433l1;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sl1.class */
public final class sl1 {

    /* renamed from: a */
    public final zzady f8496a;

    /* renamed from: b */
    public final zzamv f8497b;

    /* renamed from: c */
    public final f71 f8498c;

    /* renamed from: d */
    public final zzys f8499d;

    /* renamed from: e */
    public final zzyx f8500e;

    /* renamed from: f */
    public final String f8501f;

    /* renamed from: g */
    public final ArrayList<String> f8502g;

    /* renamed from: h */
    public final ArrayList<String> f8503h;

    /* renamed from: i */
    public final zzagy f8504i;

    /* renamed from: j */
    public final zzzd f8505j;

    /* renamed from: k */
    public final int f8506k;

    /* renamed from: l */
    public final AdManagerAdViewOptions f8507l;

    /* renamed from: m */
    public final PublisherAdViewOptions f8508m;

    /* renamed from: n */
    public final AbstractC1713e0 f8509n;

    /* renamed from: o */
    public final hl1 f8510o;

    /* renamed from: p */
    public final boolean f8511p;

    /* renamed from: q */
    public final i0 f8512q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ sl1(rl1 rl1Var, ql1 ql1Var) {
        zzyx zzyxVar;
        String str;
        i0 i0Var;
        zzys zzysVar;
        zzys zzysVar2;
        zzys zzysVar3;
        zzys zzysVar4;
        zzys zzysVar5;
        zzys zzysVar6;
        zzys zzysVar7;
        zzys zzysVar8;
        zzys zzysVar9;
        zzys zzysVar10;
        zzys zzysVar11;
        zzys zzysVar12;
        zzys zzysVar13;
        zzys zzysVar14;
        zzys zzysVar15;
        zzys zzysVar16;
        zzys zzysVar17;
        zzys zzysVar18;
        zzys zzysVar19;
        zzys zzysVar20;
        zzys zzysVar21;
        zzys zzysVar22;
        zzys zzysVar23;
        zzady zzadyVar;
        zzady zzadyVar2;
        ArrayList<String> arrayList;
        ArrayList<String> arrayList2;
        ArrayList arrayList3;
        zzagy zzagyVar;
        zzzd zzzdVar;
        int i;
        AdManagerAdViewOptions adManagerAdViewOptions;
        PublisherAdViewOptions publisherAdViewOptions;
        AbstractC1713e0 e0Var;
        zzamv zzamvVar;
        gl1 gl1Var;
        boolean z;
        f71 f71Var;
        zzagy zzagyVar2;
        zzagy zzagyVar3;
        zzagy zzagyVar4;
        boolean z2;
        zzyxVar = rl1Var.f8346b;
        this.f8500e = zzyxVar;
        str = rl1Var.f8347c;
        this.f8501f = str;
        i0Var = rl1Var.f8362r;
        this.f8512q = i0Var;
        zzysVar = rl1Var.f8345a;
        int i2 = zzysVar.b;
        zzysVar2 = rl1Var.f8345a;
        long j = zzysVar2.c;
        zzysVar3 = rl1Var.f8345a;
        Bundle bundle = zzysVar3.d;
        zzysVar4 = rl1Var.f8345a;
        int i3 = zzysVar4.e;
        zzysVar5 = rl1Var.f8345a;
        List list = zzysVar5.f;
        zzysVar6 = rl1Var.f8345a;
        boolean z3 = zzysVar6.g;
        zzysVar7 = rl1Var.f8345a;
        int i4 = zzysVar7.h;
        zzysVar8 = rl1Var.f8345a;
        boolean z4 = true;
        if (!zzysVar8.i) {
            z2 = rl1Var.f8349e;
            z4 = z2;
        }
        zzysVar9 = rl1Var.f8345a;
        String str2 = zzysVar9.j;
        zzysVar10 = rl1Var.f8345a;
        zzadu zzaduVar = zzysVar10.k;
        zzysVar11 = rl1Var.f8345a;
        Location location = zzysVar11.l;
        zzysVar12 = rl1Var.f8345a;
        String str3 = zzysVar12.m;
        zzysVar13 = rl1Var.f8345a;
        Bundle bundle2 = zzysVar13.n;
        zzysVar14 = rl1Var.f8345a;
        Bundle bundle3 = zzysVar14.o;
        zzysVar15 = rl1Var.f8345a;
        List list2 = zzysVar15.p;
        zzysVar16 = rl1Var.f8345a;
        String str4 = zzysVar16.q;
        zzysVar17 = rl1Var.f8345a;
        String str5 = zzysVar17.r;
        zzysVar18 = rl1Var.f8345a;
        boolean z5 = zzysVar18.s;
        zzysVar19 = rl1Var.f8345a;
        zzyk zzykVar = zzysVar19.t;
        zzysVar20 = rl1Var.f8345a;
        int i5 = zzysVar20.u;
        zzysVar21 = rl1Var.f8345a;
        String str6 = zzysVar21.v;
        zzysVar22 = rl1Var.f8345a;
        List list3 = zzysVar22.w;
        zzysVar23 = rl1Var.f8345a;
        this.f8499d = new zzys(i2, j, bundle, i3, list, z3, i4, z4, str2, zzaduVar, location, str3, bundle2, bundle3, list2, str4, str5, z5, zzykVar, i5, str6, list3, C1433l1.m8797A(zzysVar23.x));
        zzadyVar = rl1Var.f8348d;
        if (zzadyVar != null) {
            zzadyVar2 = rl1Var.f8348d;
        } else {
            zzagyVar3 = rl1Var.f8352h;
            if (zzagyVar3 != null) {
                zzagyVar4 = rl1Var.f8352h;
                zzadyVar2 = zzagyVar4.g;
            } else {
                zzadyVar2 = null;
            }
        }
        this.f8496a = zzadyVar2;
        arrayList = rl1Var.f8350f;
        this.f8502g = arrayList;
        arrayList2 = rl1Var.f8351g;
        this.f8503h = arrayList2;
        arrayList3 = rl1Var.f8350f;
        if (arrayList3 == null) {
            zzagyVar = null;
        } else {
            zzagyVar2 = rl1Var.f8352h;
            zzagyVar = zzagyVar2 == null ? new zzagy(new C1362c.C1363a().m8994a()) : rl1Var.f8352h;
        }
        this.f8504i = zzagyVar;
        zzzdVar = rl1Var.f8353i;
        this.f8505j = zzzdVar;
        i = rl1Var.f8357m;
        this.f8506k = i;
        adManagerAdViewOptions = rl1Var.f8354j;
        this.f8507l = adManagerAdViewOptions;
        publisherAdViewOptions = rl1Var.f8355k;
        this.f8508m = publisherAdViewOptions;
        e0Var = rl1Var.f8356l;
        this.f8509n = e0Var;
        zzamvVar = rl1Var.f8358n;
        this.f8497b = zzamvVar;
        gl1Var = rl1Var.f8359o;
        this.f8510o = new hl1(gl1Var, null);
        z = rl1Var.f8360p;
        this.f8511p = z;
        f71Var = rl1Var.f8361q;
        this.f8498c = f71Var;
    }

    /* renamed from: a */
    public final AbstractC1955t7 m5644a() {
        PublisherAdViewOptions publisherAdViewOptions = this.f8508m;
        if (publisherAdViewOptions == null && this.f8507l == null) {
            return null;
        }
        return publisherAdViewOptions != null ? publisherAdViewOptions.p() : this.f8507l.p();
    }
}
