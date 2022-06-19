package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11628u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand.class */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new Parcelable.Creator<SpliceInsertCommand>() { // from class: com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand.1
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
    public final List<C11232a> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a.class */
    public static final class C11232a {

        /* renamed from: a */
        public final int f36785a;

        /* renamed from: b */
        public final long f36786b;

        /* renamed from: c */
        public final long f36787c;

        C11232a(int i, long j, long j2) {
            this.f36785a = i;
            this.f36786b = j;
            this.f36787c = j2;
        }
    }

    private SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<C11232a> list, boolean z5, long j4, int i, int i2, int i3) {
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
            arrayList.add(new C11232a(parcel.readInt(), parcel.readLong(), parcel.readLong()));
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.autoReturn = parcel.readByte() == 1;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r23v0, types: [com.google.android.exoplayer2.util.ad] */
    public static SpliceInsertCommand parseFromSection(C11628u c11628u, long j, C11597ad c11597ad) {
        boolean z;
        int i;
        char c;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        int i3;
        boolean z5;
        List list;
        boolean z6;
        long m19794h = c11628u.m19794h();
        boolean z7 = (c11628u.m19804c() & 128) != 0;
        ArrayList emptyList = Collections.emptyList();
        if (!z7) {
            int m19804c = c11628u.m19804c();
            boolean z8 = (m19804c & 128) != 0;
            z3 = (m19804c & 64) != 0;
            boolean z9 = (m19804c & 32) != 0;
            boolean z10 = (m19804c & 16) != 0;
            char parseSpliceTime = (!z3 || z10) ? (char) 1 : TimeSignalCommand.parseSpliceTime(c11628u, j);
            if (!z3) {
                int m19804c2 = c11628u.m19804c();
                emptyList = new ArrayList(m19804c2);
                for (int i4 = 0; i4 < m19804c2; i4++) {
                    int m19804c3 = c11628u.m19804c();
                    char parseSpliceTime2 = !z10 ? TimeSignalCommand.parseSpliceTime(c11628u, j) : -9223372036854775807;
                    emptyList.add(new C11232a(m19804c3, parseSpliceTime2, c11597ad.m20006b(parseSpliceTime2)));
                }
            }
            if (z9) {
                long m19804c4 = c11628u.m19804c();
                z = (128 & m19804c4) != 0;
                z6 = ((((m19804c4 & 1) << 32) | c11628u.m19794h()) * 1000) / 90;
            } else {
                z = false;
                z6 = true;
            }
            i3 = c11628u.m19802d();
            i2 = c11628u.m19804c();
            i = c11628u.m19804c();
            list = emptyList;
            boolean z11 = z10;
            z2 = z8;
            z4 = z11;
            z5 = z6;
            c = parseSpliceTime;
        } else {
            list = emptyList;
            z2 = false;
            z4 = false;
            c = 1;
            z = false;
            z5 = true;
            i3 = 0;
            i2 = 0;
            i = 0;
            z3 = false;
        }
        return new SpliceInsertCommand(m19794h, z7, z2, z3, z4, c, c11597ad.m20006b(c), list, z, z5 ? 1L : 0L, i3, i2, i);
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
            C11232a c11232a = this.componentSpliceList.get(i2);
            parcel.writeInt(c11232a.f36785a);
            parcel.writeLong(c11232a.f36786b);
            parcel.writeLong(c11232a.f36787c);
        }
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }
}
