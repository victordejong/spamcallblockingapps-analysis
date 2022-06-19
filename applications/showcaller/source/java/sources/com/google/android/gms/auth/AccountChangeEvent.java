package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/AccountChangeEvent.class */
public class AccountChangeEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new C5946c();

    /* renamed from: d */
    private final int f18834d;

    /* renamed from: e */
    private final long f18835e;

    /* renamed from: f */
    private final String f18836f;

    /* renamed from: g */
    private final int f18837g;

    /* renamed from: h */
    private final int f18838h;

    /* renamed from: i */
    private final String f18839i;

    public AccountChangeEvent(int i, long j, String str, int i2, int i3, String str2) {
        this.f18834d = i;
        this.f18835e = j;
        this.f18836f = (String) C6155o.m17018j(str);
        this.f18837g = i2;
        this.f18838h = i3;
        this.f18839i = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AccountChangeEvent)) {
            return false;
        }
        AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
        return this.f18834d == accountChangeEvent.f18834d && this.f18835e == accountChangeEvent.f18835e && C6147m.m17044a(this.f18836f, accountChangeEvent.f18836f) && this.f18837g == accountChangeEvent.f18837g && this.f18838h == accountChangeEvent.f18838h && C6147m.m17044a(this.f18839i, accountChangeEvent.f18839i);
    }

    public int hashCode() {
        return C6147m.m17043b(Integer.valueOf(this.f18834d), Long.valueOf(this.f18835e), this.f18836f, Integer.valueOf(this.f18837g), Integer.valueOf(this.f18838h), this.f18839i);
    }

    public String toString() {
        int i = this.f18837g;
        String str = i != 1 ? i != 2 ? i != 3 ? i != 4 ? "UNKNOWN" : "RENAMED_TO" : "RENAMED_FROM" : "REMOVED" : "ADDED";
        String str2 = this.f18836f;
        String str3 = this.f18839i;
        int i2 = this.f18838h;
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
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f18834d);
        C6170a.m16934n(parcel, 2, this.f18835e);
        C6170a.m16930r(parcel, 3, this.f18836f, false);
        C6170a.m16937k(parcel, 4, this.f18837g);
        C6170a.m16937k(parcel, 5, this.f18838h);
        C6170a.m16930r(parcel, 6, this.f18839i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
