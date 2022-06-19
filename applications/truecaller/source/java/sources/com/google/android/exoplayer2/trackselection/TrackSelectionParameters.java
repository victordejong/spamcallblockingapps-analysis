package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.accessibility.CaptioningManager;
import java.util.Locale;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectionParameters.class */
public class TrackSelectionParameters implements Parcelable {

    /* renamed from: a */
    public final String f5075a;

    /* renamed from: b */
    public final String f5076b;

    /* renamed from: c */
    public final int f5077c;

    /* renamed from: d */
    public final boolean f5078d;

    /* renamed from: e */
    public final int f5079e;

    /* renamed from: f */
    public static final TrackSelectionParameters f5074f = new TrackSelectionParameters(null, null, 0, false, 0);
    public static final Parcelable.Creator<TrackSelectionParameters> CREATOR = new C2007a();

    /* renamed from: com.google.android.exoplayer2.trackselection.TrackSelectionParameters$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectionParameters$a.class */
    public static final class C2007a implements Parcelable.Creator<TrackSelectionParameters> {
        @Override // android.os.Parcelable.Creator
        public TrackSelectionParameters createFromParcel(Parcel parcel) {
            return new TrackSelectionParameters(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TrackSelectionParameters[] newArray(int i) {
            return new TrackSelectionParameters[i];
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.TrackSelectionParameters$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectionParameters$b.class */
    public static class C2008b {

        /* renamed from: a */
        public String f5080a = null;

        /* renamed from: b */
        public int f5081b = 0;

        /* renamed from: a */
        public C2008b mo39221a(Context context) {
            CaptioningManager captioningManager;
            int i = C24773d0.f69427a;
            if (i >= 19 && ((i >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled())) {
                this.f5081b = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.f5080a = i >= 21 ? locale.toLanguageTag() : locale.toString();
                }
            }
            return this;
        }
    }

    public TrackSelectionParameters(Parcel parcel) {
        this.f5075a = parcel.readString();
        this.f5076b = parcel.readString();
        this.f5077c = parcel.readInt();
        int i = C24773d0.f69427a;
        this.f5078d = parcel.readInt() != 0;
        this.f5079e = parcel.readInt();
    }

    public TrackSelectionParameters(String str, String str2, int i, boolean z, int i2) {
        this.f5075a = C24773d0.m4601w(str);
        this.f5076b = C24773d0.m4601w(str2);
        this.f5077c = i;
        this.f5078d = z;
        this.f5079e = i2;
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
        if (!TextUtils.equals(this.f5075a, trackSelectionParameters.f5075a) || !TextUtils.equals(this.f5076b, trackSelectionParameters.f5076b) || this.f5077c != trackSelectionParameters.f5077c || this.f5078d != trackSelectionParameters.f5078d || this.f5079e != trackSelectionParameters.f5079e) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f5075a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f5076b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((((((hashCode + 31) * 31) + i) * 31) + this.f5077c) * 31) + (this.f5078d ? 1 : 0)) * 31) + this.f5079e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5075a);
        parcel.writeString(this.f5076b);
        parcel.writeInt(this.f5077c);
        boolean z = this.f5078d;
        int i2 = C24773d0.f69427a;
        parcel.writeInt(z ? 1 : 0);
        parcel.writeInt(this.f5079e);
    }
}
