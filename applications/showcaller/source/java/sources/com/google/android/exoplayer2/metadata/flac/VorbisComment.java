package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.C5120a;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C5515h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/flac/VorbisComment.class */
public final class VorbisComment implements Metadata.Entry {
    public static final Parcelable.Creator<VorbisComment> CREATOR = new C5131a();

    /* renamed from: d */
    public final String f16117d;

    /* renamed from: e */
    public final String f16118e;

    /* renamed from: com.google.android.exoplayer2.metadata.flac.VorbisComment$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/flac/VorbisComment$a.class */
    static final class C5131a implements Parcelable.Creator<VorbisComment> {
        C5131a() {
        }

        /* renamed from: a */
        public VorbisComment createFromParcel(Parcel parcel) {
            return new VorbisComment(parcel);
        }

        /* renamed from: b */
        public VorbisComment[] newArray(int i) {
            return new VorbisComment[i];
        }
    }

    VorbisComment(Parcel parcel) {
        this.f16117d = (String) C5515h0.m18833g(parcel.readString());
        this.f16118e = (String) C5515h0.m18833g(parcel.readString());
    }

    public VorbisComment(String str, String str2) {
        this.f16117d = str;
        this.f16118e = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || VorbisComment.class != obj.getClass()) {
            return false;
        }
        VorbisComment vorbisComment = (VorbisComment) obj;
        if (!this.f16117d.equals(vorbisComment.f16117d) || !this.f16118e.equals(vorbisComment.f16118e)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: h0 */
    public /* synthetic */ byte[] mo20092h0() {
        return C5120a.m20389a(this);
    }

    public int hashCode() {
        return ((527 + this.f16117d.hashCode()) * 31) + this.f16118e.hashCode();
    }

    public String toString() {
        return "VC: " + this.f16117d + "=" + this.f16118e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16117d);
        parcel.writeString(this.f16118e);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: y */
    public /* synthetic */ Format mo20091y() {
        return C5120a.m20388b(this);
    }
}
