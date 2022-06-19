package androidx.media2.exoplayer.external.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import com.huawei.hms.framework.common.ContainerUtils;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/flac/VorbisComment.class */
public final class VorbisComment implements Metadata.Entry {
    public static final Parcelable.Creator<VorbisComment> CREATOR = new C0242a();

    /* renamed from: a */
    public final String f1008a;

    /* renamed from: b */
    public final String f1009b;

    /* renamed from: androidx.media2.exoplayer.external.metadata.flac.VorbisComment$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/flac/VorbisComment$a.class */
    public class C0242a implements Parcelable.Creator<VorbisComment> {
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
        int i = C27445x.f77229a;
        this.f1008a = readString;
        this.f1009b = parcel.readString();
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
        if (!this.f1008a.equals(vorbisComment.f1008a) || !this.f1009b.equals(vorbisComment.f1009b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f1009b.hashCode() + C22128a.m8579q2(this.f1008a, 527, 31);
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    /* renamed from: j */
    public byte[] mo42814j() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    /* renamed from: q */
    public Format mo42813q() {
        return null;
    }

    public String toString() {
        String str = this.f1008a;
        String str2 = this.f1009b;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str).length() + 5);
        sb.append("VC: ");
        sb.append(str);
        sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1008a);
        parcel.writeString(this.f1009b);
    }
}
