package androidx.media2.exoplayer.external.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters.class */
public class TrackSelectionParameters implements Parcelable {

    /* renamed from: a */
    public final String f1133a;

    /* renamed from: b */
    public final String f1134b;

    /* renamed from: c */
    public final boolean f1135c;

    /* renamed from: d */
    public final int f1136d;

    /* renamed from: e */
    public static final TrackSelectionParameters f1132e = new TrackSelectionParameters();
    public static final Parcelable.Creator<TrackSelectionParameters> CREATOR = new C0252a();

    /* renamed from: androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a.class */
    public class C0252a implements Parcelable.Creator<TrackSelectionParameters> {
        @Override // android.os.Parcelable.Creator
        public TrackSelectionParameters createFromParcel(Parcel parcel) {
            return new TrackSelectionParameters(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TrackSelectionParameters[] newArray(int i) {
            return new TrackSelectionParameters[i];
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b.class */
    public static class C0253b {

        /* renamed from: a */
        public String f1137a;

        /* renamed from: b */
        public String f1138b;

        /* renamed from: c */
        public boolean f1139c;

        /* renamed from: d */
        public int f1140d;

        public C0253b(TrackSelectionParameters trackSelectionParameters) {
            this.f1137a = trackSelectionParameters.f1133a;
            this.f1138b = trackSelectionParameters.f1134b;
            this.f1139c = trackSelectionParameters.f1135c;
            this.f1140d = trackSelectionParameters.f1136d;
        }
    }

    public TrackSelectionParameters() {
        this.f1133a = C27445x.m264w(null);
        this.f1134b = C27445x.m264w(null);
        this.f1135c = false;
        this.f1136d = 0;
    }

    public TrackSelectionParameters(Parcel parcel) {
        this.f1133a = parcel.readString();
        this.f1134b = parcel.readString();
        int i = C27445x.f77229a;
        this.f1135c = parcel.readInt() != 0;
        this.f1136d = parcel.readInt();
    }

    public TrackSelectionParameters(String str, String str2, boolean z, int i) {
        this.f1133a = C27445x.m264w(str);
        this.f1134b = C27445x.m264w(str2);
        this.f1135c = z;
        this.f1136d = i;
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
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TrackSelectionParameters trackSelectionParameters = (TrackSelectionParameters) obj;
        if (!TextUtils.equals(this.f1133a, trackSelectionParameters.f1133a) || !TextUtils.equals(this.f1134b, trackSelectionParameters.f1134b) || this.f1135c != trackSelectionParameters.f1135c || this.f1136d != trackSelectionParameters.f1136d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f1133a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f1134b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((((hashCode + 31) * 31) + i) * 31) + (this.f1135c ? 1 : 0)) * 31) + this.f1136d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1133a);
        parcel.writeString(this.f1134b);
        boolean z = this.f1135c;
        int i2 = C27445x.f77229a;
        parcel.writeInt(z ? 1 : 0);
        parcel.writeInt(this.f1136d);
    }
}
