package com.google.android.gms.internal.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p266g.C7726x5;
import p081h.p203i.p204a.p224e.p259j.p266g.EnumC7566c5;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzr.class */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new C7726x5();

    /* renamed from: a */
    public final String f6811a;

    /* renamed from: b */
    public final int f6812b;

    /* renamed from: c */
    public final int f6813c;

    /* renamed from: d */
    public final String f6814d;

    /* renamed from: e */
    public final String f6815e;

    /* renamed from: f */
    public final boolean f6816f;

    /* renamed from: g */
    public final String f6817g;

    /* renamed from: h */
    public final boolean f6818h;

    /* renamed from: i */
    public final int f6819i;

    public zzr(String str, int i, int i2, String str2, String str3, String str4, boolean z, EnumC7566c5 c5Var) {
        C7021t.m21290a(str);
        this.f6811a = str;
        this.f6812b = i;
        this.f6813c = i2;
        this.f6817g = str2;
        this.f6814d = str3;
        this.f6815e = str4;
        this.f6816f = !z;
        this.f6818h = z;
        this.f6819i = c5Var.mo20100C();
    }

    public zzr(String str, int i, int i2, String str2, String str3, boolean z, String str4, boolean z2, int i3) {
        this.f6811a = str;
        this.f6812b = i;
        this.f6813c = i2;
        this.f6814d = str2;
        this.f6815e = str3;
        this.f6816f = z;
        this.f6817g = str4;
        this.f6818h = z2;
        this.f6819i = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzr)) {
            return false;
        }
        zzr zzrVar = (zzr) obj;
        return C7018s.m21297a(this.f6811a, zzrVar.f6811a) && this.f6812b == zzrVar.f6812b && this.f6813c == zzrVar.f6813c && C7018s.m21297a(this.f6817g, zzrVar.f6817g) && C7018s.m21297a(this.f6814d, zzrVar.f6814d) && C7018s.m21297a(this.f6815e, zzrVar.f6815e) && this.f6816f == zzrVar.f6816f && this.f6818h == zzrVar.f6818h && this.f6819i == zzrVar.f6819i;
    }

    public final int hashCode() {
        return C7018s.m21296a(this.f6811a, Integer.valueOf(this.f6812b), Integer.valueOf(this.f6813c), this.f6817g, this.f6814d, this.f6815e, Boolean.valueOf(this.f6816f), Boolean.valueOf(this.f6818h), Integer.valueOf(this.f6819i));
    }

    public final String toString() {
        return "PlayLoggerContext[package=" + this.f6811a + ",packageVersionCode=" + this.f6812b + ",logSource=" + this.f6813c + ",logSourceName=" + this.f6817g + ",uploadAccount=" + this.f6814d + ",loggingId=" + this.f6815e + ",logAndroidId=" + this.f6816f + ",isAnonymous=" + this.f6818h + ",qosTier=" + this.f6819i + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f6811a, false);
        C7031b.m21225a(parcel, 3, this.f6812b);
        C7031b.m21225a(parcel, 4, this.f6813c);
        C7031b.m21215a(parcel, 5, this.f6814d, false);
        C7031b.m21215a(parcel, 6, this.f6815e, false);
        C7031b.m21212a(parcel, 7, this.f6816f);
        C7031b.m21215a(parcel, 8, this.f6817g, false);
        C7031b.m21212a(parcel, 9, this.f6818h);
        C7031b.m21225a(parcel, 10, this.f6819i);
        C7031b.m21229a(parcel, a);
    }
}
