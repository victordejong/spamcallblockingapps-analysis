package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/AccountChangeEvent.class */
public class AccountChangeEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new b();
    private final int zze;
    private final long zzf;
    private final String zzg;
    private final int zzh;
    private final int zzi;
    private final String zzj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountChangeEvent(int i, long j, String str, int i2, int i3, String str2) {
        this.zze = i;
        this.zzf = j;
        this.zzg = (String) o.a(str);
        this.zzh = i2;
        this.zzi = i3;
        this.zzj = str2;
    }

    public AccountChangeEvent(long j, String str, int i, int i2, String str2) {
        this.zze = 1;
        this.zzf = j;
        this.zzg = (String) o.a(str);
        this.zzh = i;
        this.zzi = i2;
        this.zzj = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AccountChangeEvent)) {
            return false;
        }
        AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
        return this.zze == accountChangeEvent.zze && this.zzf == accountChangeEvent.zzf && m.a(this.zzg, accountChangeEvent.zzg) && this.zzh == accountChangeEvent.zzh && this.zzi == accountChangeEvent.zzi && m.a(this.zzj, accountChangeEvent.zzj);
    }

    public String getAccountName() {
        return this.zzg;
    }

    public String getChangeData() {
        return this.zzj;
    }

    public int getChangeType() {
        return this.zzh;
    }

    public int getEventIndex() {
        return this.zzi;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zze), Long.valueOf(this.zzf), this.zzg, Integer.valueOf(this.zzh), Integer.valueOf(this.zzi), this.zzj});
    }

    public String toString() {
        int i = this.zzh;
        String str = i != 1 ? i != 2 ? i != 3 ? i != 4 ? "UNKNOWN" : "RENAMED_TO" : "RENAMED_FROM" : "REMOVED" : "ADDED";
        String str2 = this.zzg;
        String str3 = this.zzj;
        int i2 = this.zzi;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 91 + str.length() + String.valueOf(str3).length());
        sb.append("AccountChangeEvent {accountName = ");
        sb.append(str2);
        sb.append(", changeType = ");
        sb.append(str);
        sb.append(", changeData = ");
        sb.append(str3);
        sb.append(", eventIndex = ");
        sb.append(i2);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zze);
        a.a(parcel, 2, this.zzf);
        a.a(parcel, 3, this.zzg, false);
        a.a(parcel, 4, this.zzh);
        a.a(parcel, 5, this.zzi);
        a.a(parcel, 6, this.zzj, false);
        a.b(parcel, a2);
    }
}
