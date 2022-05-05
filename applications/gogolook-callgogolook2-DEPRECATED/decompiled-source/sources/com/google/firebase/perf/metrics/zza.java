package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.concurrent.atomic.AtomicLong;
import p081h.p203i.p325c.p379z.p381c.C10064a;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/metrics/zza.class */
public class zza implements Parcelable {
    public static final Parcelable.Creator<zza> CREATOR = new C10064a();

    /* renamed from: a */
    public final String f7798a;

    /* renamed from: b */
    public AtomicLong f7799b;

    public zza(Parcel parcel) {
        this.f7798a = parcel.readString();
        this.f7799b = new AtomicLong(parcel.readLong());
    }

    public /* synthetic */ zza(Parcel parcel, C10064a aVar) {
        this(parcel);
    }

    public zza(@NonNull String str) {
        this.f7798a = str;
        this.f7799b = new AtomicLong(0L);
    }

    /* renamed from: a */
    public final long m31035a() {
        return this.f7799b.get();
    }

    /* renamed from: a */
    public final void m31034a(long j) {
        this.f7799b.addAndGet(j);
    }

    /* renamed from: b */
    public final void m31033b(long j) {
        this.f7799b.set(j);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f7798a);
        parcel.writeLong(this.f7799b.get());
    }
}
