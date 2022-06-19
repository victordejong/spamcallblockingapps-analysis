package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/TimeSignalCommand.class */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new C1995a();

    /* renamed from: a */
    public final long f4987a;

    /* renamed from: b */
    public final long f4988b;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.TimeSignalCommand$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/TimeSignalCommand$a.class */
    public static final class C1995a implements Parcelable.Creator<TimeSignalCommand> {
        @Override // android.os.Parcelable.Creator
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        public TimeSignalCommand[] newArray(int i) {
            return new TimeSignalCommand[i];
        }
    }

    public TimeSignalCommand(long j, long j2) {
        this.f4987a = j;
        this.f4988b = j2;
    }

    public TimeSignalCommand(long j, long j2, C1995a c1995a) {
        this.f4987a = j;
        this.f4988b = j2;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    public static long m39236a(C24798t c24798t, long j) {
        long m4529q = c24798t.m4529q();
        return (128 & m4529q) != 0 ? 8589934591L & ((((m4529q & 1) << 32) | c24798t.m4528r()) + j) : (char) 1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f4987a);
        parcel.writeLong(this.f4988b);
    }
}
