package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand.class */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new Parcelable.Creator<TimeSignalCommand>() { // from class: androidx.media2.exoplayer.external.metadata.scte35.TimeSignalCommand.1
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

    public static TimeSignalCommand parseFromSection(C2018p c2018p, long j, C2030z c2030z) {
        long parseSpliceTime = parseSpliceTime(c2018p, j);
        return new TimeSignalCommand(parseSpliceTime, c2030z.m41478b(parseSpliceTime));
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public static long parseSpliceTime(C2018p c2018p, long j) {
        long m41534c = c2018p.m41534c();
        return (128 & m41534c) != 0 ? 8589934591L & ((((m41534c & 1) << 32) | c2018p.m41526g()) + j) : (char) 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.ptsTime);
        parcel.writeLong(this.playbackPositionUs);
    }
}
