package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand.class */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new C0322a();

    /* renamed from: a */
    public final long f1833a;

    /* renamed from: b */
    public final long f1834b;

    /* renamed from: androidx.media2.exoplayer.external.metadata.scte35.TimeSignalCommand$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand$a.class */
    public class C0322a implements Parcelable.Creator<TimeSignalCommand> {
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
        this.f1833a = j;
        this.f1834b = j2;
    }

    public /* synthetic */ TimeSignalCommand(long j, long j2, C0322a aVar) {
        this(j, j2);
    }

    /* renamed from: a */
    public static long m37998a(C1184p pVar, long j) {
        long r = pVar.m34344r();
        return (128 & r) != 0 ? 8589934591L & ((((r & 1) << 32) | pVar.m34342t()) + j) : -9223372036854775807L;
    }

    /* renamed from: a */
    public static TimeSignalCommand m37997a(C1184p pVar, long j, C1196z zVar) {
        long a = m37998a(pVar, j);
        return new TimeSignalCommand(a, zVar.m34292b(a));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f1833a);
        parcel.writeLong(this.f1834b);
    }
}
