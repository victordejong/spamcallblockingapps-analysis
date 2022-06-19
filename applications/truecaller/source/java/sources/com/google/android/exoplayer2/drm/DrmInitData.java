package com.google.android.exoplayer2.drm;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.C24854v;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData.class */
public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new C1969a();

    /* renamed from: a */
    public final SchemeData[] f4875a;

    /* renamed from: b */
    public int f4876b;

    /* renamed from: c */
    public final String f4877c;

    /* renamed from: d */
    public final int f4878d;

    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData$SchemeData.class */
    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new C1968a();

        /* renamed from: a */
        public int f4879a;

        /* renamed from: b */
        public final UUID f4880b;

        /* renamed from: c */
        public final String f4881c;

        /* renamed from: d */
        public final String f4882d;

        /* renamed from: e */
        public final byte[] f4883e;

        /* renamed from: com.google.android.exoplayer2.drm.DrmInitData$SchemeData$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData$SchemeData$a.class */
        public static final class C1968a implements Parcelable.Creator<SchemeData> {
            @Override // android.os.Parcelable.Creator
            public SchemeData createFromParcel(Parcel parcel) {
                return new SchemeData(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SchemeData[] newArray(int i) {
                return new SchemeData[i];
            }
        }

        public SchemeData(Parcel parcel) {
            this.f4880b = new UUID(parcel.readLong(), parcel.readLong());
            this.f4881c = parcel.readString();
            String readString = parcel.readString();
            int i = C24773d0.f69427a;
            this.f4882d = readString;
            this.f4883e = parcel.createByteArray();
        }

        public SchemeData(UUID uuid, String str, byte[] bArr) {
            Objects.requireNonNull(uuid);
            this.f4880b = uuid;
            this.f4881c = null;
            this.f4882d = str;
            this.f4883e = bArr;
        }

        /* renamed from: a */
        public boolean m39241a(UUID uuid) {
            return C24854v.f69701a.equals(this.f4880b) || uuid.equals(this.f4880b);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof SchemeData)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            SchemeData schemeData = (SchemeData) obj;
            boolean z = false;
            if (C24773d0.m4623a(this.f4881c, schemeData.f4881c)) {
                z = false;
                if (C24773d0.m4623a(this.f4882d, schemeData.f4882d)) {
                    z = false;
                    if (C24773d0.m4623a(this.f4880b, schemeData.f4880b)) {
                        z = false;
                        if (Arrays.equals(this.f4883e, schemeData.f4883e)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            if (this.f4879a == 0) {
                int hashCode = this.f4880b.hashCode();
                String str = this.f4881c;
                this.f4879a = Arrays.hashCode(this.f4883e) + C22128a.m8579q2(this.f4882d, ((hashCode * 31) + (str == null ? 0 : str.hashCode())) * 31, 31);
            }
            return this.f4879a;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f4880b.getMostSignificantBits());
            parcel.writeLong(this.f4880b.getLeastSignificantBits());
            parcel.writeString(this.f4881c);
            parcel.writeString(this.f4882d);
            parcel.writeByteArray(this.f4883e);
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DrmInitData$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData$a.class */
    public static final class C1969a implements Parcelable.Creator<DrmInitData> {
        @Override // android.os.Parcelable.Creator
        public DrmInitData createFromParcel(Parcel parcel) {
            return new DrmInitData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DrmInitData[] newArray(int i) {
            return new DrmInitData[i];
        }
    }

    public DrmInitData(Parcel parcel) {
        this.f4877c = parcel.readString();
        Object[] createTypedArray = parcel.createTypedArray(SchemeData.CREATOR);
        int i = C24773d0.f69427a;
        SchemeData[] schemeDataArr = (SchemeData[]) createTypedArray;
        this.f4875a = schemeDataArr;
        this.f4878d = schemeDataArr.length;
    }

    public DrmInitData(String str, boolean z, SchemeData... schemeDataArr) {
        this.f4877c = str;
        SchemeData[] schemeDataArr2 = z ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.f4875a = schemeDataArr2;
        this.f4878d = schemeDataArr2.length;
        Arrays.sort(schemeDataArr2, this);
    }

    /* renamed from: a */
    public DrmInitData m39242a(String str) {
        return C24773d0.m4623a(this.f4877c, str) ? this : new DrmInitData(str, false, this.f4875a);
    }

    @Override // java.util.Comparator
    public int compare(SchemeData schemeData, SchemeData schemeData2) {
        SchemeData schemeData3 = schemeData;
        SchemeData schemeData4 = schemeData2;
        UUID uuid = C24854v.f69701a;
        return uuid.equals(schemeData3.f4880b) ? uuid.equals(schemeData4.f4880b) ? 0 : 1 : schemeData3.f4880b.compareTo(schemeData4.f4880b);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || DrmInitData.class != obj.getClass()) {
            return false;
        }
        DrmInitData drmInitData = (DrmInitData) obj;
        if (!C24773d0.m4623a(this.f4877c, drmInitData.f4877c) || !Arrays.equals(this.f4875a, drmInitData.f4875a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f4876b == 0) {
            String str = this.f4877c;
            this.f4876b = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f4875a);
        }
        return this.f4876b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4877c);
        parcel.writeTypedArray(this.f4875a, 0);
    }
}
