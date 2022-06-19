package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand.class */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new C1992a();

    /* renamed from: a */
    public final List<C1994c> f4973a;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a.class */
    public static final class C1992a implements Parcelable.Creator<SpliceScheduleCommand> {
        @Override // android.os.Parcelable.Creator
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public SpliceScheduleCommand[] newArray(int i) {
            return new SpliceScheduleCommand[i];
        }
    }

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b.class */
    public static final class C1993b {

        /* renamed from: a */
        public final int f4974a;

        /* renamed from: b */
        public final long f4975b;

        public C1993b(int i, long j) {
            this.f4974a = i;
            this.f4975b = j;
        }

        public C1993b(int i, long j, C1992a c1992a) {
            this.f4974a = i;
            this.f4975b = j;
        }
    }

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$c.class */
    public static final class C1994c {

        /* renamed from: a */
        public final long f4976a;

        /* renamed from: b */
        public final boolean f4977b;

        /* renamed from: c */
        public final boolean f4978c;

        /* renamed from: d */
        public final boolean f4979d;

        /* renamed from: e */
        public final long f4980e;

        /* renamed from: f */
        public final List<C1993b> f4981f;

        /* renamed from: g */
        public final boolean f4982g;

        /* renamed from: h */
        public final long f4983h;

        /* renamed from: i */
        public final int f4984i;

        /* renamed from: j */
        public final int f4985j;

        /* renamed from: k */
        public final int f4986k;

        public C1994c(long j, boolean z, boolean z2, boolean z3, List<C1993b> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.f4976a = j;
            this.f4977b = z;
            this.f4978c = z2;
            this.f4979d = z3;
            this.f4981f = Collections.unmodifiableList(list);
            this.f4980e = j2;
            this.f4982g = z4;
            this.f4983h = j3;
            this.f4984i = i;
            this.f4985j = i2;
            this.f4986k = i3;
        }

        public C1994c(Parcel parcel) {
            this.f4976a = parcel.readLong();
            this.f4977b = parcel.readByte() == 1;
            this.f4978c = parcel.readByte() == 1;
            this.f4979d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i = 0; i < readInt; i++) {
                arrayList.add(new C1993b(parcel.readInt(), parcel.readLong()));
            }
            this.f4981f = Collections.unmodifiableList(arrayList);
            this.f4980e = parcel.readLong();
            this.f4982g = parcel.readByte() == 1;
            this.f4983h = parcel.readLong();
            this.f4984i = parcel.readInt();
            this.f4985j = parcel.readInt();
            this.f4986k = parcel.readInt();
        }
    }

    public SpliceScheduleCommand(Parcel parcel, C1992a c1992a) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(new C1994c(parcel));
        }
        this.f4973a = Collections.unmodifiableList(arrayList);
    }

    public SpliceScheduleCommand(List<C1994c> list) {
        this.f4973a = Collections.unmodifiableList(list);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.f4973a.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            C1994c c1994c = this.f4973a.get(i2);
            parcel.writeLong(c1994c.f4976a);
            parcel.writeByte(c1994c.f4977b ? (byte) 1 : (byte) 0);
            parcel.writeByte(c1994c.f4978c ? (byte) 1 : (byte) 0);
            parcel.writeByte(c1994c.f4979d ? (byte) 1 : (byte) 0);
            int size2 = c1994c.f4981f.size();
            parcel.writeInt(size2);
            for (int i3 = 0; i3 < size2; i3++) {
                C1993b c1993b = c1994c.f4981f.get(i3);
                parcel.writeInt(c1993b.f4974a);
                parcel.writeLong(c1993b.f4975b);
            }
            parcel.writeLong(c1994c.f4980e);
            parcel.writeByte(c1994c.f4982g ? (byte) 1 : (byte) 0);
            parcel.writeLong(c1994c.f4983h);
            parcel.writeInt(c1994c.f4984i);
            parcel.writeInt(c1994c.f4985j);
            parcel.writeInt(c1994c.f4986k);
        }
    }
}
