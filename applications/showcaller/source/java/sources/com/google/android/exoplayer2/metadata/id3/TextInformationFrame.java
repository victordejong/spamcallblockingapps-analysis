package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/TextInformationFrame.class */
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new C5144a();

    /* renamed from: e */
    public final String f16165e;

    /* renamed from: f */
    public final String f16166f;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.TextInformationFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/TextInformationFrame$a.class */
    static final class C5144a implements Parcelable.Creator<TextInformationFrame> {
        C5144a() {
        }

        /* renamed from: a */
        public TextInformationFrame createFromParcel(Parcel parcel) {
            return new TextInformationFrame(parcel);
        }

        /* renamed from: b */
        public TextInformationFrame[] newArray(int i) {
            return new TextInformationFrame[i];
        }
    }

    TextInformationFrame(Parcel parcel) {
        super((String) C5515h0.m18833g(parcel.readString()));
        this.f16165e = parcel.readString();
        this.f16166f = (String) C5515h0.m18833g(parcel.readString());
    }

    public TextInformationFrame(String str, String str2, String str3) {
        super(str);
        this.f16165e = str2;
        this.f16166f = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || TextInformationFrame.class != obj.getClass()) {
            return false;
        }
        TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
        if (!this.f16154d.equals(textInformationFrame.f16154d) || !C5515h0.m18843b(this.f16165e, textInformationFrame.f16165e) || !C5515h0.m18843b(this.f16166f, textInformationFrame.f16166f)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f16154d.hashCode();
        String str = this.f16165e;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f16166f;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f16154d + ": description=" + this.f16165e + ": value=" + this.f16166f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16154d);
        parcel.writeString(this.f16165e);
        parcel.writeString(this.f16166f);
    }
}
