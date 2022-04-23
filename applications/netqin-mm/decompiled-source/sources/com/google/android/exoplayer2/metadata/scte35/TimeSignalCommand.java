package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/TimeSignalCommand.class */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new C7164a();

    /* renamed from: a */
    public final long f22231a;

    /* renamed from: b */
    public final long f22232b;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.TimeSignalCommand$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/TimeSignalCommand$a.class */
    public static final class C7164a implements Parcelable.Creator<TimeSignalCommand> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimeSignalCommand[] newArray(int i) {
            return new TimeSignalCommand[i];
        }
    }

    public TimeSignalCommand(long j, long j2) {
        this.f22231a = j;
        this.f22232b = j2;
    }

    public /* synthetic */ TimeSignalCommand(long j, long j2, C7164a aVar) {
        this(j, j2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f22231a);
        parcel.writeLong(this.f22232b);
    }
}
