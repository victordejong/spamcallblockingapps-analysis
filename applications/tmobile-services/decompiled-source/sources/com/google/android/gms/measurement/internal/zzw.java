package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzw.class */
public final class zzw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzw> CREATOR = new zzz();
    @SafeParcelable.Field

    /* renamed from: f */
    public String f9776f;
    @SafeParcelable.Field

    /* renamed from: g */
    public String f9777g;
    @SafeParcelable.Field

    /* renamed from: h */
    public zzkr f9778h;
    @SafeParcelable.Field

    /* renamed from: i */
    public long f9779i;
    @SafeParcelable.Field

    /* renamed from: j */
    public boolean f9780j;
    @SafeParcelable.Field

    /* renamed from: k */
    public String f9781k;
    @SafeParcelable.Field

    /* renamed from: l */
    public zzar f9782l;
    @SafeParcelable.Field

    /* renamed from: m */
    public long f9783m;
    @SafeParcelable.Field

    /* renamed from: n */
    public zzar f9784n;
    @SafeParcelable.Field

    /* renamed from: o */
    public long f9785o;
    @SafeParcelable.Field

    /* renamed from: p */
    public zzar f9786p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzw(zzw zzwVar) {
        Preconditions.m14523k(zzwVar);
        this.f9776f = zzwVar.f9776f;
        this.f9777g = zzwVar.f9777g;
        this.f9778h = zzwVar.f9778h;
        this.f9779i = zzwVar.f9779i;
        this.f9780j = zzwVar.f9780j;
        this.f9781k = zzwVar.f9781k;
        this.f9782l = zzwVar.f9782l;
        this.f9783m = zzwVar.f9783m;
        this.f9784n = zzwVar.f9784n;
        this.f9785o = zzwVar.f9785o;
        this.f9786p = zzwVar.f9786p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzw(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) zzkr zzkrVar, @SafeParcelable.Param(id = 5) long j, @SafeParcelable.Param(id = 6) boolean z, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) zzar zzarVar, @SafeParcelable.Param(id = 9) long j2, @SafeParcelable.Param(id = 10) zzar zzarVar2, @SafeParcelable.Param(id = 11) long j3, @SafeParcelable.Param(id = 12) zzar zzarVar3) {
        this.f9776f = str;
        this.f9777g = str2;
        this.f9778h = zzkrVar;
        this.f9779i = j;
        this.f9780j = z;
        this.f9781k = str3;
        this.f9782l = zzarVar;
        this.f9783m = j2;
        this.f9784n = zzarVar2;
        this.f9785o = j3;
        this.f9786p = zzarVar3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14447q(parcel, 2, this.f9776f, false);
        SafeParcelWriter.m14447q(parcel, 3, this.f9777g, false);
        SafeParcelWriter.m14448p(parcel, 4, this.f9778h, i, false);
        SafeParcelWriter.m14451m(parcel, 5, this.f9779i);
        SafeParcelWriter.m14461c(parcel, 6, this.f9780j);
        SafeParcelWriter.m14447q(parcel, 7, this.f9781k, false);
        SafeParcelWriter.m14448p(parcel, 8, this.f9782l, i, false);
        SafeParcelWriter.m14451m(parcel, 9, this.f9783m);
        SafeParcelWriter.m14448p(parcel, 10, this.f9784n, i, false);
        SafeParcelWriter.m14451m(parcel, 11, this.f9785o);
        SafeParcelWriter.m14448p(parcel, 12, this.f9786p, i, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
