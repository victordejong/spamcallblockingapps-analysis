package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzas.class */
public final class zzas extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzas> CREATOR = new C7842r();

    /* renamed from: d */
    public final String f35872d;

    /* renamed from: e */
    public final zzaq f35873e;

    /* renamed from: f */
    public final String f35874f;

    /* renamed from: g */
    public final long f35875g;

    public zzas(zzas zzasVar, long j) {
        C6155o.m17018j(zzasVar);
        this.f35872d = zzasVar.f35872d;
        this.f35873e = zzasVar.f35873e;
        this.f35874f = zzasVar.f35874f;
        this.f35875g = j;
    }

    public zzas(String str, zzaq zzaqVar, String str2, long j) {
        this.f35872d = str;
        this.f35873e = zzaqVar;
        this.f35874f = str2;
        this.f35875g = j;
    }

    public final String toString() {
        String str = this.f35874f;
        String str2 = this.f35872d;
        String valueOf = String.valueOf(this.f35873e);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + valueOf.length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C7842r.m6052a(this, parcel, i);
    }
}
