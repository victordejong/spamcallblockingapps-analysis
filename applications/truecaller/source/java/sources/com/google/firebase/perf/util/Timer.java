package com.google.firebase.perf.util;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/util/Timer.class */
public class Timer implements Parcelable {
    public static final Parcelable.Creator<Timer> CREATOR = new C2184a();

    /* renamed from: a */
    public long f7077a;

    /* renamed from: b */
    public long f7078b;

    /* renamed from: com.google.firebase.perf.util.Timer$a */
    /* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/util/Timer$a.class */
    public class C2184a implements Parcelable.Creator<Timer> {
        @Override // android.os.Parcelable.Creator
        public Timer createFromParcel(Parcel parcel) {
            return new Timer(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public Timer[] newArray(int i) {
            return new Timer[i];
        }
    }

    public Timer() {
        this.f7077a = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f7078b = System.nanoTime();
    }

    @VisibleForTesting
    public Timer(long j) {
        this.f7077a = j;
        this.f7078b = TimeUnit.MICROSECONDS.toNanos(j);
    }

    public Timer(Parcel parcel, C2184a c2184a) {
        this.f7077a = parcel.readLong();
        this.f7078b = parcel.readLong();
    }

    /* renamed from: a */
    public long m38297a() {
        return TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - this.f7078b);
    }

    /* renamed from: b */
    public long m38296b(Timer timer) {
        return TimeUnit.NANOSECONDS.toMicros(timer.f7078b - this.f7078b);
    }

    /* renamed from: c */
    public void m38295c() {
        this.f7077a = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f7078b = System.nanoTime();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f7077a);
        parcel.writeLong(this.f7078b);
    }
}
