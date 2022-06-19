package com.google.firebase.perf.util;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/util/Timer.class */
public class Timer implements Parcelable {
    public static final Parcelable.Creator<Timer> CREATOR = new C2445a();

    /* renamed from: b */
    private long f10703b;

    /* renamed from: c */
    private long f10704c;

    /* renamed from: com.google.firebase.perf.util.Timer$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/util/Timer$a.class */
    class C2445a implements Parcelable.Creator<Timer> {
        C2445a() {
        }

        /* renamed from: a */
        public Timer createFromParcel(Parcel parcel) {
            return new Timer(parcel, null);
        }

        /* renamed from: b */
        public Timer[] newArray(int i) {
            return new Timer[i];
        }
    }

    public Timer() {
        this.f10703b = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f10704c = System.nanoTime();
    }

    private Timer(Parcel parcel) {
        this.f10703b = parcel.readLong();
        this.f10704c = parcel.readLong();
    }

    /* synthetic */ Timer(Parcel parcel, C2445a c2445a) {
        this(parcel);
    }

    /* renamed from: a */
    public long m3588a() {
        return this.f10703b + m3587b();
    }

    /* renamed from: b */
    public long m3587b() {
        return TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - this.f10704c);
    }

    /* renamed from: c */
    public long m3586c(Timer timer) {
        return TimeUnit.NANOSECONDS.toMicros(timer.f10704c - this.f10704c);
    }

    /* renamed from: d */
    public long m3585d() {
        return this.f10703b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public void m3584e() {
        this.f10703b = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f10704c = System.nanoTime();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f10703b);
        parcel.writeLong(this.f10704c);
    }
}
