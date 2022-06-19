package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.C5608c;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xj2.class */
public final class xj2 {

    /* renamed from: a */
    public final zzbis f32074a;

    /* renamed from: b */
    public final zzbrx f32075b;

    /* renamed from: c */
    public final a42 f32076c;

    /* renamed from: d */
    public final zzbdg f32077d;

    /* renamed from: e */
    public final zzbdl f32078e;

    /* renamed from: f */
    public final String f32079f;

    /* renamed from: g */
    public final ArrayList<String> f32080g;

    /* renamed from: h */
    public final ArrayList<String> f32081h;

    /* renamed from: i */
    public final zzblv f32082i;

    /* renamed from: j */
    public final zzbdr f32083j;

    /* renamed from: k */
    public final int f32084k;

    /* renamed from: l */
    public final AdManagerAdViewOptions f32085l;

    /* renamed from: m */
    public final PublisherAdViewOptions f32086m;

    /* renamed from: n */
    public final AbstractC6304at f32087n;

    /* renamed from: o */
    public final nj2 f32088o;

    /* renamed from: p */
    public final boolean f32089p;

    /* renamed from: q */
    public final C6453et f32090q;

    public /* synthetic */ xj2(vj2 vj2Var, wj2 wj2Var) {
        zzbdl zzbdlVar;
        String str;
        C6453et c6453et;
        zzbdg zzbdgVar;
        zzbdg zzbdgVar2;
        zzbdg zzbdgVar3;
        zzbdg zzbdgVar4;
        zzbdg zzbdgVar5;
        zzbdg zzbdgVar6;
        zzbdg zzbdgVar7;
        zzbdg zzbdgVar8;
        zzbdg zzbdgVar9;
        zzbdg zzbdgVar10;
        zzbdg zzbdgVar11;
        zzbdg zzbdgVar12;
        zzbdg zzbdgVar13;
        zzbdg zzbdgVar14;
        zzbdg zzbdgVar15;
        zzbdg zzbdgVar16;
        zzbdg zzbdgVar17;
        zzbdg zzbdgVar18;
        zzbdg zzbdgVar19;
        zzbdg zzbdgVar20;
        zzbdg zzbdgVar21;
        zzbdg zzbdgVar22;
        zzbdg zzbdgVar23;
        zzbdg zzbdgVar24;
        zzbis zzbisVar;
        zzbis zzbisVar2;
        ArrayList<String> arrayList;
        ArrayList<String> arrayList2;
        ArrayList arrayList3;
        zzblv zzblvVar;
        zzbdr zzbdrVar;
        int i;
        AdManagerAdViewOptions adManagerAdViewOptions;
        PublisherAdViewOptions publisherAdViewOptions;
        AbstractC6304at abstractC6304at;
        zzbrx zzbrxVar;
        lj2 lj2Var;
        boolean z;
        a42 a42Var;
        zzblv zzblvVar2;
        zzblv zzblvVar3;
        zzblv zzblvVar4;
        zzblv zzblvVar5;
        zzbis zzbisVar3;
        boolean z2;
        zzbdlVar = vj2Var.f31211b;
        this.f32078e = zzbdlVar;
        str = vj2Var.f31212c;
        this.f32079f = str;
        c6453et = vj2Var.f31227r;
        this.f32090q = c6453et;
        zzbdgVar = vj2Var.f31210a;
        int i2 = zzbdgVar.f33659d;
        zzbdgVar2 = vj2Var.f31210a;
        long j = zzbdgVar2.f33660e;
        zzbdgVar3 = vj2Var.f31210a;
        Bundle bundle = zzbdgVar3.f33661f;
        zzbdgVar4 = vj2Var.f31210a;
        int i3 = zzbdgVar4.f33662g;
        zzbdgVar5 = vj2Var.f31210a;
        List<String> list = zzbdgVar5.f33663h;
        zzbdgVar6 = vj2Var.f31210a;
        boolean z3 = zzbdgVar6.f33664i;
        zzbdgVar7 = vj2Var.f31210a;
        int i4 = zzbdgVar7.f33665j;
        zzbdgVar8 = vj2Var.f31210a;
        boolean z4 = true;
        if (!zzbdgVar8.f33666k) {
            z2 = vj2Var.f31214e;
            z4 = z2;
        }
        zzbdgVar9 = vj2Var.f31210a;
        String str2 = zzbdgVar9.f33667l;
        zzbdgVar10 = vj2Var.f31210a;
        zzbio zzbioVar = zzbdgVar10.f33668m;
        zzbdgVar11 = vj2Var.f31210a;
        Location location = zzbdgVar11.f33669n;
        zzbdgVar12 = vj2Var.f31210a;
        String str3 = zzbdgVar12.f33670o;
        zzbdgVar13 = vj2Var.f31210a;
        Bundle bundle2 = zzbdgVar13.f33671p;
        zzbdgVar14 = vj2Var.f31210a;
        Bundle bundle3 = zzbdgVar14.f33672q;
        zzbdgVar15 = vj2Var.f31210a;
        List<String> list2 = zzbdgVar15.f33673r;
        zzbdgVar16 = vj2Var.f31210a;
        String str4 = zzbdgVar16.f33674s;
        zzbdgVar17 = vj2Var.f31210a;
        String str5 = zzbdgVar17.f33675t;
        zzbdgVar18 = vj2Var.f31210a;
        boolean z5 = zzbdgVar18.f33676u;
        zzbdgVar19 = vj2Var.f31210a;
        zzbcx zzbcxVar = zzbdgVar19.f33677v;
        zzbdgVar20 = vj2Var.f31210a;
        int i5 = zzbdgVar20.f33678w;
        zzbdgVar21 = vj2Var.f31210a;
        String str6 = zzbdgVar21.f33679x;
        zzbdgVar22 = vj2Var.f31210a;
        List<String> list3 = zzbdgVar22.f33680y;
        zzbdgVar23 = vj2Var.f31210a;
        int m18096L = C5679c2.m18096L(zzbdgVar23.f33681z);
        zzbdgVar24 = vj2Var.f31210a;
        this.f32077d = new zzbdg(i2, j, bundle, i3, list, z3, i4, z4, str2, zzbioVar, location, str3, bundle2, bundle3, list2, str4, str5, z5, zzbcxVar, i5, str6, list3, m18096L, zzbdgVar24.f33658A);
        zzbisVar = vj2Var.f31213d;
        if (zzbisVar != null) {
            zzbisVar3 = vj2Var.f31213d;
            zzbisVar2 = zzbisVar3;
        } else {
            zzblvVar4 = vj2Var.f31217h;
            if (zzblvVar4 != null) {
                zzblvVar5 = vj2Var.f31217h;
                zzbisVar2 = zzblvVar5.f33722i;
            } else {
                zzbisVar2 = null;
            }
        }
        this.f32074a = zzbisVar2;
        arrayList = vj2Var.f31215f;
        this.f32080g = arrayList;
        arrayList2 = vj2Var.f31216g;
        this.f32081h = arrayList2;
        arrayList3 = vj2Var.f31215f;
        if (arrayList3 == null) {
            zzblvVar = null;
        } else {
            zzblvVar2 = vj2Var.f31217h;
            if (zzblvVar2 == null) {
                zzblvVar = new zzblv(new C5608c.C5609a().m18250a());
            } else {
                zzblvVar3 = vj2Var.f31217h;
                zzblvVar = zzblvVar3;
            }
        }
        this.f32082i = zzblvVar;
        zzbdrVar = vj2Var.f31218i;
        this.f32083j = zzbdrVar;
        i = vj2Var.f31222m;
        this.f32084k = i;
        adManagerAdViewOptions = vj2Var.f31219j;
        this.f32085l = adManagerAdViewOptions;
        publisherAdViewOptions = vj2Var.f31220k;
        this.f32086m = publisherAdViewOptions;
        abstractC6304at = vj2Var.f31221l;
        this.f32087n = abstractC6304at;
        zzbrxVar = vj2Var.f31223n;
        this.f32075b = zzbrxVar;
        lj2Var = vj2Var.f31224o;
        this.f32088o = new nj2(lj2Var, null);
        z = vj2Var.f31225p;
        this.f32089p = z;
        a42Var = vj2Var.f31226q;
        this.f32076c = a42Var;
    }

    /* renamed from: a */
    public final w00 m9148a() {
        PublisherAdViewOptions publisherAdViewOptions = this.f32086m;
        if (publisherAdViewOptions == null && this.f32085l == null) {
            return null;
        }
        return publisherAdViewOptions != null ? publisherAdViewOptions.m18258l0() : this.f32085l.m18260l0();
    }
}
