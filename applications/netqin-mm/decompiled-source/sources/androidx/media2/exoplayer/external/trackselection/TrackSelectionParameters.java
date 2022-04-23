package androidx.media2.exoplayer.external.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters.class */
public class TrackSelectionParameters implements Parcelable {

    /* renamed from: a */
    public final String f1959a;

    /* renamed from: b */
    public final String f1960b;

    /* renamed from: c */
    public final boolean f1961c;

    /* renamed from: d */
    public final int f1962d;

    /* renamed from: e */
    public static final TrackSelectionParameters f1958e = new TrackSelectionParameters();
    public static final Parcelable.Creator<TrackSelectionParameters> CREATOR = new C0342a();

    /* renamed from: androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a.class */
    public class C0342a implements Parcelable.Creator<TrackSelectionParameters> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrackSelectionParameters createFromParcel(Parcel parcel) {
            return new TrackSelectionParameters(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrackSelectionParameters[] newArray(int i) {
            return new TrackSelectionParameters[i];
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b.class */
    public static class C0343b {

        /* renamed from: a */
        public String f1963a;

        /* renamed from: b */
        public String f1964b;

        /* renamed from: c */
        public boolean f1965c;

        /* renamed from: d */
        public int f1966d;

        public C0343b(TrackSelectionParameters trackSelectionParameters) {
            this.f1963a = trackSelectionParameters.f1959a;
            this.f1964b = trackSelectionParameters.f1960b;
            this.f1965c = trackSelectionParameters.f1961c;
            this.f1966d = trackSelectionParameters.f1962d;
        }

        /* renamed from: a */
        public C0343b mo37923a(boolean z) {
            this.f1965c = z;
            return this;
        }
    }

    public TrackSelectionParameters() {
        this(null, null, false, 0);
    }

    public TrackSelectionParameters(Parcel parcel) {
        this.f1959a = parcel.readString();
        this.f1960b = parcel.readString();
        this.f1961c = C1167d0.m34483a(parcel);
        this.f1962d = parcel.readInt();
    }

    public TrackSelectionParameters(String str, String str2, boolean z, int i) {
        this.f1959a = C1167d0.m34435g(str);
        this.f1960b = C1167d0.m34435g(str2);
        this.f1961c = z;
        this.f1962d = i;
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
        if (!TextUtils.equals(this.f1959a, trackSelectionParameters.f1959a) || !TextUtils.equals(this.f1960b, trackSelectionParameters.f1960b) || this.f1961c != trackSelectionParameters.f1961c || this.f1962d != trackSelectionParameters.f1962d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f1959a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f1960b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((((hashCode + 31) * 31) + i) * 31) + (this.f1961c ? 1 : 0)) * 31) + this.f1962d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1959a);
        parcel.writeString(this.f1960b);
        C1167d0.m34482a(parcel, this.f1961c);
        parcel.writeInt(this.f1962d);
    }
}
