package com.truecaller.ads.offline.dto;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b \u0010!J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u0015\u0010\u000fJ \u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bR\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u001c\u001a\u0004\b\u001d\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u001e\u001a\u0004\b\u001f\u0010\u0007¨\u0006\""}, d2 = {"Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "Landroid/net/Uri;", "component2", "()Landroid/net/Uri;", AnalyticsConstants.KEY, "fileUri", "copy", "(Ljava/lang/String;Landroid/net/Uri;)Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getKey", "Landroid/net/Uri;", "getFileUri", "<init>", "(Ljava/lang/String;Landroid/net/Uri;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/OfflineAdUiConfigAsset.class */
public final class OfflineAdUiConfigAsset implements Parcelable {
    public static final Parcelable.Creator<OfflineAdUiConfigAsset> CREATOR = new C2828a();
    @b("fileUri")
    private final Uri fileUri;
    @b(AnalyticsConstants.KEY)
    private final String key;

    /* renamed from: com.truecaller.ads.offline.dto.OfflineAdUiConfigAsset$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/offline/dto/OfflineAdUiConfigAsset$a.class */
    public static final class C2828a implements Parcelable.Creator<OfflineAdUiConfigAsset> {
        @Override // android.os.Parcelable.Creator
        public OfflineAdUiConfigAsset createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new OfflineAdUiConfigAsset(parcel.readString(), (Uri) parcel.readParcelable(OfflineAdUiConfigAsset.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public OfflineAdUiConfigAsset[] newArray(int i) {
            return new OfflineAdUiConfigAsset[i];
        }
    }

    public OfflineAdUiConfigAsset(String str, Uri uri) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(uri, "fileUri");
        this.key = str;
        this.fileUri = uri;
    }

    public static /* synthetic */ OfflineAdUiConfigAsset copy$default(OfflineAdUiConfigAsset offlineAdUiConfigAsset, String str, Uri uri, int i, Object obj) {
        if ((i & 1) != 0) {
            str = offlineAdUiConfigAsset.key;
        }
        if ((i & 2) != 0) {
            uri = offlineAdUiConfigAsset.fileUri;
        }
        return offlineAdUiConfigAsset.copy(str, uri);
    }

    public final String component1() {
        return this.key;
    }

    public final Uri component2() {
        return this.fileUri;
    }

    public final OfflineAdUiConfigAsset copy(String str, Uri uri) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(uri, "fileUri");
        return new OfflineAdUiConfigAsset(str, uri);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof OfflineAdUiConfigAsset)) {
                return false;
            }
            OfflineAdUiConfigAsset offlineAdUiConfigAsset = (OfflineAdUiConfigAsset) obj;
            return l.a(this.key, offlineAdUiConfigAsset.key) && l.a(this.fileUri, offlineAdUiConfigAsset.fileUri);
        }
        return true;
    }

    public final Uri getFileUri() {
        return this.fileUri;
    }

    public final String getKey() {
        return this.key;
    }

    public int hashCode() {
        String str = this.key;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Uri uri = this.fileUri;
        if (uri != null) {
            i = uri.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OfflineAdUiConfigAsset(key=");
        m8728C.append(this.key);
        m8728C.append(", fileUri=");
        m8728C.append(this.fileUri);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.key);
        parcel.writeParcelable(this.fileUri, i);
    }
}
