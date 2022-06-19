package androidx.media2.exoplayer.external.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.util.C1996ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters.class */
public class TrackSelectionParameters implements Parcelable {
    public final int disabledTextTrackSelectionFlags;
    public final String preferredAudioLanguage;
    public final String preferredTextLanguage;
    public final boolean selectUndeterminedTextLanguage;
    public static final TrackSelectionParameters DEFAULT = new TrackSelectionParameters();
    public static final Parcelable.Creator<TrackSelectionParameters> CREATOR = new Parcelable.Creator<TrackSelectionParameters>() { // from class: androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ TrackSelectionParameters createFromParcel(Parcel parcel) {
            return new TrackSelectionParameters(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ TrackSelectionParameters[] newArray(int i) {
            return new TrackSelectionParameters[i];
        }
    };

    /* renamed from: androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a.class */
    public static class C1928a {

        /* renamed from: e */
        String f7773e;

        /* renamed from: f */
        String f7774f;

        /* renamed from: g */
        boolean f7775g;

        /* renamed from: h */
        int f7776h;

        public C1928a() {
            this(TrackSelectionParameters.DEFAULT);
        }

        public C1928a(TrackSelectionParameters trackSelectionParameters) {
            this.f7773e = trackSelectionParameters.preferredAudioLanguage;
            this.f7774f = trackSelectionParameters.preferredTextLanguage;
            this.f7775g = trackSelectionParameters.selectUndeterminedTextLanguage;
            this.f7776h = trackSelectionParameters.disabledTextTrackSelectionFlags;
        }

        /* renamed from: c */
        public C1928a mo41846c(boolean z) {
            this.f7775g = z;
            return this;
        }
    }

    TrackSelectionParameters() {
        this(null, null, false, 0);
    }

    public TrackSelectionParameters(Parcel parcel) {
        this.preferredAudioLanguage = parcel.readString();
        this.preferredTextLanguage = parcel.readString();
        this.selectUndeterminedTextLanguage = C1996ac.m41664a(parcel);
        this.disabledTextTrackSelectionFlags = parcel.readInt();
    }

    public TrackSelectionParameters(String str, String str2, boolean z, int i) {
        this.preferredAudioLanguage = C1996ac.m41631b(str);
        this.preferredTextLanguage = C1996ac.m41631b(str2);
        this.selectUndeterminedTextLanguage = z;
        this.disabledTextTrackSelectionFlags = i;
    }

    public C1928a buildUpon() {
        return new C1928a(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TrackSelectionParameters trackSelectionParameters = (TrackSelectionParameters) obj;
        return TextUtils.equals(this.preferredAudioLanguage, trackSelectionParameters.preferredAudioLanguage) && TextUtils.equals(this.preferredTextLanguage, trackSelectionParameters.preferredTextLanguage) && this.selectUndeterminedTextLanguage == trackSelectionParameters.selectUndeterminedTextLanguage && this.disabledTextTrackSelectionFlags == trackSelectionParameters.disabledTextTrackSelectionFlags;
    }

    public int hashCode() {
        String str = this.preferredAudioLanguage;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.preferredTextLanguage;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((((hashCode + 31) * 31) + i) * 31) + (this.selectUndeterminedTextLanguage ? 1 : 0)) * 31) + this.disabledTextTrackSelectionFlags;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.preferredAudioLanguage);
        parcel.writeString(this.preferredTextLanguage);
        C1996ac.m41663a(parcel, this.selectUndeterminedTextLanguage);
        parcel.writeInt(this.disabledTextTrackSelectionFlags);
    }
}
