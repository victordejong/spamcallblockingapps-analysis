package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;
import p081h.p203i.p204a.p224e.p254g.C7138g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/gcm/OneoffTask.class */
public class OneoffTask extends Task {
    public static final Parcelable.Creator<OneoffTask> CREATOR = new C7138g();

    /* renamed from: e */
    public final long f6703e;

    /* renamed from: f */
    public final long f6704f;

    @Deprecated
    public OneoffTask(Parcel parcel) {
        super(parcel);
        this.f6703e = parcel.readLong();
        this.f6704f = parcel.readLong();
    }

    public /* synthetic */ OneoffTask(Parcel parcel, C7138g gVar) {
        this(parcel);
    }

    /* renamed from: a */
    public long m31863a() {
        return this.f6704f;
    }

    /* renamed from: b */
    public long m31862b() {
        return this.f6703e;
    }

    public String toString() {
        String obj = super.toString();
        long b = m31862b();
        long a = m31863a();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 64);
        sb.append(obj);
        sb.append(" windowStart=");
        sb.append(b);
        sb.append(" windowEnd=");
        sb.append(a);
        return sb.toString();
    }

    @Override // com.google.android.gms.gcm.Task, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeLong(this.f6703e);
        parcel.writeLong(this.f6704f);
    }
}
