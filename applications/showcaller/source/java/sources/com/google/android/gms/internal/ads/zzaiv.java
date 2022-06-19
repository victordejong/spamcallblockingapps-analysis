package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaiv.class */
public final class zzaiv implements Parcelable {
    public static final Parcelable.Creator<zzaiv> CREATOR = new C6950s7();

    /* renamed from: d */
    private final zzaiu[] f33472d;

    public zzaiv(Parcel parcel) {
        this.f33472d = new zzaiu[parcel.readInt()];
        int i = 0;
        while (true) {
            zzaiu[] zzaiuVarArr = this.f33472d;
            if (i < zzaiuVarArr.length) {
                zzaiuVarArr[i] = (zzaiu) parcel.readParcelable(zzaiu.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public zzaiv(List<? extends zzaiu> list) {
        this.f33472d = (zzaiu[]) list.toArray(new zzaiu[0]);
    }

    public zzaiv(zzaiu... zzaiuVarArr) {
        this.f33472d = zzaiuVarArr;
    }

    /* renamed from: a */
    public final int m8118a() {
        return this.f33472d.length;
    }

    /* renamed from: b */
    public final zzaiu m8117b(int i) {
        return this.f33472d[i];
    }

    /* renamed from: c */
    public final zzaiv m8116c(zzaiv zzaivVar) {
        return zzaivVar == null ? this : m8115d(zzaivVar.f33472d);
    }

    /* renamed from: d */
    public final zzaiv m8115d(zzaiu... zzaiuVarArr) {
        return zzaiuVarArr.length == 0 ? this : new zzaiv((zzaiu[]) C7101wa.m9716L(this.f33472d, zzaiuVarArr));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaiv.class == obj.getClass()) {
            return Arrays.equals(this.f33472d, ((zzaiv) obj).f33472d);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f33472d);
    }

    public final String toString() {
        String valueOf = String.valueOf(Arrays.toString(this.f33472d));
        return valueOf.length() != 0 ? "entries=".concat(valueOf) : new String("entries=");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f33472d.length);
        for (zzaiu zzaiuVar : this.f33472d) {
            parcel.writeParcelable(zzaiuVar, 0);
        }
    }
}
