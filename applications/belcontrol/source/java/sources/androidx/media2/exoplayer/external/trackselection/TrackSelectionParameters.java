package androidx.media2.exoplayer.external.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters.class */
public class TrackSelectionParameters implements Parcelable {

    /* renamed from: a */
    public final String f1179a;

    /* renamed from: b */
    public final String f1180b;

    /* renamed from: c */
    public final boolean f1181c;

    /* renamed from: d */
    public final int f1182d;

    /* renamed from: f */
    public static final TrackSelectionParameters f1178f = new TrackSelectionParameters();
    public static final Parcelable.Creator<TrackSelectionParameters> CREATOR = new C0158a();

    /* renamed from: androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a.class */
    public class C0158a implements Parcelable.Creator<TrackSelectionParameters> {
        /* renamed from: a */
        public TrackSelectionParameters createFromParcel(Parcel parcel) {
            return new TrackSelectionParameters(parcel);
        }

        /* renamed from: b */
        public TrackSelectionParameters[] newArray(int i) {
            return new TrackSelectionParameters[i];
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b.class */
    public static class C0159b {

        /* renamed from: a */
        public String f1183a;

        /* renamed from: b */
        public String f1184b;

        /* renamed from: c */
        public boolean f1185c;

        /* renamed from: d */
        public int f1186d;

        public C0159b(TrackSelectionParameters trackSelectionParameters) {
            this.f1183a = trackSelectionParameters.f1179a;
            this.f1184b = trackSelectionParameters.f1180b;
            this.f1185c = trackSelectionParameters.f1181c;
            this.f1186d = trackSelectionParameters.f1182d;
        }

        /* renamed from: a */
        public C0159b m6394a(boolean z) {
            this.f1185c = z;
            return this;
        }
    }

    public TrackSelectionParameters() {
        this(null, null, false, 0);
    }

    public TrackSelectionParameters(Parcel parcel) {
        this.f1179a = parcel.readString();
        this.f1180b = parcel.readString();
        this.f1181c = nu.c0(parcel);
        this.f1182d = parcel.readInt();
    }

    public TrackSelectionParameters(String str, String str2, boolean z, int i) {
        this.f1179a = nu.Y(str);
        this.f1180b = nu.Y(str2);
        this.f1181c = z;
        this.f1182d = i;
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
        if (!TextUtils.equals(this.f1179a, trackSelectionParameters.f1179a) || !TextUtils.equals(this.f1180b, trackSelectionParameters.f1180b) || this.f1181c != trackSelectionParameters.f1181c || this.f1182d != trackSelectionParameters.f1182d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f1179a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f1180b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((((hashCode + 31) * 31) + i) * 31) + (this.f1181c ? 1 : 0)) * 31) + this.f1182d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1179a);
        parcel.writeString(this.f1180b);
        nu.o0(parcel, this.f1181c);
        parcel.writeInt(this.f1182d);
    }
}
