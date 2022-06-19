package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzaa.class */
public final class zzaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaa> CREATOR = new C7656b();

    /* renamed from: d */
    public String f35860d;

    /* renamed from: e */
    public String f35861e;

    /* renamed from: f */
    public zzkl f35862f;

    /* renamed from: g */
    public long f35863g;

    /* renamed from: h */
    public boolean f35864h;

    /* renamed from: i */
    public String f35865i;

    /* renamed from: j */
    public final zzas f35866j;

    /* renamed from: k */
    public long f35867k;

    /* renamed from: l */
    public zzas f35868l;

    /* renamed from: m */
    public final long f35869m;

    /* renamed from: n */
    public final zzas f35870n;

    public zzaa(zzaa zzaaVar) {
        C6155o.m17018j(zzaaVar);
        this.f35860d = zzaaVar.f35860d;
        this.f35861e = zzaaVar.f35861e;
        this.f35862f = zzaaVar.f35862f;
        this.f35863g = zzaaVar.f35863g;
        this.f35864h = zzaaVar.f35864h;
        this.f35865i = zzaaVar.f35865i;
        this.f35866j = zzaaVar.f35866j;
        this.f35867k = zzaaVar.f35867k;
        this.f35868l = zzaaVar.f35868l;
        this.f35869m = zzaaVar.f35869m;
        this.f35870n = zzaaVar.f35870n;
    }

    public zzaa(String str, String str2, zzkl zzklVar, long j, boolean z, String str3, zzas zzasVar, long j2, zzas zzasVar2, long j3, zzas zzasVar3) {
        this.f35860d = str;
        this.f35861e = str2;
        this.f35862f = zzklVar;
        this.f35863g = j;
        this.f35864h = z;
        this.f35865i = str3;
        this.f35866j = zzasVar;
        this.f35867k = j2;
        this.f35868l = zzasVar2;
        this.f35869m = j3;
        this.f35870n = zzasVar3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 2, this.f35860d, false);
        C6170a.m16930r(parcel, 3, this.f35861e, false);
        C6170a.m16931q(parcel, 4, this.f35862f, i, false);
        C6170a.m16934n(parcel, 5, this.f35863g);
        C6170a.m16945c(parcel, 6, this.f35864h);
        C6170a.m16930r(parcel, 7, this.f35865i, false);
        C6170a.m16931q(parcel, 8, this.f35866j, i, false);
        C6170a.m16934n(parcel, 9, this.f35867k);
        C6170a.m16931q(parcel, 10, this.f35868l, i, false);
        C6170a.m16934n(parcel, 11, this.f35869m);
        C6170a.m16931q(parcel, 12, this.f35870n, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
