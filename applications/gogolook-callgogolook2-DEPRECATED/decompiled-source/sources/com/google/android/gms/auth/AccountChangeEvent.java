package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p226b.C6769f;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/AccountChangeEvent.class */
public class AccountChangeEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new C6769f();

    /* renamed from: a */
    public final int f6332a;

    /* renamed from: b */
    public final long f6333b;

    /* renamed from: c */
    public final String f6334c;

    /* renamed from: d */
    public final int f6335d;

    /* renamed from: e */
    public final int f6336e;

    /* renamed from: f */
    public final String f6337f;

    public AccountChangeEvent(int i, long j, String str, int i2, int i3, String str2) {
        this.f6332a = i;
        this.f6333b = j;
        C7021t.m21290a(str);
        this.f6334c = str;
        this.f6335d = i2;
        this.f6336e = i3;
        this.f6337f = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AccountChangeEvent)) {
            return false;
        }
        AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
        return this.f6332a == accountChangeEvent.f6332a && this.f6333b == accountChangeEvent.f6333b && C7018s.m21297a(this.f6334c, accountChangeEvent.f6334c) && this.f6335d == accountChangeEvent.f6335d && this.f6336e == accountChangeEvent.f6336e && C7018s.m21297a(this.f6337f, accountChangeEvent.f6337f);
    }

    public int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f6332a), Long.valueOf(this.f6333b), this.f6334c, Integer.valueOf(this.f6335d), Integer.valueOf(this.f6336e), this.f6337f);
    }

    public String toString() {
        int i = this.f6335d;
        String str = i != 1 ? i != 2 ? i != 3 ? i != 4 ? "UNKNOWN" : "RENAMED_TO" : "RENAMED_FROM" : "REMOVED" : "ADDED";
        String str2 = this.f6334c;
        String str3 = this.f6337f;
        int i2 = this.f6336e;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 91 + str.length() + String.valueOf(str3).length());
        sb.append("AccountChangeEvent {accountName = ");
        sb.append(str2);
        sb.append(", changeType = ");
        sb.append(str);
        sb.append(", changeData = ");
        sb.append(str3);
        sb.append(", eventIndex = ");
        sb.append(i2);
        sb.append(CssParser.BLOCK_END);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6332a);
        C7031b.m21224a(parcel, 2, this.f6333b);
        C7031b.m21215a(parcel, 3, this.f6334c, false);
        C7031b.m21225a(parcel, 4, this.f6335d);
        C7031b.m21225a(parcel, 5, this.f6336e);
        C7031b.m21215a(parcel, 6, this.f6337f, false);
        C7031b.m21229a(parcel, a);
    }
}
