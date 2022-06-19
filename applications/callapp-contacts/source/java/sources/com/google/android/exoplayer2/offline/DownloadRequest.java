package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
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

    /* renamed from: id */
    public final String f36914id;
    public final byte[] keySetId;
    public final String mimeType;
    public final List<StreamKey> streamKeys;
    public final Uri uri;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadRequest$UnsupportedRequestException.class */
    public static class UnsupportedRequestException extends IOException {
    }

    DownloadRequest(Parcel parcel) {
        this.f36914id = (String) C11599af.m19974a(parcel.readString());
        this.uri = Uri.parse((String) C11599af.m19974a(parcel.readString()));
        this.mimeType = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add((StreamKey) parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = parcel.createByteArray();
        this.customCacheKey = parcel.readString();
        this.data = (byte[]) C11599af.m19974a(parcel.createByteArray());
    }

    private DownloadRequest(String str, Uri uri, String str2, List<StreamKey> list, byte[] bArr, String str3, byte[] bArr2) {
        int m19986a = C11599af.m19986a(uri, str2);
        boolean z = true;
        if (m19986a == 0 || m19986a == 2 || m19986a == 1) {
            C11593a.m20021a(str3 != null ? false : z, "customCacheKey must be null for type: ".concat(String.valueOf(m19986a)));
        }
        this.f36914id = str;
        this.uri = uri;
        this.mimeType = str2;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        this.customCacheKey = str3;
        this.data = bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : C11599af.f38653f;
    }

    public final DownloadRequest copyWithId(String str) {
        return new DownloadRequest(str, this.uri, this.mimeType, this.streamKeys, this.keySetId, this.customCacheKey, this.data);
    }

    public final DownloadRequest copyWithKeySetId(byte[] bArr) {
        return new DownloadRequest(this.f36914id, this.uri, this.mimeType, this.streamKeys, bArr, this.customCacheKey, this.data);
    }

    public final DownloadRequest copyWithMergedRequest(DownloadRequest downloadRequest) {
        ArrayList arrayList;
        C11593a.m20022a(this.f36914id.equals(downloadRequest.f36914id));
        if (!this.streamKeys.isEmpty() && !downloadRequest.streamKeys.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(this.streamKeys);
            int i = 0;
            while (true) {
                arrayList = arrayList2;
                if (i >= downloadRequest.streamKeys.size()) {
                    break;
                }
                StreamKey streamKey = downloadRequest.streamKeys.get(i);
                if (!arrayList2.contains(streamKey)) {
                    arrayList2.add(streamKey);
                }
                i++;
            }
        } else {
            arrayList = Collections.emptyList();
        }
        return new DownloadRequest(this.f36914id, downloadRequest.uri, downloadRequest.mimeType, arrayList, downloadRequest.keySetId, downloadRequest.customCacheKey, downloadRequest.data);
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
        return this.f36914id.equals(downloadRequest.f36914id) && this.uri.equals(downloadRequest.uri) && C11599af.m19973a((Object) this.mimeType, (Object) downloadRequest.mimeType) && this.streamKeys.equals(downloadRequest.streamKeys) && Arrays.equals(this.keySetId, downloadRequest.keySetId) && C11599af.m19973a((Object) this.customCacheKey, (Object) downloadRequest.customCacheKey) && Arrays.equals(this.data, downloadRequest.data);
    }

    public final int hashCode() {
        int hashCode = this.f36914id.hashCode();
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
        MediaItem.C10830a c10830a = new MediaItem.C10830a();
        c10830a.f34818a = this.f36914id;
        c10830a.f34819b = this.uri;
        c10830a.f34829l = this.customCacheKey;
        c10830a.f34820c = this.mimeType;
        List<StreamKey> list = this.streamKeys;
        c10830a.f34828k = (list == null || list.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(list));
        return c10830a.m22317a(this.keySetId).m22318a();
    }

    public final String toString() {
        return this.mimeType + ":" + this.f36914id;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f36914id);
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
