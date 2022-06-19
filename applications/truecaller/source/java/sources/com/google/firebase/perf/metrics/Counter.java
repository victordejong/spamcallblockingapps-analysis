package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/metrics/Counter.class */
public class Counter implements Parcelable {
    public static final Parcelable.Creator<Counter> CREATOR = new C2182a();

    /* renamed from: a */
    public final String f7071a;

    /* renamed from: b */
    public final AtomicLong f7072b;

    /* renamed from: com.google.firebase.perf.metrics.Counter$a */
    /* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/metrics/Counter$a.class */
    public class C2182a implements Parcelable.Creator<Counter> {
        @Override // android.os.Parcelable.Creator
        public Counter createFromParcel(Parcel parcel) {
            return new Counter(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public Counter[] newArray(int i) {
            return new Counter[i];
        }
    }

    public Counter(Parcel parcel, C2182a c2182a) {
        this.f7071a = parcel.readString();
        this.f7072b = new AtomicLong(parcel.readLong());
    }

    public Counter(String str) {
        this.f7071a = str;
        this.f7072b = new AtomicLong(0L);
    }

    /* renamed from: a */
    public long m38304a() {
        return this.f7072b.get();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f7071a);
        parcel.writeLong(this.f7072b.get());
    }
}
