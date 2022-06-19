package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11628u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/TimeSignalCommand.class */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new Parcelable.Creator<TimeSignalCommand>() { // from class: com.google.android.exoplayer2.metadata.scte35.TimeSignalCommand.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ TimeSignalCommand[] newArray(int i) {
            return new TimeSignalCommand[i];
        }
    };
    public final long playbackPositionUs;
    public final long ptsTime;

    private TimeSignalCommand(long j, long j2) {
        this.ptsTime = j;
        this.playbackPositionUs = j2;
    }

    public static TimeSignalCommand parseFromSection(C11628u c11628u, long j, C11597ad c11597ad) {
        long parseSpliceTime = parseSpliceTime(c11628u, j);
        return new TimeSignalCommand(parseSpliceTime, c11597ad.m20006b(parseSpliceTime));
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public static long parseSpliceTime(C11628u c11628u, long j) {
        long m19804c = c11628u.m19804c();
        return (128 & m19804c) != 0 ? 8589934591L & ((((m19804c & 1) << 32) | c11628u.m19794h()) + j) : (char) 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.ptsTime);
        parcel.writeLong(this.playbackPositionUs);
    }
}
