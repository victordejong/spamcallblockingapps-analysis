package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;
import p081h.p203i.p204a.p224e.p254g.C7140i;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/gcm/PeriodicTask.class */
public class PeriodicTask extends Task {
    public static final Parcelable.Creator<PeriodicTask> CREATOR = new C7140i();

    /* renamed from: e */
    public long f6706e;

    /* renamed from: f */
    public long f6707f;

    @Deprecated
    public PeriodicTask(Parcel parcel) {
        super(parcel);
        this.f6706e = -1L;
        this.f6707f = -1L;
        this.f6706e = parcel.readLong();
        this.f6707f = Math.min(parcel.readLong(), this.f6706e);
    }

    public /* synthetic */ PeriodicTask(Parcel parcel, C7140i iVar) {
        this(parcel);
    }

    /* renamed from: a */
    public long m31861a() {
        return this.f6707f;
    }

    /* renamed from: b */
    public long m31860b() {
        return this.f6706e;
    }

    public String toString() {
        String obj = super.toString();
        long b = m31860b();
        long a = m31861a();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 54);
        sb.append(obj);
        sb.append(" period=");
        sb.append(b);
        sb.append(" flex=");
        sb.append(a);
        return sb.toString();
    }

    @Override // com.google.android.gms.gcm.Task, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeLong(this.f6706e);
        parcel.writeLong(this.f6707f);
    }
}
