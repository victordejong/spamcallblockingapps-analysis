package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.util.z;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TimeSignalCommand parseFromSection(p pVar, long j, z zVar) {
        long parseSpliceTime = parseSpliceTime(pVar, j);
        return new TimeSignalCommand(parseSpliceTime, zVar.b(parseSpliceTime));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long parseSpliceTime(p pVar, long j) {
        long c2 = pVar.c();
        return (128 & c2) != 0 ? 8589934591L & ((((c2 & 1) << 32) | pVar.g()) + j) : -9223372036854775807L;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.ptsTime);
        parcel.writeLong(this.playbackPositionUs);
    }
}
