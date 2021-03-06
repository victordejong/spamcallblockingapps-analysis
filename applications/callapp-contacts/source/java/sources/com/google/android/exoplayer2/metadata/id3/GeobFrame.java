package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C11599af;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/GeobFrame.class */
public final class GeobFrame extends Id3Frame {
    public static final Parcelable.Creator<GeobFrame> CREATOR = new Parcelable.Creator<GeobFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.GeobFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ GeobFrame createFromParcel(Parcel parcel) {
            return new GeobFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ GeobFrame[] newArray(int i) {
            return new GeobFrame[i];
        }
    };

    /* renamed from: ID */
    public static final String f36775ID = "GEOB";
    public final byte[] data;
    public final String description;
    public final String filename;
    public final String mimeType;

    GeobFrame(Parcel parcel) {
        super("GEOB");
        this.mimeType = (String) C11599af.m19974a(parcel.readString());
        this.filename = (String) C11599af.m19974a(parcel.readString());
        this.description = (String) C11599af.m19974a(parcel.readString());
        this.data = (byte[]) C11599af.m19974a(parcel.createByteArray());
    }

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.mimeType = str;
        this.filename = str2;
        this.description = str3;
        this.data = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        GeobFrame geobFrame = (GeobFrame) obj;
        return C11599af.m19973a((Object) this.mimeType, (Object) geobFrame.mimeType) && C11599af.m19973a((Object) this.filename, (Object) geobFrame.filename) && C11599af.m19973a((Object) this.description, (Object) geobFrame.description) && Arrays.equals(this.data, geobFrame.data);
    }

    public final int hashCode() {
        String str = this.mimeType;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.filename;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.description;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + i) * 31) + Arrays.hashCode(this.data);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public final String toString() {
        return this.f36776id + ": mimeType=" + this.mimeType + ", filename=" + this.filename + ", description=" + this.description;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.filename);
        parcel.writeString(this.description);
        parcel.writeByteArray(this.data);
    }
}
