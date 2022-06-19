package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5536v;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/TimeSignalCommand.class */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new C5157a();

    /* renamed from: d */
    public final long f16208d;

    /* renamed from: e */
    public final long f16209e;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.TimeSignalCommand$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/TimeSignalCommand$a.class */
    static final class C5157a implements Parcelable.Creator<TimeSignalCommand> {
        C5157a() {
        }

        /* renamed from: a */
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), null);
        }

        /* renamed from: b */
        public TimeSignalCommand[] newArray(int i) {
            return new TimeSignalCommand[i];
        }
    }

    private TimeSignalCommand(long j, long j2) {
        this.f16208d = j;
        this.f16209e = j2;
    }

    /* synthetic */ TimeSignalCommand(long j, long j2, C5157a c5157a) {
        this(j, j2);
    }

    /* renamed from: a */
    public static TimeSignalCommand m20291a(C5536v c5536v, long j, C5509e0 c5509e0) {
        long m20290b = m20290b(c5536v, j);
        return new TimeSignalCommand(m20290b, c5509e0.m18905b(m20290b));
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: b */
    public static long m20290b(C5536v c5536v, long j) {
        long m18653z = c5536v.m18653z();
        return (128 & m18653z) != 0 ? 8589934591L & ((((m18653z & 1) << 32) | c5536v.m18691B()) + j) : (char) 1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f16208d);
        parcel.writeLong(this.f16209e);
    }
}
