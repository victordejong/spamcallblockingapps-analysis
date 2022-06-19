package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand.class */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new Parcelable.Creator<SpliceInsertCommand>() { // from class: androidx.media2.exoplayer.external.metadata.scte35.SpliceInsertCommand.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ SpliceInsertCommand[] newArray(int i) {
            return new SpliceInsertCommand[i];
        }
    };
    public final boolean autoReturn;
    public final int availNum;
    public final int availsExpected;
    public final long breakDurationUs;
    public final List<C1699a> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    /* renamed from: androidx.media2.exoplayer.external.metadata.scte35.SpliceInsertCommand$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$a.class */
    public static final class C1699a {

        /* renamed from: a */
        public final int f6696a;

        /* renamed from: b */
        public final long f6697b;

        /* renamed from: c */
        public final long f6698c;

        C1699a(int i, long j, long j2) {
            this.f6696a = i;
            this.f6697b = j;
            this.f6698c = j2;
        }
    }

    private SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<C1699a> list, boolean z5, long j4, int i, int i2, int i3) {
        this.spliceEventId = j;
        this.spliceEventCancelIndicator = z;
        this.outOfNetworkIndicator = z2;
        this.programSpliceFlag = z3;
        this.spliceImmediateFlag = z4;
        this.programSplicePts = j2;
        this.programSplicePlaybackPositionUs = j3;
        this.componentSpliceList = Collections.unmodifiableList(list);
        this.autoReturn = z5;
        this.breakDurationUs = j4;
        this.uniqueProgramId = i;
        this.availNum = i2;
        this.availsExpected = i3;
    }

    private SpliceInsertCommand(Parcel parcel) {
        this.spliceEventId = parcel.readLong();
        this.spliceEventCancelIndicator = parcel.readByte() == 1;
        this.outOfNetworkIndicator = parcel.readByte() == 1;
        this.programSpliceFlag = parcel.readByte() == 1;
        this.spliceImmediateFlag = parcel.readByte() == 1;
        this.programSplicePts = parcel.readLong();
        this.programSplicePlaybackPositionUs = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(new C1699a(parcel.readInt(), parcel.readLong(), parcel.readLong()));
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.autoReturn = parcel.readByte() == 1;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63 */
    /* JADX WARN: Type inference failed for: r0v66 */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r23v0, types: [androidx.media2.exoplayer.external.util.z] */
    public static SpliceInsertCommand parseFromSection(C2018p c2018p, long j, C2030z c2030z) {
        boolean z;
        int i;
        char c;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        int i3;
        boolean z5;
        boolean z6;
        long m41526g = c2018p.m41526g();
        boolean z7 = (c2018p.m41534c() & 128) != 0;
        ArrayList emptyList = Collections.emptyList();
        if (!z7) {
            int m41534c = c2018p.m41534c();
            z4 = (m41534c & 128) != 0;
            z3 = (m41534c & 64) != 0;
            boolean z8 = (m41534c & 32) != 0;
            z2 = (m41534c & 16) != 0;
            char parseSpliceTime = (!z3 || z2) ? (char) 1 : TimeSignalCommand.parseSpliceTime(c2018p, j);
            if (!z3) {
                int m41534c2 = c2018p.m41534c();
                emptyList = new ArrayList(m41534c2);
                for (int i4 = 0; i4 < m41534c2; i4++) {
                    int m41534c3 = c2018p.m41534c();
                    char parseSpliceTime2 = !z2 ? TimeSignalCommand.parseSpliceTime(c2018p, j) : -9223372036854775807;
                    emptyList.add(new C1699a(m41534c3, parseSpliceTime2, c2030z.m41478b(parseSpliceTime2)));
                }
            }
            if (z8) {
                long m41534c4 = c2018p.m41534c();
                z = (128 & m41534c4) != 0;
                z6 = ((((m41534c4 & 1) << 32) | c2018p.m41526g()) * 1000) / 90;
            } else {
                z = false;
                z6 = true;
            }
            i = c2018p.m41532d();
            i3 = c2018p.m41534c();
            i2 = c2018p.m41534c();
            z5 = z6;
            c = parseSpliceTime;
        } else {
            z4 = false;
            z2 = false;
            c = 1;
            z = false;
            z5 = true;
            i = 0;
            i3 = 0;
            i2 = 0;
            z3 = false;
        }
        return new SpliceInsertCommand(m41526g, z7, z4, z3, z2, c, c2030z.m41478b(c), emptyList, z, z5 ? 1L : 0L, i, i3, i2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.spliceEventId);
        parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.spliceImmediateFlag ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.programSplicePts);
        parcel.writeLong(this.programSplicePlaybackPositionUs);
        int size = this.componentSpliceList.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            C1699a c1699a = this.componentSpliceList.get(i2);
            parcel.writeInt(c1699a.f6696a);
            parcel.writeLong(c1699a.f6697b);
            parcel.writeLong(c1699a.f6698c);
        }
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }
}
