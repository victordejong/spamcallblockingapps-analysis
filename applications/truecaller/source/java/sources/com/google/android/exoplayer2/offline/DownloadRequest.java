package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadRequest.class */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new C1996a();

    /* renamed from: a */
    public final String f4989a;

    /* renamed from: b */
    public final String f4990b;

    /* renamed from: c */
    public final Uri f4991c;

    /* renamed from: d */
    public final List<StreamKey> f4992d;

    /* renamed from: e */
    public final String f4993e;

    /* renamed from: f */
    public final byte[] f4994f;

    /* renamed from: com.google.android.exoplayer2.offline.DownloadRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadRequest$a.class */
    public static final class C1996a implements Parcelable.Creator<DownloadRequest> {
        @Override // android.os.Parcelable.Creator
        public DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DownloadRequest[] newArray(int i) {
            return new DownloadRequest[i];
        }
    }

    public DownloadRequest(Parcel parcel) {
        String readString = parcel.readString();
        int i = C24773d0.f69427a;
        this.f4989a = readString;
        this.f4990b = parcel.readString();
        this.f4991c = Uri.parse(parcel.readString());
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.f4992d = Collections.unmodifiableList(arrayList);
        this.f4993e = parcel.readString();
        this.f4994f = parcel.createByteArray();
    }

    public DownloadRequest(String str, String str2, Uri uri, List<StreamKey> list, String str3, byte[] bArr) {
        if ("dash".equals(str2) || "hls".equals(str2) || "ss".equals(str2)) {
            boolean z = str3 == null;
            C26232y.m2306s(z, "customCacheKey must be null for type: " + str2);
        }
        this.f4989a = str;
        this.f4990b = str2;
        this.f4991c = uri;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.f4992d = Collections.unmodifiableList(arrayList);
        this.f4993e = str3;
        this.f4994f = bArr != null ? Arrays.copyOf(bArr, bArr.length) : C24773d0.f69432f;
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
        if (this.f4989a.equals(downloadRequest.f4989a)) {
            z = false;
            if (this.f4990b.equals(downloadRequest.f4990b)) {
                z = false;
                if (this.f4991c.equals(downloadRequest.f4991c)) {
                    z = false;
                    if (this.f4992d.equals(downloadRequest.f4992d)) {
                        z = false;
                        if (C24773d0.m4623a(this.f4993e, downloadRequest.f4993e)) {
                            z = false;
                            if (Arrays.equals(this.f4994f, downloadRequest.f4994f)) {
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
        int m8579q2 = C22128a.m8579q2(this.f4990b, C22128a.m8579q2(this.f4989a, this.f4990b.hashCode() * 31, 31), 31);
        int hashCode = this.f4991c.hashCode();
        int hashCode2 = this.f4992d.hashCode();
        String str = this.f4993e;
        return Arrays.hashCode(this.f4994f) + ((((hashCode2 + ((hashCode + m8579q2) * 31)) * 31) + (str != null ? str.hashCode() : 0)) * 31);
    }

    public String toString() {
        return this.f4990b + StringConstant.COLON + this.f4989a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4989a);
        parcel.writeString(this.f4990b);
        parcel.writeString(this.f4991c.toString());
        parcel.writeInt(this.f4992d.size());
        for (int i2 = 0; i2 < this.f4992d.size(); i2++) {
            parcel.writeParcelable(this.f4992d.get(i2), 0);
        }
        parcel.writeString(this.f4993e);
        parcel.writeByteArray(this.f4994f);
    }
}
