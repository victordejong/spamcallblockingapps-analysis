package androidx.media2.exoplayer.external.drm;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.UUID;
import p1727n3.p1874y.p1876b.p1877a.C27073c;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmInitData.class */
public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new C0237a();

    /* renamed from: a */
    public final SchemeData[] f978a;

    /* renamed from: b */
    public int f979b;

    /* renamed from: c */
    public final String f980c;

    /* renamed from: d */
    public final int f981d;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmInitData$SchemeData.class */
    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new C0236a();

        /* renamed from: a */
        public int f982a;

        /* renamed from: b */
        public final UUID f983b;

        /* renamed from: c */
        public final String f984c;

        /* renamed from: d */
        public final String f985d;

        /* renamed from: e */
        public final byte[] f986e;

        /* renamed from: androidx.media2.exoplayer.external.drm.DrmInitData$SchemeData$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmInitData$SchemeData$a.class */
        public class C0236a implements Parcelable.Creator<SchemeData> {
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
            this.f983b = new UUID(parcel.readLong(), parcel.readLong());
            this.f984c = parcel.readString();
            String readString = parcel.readString();
            int i = C27445x.f77229a;
            this.f985d = readString;
            this.f986e = parcel.createByteArray();
        }

        public SchemeData(UUID uuid, String str, String str2, byte[] bArr) {
            Objects.requireNonNull(uuid);
            this.f983b = uuid;
            this.f984c = str;
            Objects.requireNonNull(str2);
            this.f985d = str2;
            this.f986e = bArr;
        }

        public SchemeData(UUID uuid, String str, byte[] bArr) {
            Objects.requireNonNull(uuid);
            this.f983b = uuid;
            this.f984c = null;
            this.f985d = str;
            this.f986e = bArr;
        }

        /* renamed from: a */
        public boolean m42829a(UUID uuid) {
            return C27073c.f75656a.equals(this.f983b) || uuid.equals(this.f983b);
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
            if (C27445x.m286a(this.f984c, schemeData.f984c)) {
                z = false;
                if (C27445x.m286a(this.f985d, schemeData.f985d)) {
                    z = false;
                    if (C27445x.m286a(this.f983b, schemeData.f983b)) {
                        z = false;
                        if (Arrays.equals(this.f986e, schemeData.f986e)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            if (this.f982a == 0) {
                int hashCode = this.f983b.hashCode();
                String str = this.f984c;
                this.f982a = Arrays.hashCode(this.f986e) + C22128a.m8579q2(this.f985d, ((hashCode * 31) + (str == null ? 0 : str.hashCode())) * 31, 31);
            }
            return this.f982a;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f983b.getMostSignificantBits());
            parcel.writeLong(this.f983b.getLeastSignificantBits());
            parcel.writeString(this.f984c);
            parcel.writeString(this.f985d);
            parcel.writeByteArray(this.f986e);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.drm.DrmInitData$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmInitData$a.class */
    public class C0237a implements Parcelable.Creator<DrmInitData> {
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
        this.f980c = parcel.readString();
        SchemeData[] schemeDataArr = (SchemeData[]) parcel.createTypedArray(SchemeData.CREATOR);
        int i = C27445x.f77229a;
        this.f978a = schemeDataArr;
        this.f981d = schemeDataArr.length;
    }

    public DrmInitData(String str, boolean z, SchemeData... schemeDataArr) {
        this.f980c = str;
        SchemeData[] schemeDataArr2 = z ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.f978a = schemeDataArr2;
        this.f981d = schemeDataArr2.length;
        Arrays.sort(schemeDataArr2, this);
    }

    /* renamed from: a */
    public DrmInitData m42830a(String str) {
        return C27445x.m286a(this.f980c, str) ? this : new DrmInitData(str, false, this.f978a);
    }

    @Override // java.util.Comparator
    public int compare(SchemeData schemeData, SchemeData schemeData2) {
        SchemeData schemeData3 = schemeData;
        SchemeData schemeData4 = schemeData2;
        UUID uuid = C27073c.f75656a;
        return uuid.equals(schemeData3.f983b) ? uuid.equals(schemeData4.f983b) ? 0 : 1 : schemeData3.f983b.compareTo(schemeData4.f983b);
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
        if (!C27445x.m286a(this.f980c, drmInitData.f980c) || !Arrays.equals(this.f978a, drmInitData.f978a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f979b == 0) {
            String str = this.f980c;
            this.f979b = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f978a);
        }
        return this.f979b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f980c);
        parcel.writeTypedArray(this.f978a, 0);
    }
}
