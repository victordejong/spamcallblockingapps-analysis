package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadRequest.class */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new C7165a();

    /* renamed from: a */
    public final String f22233a;

    /* renamed from: b */
    public final String f22234b;

    /* renamed from: c */
    public final Uri f22235c;

    /* renamed from: d */
    public final List<StreamKey> f22236d;

    /* renamed from: e */
    public final String f22237e;

    /* renamed from: f */
    public final byte[] f22238f;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadRequest$UnsupportedRequestException.class */
    public static class UnsupportedRequestException extends IOException {
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadRequest$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadRequest$a.class */
    public static final class C7165a implements Parcelable.Creator<DownloadRequest> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadRequest[] newArray(int i) {
            return new DownloadRequest[i];
        }
    }

    public DownloadRequest(Parcel parcel) {
        String readString = parcel.readString();
        C2885h0.m28670a(readString);
        this.f22233a = readString;
        String readString2 = parcel.readString();
        C2885h0.m28670a(readString2);
        this.f22234b = readString2;
        String readString3 = parcel.readString();
        C2885h0.m28670a(readString3);
        this.f22235c = Uri.parse(readString3);
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.f22236d = Collections.unmodifiableList(arrayList);
        this.f22237e = parcel.readString();
        byte[] bArr = new byte[parcel.readInt()];
        this.f22238f = bArr;
        parcel.readByteArray(bArr);
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
        if (this.f22233a.equals(downloadRequest.f22233a)) {
            z = false;
            if (this.f22234b.equals(downloadRequest.f22234b)) {
                z = false;
                if (this.f22235c.equals(downloadRequest.f22235c)) {
                    z = false;
                    if (this.f22236d.equals(downloadRequest.f22236d)) {
                        z = false;
                        if (C2885h0.m28669a((Object) this.f22237e, (Object) downloadRequest.f22237e)) {
                            z = false;
                            if (Arrays.equals(this.f22238f, downloadRequest.f22238f)) {
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
        int hashCode = this.f22234b.hashCode();
        int hashCode2 = this.f22233a.hashCode();
        int hashCode3 = this.f22234b.hashCode();
        int hashCode4 = this.f22235c.hashCode();
        int hashCode5 = this.f22236d.hashCode();
        String str = this.f22237e;
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.f22238f);
    }

    public String toString() {
        return this.f22234b + ":" + this.f22233a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22233a);
        parcel.writeString(this.f22234b);
        parcel.writeString(this.f22235c.toString());
        parcel.writeInt(this.f22236d.size());
        for (int i2 = 0; i2 < this.f22236d.size(); i2++) {
            parcel.writeParcelable(this.f22236d.get(i2), 0);
        }
        parcel.writeString(this.f22237e);
        parcel.writeInt(this.f22238f.length);
        parcel.writeByteArray(this.f22238f);
    }
}
