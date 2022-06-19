package com.google.android.exoplayer2.drm;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData.class */
public final class DrmInitData implements Parcelable, Comparator<SchemeData> {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new Parcelable.Creator<DrmInitData>() { // from class: com.google.android.exoplayer2.drm.DrmInitData.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ DrmInitData createFromParcel(Parcel parcel) {
            return new DrmInitData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ DrmInitData[] newArray(int i) {
            return new DrmInitData[i];
        }
    };
    private int hashCode;
    public final int schemeDataCount;
    private final SchemeData[] schemeDatas;
    public final String schemeType;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData$SchemeData.class */
    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new Parcelable.Creator<SchemeData>() { // from class: com.google.android.exoplayer2.drm.DrmInitData.SchemeData.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SchemeData createFromParcel(Parcel parcel) {
                return new SchemeData(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SchemeData[] newArray(int i) {
                return new SchemeData[i];
            }
        };
        public final byte[] data;
        private int hashCode;
        public final String licenseServerUrl;
        public final String mimeType;
        public final UUID uuid;

        SchemeData(Parcel parcel) {
            this.uuid = new UUID(parcel.readLong(), parcel.readLong());
            this.licenseServerUrl = parcel.readString();
            this.mimeType = (String) C11599af.m19974a(parcel.readString());
            this.data = parcel.createByteArray();
        }

        public SchemeData(UUID uuid, String str, String str2, byte[] bArr) {
            this.uuid = (UUID) C11593a.m20020b(uuid);
            this.licenseServerUrl = str;
            this.mimeType = (String) C11593a.m20020b(str2);
            this.data = bArr;
        }

        public SchemeData(UUID uuid, String str, byte[] bArr) {
            this(uuid, null, str, bArr);
        }

        public final boolean canReplace(SchemeData schemeData) {
            return hasData() && !schemeData.hasData() && matches(schemeData.uuid);
        }

        public final SchemeData copyWithData(byte[] bArr) {
            return new SchemeData(this.uuid, this.licenseServerUrl, this.mimeType, bArr);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof SchemeData)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            SchemeData schemeData = (SchemeData) obj;
            return C11599af.m19973a((Object) this.licenseServerUrl, (Object) schemeData.licenseServerUrl) && C11599af.m19973a((Object) this.mimeType, (Object) schemeData.mimeType) && C11599af.m19973a(this.uuid, schemeData.uuid) && Arrays.equals(this.data, schemeData.data);
        }

        public final boolean hasData() {
            return this.data != null;
        }

        public final int hashCode() {
            if (this.hashCode == 0) {
                int hashCode = this.uuid.hashCode();
                String str = this.licenseServerUrl;
                this.hashCode = (((((hashCode * 31) + (str == null ? 0 : str.hashCode())) * 31) + this.mimeType.hashCode()) * 31) + Arrays.hashCode(this.data);
            }
            return this.hashCode;
        }

        public final boolean matches(UUID uuid) {
            return C11158f.f36539a.equals(this.uuid) || uuid.equals(this.uuid);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.uuid.getMostSignificantBits());
            parcel.writeLong(this.uuid.getLeastSignificantBits());
            parcel.writeString(this.licenseServerUrl);
            parcel.writeString(this.mimeType);
            parcel.writeByteArray(this.data);
        }
    }

    DrmInitData(Parcel parcel) {
        this.schemeType = parcel.readString();
        SchemeData[] schemeDataArr = (SchemeData[]) C11599af.m19974a((SchemeData[]) parcel.createTypedArray(SchemeData.CREATOR));
        this.schemeDatas = schemeDataArr;
        this.schemeDataCount = schemeDataArr.length;
    }

    public DrmInitData(String str, List<SchemeData> list) {
        this(str, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    private DrmInitData(String str, boolean z, SchemeData... schemeDataArr) {
        this.schemeType = str;
        SchemeData[] schemeDataArr2 = z ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.schemeDatas = schemeDataArr2;
        this.schemeDataCount = schemeDataArr2.length;
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

    private static boolean containsSchemeDataWithUuid(ArrayList<SchemeData> arrayList, int i, UUID uuid) {
        for (int i2 = 0; i2 < i; i2++) {
            if (arrayList.get(i2).uuid.equals(uuid)) {
                return true;
            }
        }
        return false;
    }

    public static DrmInitData createSessionCreationData(DrmInitData drmInitData, DrmInitData drmInitData2) {
        String str;
        ArrayList arrayList = new ArrayList();
        if (drmInitData != null) {
            String str2 = drmInitData.schemeType;
            SchemeData[] schemeDataArr = drmInitData.schemeDatas;
            int length = schemeDataArr.length;
            int i = 0;
            while (true) {
                str = str2;
                if (i >= length) {
                    break;
                }
                SchemeData schemeData = schemeDataArr[i];
                if (schemeData.hasData()) {
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
                str4 = drmInitData2.schemeType;
            }
            int size = arrayList.size();
            SchemeData[] schemeDataArr2 = drmInitData2.schemeDatas;
            int length2 = schemeDataArr2.length;
            int i2 = 0;
            while (true) {
                str3 = str4;
                if (i2 >= length2) {
                    break;
                }
                SchemeData schemeData2 = schemeDataArr2[i2];
                if (schemeData2.hasData() && !containsSchemeDataWithUuid(arrayList, size, schemeData2.uuid)) {
                    arrayList.add(schemeData2);
                }
                i2++;
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new DrmInitData(str3, arrayList);
    }

    public final int compare(SchemeData schemeData, SchemeData schemeData2) {
        return C11158f.f36539a.equals(schemeData.uuid) ? C11158f.f36539a.equals(schemeData2.uuid) ? 0 : 1 : schemeData.uuid.compareTo(schemeData2.uuid);
    }

    public final DrmInitData copyWithSchemeType(String str) {
        return C11599af.m19973a((Object) this.schemeType, (Object) str) ? this : new DrmInitData(str, false, this.schemeDatas);
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
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DrmInitData drmInitData = (DrmInitData) obj;
        return C11599af.m19973a((Object) this.schemeType, (Object) drmInitData.schemeType) && Arrays.equals(this.schemeDatas, drmInitData.schemeDatas);
    }

    public final SchemeData get(int i) {
        return this.schemeDatas[i];
    }

    public final int hashCode() {
        if (this.hashCode == 0) {
            String str = this.schemeType;
            this.hashCode = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.schemeDatas);
        }
        return this.hashCode;
    }

    public final DrmInitData merge(DrmInitData drmInitData) {
        String str;
        String str2 = this.schemeType;
        C11593a.m20019b(str2 == null || (str = drmInitData.schemeType) == null || TextUtils.equals(str2, str));
        String str3 = this.schemeType;
        if (str3 == null) {
            str3 = drmInitData.schemeType;
        }
        return new DrmInitData(str3, (SchemeData[]) C11599af.m19953a((Object[]) this.schemeDatas, (Object[]) drmInitData.schemeDatas));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.schemeType);
        parcel.writeTypedArray(this.schemeDatas, 0);
    }
}
