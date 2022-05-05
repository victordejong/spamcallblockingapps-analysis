package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.gcm.Task;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/PeriodicTask.class */
public class PeriodicTask extends Task {
    public static final Parcelable.Creator<PeriodicTask> CREATOR = new zzk();

    /* renamed from: j */
    protected long f7738j;

    /* renamed from: k */
    protected long f7739k;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/PeriodicTask$Builder.class */
    public static class Builder extends Task.Builder {
    }

    @Deprecated
    private PeriodicTask(Parcel parcel) {
        super(parcel);
        this.f7738j = -1L;
        this.f7739k = -1L;
        this.f7738j = parcel.readLong();
        this.f7739k = Math.min(parcel.readLong(), this.f7738j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ PeriodicTask(Parcel parcel, zzk zzkVar) {
        this(parcel);
    }

    /* renamed from: a */
    public long m14172a() {
        return this.f7739k;
    }

    /* renamed from: b */
    public long m14171b() {
        return this.f7738j;
    }

    public String toString() {
        String obj = super.toString();
        long b = m14171b();
        long a = m14172a();
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
        parcel.writeLong(this.f7738j);
        parcel.writeLong(this.f7739k);
    }
}
