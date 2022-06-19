package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.C5120a;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C5508e;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/IcyInfo.class */
public final class IcyInfo implements Metadata.Entry {
    public static final Parcelable.Creator<IcyInfo> CREATOR = new C5133a();

    /* renamed from: d */
    public final byte[] f16125d;

    /* renamed from: e */
    public final String f16126e;

    /* renamed from: f */
    public final String f16127f;

    /* renamed from: com.google.android.exoplayer2.metadata.icy.IcyInfo$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/IcyInfo$a.class */
    static final class C5133a implements Parcelable.Creator<IcyInfo> {
        C5133a() {
        }

        /* renamed from: a */
        public IcyInfo createFromParcel(Parcel parcel) {
            return new IcyInfo(parcel);
        }

        /* renamed from: b */
        public IcyInfo[] newArray(int i) {
            return new IcyInfo[i];
        }
    }

    IcyInfo(Parcel parcel) {
        this.f16125d = (byte[]) C5508e.m18911e(parcel.createByteArray());
        this.f16126e = parcel.readString();
        this.f16127f = parcel.readString();
    }

    public IcyInfo(byte[] bArr, String str, String str2) {
        this.f16125d = bArr;
        this.f16126e = str;
        this.f16127f = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && IcyInfo.class == obj.getClass()) {
            return Arrays.equals(this.f16125d, ((IcyInfo) obj).f16125d);
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: h0 */
    public /* synthetic */ byte[] mo20092h0() {
        return C5120a.m20389a(this);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f16125d);
    }

    public String toString() {
        return String.format("ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\"", this.f16126e, this.f16127f, Integer.valueOf(this.f16125d.length));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this.f16125d);
        parcel.writeString(this.f16126e);
        parcel.writeString(this.f16127f);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: y */
    public /* synthetic */ Format mo20091y() {
        return C5120a.m20388b(this);
    }
}
