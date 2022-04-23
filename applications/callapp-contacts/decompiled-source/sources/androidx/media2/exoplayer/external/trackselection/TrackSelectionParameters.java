package androidx.media2.exoplayer.external.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.util.ac;
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

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a.class */
    public static class a {
        String e;
        String f;
        boolean g;
        int h;

        public a() {
            this(TrackSelectionParameters.DEFAULT);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(TrackSelectionParameters trackSelectionParameters) {
            this.e = trackSelectionParameters.preferredAudioLanguage;
            this.f = trackSelectionParameters.preferredTextLanguage;
            this.g = trackSelectionParameters.selectUndeterminedTextLanguage;
            this.h = trackSelectionParameters.disabledTextTrackSelectionFlags;
        }

        public a c(boolean z) {
            this.g = z;
            return this;
        }
    }

    TrackSelectionParameters() {
        this(null, null, false, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackSelectionParameters(Parcel parcel) {
        this.preferredAudioLanguage = parcel.readString();
        this.preferredTextLanguage = parcel.readString();
        this.selectUndeterminedTextLanguage = ac.a(parcel);
        this.disabledTextTrackSelectionFlags = parcel.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackSelectionParameters(String str, String str2, boolean z, int i) {
        this.preferredAudioLanguage = ac.b(str);
        this.preferredTextLanguage = ac.b(str2);
        this.selectUndeterminedTextLanguage = z;
        this.disabledTextTrackSelectionFlags = i;
    }

    public a buildUpon() {
        return new a(this);
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
        ac.a(parcel, this.selectUndeterminedTextLanguage);
        parcel.writeInt(this.disabledTextTrackSelectionFlags);
    }
}
