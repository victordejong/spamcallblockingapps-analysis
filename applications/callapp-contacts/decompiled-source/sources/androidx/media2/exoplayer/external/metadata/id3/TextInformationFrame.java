package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/TextInformationFrame.class */
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new Parcelable.Creator<TextInformationFrame>() { // from class: androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame.1
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
        super((String) ac.a(parcel.readString()));
        this.description = parcel.readString();
        this.value = (String) ac.a(parcel.readString());
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
        return this.id.equals(textInformationFrame.id) && ac.a((Object) this.description, (Object) textInformationFrame.description) && ac.a((Object) this.value, (Object) textInformationFrame.value);
    }

    public final int hashCode() {
        int hashCode = this.id.hashCode();
        String str = this.description;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.value;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public final String toString() {
        String str = this.id;
        String str2 = this.description;
        String str3 = this.value;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": description=");
        sb.append(str2);
        sb.append(": value=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.description);
        parcel.writeString(this.value);
    }
}
