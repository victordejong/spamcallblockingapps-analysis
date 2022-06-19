package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.util.C11599af;
import com.google.common.collect.AbstractC15549v;
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
    public final AbstractC15549v<String> preferredAudioLanguages;
    public final int preferredAudioRoleFlags;
    public final AbstractC15549v<String> preferredTextLanguages;
    public final int preferredTextRoleFlags;
    public final boolean selectUndeterminedTextLanguage;

    /* renamed from: com.google.android.exoplayer2.trackselection.TrackSelectionParameters$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectionParameters$a.class */
    public static class C11431a {

        /* renamed from: c */
        AbstractC15549v<String> f37781c;

        /* renamed from: d */
        int f37782d;

        /* renamed from: e */
        AbstractC15549v<String> f37783e;

        /* renamed from: f */
        int f37784f;

        /* renamed from: g */
        boolean f37785g;

        /* renamed from: h */
        int f37786h;

        @Deprecated
        public C11431a() {
            this.f37781c = AbstractC15549v.m8720g();
            this.f37782d = 0;
            this.f37783e = AbstractC15549v.m8720g();
            this.f37784f = 0;
            this.f37785g = false;
            this.f37786h = 0;
        }

        public C11431a(Context context) {
            this();
            mo20576a(context);
        }

        public C11431a(TrackSelectionParameters trackSelectionParameters) {
            this.f37781c = trackSelectionParameters.preferredAudioLanguages;
            this.f37782d = trackSelectionParameters.preferredAudioRoleFlags;
            this.f37783e = trackSelectionParameters.preferredTextLanguages;
            this.f37784f = trackSelectionParameters.preferredTextRoleFlags;
            this.f37785g = trackSelectionParameters.selectUndeterminedTextLanguage;
            this.f37786h = trackSelectionParameters.disabledTextTrackSelectionFlags;
        }

        /* renamed from: a */
        public C11431a mo20576a(Context context) {
            CaptioningManager captioningManager;
            if (C11599af.f38648a >= 19 && ((C11599af.f38648a >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled())) {
                this.f37784f = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.f37783e = AbstractC15549v.m8728a(C11599af.m19962a(locale));
                }
            }
            return this;
        }

        /* renamed from: b */
        public TrackSelectionParameters mo20575b() {
            return new TrackSelectionParameters(this.f37781c, this.f37782d, this.f37783e, this.f37784f, this.f37785g, this.f37786h);
        }
    }

    static {
        TrackSelectionParameters mo20575b = new C11431a().mo20575b();
        DEFAULT_WITHOUT_CONTEXT = mo20575b;
        DEFAULT = mo20575b;
    }

    public TrackSelectionParameters(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, null);
        this.preferredAudioLanguages = AbstractC15549v.m8725a((Collection) arrayList);
        this.preferredAudioRoleFlags = parcel.readInt();
        ArrayList arrayList2 = new ArrayList();
        parcel.readList(arrayList2, null);
        this.preferredTextLanguages = AbstractC15549v.m8725a((Collection) arrayList2);
        this.preferredTextRoleFlags = parcel.readInt();
        this.selectUndeterminedTextLanguage = C11599af.m19982a(parcel);
        this.disabledTextTrackSelectionFlags = parcel.readInt();
    }

    public TrackSelectionParameters(AbstractC15549v<String> abstractC15549v, int i, AbstractC15549v<String> abstractC15549v2, int i2, boolean z, int i3) {
        this.preferredAudioLanguages = abstractC15549v;
        this.preferredAudioRoleFlags = i;
        this.preferredTextLanguages = abstractC15549v2;
        this.preferredTextRoleFlags = i2;
        this.selectUndeterminedTextLanguage = z;
        this.disabledTextTrackSelectionFlags = i3;
    }

    public static TrackSelectionParameters getDefaults(Context context) {
        return new C11431a(context).mo20575b();
    }

    public C11431a buildUpon() {
        return new C11431a(this);
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
        C11599af.m19981a(parcel, this.selectUndeterminedTextLanguage);
        parcel.writeInt(this.disabledTextTrackSelectionFlags);
    }
}
