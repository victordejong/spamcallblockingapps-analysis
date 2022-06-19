package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C11599af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/TextInformationFrame.class */
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new Parcelable.Creator<TextInformationFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.TextInformationFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ TextInformationFrame createFromParcel(Parcel parcel) {
            return new TextInformationFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ TextInformationFrame[] newArray(int i) {
            return new TextInformationFrame[i];
        }
    };
    public final String description;
    public final String value;

    TextInformationFrame(Parcel parcel) {
        super((String) C11599af.m19974a(parcel.readString()));
        this.description = parcel.readString();
        this.value = (String) C11599af.m19974a(parcel.readString());
    }

    public TextInformationFrame(String str, String str2, String str3) {
        super(str);
        this.description = str2;
        this.value = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
        return this.f36776id.equals(textInformationFrame.f36776id) && C11599af.m19973a((Object) this.description, (Object) textInformationFrame.description) && C11599af.m19973a((Object) this.value, (Object) textInformationFrame.value);
    }

    public final int hashCode() {
        int hashCode = this.f36776id.hashCode();
        String str = this.description;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.value;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public final String toString() {
        return this.f36776id + ": description=" + this.description + ": value=" + this.value;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f36776id);
        parcel.writeString(this.description);
        parcel.writeString(this.value);
    }
}
