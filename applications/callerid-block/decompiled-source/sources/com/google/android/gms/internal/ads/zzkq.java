package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzkq.class */
public final class zzkq implements Comparator<zzkp>, Parcelable {
    public static final Parcelable.Creator<zzkq> CREATOR = new tm2();

    /* renamed from: b */
    private final zzkp[] f9706b;

    /* renamed from: c */
    private int f9707c;

    /* renamed from: d */
    public final int f9708d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkq(Parcel parcel) {
        zzkp[] zzkpVarArr = (zzkp[]) parcel.createTypedArray(zzkp.CREATOR);
        this.f9706b = zzkpVarArr;
        this.f9708d = zzkpVarArr.length;
    }

    public zzkq(List<zzkp> list) {
        this(false, (zzkp[]) list.toArray(new zzkp[list.size()]));
    }

    private zzkq(boolean z, zzkp... zzkpVarArr) {
        UUID uuid;
        UUID uuid2;
        UUID uuid3;
        zzkp[] zzkpVarArr2 = z ? (zzkp[]) zzkpVarArr.clone() : zzkpVarArr;
        Arrays.sort(zzkpVarArr2, this);
        int i = 1;
        while (true) {
            int length = zzkpVarArr2.length;
            if (i < length) {
                uuid = zzkpVarArr2[i - 1].f9702c;
                uuid2 = zzkpVarArr2[i].f9702c;
                if (!uuid.equals(uuid2)) {
                    i++;
                } else {
                    uuid3 = zzkpVarArr2[i].f9702c;
                    String valueOf = String.valueOf(uuid3);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
                    sb.append("Duplicate data for uuid: ");
                    sb.append(valueOf);
                    throw new IllegalArgumentException(sb.toString());
                }
            } else {
                this.f9706b = zzkpVarArr2;
                this.f9708d = length;
                return;
            }
        }
    }

    public zzkq(zzkp... zzkpVarArr) {
        this(true, zzkpVarArr);
    }

    /* renamed from: a */
    public final zzkp m4474a(int i) {
        return this.f9706b[i];
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzkp zzkpVar, zzkp zzkpVar2) {
        UUID uuid;
        int i;
        UUID uuid2;
        UUID uuid3;
        UUID uuid4;
        zzkp zzkpVar3 = zzkpVar;
        zzkp zzkpVar4 = zzkpVar2;
        UUID uuid5 = rk2.f8344b;
        uuid = zzkpVar3.f9702c;
        if (uuid5.equals(uuid)) {
            uuid4 = zzkpVar4.f9702c;
            if (uuid5.equals(uuid4)) {
                return 0;
            }
            i = 1;
        } else {
            uuid2 = zzkpVar3.f9702c;
            uuid3 = zzkpVar4.f9702c;
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
        if (obj == null || zzkq.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f9706b, ((zzkq) obj).f9706b);
    }

    public final int hashCode() {
        int i = this.f9707c;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.f9706b);
            this.f9707c = i2;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f9706b, 0);
    }
}
