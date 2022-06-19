package com.google.android.exoplayer2.drm;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData.class */
public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new C5029a();

    /* renamed from: d */
    private final SchemeData[] f15702d;

    /* renamed from: e */
    private int f15703e;

    /* renamed from: f */
    public final String f15704f;

    /* renamed from: g */
    public final int f15705g;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData$SchemeData.class */
    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new C5028a();

        /* renamed from: d */
        private int f15706d;

        /* renamed from: e */
        private final UUID f15707e;

        /* renamed from: f */
        public final String f15708f;

        /* renamed from: g */
        public final String f15709g;

        /* renamed from: h */
        public final byte[] f15710h;

        /* renamed from: com.google.android.exoplayer2.drm.DrmInitData$SchemeData$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData$SchemeData$a.class */
        static final class C5028a implements Parcelable.Creator<SchemeData> {
            C5028a() {
            }

            /* renamed from: a */
            public SchemeData createFromParcel(Parcel parcel) {
                return new SchemeData(parcel);
            }

            /* renamed from: b */
            public SchemeData[] newArray(int i) {
                return new SchemeData[i];
            }
        }

        SchemeData(Parcel parcel) {
            this.f15707e = new UUID(parcel.readLong(), parcel.readLong());
            this.f15708f = parcel.readString();
            this.f15709g = (String) C5515h0.m18833g(parcel.readString());
            this.f15710h = parcel.createByteArray();
        }

        public SchemeData(UUID uuid, String str, String str2, byte[] bArr) {
            this.f15707e = (UUID) C5508e.m18911e(uuid);
            this.f15708f = str;
            this.f15709g = (String) C5508e.m18911e(str2);
            this.f15710h = bArr;
        }

        public SchemeData(UUID uuid, String str, byte[] bArr) {
            this(uuid, null, str, bArr);
        }

        /* renamed from: b */
        public SchemeData m20793b(byte[] bArr) {
            return new SchemeData(this.f15707e, this.f15708f, this.f15709g, bArr);
        }

        /* renamed from: c */
        public boolean m20792c() {
            return this.f15710h != null;
        }

        /* renamed from: d */
        public boolean m20791d(UUID uuid) {
            return C5543v.f17960a.equals(this.f15707e) || uuid.equals(this.f15707e);
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
            if (C5515h0.m18843b(this.f15708f, schemeData.f15708f)) {
                z = false;
                if (C5515h0.m18843b(this.f15709g, schemeData.f15709g)) {
                    z = false;
                    if (C5515h0.m18843b(this.f15707e, schemeData.f15707e)) {
                        z = false;
                        if (Arrays.equals(this.f15710h, schemeData.f15710h)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            if (this.f15706d == 0) {
                int hashCode = this.f15707e.hashCode();
                String str = this.f15708f;
                this.f15706d = (((((hashCode * 31) + (str == null ? 0 : str.hashCode())) * 31) + this.f15709g.hashCode()) * 31) + Arrays.hashCode(this.f15710h);
            }
            return this.f15706d;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f15707e.getMostSignificantBits());
            parcel.writeLong(this.f15707e.getLeastSignificantBits());
            parcel.writeString(this.f15708f);
            parcel.writeString(this.f15709g);
            parcel.writeByteArray(this.f15710h);
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DrmInitData$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData$a.class */
    static final class C5029a implements Parcelable.Creator<DrmInitData> {
        C5029a() {
        }

        /* renamed from: a */
        public DrmInitData createFromParcel(Parcel parcel) {
            return new DrmInitData(parcel);
        }

        /* renamed from: b */
        public DrmInitData[] newArray(int i) {
            return new DrmInitData[i];
        }
    }

    DrmInitData(Parcel parcel) {
        this.f15704f = parcel.readString();
        SchemeData[] schemeDataArr = (SchemeData[]) C5515h0.m18833g(parcel.createTypedArray(SchemeData.CREATOR));
        this.f15702d = schemeDataArr;
        this.f15705g = schemeDataArr.length;
    }

    public DrmInitData(String str, List<SchemeData> list) {
        this(str, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    private DrmInitData(String str, boolean z, SchemeData... schemeDataArr) {
        this.f15704f = str;
        SchemeData[] schemeDataArr2 = z ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.f15702d = schemeDataArr2;
        this.f15705g = schemeDataArr2.length;
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
    private static boolean m20799b(ArrayList<SchemeData> arrayList, int i, UUID uuid) {
        for (int i2 = 0; i2 < i; i2++) {
            if (arrayList.get(i2).f15707e.equals(uuid)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static DrmInitData m20797d(DrmInitData drmInitData, DrmInitData drmInitData2) {
        String str;
        ArrayList arrayList = new ArrayList();
        if (drmInitData != null) {
            String str2 = drmInitData.f15704f;
            SchemeData[] schemeDataArr = drmInitData.f15702d;
            int length = schemeDataArr.length;
            int i = 0;
            while (true) {
                str = str2;
                if (i >= length) {
                    break;
                }
                SchemeData schemeData = schemeDataArr[i];
                if (schemeData.m20792c()) {
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
                str4 = drmInitData2.f15704f;
            }
            int size = arrayList.size();
            SchemeData[] schemeDataArr2 = drmInitData2.f15702d;
            int length2 = schemeDataArr2.length;
            int i2 = 0;
            while (true) {
                str3 = str4;
                if (i2 >= length2) {
                    break;
                }
                SchemeData schemeData2 = schemeDataArr2[i2];
                if (schemeData2.m20792c() && !m20799b(arrayList, size, schemeData2.f15707e)) {
                    arrayList.add(schemeData2);
                }
                i2++;
            }
        }
        return arrayList.isEmpty() ? null : new DrmInitData(str3, arrayList);
    }

    /* renamed from: a */
    public int compare(SchemeData schemeData, SchemeData schemeData2) {
        UUID uuid = C5543v.f17960a;
        return uuid.equals(schemeData.f15707e) ? uuid.equals(schemeData2.f15707e) ? 0 : 1 : schemeData.f15707e.compareTo(schemeData2.f15707e);
    }

    /* renamed from: c */
    public DrmInitData m20798c(String str) {
        return C5515h0.m18843b(this.f15704f, str) ? this : new DrmInitData(str, false, this.f15702d);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public SchemeData m20796e(int i) {
        return this.f15702d[i];
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
        if (!C5515h0.m18843b(this.f15704f, drmInitData.f15704f) || !Arrays.equals(this.f15702d, drmInitData.f15702d)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public DrmInitData m20795f(DrmInitData drmInitData) {
        String str;
        String str2 = this.f15704f;
        C5508e.m18910f(str2 == null || (str = drmInitData.f15704f) == null || TextUtils.equals(str2, str));
        String str3 = this.f15704f;
        if (str3 == null) {
            str3 = drmInitData.f15704f;
        }
        return new DrmInitData(str3, (SchemeData[]) C5515h0.m18836e0(this.f15702d, drmInitData.f15702d));
    }

    public int hashCode() {
        if (this.f15703e == 0) {
            String str = this.f15704f;
            this.f15703e = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f15702d);
        }
        return this.f15703e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f15704f);
        parcel.writeTypedArray(this.f15702d, 0);
    }
}
