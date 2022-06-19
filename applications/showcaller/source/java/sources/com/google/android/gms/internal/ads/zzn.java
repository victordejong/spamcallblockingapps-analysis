package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzn.class */
public final class zzn implements Comparator<zzm>, Parcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new gn3();

    /* renamed from: d */
    private final zzm[] f34218d;

    /* renamed from: e */
    private int f34219e;

    /* renamed from: f */
    public final String f34220f;

    public zzn(Parcel parcel) {
        this.f34220f = parcel.readString();
        zzm[] zzmVarArr = (zzm[]) C7101wa.m9719I((zzm[]) parcel.createTypedArray(zzm.CREATOR));
        this.f34218d = zzmVarArr;
        int length = zzmVarArr.length;
    }

    private zzn(String str, boolean z, zzm... zzmVarArr) {
        this.f34220f = str;
        zzm[] zzmVarArr2 = z ? (zzm[]) zzmVarArr.clone() : zzmVarArr;
        this.f34218d = zzmVarArr2;
        int length = zzmVarArr2.length;
        Arrays.sort(zzmVarArr2, this);
    }

    public zzn(String str, zzm... zzmVarArr) {
        this(null, true, zzmVarArr);
    }

    public zzn(List<zzm> list) {
        this(null, false, (zzm[]) list.toArray(new zzm[0]));
    }

    /* renamed from: a */
    public final zzn m7852a(String str) {
        return C7101wa.m9720H(this.f34220f, str) ? this : new zzn(str, false, this.f34218d);
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzm zzmVar, zzm zzmVar2) {
        int i;
        zzm zzmVar3 = zzmVar;
        zzm zzmVar4 = zzmVar2;
        UUID uuid = C7130x2.f31884a;
        if (!uuid.equals(zzmVar3.f34214e)) {
            i = zzmVar3.f34214e.compareTo(zzmVar4.f34214e);
        } else if (uuid.equals(zzmVar4.f34214e)) {
            return 0;
        } else {
            i = 1;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzn.class != obj.getClass()) {
            return false;
        }
        zzn zznVar = (zzn) obj;
        return C7101wa.m9720H(this.f34220f, zznVar.f34220f) && Arrays.equals(this.f34218d, zznVar.f34218d);
    }

    public final int hashCode() {
        int i = this.f34219e;
        int i2 = i;
        if (i == 0) {
            String str = this.f34220f;
            i2 = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f34218d);
            this.f34219e = i2;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f34220f);
        parcel.writeTypedArray(this.f34218d, 0);
    }
}
