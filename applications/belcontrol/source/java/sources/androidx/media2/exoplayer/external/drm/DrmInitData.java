package androidx.media2.exoplayer.external.drm;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmInitData.class */
public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new C0151a();

    /* renamed from: a */
    public final SchemeData[] f1135a;

    /* renamed from: b */
    public int f1136b;

    /* renamed from: c */
    public final String f1137c;

    /* renamed from: d */
    public final int f1138d;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmInitData$SchemeData.class */
    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new C0150a();

        /* renamed from: a */
        public int f1139a;

        /* renamed from: b */
        public final UUID f1140b;

        /* renamed from: c */
        public final String f1141c;

        /* renamed from: d */
        public final String f1142d;

        /* renamed from: f */
        public final byte[] f1143f;

        /* renamed from: androidx.media2.exoplayer.external.drm.DrmInitData$SchemeData$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmInitData$SchemeData$a.class */
        public class C0150a implements Parcelable.Creator<SchemeData> {
            /* renamed from: a */
            public SchemeData createFromParcel(Parcel parcel) {
                return new SchemeData(parcel);
            }

            /* renamed from: b */
            public SchemeData[] newArray(int i) {
                return new SchemeData[i];
            }
        }

        public SchemeData(Parcel parcel) {
            this.f1140b = new UUID(parcel.readLong(), parcel.readLong());
            this.f1141c = parcel.readString();
            String readString = parcel.readString();
            nu.g(readString);
            this.f1142d = readString;
            this.f1143f = parcel.createByteArray();
        }

        public SchemeData(UUID uuid, String str, String str2, byte[] bArr) {
            it.e(uuid);
            this.f1140b = uuid;
            this.f1141c = str;
            it.e(str2);
            this.f1142d = str2;
            this.f1143f = bArr;
        }

        public SchemeData(UUID uuid, String str, byte[] bArr) {
            this(uuid, null, str, bArr);
        }

        /* renamed from: b */
        public SchemeData m6455b(byte[] bArr) {
            return new SchemeData(this.f1140b, this.f1141c, this.f1142d, bArr);
        }

        /* renamed from: c */
        public boolean m6454c() {
            return this.f1143f != null;
        }

        /* renamed from: d */
        public boolean m6453d(UUID uuid) {
            return C0314cg.f2367a.equals(this.f1140b) || uuid.equals(this.f1140b);
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
            if (nu.b(this.f1141c, schemeData.f1141c)) {
                z = false;
                if (nu.b(this.f1142d, schemeData.f1142d)) {
                    z = false;
                    if (nu.b(this.f1140b, schemeData.f1140b)) {
                        z = false;
                        if (Arrays.equals(this.f1143f, schemeData.f1143f)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            if (this.f1139a == 0) {
                int hashCode = this.f1140b.hashCode();
                String str = this.f1141c;
                this.f1139a = (((((hashCode * 31) + (str == null ? 0 : str.hashCode())) * 31) + this.f1142d.hashCode()) * 31) + Arrays.hashCode(this.f1143f);
            }
            return this.f1139a;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f1140b.getMostSignificantBits());
            parcel.writeLong(this.f1140b.getLeastSignificantBits());
            parcel.writeString(this.f1141c);
            parcel.writeString(this.f1142d);
            parcel.writeByteArray(this.f1143f);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.drm.DrmInitData$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmInitData$a.class */
    public class C0151a implements Parcelable.Creator<DrmInitData> {
        /* renamed from: a */
        public DrmInitData createFromParcel(Parcel parcel) {
            return new DrmInitData(parcel);
        }

        /* renamed from: b */
        public DrmInitData[] newArray(int i) {
            return new DrmInitData[i];
        }
    }

    public DrmInitData(Parcel parcel) {
        this.f1137c = parcel.readString();
        SchemeData[] schemeDataArr = (SchemeData[]) parcel.createTypedArray(SchemeData.CREATOR);
        nu.g(schemeDataArr);
        SchemeData[] schemeDataArr2 = schemeDataArr;
        this.f1135a = schemeDataArr2;
        this.f1138d = schemeDataArr2.length;
    }

    public DrmInitData(String str, List<SchemeData> list) {
        this(str, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    public DrmInitData(String str, boolean z, SchemeData... schemeDataArr) {
        this.f1137c = str;
        SchemeData[] schemeDataArr2 = z ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.f1135a = schemeDataArr2;
        this.f1138d = schemeDataArr2.length;
        Arrays.sort(schemeDataArr2, this);
    }

    public DrmInitData(String str, SchemeData... schemeDataArr) {
        this(str, true, schemeDataArr);
    }

    public DrmInitData(List<SchemeData> list) {
        this(null, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    public DrmInitData(SchemeData... schemeDataArr) {
        this((String) null, schemeDataArr);
    }

    /* renamed from: b */
    public static boolean m6461b(ArrayList<SchemeData> arrayList, int i, UUID uuid) {
        for (int i2 = 0; i2 < i; i2++) {
            if (arrayList.get(i2).f1140b.equals(uuid)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static DrmInitData m6459d(DrmInitData drmInitData, DrmInitData drmInitData2) {
        String str;
        ArrayList arrayList = new ArrayList();
        if (drmInitData != null) {
            String str2 = drmInitData.f1137c;
            SchemeData[] schemeDataArr = drmInitData.f1135a;
            int length = schemeDataArr.length;
            int i = 0;
            while (true) {
                str = str2;
                if (i >= length) {
                    break;
                }
                SchemeData schemeData = schemeDataArr[i];
                if (schemeData.m6454c()) {
                    arrayList.add(schemeData);
                }
                i++;
            }
        } else {
            str = null;
        }
        String str3 = str;
        if (drmInitData2 != null) {
            String str4 = str;
            if (str == null) {
                str4 = drmInitData2.f1137c;
            }
            int size = arrayList.size();
            SchemeData[] schemeDataArr2 = drmInitData2.f1135a;
            int length2 = schemeDataArr2.length;
            int i2 = 0;
            while (true) {
                str3 = str4;
                if (i2 >= length2) {
                    break;
                }
                SchemeData schemeData2 = schemeDataArr2[i2];
                if (schemeData2.m6454c() && !m6461b(arrayList, size, schemeData2.f1140b)) {
                    arrayList.add(schemeData2);
                }
                i2++;
            }
        }
        return arrayList.isEmpty() ? null : new DrmInitData(str3, arrayList);
    }

    /* renamed from: a */
    public int compare(SchemeData schemeData, SchemeData schemeData2) {
        UUID uuid = C0314cg.f2367a;
        return uuid.equals(schemeData.f1140b) ? uuid.equals(schemeData2.f1140b) ? 0 : 1 : schemeData.f1140b.compareTo(schemeData2.f1140b);
    }

    /* renamed from: c */
    public DrmInitData m6460c(String str) {
        return nu.b(this.f1137c, str) ? this : new DrmInitData(str, false, this.f1135a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public SchemeData m6458e(int i) {
        return this.f1135a[i];
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
        if (!nu.b(this.f1137c, drmInitData.f1137c) || !Arrays.equals(this.f1135a, drmInitData.f1135a)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public DrmInitData m6457f(DrmInitData drmInitData) {
        String str;
        String str2 = this.f1137c;
        it.f(str2 == null || (str = drmInitData.f1137c) == null || TextUtils.equals(str2, str));
        String str3 = this.f1137c;
        if (str3 == null) {
            str3 = drmInitData.f1137c;
        }
        return new DrmInitData(str3, (SchemeData[]) nu.Z(this.f1135a, drmInitData.f1135a));
    }

    public int hashCode() {
        if (this.f1136b == 0) {
            String str = this.f1137c;
            this.f1136b = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f1135a);
        }
        return this.f1136b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1137c);
        parcel.writeTypedArray(this.f1135a, 0);
    }
}
