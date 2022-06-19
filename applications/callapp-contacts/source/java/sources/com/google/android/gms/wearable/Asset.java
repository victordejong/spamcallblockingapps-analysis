package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12024c;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/Asset.class */
public class Asset extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Asset> CREATOR = new C14368s();
    private byte[] data;
    private Uri uri;
    private String zze;
    private ParcelFileDescriptor zzf;

    public Asset(byte[] bArr, String str, ParcelFileDescriptor parcelFileDescriptor, Uri uri) {
        this.data = bArr;
        this.zze = str;
        this.zzf = parcelFileDescriptor;
        this.uri = uri;
    }

    public static Asset createFromBytes(byte[] bArr) {
        C12024c.m19191a(bArr);
        return new Asset(bArr, null, null, null);
    }

    public static Asset createFromFd(ParcelFileDescriptor parcelFileDescriptor) {
        C12024c.m19191a(parcelFileDescriptor);
        return new Asset(null, null, parcelFileDescriptor, null);
    }

    public static Asset createFromRef(String str) {
        C12024c.m19191a((Object) str);
        return new Asset(null, str, null, null);
    }

    public static Asset createFromUri(Uri uri) {
        C12024c.m19191a(uri);
        return new Asset(null, null, null, uri);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Asset)) {
            return false;
        }
        Asset asset = (Asset) obj;
        return Arrays.equals(this.data, asset.data) && C12041m.m19168a(this.zze, asset.zze) && C12041m.m19168a(this.zzf, asset.zzf) && C12041m.m19168a(this.uri, asset.uri);
    }

    public final byte[] getData() {
        return this.data;
    }

    public String getDigest() {
        return this.zze;
    }

    public ParcelFileDescriptor getFd() {
        return this.zzf;
    }

    public Uri getUri() {
        return this.uri;
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{this.data, this.zze, this.zzf, this.uri});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Asset[@");
        sb.append(Integer.toHexString(hashCode()));
        if (this.zze == null) {
            sb.append(", nodigest");
        } else {
            sb.append(", ");
            sb.append(this.zze);
        }
        if (this.data != null) {
            sb.append(", size=");
            sb.append(this.data.length);
        }
        if (this.zzf != null) {
            sb.append(", fd=");
            sb.append(this.zzf);
        }
        if (this.uri != null) {
            sb.append(", uri=");
            sb.append(this.uri);
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C12024c.m19191a(parcel);
        int i2 = i | 1;
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19100a(parcel, 2, this.data, false);
        C12050a.m19104a(parcel, 3, getDigest(), false);
        C12050a.m19107a(parcel, 4, this.zzf, i2, false);
        C12050a.m19107a(parcel, 5, this.uri, i2, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
