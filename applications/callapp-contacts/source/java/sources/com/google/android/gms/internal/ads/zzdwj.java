package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.internal.ads.beb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzdwj.class */
public final class zzdwj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdwj> CREATOR = new cwk();
    private final int versionCode;
    private beb.C12217a zzhxc = null;
    private byte[] zzhxd;

    public zzdwj(int i, byte[] bArr) {
        this.versionCode = i;
        this.zzhxd = bArr;
        zzazi();
    }

    private final void zzazi() {
        beb.C12217a c12217a = this.zzhxc;
        if (c12217a != null || this.zzhxd == null) {
            if (c12217a != null && this.zzhxd == null) {
                return;
            }
            if (c12217a != null && this.zzhxd != null) {
                throw new IllegalStateException("Invalid internal representation - full");
            }
            if (c12217a != null || this.zzhxd != null) {
                throw new IllegalStateException("Impossible");
            }
            throw new IllegalStateException("Invalid internal representation - empty");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.versionCode);
        byte[] bArr = this.zzhxd;
        if (bArr == null) {
            bArr = this.zzhxc.mo16256g();
        }
        C12050a.m19100a(parcel, 2, bArr, false);
        C12050a.m19095b(parcel, m19116a);
    }

    public final beb.C12217a zzazh() {
        if (!(this.zzhxc != null)) {
            try {
                this.zzhxc = beb.C12217a.m18102a(this.zzhxd, dmt.m16396a());
                this.zzhxd = null;
            } catch (zzenn | NullPointerException e) {
                throw new IllegalStateException(e);
            }
        }
        zzazi();
        return this.zzhxc;
    }
}
