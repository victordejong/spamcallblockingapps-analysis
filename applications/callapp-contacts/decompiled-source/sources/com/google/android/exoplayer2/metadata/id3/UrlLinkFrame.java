package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/UrlLinkFrame.class */
public final class UrlLinkFrame extends Id3Frame {
    public static final Parcelable.Creator<UrlLinkFrame> CREATOR = new Parcelable.Creator<UrlLinkFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.UrlLinkFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ UrlLinkFrame createFromParcel(Parcel parcel) {
            return new UrlLinkFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ UrlLinkFrame[] newArray(int i) {
            return new UrlLinkFrame[i];
        }
    };
    public final String description;
    public final String url;

    UrlLinkFrame(Parcel parcel) {
        super((String) af.a(parcel.readString()));
        this.description = parcel.readString();
        this.url = (String) af.a(parcel.readString());
    }

    public UrlLinkFrame(String str, String str2, String str3) {
        super(str);
        this.description = str2;
        this.url = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UrlLinkFrame urlLinkFrame = (UrlLinkFrame) obj;
        return this.id.equals(urlLinkFrame.id) && af.a((Object) this.description, (Object) urlLinkFrame.description) && af.a((Object) this.url, (Object) urlLinkFrame.url);
    }

    public final int hashCode() {
        int hashCode = this.id.hashCode();
        String str = this.description;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.url;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public final String toString() {
        return this.id + ": url=" + this.url;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.description);
        parcel.writeString(this.url);
    }
}
