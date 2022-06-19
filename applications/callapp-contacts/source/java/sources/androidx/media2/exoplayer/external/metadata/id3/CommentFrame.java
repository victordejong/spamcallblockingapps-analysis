package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.util.C1996ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/CommentFrame.class */
public final class CommentFrame extends Id3Frame {
    public static final Parcelable.Creator<CommentFrame> CREATOR = new Parcelable.Creator<CommentFrame>() { // from class: androidx.media2.exoplayer.external.metadata.id3.CommentFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CommentFrame createFromParcel(Parcel parcel) {
            return new CommentFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CommentFrame[] newArray(int i) {
            return new CommentFrame[i];
        }
    };

    /* renamed from: ID */
    public static final String f6684ID = "COMM";
    public final String description;
    public final String language;
    public final String text;

    CommentFrame(Parcel parcel) {
        super("COMM");
        this.language = (String) C1996ac.m41659a(parcel.readString());
        this.description = (String) C1996ac.m41659a(parcel.readString());
        this.text = (String) C1996ac.m41659a(parcel.readString());
    }

    public CommentFrame(String str, String str2, String str3) {
        super("COMM");
        this.language = str;
        this.description = str2;
        this.text = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CommentFrame commentFrame = (CommentFrame) obj;
        return C1996ac.m41658a((Object) this.description, (Object) commentFrame.description) && C1996ac.m41658a((Object) this.language, (Object) commentFrame.language) && C1996ac.m41658a((Object) this.text, (Object) commentFrame.text);
    }

    public final int hashCode() {
        String str = this.language;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.description;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.text;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public final String toString() {
        String str = this.f6686id;
        String str2 = this.language;
        String str3 = this.description;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": language=");
        sb.append(str2);
        sb.append(", description=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f6686id);
        parcel.writeString(this.language);
        parcel.writeString(this.text);
    }
}
