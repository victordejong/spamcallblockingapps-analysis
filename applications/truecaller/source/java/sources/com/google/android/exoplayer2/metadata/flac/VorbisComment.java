package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.huawei.hms.framework.common.ContainerUtils;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1613i1.C24461a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/flac/VorbisComment.class */
public final class VorbisComment implements Metadata.Entry {
    public static final Parcelable.Creator<VorbisComment> CREATOR = new C1974a();

    /* renamed from: a */
    public final String f4905a;

    /* renamed from: b */
    public final String f4906b;

    /* renamed from: com.google.android.exoplayer2.metadata.flac.VorbisComment$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/flac/VorbisComment$a.class */
    public static final class C1974a implements Parcelable.Creator<VorbisComment> {
        @Override // android.os.Parcelable.Creator
        public VorbisComment createFromParcel(Parcel parcel) {
            return new VorbisComment(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public VorbisComment[] newArray(int i) {
            return new VorbisComment[i];
        }
    }

    public VorbisComment(Parcel parcel) {
        String readString = parcel.readString();
        int i = C24773d0.f69427a;
        this.f4905a = readString;
        this.f4906b = parcel.readString();
    }

    public VorbisComment(String str, String str2) {
        this.f4905a = str;
        this.f4906b = str2;
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
        if (!this.f4905a.equals(vorbisComment.f4905a) || !this.f4906b.equals(vorbisComment.f4906b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f4906b.hashCode() + C22128a.m8579q2(this.f4905a, 527, 31);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: j */
    public /* synthetic */ byte[] mo39238j() {
        return C24461a.m5075a(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: q */
    public /* synthetic */ Format mo39237q() {
        return C24461a.m5074b(this);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VC: ");
        m8728C.append(this.f4905a);
        m8728C.append(ContainerUtils.KEY_VALUE_DELIMITER);
        m8728C.append(this.f4906b);
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4905a);
        parcel.writeString(this.f4906b);
    }
}
