package com.google.android.exoplayer2.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.C5515h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectionParameters.class */
public class TrackSelectionParameters implements Parcelable {
    public static final Parcelable.Creator<TrackSelectionParameters> CREATOR = new C5394a();

    /* renamed from: d */
    public static final TrackSelectionParameters f17329d;
    @Deprecated

    /* renamed from: e */
    public static final TrackSelectionParameters f17330e;

    /* renamed from: f */
    public final String f17331f;

    /* renamed from: g */
    public final String f17332g;

    /* renamed from: h */
    public final int f17333h;

    /* renamed from: i */
    public final boolean f17334i;

    /* renamed from: j */
    public final int f17335j;

    /* renamed from: com.google.android.exoplayer2.trackselection.TrackSelectionParameters$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectionParameters$a.class */
    static final class C5394a implements Parcelable.Creator<TrackSelectionParameters> {
        C5394a() {
        }

        /* renamed from: a */
        public TrackSelectionParameters createFromParcel(Parcel parcel) {
            return new TrackSelectionParameters(parcel);
        }

        /* renamed from: b */
        public TrackSelectionParameters[] newArray(int i) {
            return new TrackSelectionParameters[i];
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.TrackSelectionParameters$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/TrackSelectionParameters$b.class */
    public static class C5395b {

        /* renamed from: a */
        String f17336a = null;

        /* renamed from: b */
        String f17337b = null;

        /* renamed from: c */
        int f17338c = 0;

        /* renamed from: d */
        boolean f17339d = false;

        /* renamed from: e */
        int f17340e = 0;

        /* renamed from: a */
        public TrackSelectionParameters mo19323a() {
            return new TrackSelectionParameters(this.f17336a, this.f17337b, this.f17338c, this.f17339d, this.f17340e);
        }
    }

    static {
        TrackSelectionParameters mo19323a = new C5395b().mo19323a();
        f17329d = mo19323a;
        f17330e = mo19323a;
    }

    public TrackSelectionParameters(Parcel parcel) {
        this.f17331f = parcel.readString();
        this.f17332g = parcel.readString();
        this.f17333h = parcel.readInt();
        this.f17334i = C5515h0.m18828i0(parcel);
        this.f17335j = parcel.readInt();
    }

    public TrackSelectionParameters(String str, String str2, int i, boolean z, int i2) {
        this.f17331f = C5515h0.m18840c0(str);
        this.f17332g = C5515h0.m18840c0(str2);
        this.f17333h = i;
        this.f17334i = z;
        this.f17335j = i2;
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
        if (!TextUtils.equals(this.f17331f, trackSelectionParameters.f17331f) || !TextUtils.equals(this.f17332g, trackSelectionParameters.f17332g) || this.f17333h != trackSelectionParameters.f17333h || this.f17334i != trackSelectionParameters.f17334i || this.f17335j != trackSelectionParameters.f17335j) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f17331f;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f17332g;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((((((hashCode + 31) * 31) + i) * 31) + this.f17333h) * 31) + (this.f17334i ? 1 : 0)) * 31) + this.f17335j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f17331f);
        parcel.writeString(this.f17332g);
        parcel.writeInt(this.f17333h);
        C5515h0.m18798x0(parcel, this.f17334i);
        parcel.writeInt(this.f17335j);
    }
}
