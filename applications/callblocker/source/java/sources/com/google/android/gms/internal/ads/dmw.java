package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmw.class */
public final class dmw implements Parcelable, Comparator<C3005a> {
    public static final Parcelable.Creator<dmw> CREATOR = new dmy();

    /* renamed from: a */
    public final int f14871a;

    /* renamed from: b */
    private final C3005a[] f14872b;

    /* renamed from: c */
    private int f14873c;

    /* renamed from: com.google.android.gms.internal.ads.dmw$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmw$a.class */
    public static final class C3005a implements Parcelable {
        public static final Parcelable.Creator<C3005a> CREATOR = new dna();

        /* renamed from: a */
        public final boolean f14874a;

        /* renamed from: b */
        private int f14875b;

        /* renamed from: c */
        private final UUID f14876c;

        /* renamed from: d */
        private final String f14877d;

        /* renamed from: e */
        private final byte[] f14878e;

        public C3005a(Parcel parcel) {
            this.f14876c = new UUID(parcel.readLong(), parcel.readLong());
            this.f14877d = parcel.readString();
            this.f14878e = parcel.createByteArray();
            this.f14874a = parcel.readByte() != 0;
        }

        public C3005a(UUID uuid, String str, byte[] bArr) {
            this(uuid, str, bArr, false);
        }

        private C3005a(UUID uuid, String str, byte[] bArr, boolean z) {
            this.f14876c = (UUID) drz.m8774a(uuid);
            this.f14877d = (String) drz.m8774a(str);
            this.f14878e = (byte[]) drz.m8774a(bArr);
            this.f14874a = false;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (!(obj instanceof C3005a)) {
                z = false;
            } else if (obj == this) {
                z = true;
            } else {
                C3005a c3005a = (C3005a) obj;
                z = false;
                if (this.f14877d.equals(c3005a.f14877d)) {
                    z = false;
                    if (dsn.m8704a(this.f14876c, c3005a.f14876c)) {
                        z = false;
                        if (Arrays.equals(this.f14878e, c3005a.f14878e)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            if (this.f14875b == 0) {
                this.f14875b = (((this.f14876c.hashCode() * 31) + this.f14877d.hashCode()) * 31) + Arrays.hashCode(this.f14878e);
            }
            return this.f14875b;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f14876c.getMostSignificantBits());
            parcel.writeLong(this.f14876c.getLeastSignificantBits());
            parcel.writeString(this.f14877d);
            parcel.writeByteArray(this.f14878e);
            parcel.writeByte((byte) (this.f14874a ? 1 : 0));
        }
    }

    public dmw(Parcel parcel) {
        this.f14872b = (C3005a[]) parcel.createTypedArray(C3005a.CREATOR);
        this.f14871a = this.f14872b.length;
    }

    private dmw(boolean z, C3005a... c3005aArr) {
        C3005a[] c3005aArr2 = (C3005a[]) c3005aArr.clone();
        Arrays.sort(c3005aArr2, this);
        for (int i = 1; i < c3005aArr2.length; i++) {
            if (c3005aArr2[i - 1].f14876c.equals(c3005aArr2[i].f14876c)) {
                String valueOf = String.valueOf(c3005aArr2[i].f14876c);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 25).append("Duplicate data for uuid: ").append(valueOf).toString());
            }
        }
        this.f14872b = c3005aArr2;
        this.f14871a = c3005aArr2.length;
    }

    public dmw(C3005a... c3005aArr) {
        this(true, c3005aArr);
    }

    /* renamed from: a */
    public final C3005a m9082a(int i) {
        return this.f14872b[i];
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(C3005a c3005a, C3005a c3005a2) {
        C3005a c3005a3 = c3005a;
        C3005a c3005a4 = c3005a2;
        return dkr.f14537b.equals(c3005a3.f14876c) ? dkr.f14537b.equals(c3005a4.f14876c) ? 0 : 1 : c3005a3.f14876c.compareTo(c3005a4.f14876c);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        return this == obj ? true : (obj == null || getClass() != obj.getClass()) ? false : Arrays.equals(this.f14872b, ((dmw) obj).f14872b);
    }

    public final int hashCode() {
        if (this.f14873c == 0) {
            this.f14873c = Arrays.hashCode(this.f14872b);
        }
        return this.f14873c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f14872b, 0);
    }
}
