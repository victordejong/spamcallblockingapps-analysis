package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadRequest.class */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new C5166a();

    /* renamed from: d */
    public final String f16215d;

    /* renamed from: e */
    public final String f16216e;

    /* renamed from: f */
    public final Uri f16217f;

    /* renamed from: g */
    public final List<StreamKey> f16218g;

    /* renamed from: h */
    public final String f16219h;

    /* renamed from: i */
    public final byte[] f16220i;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadRequest$UnsupportedRequestException.class */
    public static class UnsupportedRequestException extends IOException {
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadRequest$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadRequest$a.class */
    static final class C5166a implements Parcelable.Creator<DownloadRequest> {
        C5166a() {
        }

        /* renamed from: a */
        public DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        /* renamed from: b */
        public DownloadRequest[] newArray(int i) {
            return new DownloadRequest[i];
        }
    }

    DownloadRequest(Parcel parcel) {
        this.f16215d = (String) C5515h0.m18833g(parcel.readString());
        this.f16216e = (String) C5515h0.m18833g(parcel.readString());
        this.f16217f = Uri.parse((String) C5515h0.m18833g(parcel.readString()));
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.f16218g = Collections.unmodifiableList(arrayList);
        this.f16219h = parcel.readString();
        this.f16220i = (byte[]) C5515h0.m18833g(parcel.createByteArray());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest downloadRequest = (DownloadRequest) obj;
        boolean z = false;
        if (this.f16215d.equals(downloadRequest.f16215d)) {
            z = false;
            if (this.f16216e.equals(downloadRequest.f16216e)) {
                z = false;
                if (this.f16217f.equals(downloadRequest.f16217f)) {
                    z = false;
                    if (this.f16218g.equals(downloadRequest.f16218g)) {
                        z = false;
                        if (C5515h0.m18843b(this.f16219h, downloadRequest.f16219h)) {
                            z = false;
                            if (Arrays.equals(this.f16220i, downloadRequest.f16220i)) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        int hashCode = this.f16216e.hashCode();
        int hashCode2 = this.f16215d.hashCode();
        int hashCode3 = this.f16216e.hashCode();
        int hashCode4 = this.f16217f.hashCode();
        int hashCode5 = this.f16218g.hashCode();
        String str = this.f16219h;
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.f16220i);
    }

    public String toString() {
        return this.f16216e + ":" + this.f16215d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16215d);
        parcel.writeString(this.f16216e);
        parcel.writeString(this.f16217f.toString());
        parcel.writeInt(this.f16218g.size());
        for (int i2 = 0; i2 < this.f16218g.size(); i2++) {
            parcel.writeParcelable(this.f16218g.get(i2), 0);
        }
        parcel.writeString(this.f16219h);
        parcel.writeByteArray(this.f16220i);
    }
}
