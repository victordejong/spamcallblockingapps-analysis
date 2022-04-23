package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadRequest.class */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new Parcelable.Creator<DownloadRequest>() { // from class: com.google.android.exoplayer2.offline.DownloadRequest.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ DownloadRequest[] newArray(int i) {
            return new DownloadRequest[i];
        }
    };
    public final String customCacheKey;
    public final byte[] data;
    public final String id;
    public final byte[] keySetId;
    public final String mimeType;
    public final List<StreamKey> streamKeys;
    public final Uri uri;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadRequest$UnsupportedRequestException.class */
    public static class UnsupportedRequestException extends IOException {
    }

    DownloadRequest(Parcel parcel) {
        this.id = (String) af.a(parcel.readString());
        this.uri = Uri.parse((String) af.a(parcel.readString()));
        this.mimeType = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add((StreamKey) parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = parcel.createByteArray();
        this.customCacheKey = parcel.readString();
        this.data = (byte[]) af.a(parcel.createByteArray());
    }

    private DownloadRequest(String str, Uri uri, String str2, List<StreamKey> list, byte[] bArr, String str3, byte[] bArr2) {
        int a2 = af.a(uri, str2);
        boolean z = true;
        if (a2 == 0 || a2 == 2 || a2 == 1) {
            a.a(str3 != null ? false : z, "customCacheKey must be null for type: ".concat(String.valueOf(a2)));
        }
        this.id = str;
        this.uri = uri;
        this.mimeType = str2;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        this.customCacheKey = str3;
        this.data = bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : af.f;
    }

    public final DownloadRequest copyWithId(String str) {
        return new DownloadRequest(str, this.uri, this.mimeType, this.streamKeys, this.keySetId, this.customCacheKey, this.data);
    }

    public final DownloadRequest copyWithKeySetId(byte[] bArr) {
        return new DownloadRequest(this.id, this.uri, this.mimeType, this.streamKeys, bArr, this.customCacheKey, this.data);
    }

    public final DownloadRequest copyWithMergedRequest(DownloadRequest downloadRequest) {
        List list;
        a.a(this.id.equals(downloadRequest.id));
        if (!this.streamKeys.isEmpty() && !downloadRequest.streamKeys.isEmpty()) {
            ArrayList arrayList = new ArrayList(this.streamKeys);
            int i = 0;
            while (true) {
                list = arrayList;
                if (i >= downloadRequest.streamKeys.size()) {
                    break;
                }
                StreamKey streamKey = downloadRequest.streamKeys.get(i);
                if (!arrayList.contains(streamKey)) {
                    arrayList.add(streamKey);
                }
                i++;
            }
        } else {
            list = Collections.emptyList();
        }
        return new DownloadRequest(this.id, downloadRequest.uri, downloadRequest.mimeType, list, downloadRequest.keySetId, downloadRequest.customCacheKey, downloadRequest.data);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest downloadRequest = (DownloadRequest) obj;
        return this.id.equals(downloadRequest.id) && this.uri.equals(downloadRequest.uri) && af.a((Object) this.mimeType, (Object) downloadRequest.mimeType) && this.streamKeys.equals(downloadRequest.streamKeys) && Arrays.equals(this.keySetId, downloadRequest.keySetId) && af.a((Object) this.customCacheKey, (Object) downloadRequest.customCacheKey) && Arrays.equals(this.data, downloadRequest.data);
    }

    public final int hashCode() {
        int hashCode = this.id.hashCode();
        int hashCode2 = this.uri.hashCode();
        String str = this.mimeType;
        int i = 0;
        int hashCode3 = str != null ? str.hashCode() : 0;
        int hashCode4 = this.streamKeys.hashCode();
        int hashCode5 = Arrays.hashCode(this.keySetId);
        String str2 = this.customCacheKey;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((((((((hashCode * 31 * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i) * 31) + Arrays.hashCode(this.data);
    }

    public final MediaItem toMediaItem() {
        MediaItem.a aVar = new MediaItem.a();
        aVar.f20614a = this.id;
        aVar.f20615b = this.uri;
        aVar.l = this.customCacheKey;
        aVar.f20616c = this.mimeType;
        List<StreamKey> list = this.streamKeys;
        aVar.k = (list == null || list.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(list));
        return aVar.a(this.keySetId).a();
    }

    public final String toString() {
        return this.mimeType + ":" + this.id;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.uri.toString());
        parcel.writeString(this.mimeType);
        parcel.writeInt(this.streamKeys.size());
        for (int i2 = 0; i2 < this.streamKeys.size(); i2++) {
            parcel.writeParcelable(this.streamKeys.get(i2), 0);
        }
        parcel.writeByteArray(this.keySetId);
        parcel.writeString(this.customCacheKey);
        parcel.writeByteArray(this.data);
    }
}
