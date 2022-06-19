package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event.class */
public final class SpliceScheduleCommand$Event {
    public final boolean autoReturn;
    public final int availNum;
    public final int availsExpected;
    public final long breakDurationUs;
    public final List<SpliceScheduleCommand$ComponentSplice> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final int uniqueProgramId;
    public final long utcSpliceTime;

    private SpliceScheduleCommand$Event(long j, boolean z, boolean z2, boolean z3, List<SpliceScheduleCommand$ComponentSplice> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
        this.spliceEventId = j;
        this.spliceEventCancelIndicator = z;
        this.outOfNetworkIndicator = z2;
        this.programSpliceFlag = z3;
        this.componentSpliceList = Collections.unmodifiableList(list);
        this.utcSpliceTime = j2;
        this.autoReturn = z4;
        this.breakDurationUs = j3;
        this.uniqueProgramId = i;
        this.availNum = i2;
        this.availsExpected = i3;
    }

    private SpliceScheduleCommand$Event(Parcel parcel) {
        SpliceScheduleCommand$ComponentSplice createFromParcel;
        this.spliceEventId = parcel.readLong();
        this.spliceEventCancelIndicator = parcel.readByte() == 1;
        this.outOfNetworkIndicator = parcel.readByte() == 1;
        this.programSpliceFlag = parcel.readByte() == 1;
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            createFromParcel = SpliceScheduleCommand$ComponentSplice.createFromParcel(parcel);
            arrayList.add(createFromParcel);
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.utcSpliceTime = parcel.readLong();
        this.autoReturn = parcel.readByte() == 1;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }

    public static SpliceScheduleCommand$Event createFromParcel(Parcel parcel) {
        return new SpliceScheduleCommand$Event(parcel);
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    public static SpliceScheduleCommand$Event parseFromSection(ParsableByteArray parsableByteArray) {
        boolean z;
        boolean z2;
        int i;
        int i2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i3;
        ArrayList arrayList;
        boolean z6;
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        boolean z7 = (parsableByteArray.readUnsignedByte() & 128) != 0;
        ArrayList arrayList2 = new ArrayList();
        if (!z7) {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            z5 = (readUnsignedByte & 128) != 0;
            z4 = (readUnsignedByte & 64) != 0;
            boolean z8 = (readUnsignedByte & 32) != 0;
            boolean readUnsignedInt2 = z4 ? parsableByteArray.readUnsignedInt() : true;
            if (!z4) {
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                arrayList2 = new ArrayList(readUnsignedByte2);
                for (int i4 = 0; i4 < readUnsignedByte2; i4++) {
                    arrayList2.add(new SpliceScheduleCommand$ComponentSplice(parsableByteArray.readUnsignedByte(), parsableByteArray.readUnsignedInt(), null));
                }
            }
            if (z8) {
                long readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                z = (128 & readUnsignedByte3) != 0;
                z6 = ((((readUnsignedByte3 & 1) << 32) | parsableByteArray.readUnsignedInt()) * 1000) / 90;
            } else {
                z = false;
                z6 = true;
            }
            i2 = parsableByteArray.readUnsignedShort();
            i = parsableByteArray.readUnsignedByte();
            i3 = parsableByteArray.readUnsignedByte();
            arrayList = arrayList2;
            z3 = readUnsignedInt2;
            z2 = z6;
        } else {
            arrayList = arrayList2;
            z5 = false;
            z3 = true;
            z = false;
            z2 = true;
            i2 = 0;
            i = 0;
            i3 = 0;
            z4 = false;
        }
        return new SpliceScheduleCommand$Event(readUnsignedInt, z7, z5, z4, arrayList, z3 ? 1L : 0L, z, z2 ? 1L : 0L, i2, i, i3);
    }

    public void writeToParcel(Parcel parcel) {
        parcel.writeLong(this.spliceEventId);
        parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
        int size = this.componentSpliceList.size();
        parcel.writeInt(size);
        for (int i = 0; i < size; i++) {
            this.componentSpliceList.get(i).writeToParcel(parcel);
        }
        parcel.writeLong(this.utcSpliceTime);
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }
}
