package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C11599af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/InternalFrame.class */
public final class InternalFrame extends Id3Frame {
    public static final Parcelable.Creator<InternalFrame> CREATOR = new Parcelable.Creator<InternalFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.InternalFrame.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ InternalFrame createFromParcel(Parcel parcel) {
            return new InternalFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ InternalFrame[] newArray(int i) {
            return new InternalFrame[i];
        }
    };

    /* renamed from: ID */
    public static final String f36777ID = "----";
    public final String description;
    public final String domain;
    public final String text;

    InternalFrame(Parcel parcel) {
        super("----");
        this.domain = (String) C11599af.m19974a(parcel.readString());
        this.description = (String) C11599af.m19974a(parcel.readString());
        this.text = (String) C11599af.m19974a(parcel.readString());
    }

    public InternalFrame(String str, String str2, String str3) {
        super("----");
        this.domain = str;
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
        InternalFrame internalFrame = (InternalFrame) obj;
        return C11599af.m19973a((Object) this.description, (Object) internalFrame.description) && C11599af.m19973a((Object) this.domain, (Object) internalFrame.domain) && C11599af.m19973a((Object) this.text, (Object) internalFrame.text);
    }

    public final int hashCode() {
        String str = this.domain;
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
        return this.f36776id + ": domain=" + this.domain + ", description=" + this.description;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f36776id);
        parcel.writeString(this.domain);
        parcel.writeString(this.text);
    }
}
