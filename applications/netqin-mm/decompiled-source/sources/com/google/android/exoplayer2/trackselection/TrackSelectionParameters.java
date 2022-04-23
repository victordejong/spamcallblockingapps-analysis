package com.google.android.exoplayer2.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectionParameters.class */
public class TrackSelectionParameters implements Parcelable {
    public static final Parcelable.Creator<TrackSelectionParameters> CREATOR = new C7181a();

    /* renamed from: f */
    public static final TrackSelectionParameters f22350f;
    @Deprecated

    /* renamed from: g */
    public static final TrackSelectionParameters f22351g;

    /* renamed from: a */
    public final String f22352a;

    /* renamed from: b */
    public final String f22353b;

    /* renamed from: c */
    public final int f22354c;

    /* renamed from: d */
    public final boolean f22355d;

    /* renamed from: e */
    public final int f22356e;

    /* renamed from: com.google.android.exoplayer2.trackselection.TrackSelectionParameters$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectionParameters$a.class */
    public static final class C7181a implements Parcelable.Creator<TrackSelectionParameters> {
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

    /* renamed from: com.google.android.exoplayer2.trackselection.TrackSelectionParameters$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectionParameters$b.class */
    public static class C7182b {

        /* renamed from: a */
        public String f22357a = null;

        /* renamed from: b */
        public String f22358b = null;

        /* renamed from: c */
        public int f22359c = 0;

        /* renamed from: d */
        public boolean f22360d = false;

        /* renamed from: e */
        public int f22361e = 0;

        /* renamed from: a */
        public TrackSelectionParameters mo18439a() {
            return new TrackSelectionParameters(this.f22357a, this.f22358b, this.f22359c, this.f22360d, this.f22361e);
        }
    }

    static {
        TrackSelectionParameters a = new C7182b().mo18439a();
        f22350f = a;
        f22351g = a;
    }

    public TrackSelectionParameters(Parcel parcel) {
        this.f22352a = parcel.readString();
        this.f22353b = parcel.readString();
        this.f22354c = parcel.readInt();
        this.f22355d = C2885h0.m28675a(parcel);
        this.f22356e = parcel.readInt();
    }

    public TrackSelectionParameters(String str, String str2, int i, boolean z, int i2) {
        this.f22352a = C2885h0.m28637c(str);
        this.f22353b = C2885h0.m28637c(str2);
        this.f22354c = i;
        this.f22355d = z;
        this.f22356e = i2;
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
        if (!(TextUtils.equals(this.f22352a, trackSelectionParameters.f22352a) && TextUtils.equals(this.f22353b, trackSelectionParameters.f22353b) && this.f22354c == trackSelectionParameters.f22354c && this.f22355d == trackSelectionParameters.f22355d && this.f22356e == trackSelectionParameters.f22356e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f22352a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f22353b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((((((hashCode + 31) * 31) + i) * 31) + this.f22354c) * 31) + (this.f22355d ? 1 : 0)) * 31) + this.f22356e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22352a);
        parcel.writeString(this.f22353b);
        parcel.writeInt(this.f22354c);
        C2885h0.m28674a(parcel, this.f22355d);
        parcel.writeInt(this.f22356e);
    }
}
