package com.google.firebase.perf.util;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/util/Timer.class */
public class Timer implements Parcelable {
    public static final Parcelable.Creator<Timer> CREATOR = new C7860a();

    /* renamed from: a */
    public long f31034a;

    /* renamed from: b */
    public long f31035b;

    /* renamed from: com.google.firebase.perf.util.Timer$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/util/Timer$a.class */
    public class C7860a implements Parcelable.Creator<Timer> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Timer createFromParcel(Parcel parcel) {
            return new Timer(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Timer[] newArray(int i) {
            return new Timer[i];
        }
    }

    public Timer() {
        this.f31034a = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f31035b = System.nanoTime();
    }

    public Timer(Parcel parcel) {
        this.f31034a = parcel.readLong();
        this.f31035b = parcel.readLong();
    }

    public /* synthetic */ Timer(Parcel parcel, C7860a aVar) {
        this(parcel);
    }

    /* renamed from: a */
    public long m7219a() {
        return this.f31034a + m7217b();
    }

    /* renamed from: a */
    public long m7218a(Timer timer) {
        return TimeUnit.NANOSECONDS.toMicros(timer.f31035b - this.f31035b);
    }

    /* renamed from: b */
    public long m7217b() {
        return TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - this.f31035b);
    }

    /* renamed from: c */
    public long m7216c() {
        return this.f31034a;
    }

    /* renamed from: d */
    public void m7215d() {
        this.f31034a = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f31035b = System.nanoTime();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f31034a);
        parcel.writeLong(this.f31035b);
    }
}
