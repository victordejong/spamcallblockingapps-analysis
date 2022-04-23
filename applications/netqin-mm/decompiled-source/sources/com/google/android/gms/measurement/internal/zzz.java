package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzz.class */
public final class zzz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzz> CREATOR = new zzy();
    @SafeParcelable.Field

    /* renamed from: a */
    public String f30178a;
    @SafeParcelable.Field

    /* renamed from: b */
    public String f30179b;
    @SafeParcelable.Field

    /* renamed from: c */
    public zzku f30180c;
    @SafeParcelable.Field

    /* renamed from: d */
    public long f30181d;
    @SafeParcelable.Field

    /* renamed from: e */
    public boolean f30182e;
    @SafeParcelable.Field

    /* renamed from: f */
    public String f30183f;
    @SafeParcelable.Field

    /* renamed from: g */
    public zzaq f30184g;
    @SafeParcelable.Field

    /* renamed from: h */
    public long f30185h;
    @SafeParcelable.Field

    /* renamed from: i */
    public zzaq f30186i;
    @SafeParcelable.Field

    /* renamed from: j */
    public long f30187j;
    @SafeParcelable.Field

    /* renamed from: k */
    public zzaq f30188k;

    public zzz(zzz zzzVar) {
        Preconditions.m17288a(zzzVar);
        this.f30178a = zzzVar.f30178a;
        this.f30179b = zzzVar.f30179b;
        this.f30180c = zzzVar.f30180c;
        this.f30181d = zzzVar.f30181d;
        this.f30182e = zzzVar.f30182e;
        this.f30183f = zzzVar.f30183f;
        this.f30184g = zzzVar.f30184g;
        this.f30185h = zzzVar.f30185h;
        this.f30186i = zzzVar.f30186i;
        this.f30187j = zzzVar.f30187j;
        this.f30188k = zzzVar.f30188k;
    }

    @SafeParcelable.Constructor
    public zzz(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) zzku zzkuVar, @SafeParcelable.Param(id = 5) long j, @SafeParcelable.Param(id = 6) boolean z, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) zzaq zzaqVar, @SafeParcelable.Param(id = 9) long j2, @SafeParcelable.Param(id = 10) zzaq zzaqVar2, @SafeParcelable.Param(id = 11) long j3, @SafeParcelable.Param(id = 12) zzaq zzaqVar3) {
        this.f30178a = str;
        this.f30179b = str2;
        this.f30180c = zzkuVar;
        this.f30181d = j;
        this.f30182e = z;
        this.f30183f = str3;
        this.f30184g = zzaqVar;
        this.f30185h = j2;
        this.f30186i = zzaqVar2;
        this.f30187j = j3;
        this.f30188k = zzaqVar3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f30178a, false);
        SafeParcelWriter.m17221a(parcel, 3, this.f30179b, false);
        SafeParcelWriter.m17226a(parcel, 4, (Parcelable) this.f30180c, i, false);
        SafeParcelWriter.m17230a(parcel, 5, this.f30181d);
        SafeParcelWriter.m17218a(parcel, 6, this.f30182e);
        SafeParcelWriter.m17221a(parcel, 7, this.f30183f, false);
        SafeParcelWriter.m17226a(parcel, 8, (Parcelable) this.f30184g, i, false);
        SafeParcelWriter.m17230a(parcel, 9, this.f30185h);
        SafeParcelWriter.m17226a(parcel, 10, (Parcelable) this.f30186i, i, false);
        SafeParcelWriter.m17230a(parcel, 11, this.f30187j);
        SafeParcelWriter.m17226a(parcel, 12, (Parcelable) this.f30188k, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
