package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/CommentFrame.class */
public final class CommentFrame extends Id3Frame {
    public static final Parcelable.Creator<CommentFrame> CREATOR = new Parcelable.Creator<CommentFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.CommentFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CommentFrame createFromParcel(Parcel parcel) {
            return new CommentFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CommentFrame[] newArray(int i) {
            return new CommentFrame[i];
        }
    };
    public static final String ID = "COMM";
    public final String description;
    public final String language;
    public final String text;

    CommentFrame(Parcel parcel) {
        super("COMM");
        this.language = (String) af.a(parcel.readString());
        this.description = (String) af.a(parcel.readString());
        this.text = (String) af.a(parcel.readString());
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
        return af.a((Object) this.description, (Object) commentFrame.description) && af.a((Object) this.language, (Object) commentFrame.language) && af.a((Object) this.text, (Object) commentFrame.text);
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

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public final String toString() {
        return this.id + ": language=" + this.language + ", description=" + this.description;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.language);
        parcel.writeString(this.text);
    }
}
