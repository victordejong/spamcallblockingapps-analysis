package com.google.android.gms.internal.firebase_perf;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p204a.p224e.p259j.p269j.C7766b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzaa.class */
public class zzaa implements Parcelable {
    public static final Parcelable.Creator<zzaa> CREATOR = new C7766b();

    /* renamed from: a */
    public long f6820a;

    /* renamed from: b */
    public long f6821b;

    public zzaa() {
        this.f6820a = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f6821b = System.nanoTime();
    }

    public zzaa(Parcel parcel) {
        this.f6820a = parcel.readLong();
        this.f6821b = parcel.readLong();
    }

    public /* synthetic */ zzaa(Parcel parcel, C7766b bVar) {
        this(parcel);
    }

    /* renamed from: a */
    public final long m31842a(@NonNull com.google.android.gms.internal.firebase-perf.zzaa zzaaVar) {
        return TimeUnit.NANOSECONDS.toMicros(zzaaVar.f6821b - this.f6821b);
    }

    /* renamed from: a */
    public final void m31843a() {
        this.f6820a = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f6821b = System.nanoTime();
    }

    /* renamed from: b */
    public final long m31841b() {
        return this.f6820a;
    }

    /* renamed from: c */
    public final long m31840c() {
        return TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - this.f6821b);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f6820a);
        parcel.writeLong(this.f6821b);
    }
}
