package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/PrivFrame.class */
public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new C5143a();

    /* renamed from: e */
    public final String f16163e;

    /* renamed from: f */
    public final byte[] f16164f;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.PrivFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/PrivFrame$a.class */
    static final class C5143a implements Parcelable.Creator<PrivFrame> {
        C5143a() {
        }

        /* renamed from: a */
        public PrivFrame createFromParcel(Parcel parcel) {
            return new PrivFrame(parcel);
        }

        /* renamed from: b */
        public PrivFrame[] newArray(int i) {
            return new PrivFrame[i];
        }
    }

    PrivFrame(Parcel parcel) {
        super("PRIV");
        this.f16163e = (String) C5515h0.m18833g(parcel.readString());
        this.f16164f = (byte[]) C5515h0.m18833g(parcel.createByteArray());
    }

    public PrivFrame(String str, byte[] bArr) {
        super("PRIV");
        this.f16163e = str;
        this.f16164f = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || PrivFrame.class != obj.getClass()) {
            return false;
        }
        PrivFrame privFrame = (PrivFrame) obj;
        if (!C5515h0.m18843b(this.f16163e, privFrame.f16163e) || !Arrays.equals(this.f16164f, privFrame.f16164f)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f16163e;
        return ((527 + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.f16164f);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f16154d + ": owner=" + this.f16163e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16163e);
        parcel.writeByteArray(this.f16164f);
    }
}
