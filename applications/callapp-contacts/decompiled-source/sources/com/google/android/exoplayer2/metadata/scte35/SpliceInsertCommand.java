package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.ad;
import com.google.android.exoplayer2.util.u;
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
    public final List<a> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21451a;

        /* renamed from: b  reason: collision with root package name */
        public final long f21452b;

        /* renamed from: c  reason: collision with root package name */
        public final long f21453c;

        a(int i, long j, long j2) {
            this.f21451a = i;
            this.f21452b = j;
            this.f21453c = j2;
        }
    }

    private SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<a> list, boolean z5, long j4, int i, int i2, int i3) {
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
        boolean z = false;
        this.spliceEventCancelIndicator = parcel.readByte() == 1;
        this.outOfNetworkIndicator = parcel.readByte() == 1;
        this.programSpliceFlag = parcel.readByte() == 1;
        this.spliceImmediateFlag = parcel.readByte() == 1;
        this.programSplicePts = parcel.readLong();
        this.programSplicePlaybackPositionUs = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(new a(parcel.readInt(), parcel.readLong(), parcel.readLong()));
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.autoReturn = parcel.readByte() == 1 ? true : z;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpliceInsertCommand parseFromSection(u uVar, long j, ad adVar) {
        boolean z;
        int i;
        long j2;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        int i3;
        long j3;
        long h = uVar.h();
        boolean z5 = (uVar.c() & 128) != 0;
        List emptyList = Collections.emptyList();
        if (!z5) {
            int c2 = uVar.c();
            z2 = (c2 & 128) != 0;
            z3 = (c2 & 64) != 0;
            boolean z6 = (c2 & 32) != 0;
            boolean z7 = (c2 & 16) != 0;
            j2 = (!z3 || z7) ? -9223372036854775807L : TimeSignalCommand.parseSpliceTime(uVar, j);
            if (!z3) {
                int c3 = uVar.c();
                emptyList = new ArrayList(c3);
                for (int i4 = 0; i4 < c3; i4++) {
                    int c4 = uVar.c();
                    long parseSpliceTime = !z7 ? TimeSignalCommand.parseSpliceTime(uVar, j) : -9223372036854775807L;
                    emptyList.add(new a(c4, parseSpliceTime, adVar.b(parseSpliceTime)));
                }
            }
            if (z6) {
                long c5 = uVar.c();
                z = (128 & c5) != 0;
                j3 = ((((c5 & 1) << 32) | uVar.h()) * 1000) / 90;
            } else {
                z = false;
                j3 = -9223372036854775807L;
            }
            i3 = uVar.d();
            i2 = uVar.c();
            i = uVar.c();
            z4 = z7;
        } else {
            emptyList = emptyList;
            z2 = false;
            z4 = false;
            j2 = -9223372036854775807L;
            z = false;
            j3 = -9223372036854775807L;
            i3 = 0;
            i2 = 0;
            i = 0;
            z3 = false;
        }
        return new SpliceInsertCommand(h, z5, z2, z3, z4, j2, adVar.b(j2), emptyList, z, j3, i3, i2, i);
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
            a aVar = this.componentSpliceList.get(i2);
            parcel.writeInt(aVar.f21451a);
            parcel.writeLong(aVar.f21452b);
            parcel.writeLong(aVar.f21453c);
        }
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }
}
