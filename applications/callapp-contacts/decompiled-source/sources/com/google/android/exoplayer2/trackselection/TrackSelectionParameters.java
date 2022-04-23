package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.util.af;
import com.google.common.collect.v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectionParameters.class */
public class TrackSelectionParameters implements Parcelable {
    public static final Parcelable.Creator<TrackSelectionParameters> CREATOR = new Parcelable.Creator<TrackSelectionParameters>() { // from class: com.google.android.exoplayer2.trackselection.TrackSelectionParameters.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ TrackSelectionParameters createFromParcel(Parcel parcel) {
            return new TrackSelectionParameters(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ TrackSelectionParameters[] newArray(int i) {
            return new TrackSelectionParameters[i];
        }
    };
    @Deprecated
    public static final TrackSelectionParameters DEFAULT;
    public static final TrackSelectionParameters DEFAULT_WITHOUT_CONTEXT;
    public final int disabledTextTrackSelectionFlags;
    public final v<String> preferredAudioLanguages;
    public final int preferredAudioRoleFlags;
    public final v<String> preferredTextLanguages;
    public final int preferredTextRoleFlags;
    public final boolean selectUndeterminedTextLanguage;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectionParameters$a.class */
    public static class a {

        /* renamed from: c  reason: collision with root package name */
        v<String> f21918c;

        /* renamed from: d  reason: collision with root package name */
        int f21919d;
        v<String> e;
        int f;
        boolean g;
        int h;

        @Deprecated
        public a() {
            this.f21918c = v.g();
            this.f21919d = 0;
            this.e = v.g();
            this.f = 0;
            this.g = false;
            this.h = 0;
        }

        public a(Context context) {
            this();
            a(context);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(TrackSelectionParameters trackSelectionParameters) {
            this.f21918c = trackSelectionParameters.preferredAudioLanguages;
            this.f21919d = trackSelectionParameters.preferredAudioRoleFlags;
            this.e = trackSelectionParameters.preferredTextLanguages;
            this.f = trackSelectionParameters.preferredTextRoleFlags;
            this.g = trackSelectionParameters.selectUndeterminedTextLanguage;
            this.h = trackSelectionParameters.disabledTextTrackSelectionFlags;
        }

        public a a(Context context) {
            CaptioningManager captioningManager;
            if (af.f22275a >= 19 && ((af.f22275a >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled())) {
                this.f = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.e = v.a(af.a(locale));
                }
            }
            return this;
        }

        public TrackSelectionParameters b() {
            return new TrackSelectionParameters(this.f21918c, this.f21919d, this.e, this.f, this.g, this.h);
        }
    }

    static {
        TrackSelectionParameters b2 = new a().b();
        DEFAULT_WITHOUT_CONTEXT = b2;
        DEFAULT = b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackSelectionParameters(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, null);
        this.preferredAudioLanguages = v.a((Collection) arrayList);
        this.preferredAudioRoleFlags = parcel.readInt();
        ArrayList arrayList2 = new ArrayList();
        parcel.readList(arrayList2, null);
        this.preferredTextLanguages = v.a((Collection) arrayList2);
        this.preferredTextRoleFlags = parcel.readInt();
        this.selectUndeterminedTextLanguage = af.a(parcel);
        this.disabledTextTrackSelectionFlags = parcel.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackSelectionParameters(v<String> vVar, int i, v<String> vVar2, int i2, boolean z, int i3) {
        this.preferredAudioLanguages = vVar;
        this.preferredAudioRoleFlags = i;
        this.preferredTextLanguages = vVar2;
        this.preferredTextRoleFlags = i2;
        this.selectUndeterminedTextLanguage = z;
        this.disabledTextTrackSelectionFlags = i3;
    }

    public static TrackSelectionParameters getDefaults(Context context) {
        return new a(context).b();
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
        return this.preferredAudioLanguages.equals(trackSelectionParameters.preferredAudioLanguages) && this.preferredAudioRoleFlags == trackSelectionParameters.preferredAudioRoleFlags && this.preferredTextLanguages.equals(trackSelectionParameters.preferredTextLanguages) && this.preferredTextRoleFlags == trackSelectionParameters.preferredTextRoleFlags && this.selectUndeterminedTextLanguage == trackSelectionParameters.selectUndeterminedTextLanguage && this.disabledTextTrackSelectionFlags == trackSelectionParameters.disabledTextTrackSelectionFlags;
    }

    public int hashCode() {
        return ((((((((((this.preferredAudioLanguages.hashCode() + 31) * 31) + this.preferredAudioRoleFlags) * 31) + this.preferredTextLanguages.hashCode()) * 31) + this.preferredTextRoleFlags) * 31) + (this.selectUndeterminedTextLanguage ? 1 : 0)) * 31) + this.disabledTextTrackSelectionFlags;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.preferredAudioLanguages);
        parcel.writeInt(this.preferredAudioRoleFlags);
        parcel.writeList(this.preferredTextLanguages);
        parcel.writeInt(this.preferredTextRoleFlags);
        af.a(parcel, this.selectUndeterminedTextLanguage);
        parcel.writeInt(this.disabledTextTrackSelectionFlags);
    }
}
