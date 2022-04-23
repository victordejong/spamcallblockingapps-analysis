package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.internal.ads.beb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzdwj.class */
public final class zzdwj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdwj> CREATOR = new cwk();
    private final int versionCode;
    private beb.a zzhxc = null;
    private byte[] zzhxd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdwj(int i, byte[] bArr) {
        this.versionCode = i;
        this.zzhxd = bArr;
        zzazi();
    }

    private final void zzazi() {
        beb.a aVar = this.zzhxc;
        if (aVar == null && this.zzhxd != null) {
            return;
        }
        if (aVar != null && this.zzhxd == null) {
            return;
        }
        if (aVar != null && this.zzhxd != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        } else if (aVar == null && this.zzhxd == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        } else {
            throw new IllegalStateException("Impossible");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.versionCode);
        byte[] bArr = this.zzhxd;
        if (bArr == null) {
            bArr = this.zzhxc.g();
        }
        a.a(parcel, 2, bArr, false);
        a.b(parcel, a2);
    }

    public final beb.a zzazh() {
        if (!(this.zzhxc != null)) {
            try {
                this.zzhxc = beb.a.a(this.zzhxd, dmt.a());
                this.zzhxd = null;
            } catch (zzenn | NullPointerException e) {
                throw new IllegalStateException(e);
            }
        }
        zzazi();
        return this.zzhxc;
    }
}
