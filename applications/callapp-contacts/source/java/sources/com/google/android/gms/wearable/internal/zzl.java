package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzl.class */
public final class zzl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzl> CREATOR = new C14326dn();

    /* renamed from: id */
    private int f52330id;
    private final String packageName;
    private final String zzbf;
    private final String zzbg;
    private final String zzbh;
    private final String zzbi;
    private final String zzbj;
    private final String zzbk;
    private final byte zzbl;
    private final byte zzbm;
    private final byte zzbn;
    private final byte zzbo;

    public zzl(int i, String str, String str2, String str3, String str4, String str5, String str6, byte b, byte b2, byte b3, byte b4, String str7) {
        this.f52330id = i;
        this.zzbf = str;
        this.zzbg = str2;
        this.zzbh = str3;
        this.zzbi = str4;
        this.zzbj = str5;
        this.zzbk = str6;
        this.zzbl = b;
        this.zzbm = b2;
        this.zzbn = b3;
        this.zzbo = b4;
        this.packageName = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzl zzlVar = (zzl) obj;
        if (this.f52330id != zzlVar.f52330id || this.zzbl != zzlVar.zzbl || this.zzbm != zzlVar.zzbm || this.zzbn != zzlVar.zzbn || this.zzbo != zzlVar.zzbo || !this.zzbf.equals(zzlVar.zzbf)) {
            return false;
        }
        String str = this.zzbg;
        if (str != null) {
            if (!str.equals(zzlVar.zzbg)) {
                return false;
            }
        } else if (zzlVar.zzbg != null) {
            return false;
        }
        if (!this.zzbh.equals(zzlVar.zzbh) || !this.zzbi.equals(zzlVar.zzbi) || !this.zzbj.equals(zzlVar.zzbj)) {
            return false;
        }
        String str2 = this.zzbk;
        if (str2 != null) {
            if (!str2.equals(zzlVar.zzbk)) {
                return false;
            }
        } else if (zzlVar.zzbk != null) {
            return false;
        }
        String str3 = this.packageName;
        String str4 = zzlVar.packageName;
        return str3 != null ? str3.equals(str4) : str4 == null;
    }

    public final int hashCode() {
        int i = this.f52330id;
        int hashCode = this.zzbf.hashCode();
        String str = this.zzbg;
        int i2 = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int hashCode3 = this.zzbh.hashCode();
        int hashCode4 = this.zzbi.hashCode();
        int hashCode5 = this.zzbj.hashCode();
        String str2 = this.zzbk;
        int hashCode6 = str2 != null ? str2.hashCode() : 0;
        byte b = this.zzbl;
        byte b2 = this.zzbm;
        byte b3 = this.zzbn;
        byte b4 = this.zzbo;
        String str3 = this.packageName;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return ((((((((((((((((((((((i + 31) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + b) * 31) + b2) * 31) + b3) * 31) + b4) * 31) + i2;
    }

    public final String toString() {
        int i = this.f52330id;
        String str = this.zzbf;
        String str2 = this.zzbg;
        String str3 = this.zzbh;
        String str4 = this.zzbi;
        String str5 = this.zzbj;
        String str6 = this.zzbk;
        byte b = this.zzbl;
        byte b2 = this.zzbm;
        byte b3 = this.zzbn;
        byte b4 = this.zzbo;
        String str7 = this.packageName;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length());
        sb.append("AncsNotificationParcelable{, id=");
        sb.append(i);
        sb.append(", appId='");
        sb.append(str);
        sb.append('\'');
        sb.append(", dateTime='");
        sb.append(str2);
        sb.append('\'');
        sb.append(", notificationText='");
        sb.append(str3);
        sb.append('\'');
        sb.append(", title='");
        sb.append(str4);
        sb.append('\'');
        sb.append(", subtitle='");
        sb.append(str5);
        sb.append('\'');
        sb.append(", displayName='");
        sb.append(str6);
        sb.append('\'');
        sb.append(", eventId=");
        sb.append((int) b);
        sb.append(", eventFlags=");
        sb.append((int) b2);
        sb.append(", categoryId=");
        sb.append((int) b3);
        sb.append(", categoryCount=");
        sb.append((int) b4);
        sb.append(", packageName='");
        sb.append(str7);
        sb.append('\'');
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 2, this.f52330id);
        C12050a.m19104a(parcel, 3, this.zzbf, false);
        C12050a.m19104a(parcel, 4, this.zzbg, false);
        C12050a.m19104a(parcel, 5, this.zzbh, false);
        C12050a.m19104a(parcel, 6, this.zzbi, false);
        C12050a.m19104a(parcel, 7, this.zzbj, false);
        String str = this.zzbk;
        String str2 = str;
        if (str == null) {
            str2 = this.zzbf;
        }
        C12050a.m19104a(parcel, 8, str2, false);
        C12050a.m19115a(parcel, 9, this.zzbl);
        C12050a.m19115a(parcel, 10, this.zzbm);
        C12050a.m19115a(parcel, 11, this.zzbn);
        C12050a.m19115a(parcel, 12, this.zzbo);
        C12050a.m19104a(parcel, 13, this.packageName, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
