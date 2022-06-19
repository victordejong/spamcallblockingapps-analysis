package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapk.class */
public final class zzapk implements Comparator<zzapj>, Parcelable {
    public static final Parcelable.Creator<zzapk> CREATOR = new C6585id();

    /* renamed from: d */
    private final zzapj[] f33578d;

    /* renamed from: e */
    private int f33579e;

    /* renamed from: f */
    public final int f33580f;

    public zzapk(Parcel parcel) {
        zzapj[] zzapjVarArr = (zzapj[]) parcel.createTypedArray(zzapj.CREATOR);
        this.f33578d = zzapjVarArr;
        this.f33580f = zzapjVarArr.length;
    }

    public zzapk(List<zzapj> list) {
        this(false, (zzapj[]) list.toArray(new zzapj[list.size()]));
    }

    private zzapk(boolean z, zzapj... zzapjVarArr) {
        UUID uuid;
        UUID uuid2;
        UUID uuid3;
        zzapj[] zzapjVarArr2 = z ? (zzapj[]) zzapjVarArr.clone() : zzapjVarArr;
        Arrays.sort(zzapjVarArr2, this);
        int i = 1;
        while (true) {
            int length = zzapjVarArr2.length;
            if (i >= length) {
                this.f33578d = zzapjVarArr2;
                this.f33580f = length;
                return;
            }
            uuid = zzapjVarArr2[i - 1].f33574e;
            uuid2 = zzapjVarArr2[i].f33574e;
            if (uuid.equals(uuid2)) {
                uuid3 = zzapjVarArr2[i].f33574e;
                String valueOf = String.valueOf(uuid3);
                valueOf.length();
                throw new IllegalArgumentException("Duplicate data for uuid: ".concat(valueOf));
            }
            i++;
        }
    }

    public zzapk(zzapj... zzapjVarArr) {
        this(true, zzapjVarArr);
    }

    /* renamed from: a */
    public final zzapj m8098a(int i) {
        return this.f33578d[i];
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzapj zzapjVar, zzapj zzapjVar2) {
        UUID uuid;
        int i;
        UUID uuid2;
        UUID uuid3;
        UUID uuid4;
        zzapj zzapjVar3 = zzapjVar;
        zzapj zzapjVar4 = zzapjVar2;
        UUID uuid5 = C6397db.f21567b;
        uuid = zzapjVar3.f33574e;
        if (uuid5.equals(uuid)) {
            uuid4 = zzapjVar4.f33574e;
            if (uuid5.equals(uuid4)) {
                return 0;
            }
            i = 1;
        } else {
            uuid2 = zzapjVar3.f33574e;
            uuid3 = zzapjVar4.f33574e;
            i = uuid2.compareTo(uuid3);
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
        if (obj != null && zzapk.class == obj.getClass()) {
            return Arrays.equals(this.f33578d, ((zzapk) obj).f33578d);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f33579e;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.f33578d);
            this.f33579e = i2;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f33578d, 0);
    }
}
