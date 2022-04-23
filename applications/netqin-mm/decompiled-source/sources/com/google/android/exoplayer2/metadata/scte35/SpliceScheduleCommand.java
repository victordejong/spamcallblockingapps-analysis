package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand.class */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new C7161a();

    /* renamed from: a */
    public final List<C7163c> f22217a;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a.class */
    public static final class C7161a implements Parcelable.Creator<SpliceScheduleCommand> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceScheduleCommand[] newArray(int i) {
            return new SpliceScheduleCommand[i];
        }
    }

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b.class */
    public static final class C7162b {

        /* renamed from: a */
        public final int f22218a;

        /* renamed from: b */
        public final long f22219b;

        public C7162b(int i, long j) {
            this.f22218a = i;
            this.f22219b = j;
        }

        /* renamed from: c */
        public static C7162b m18511c(Parcel parcel) {
            return new C7162b(parcel.readInt(), parcel.readLong());
        }

        /* renamed from: a */
        public final void m18514a(Parcel parcel) {
            parcel.writeInt(this.f22218a);
            parcel.writeLong(this.f22219b);
        }
    }

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$c.class */
    public static final class C7163c {

        /* renamed from: a */
        public final long f22220a;

        /* renamed from: b */
        public final boolean f22221b;

        /* renamed from: c */
        public final boolean f22222c;

        /* renamed from: d */
        public final boolean f22223d;

        /* renamed from: e */
        public final long f22224e;

        /* renamed from: f */
        public final List<C7162b> f22225f;

        /* renamed from: g */
        public final boolean f22226g;

        /* renamed from: h */
        public final long f22227h;

        /* renamed from: i */
        public final int f22228i;

        /* renamed from: j */
        public final int f22229j;

        /* renamed from: k */
        public final int f22230k;

        public C7163c(Parcel parcel) {
            this.f22220a = parcel.readLong();
            boolean z = false;
            this.f22221b = parcel.readByte() == 1;
            this.f22222c = parcel.readByte() == 1;
            this.f22223d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i = 0; i < readInt; i++) {
                arrayList.add(C7162b.m18511c(parcel));
            }
            this.f22225f = Collections.unmodifiableList(arrayList);
            this.f22224e = parcel.readLong();
            this.f22226g = parcel.readByte() == 1 ? true : z;
            this.f22227h = parcel.readLong();
            this.f22228i = parcel.readInt();
            this.f22229j = parcel.readInt();
            this.f22230k = parcel.readInt();
        }

        /* renamed from: c */
        public static C7163c m18507c(Parcel parcel) {
            return new C7163c(parcel);
        }

        /* renamed from: a */
        public final void m18510a(Parcel parcel) {
            parcel.writeLong(this.f22220a);
            parcel.writeByte(this.f22221b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f22222c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f22223d ? (byte) 1 : (byte) 0);
            int size = this.f22225f.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.f22225f.get(i).m18514a(parcel);
            }
            parcel.writeLong(this.f22224e);
            parcel.writeByte(this.f22226g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f22227h);
            parcel.writeInt(this.f22228i);
            parcel.writeInt(this.f22229j);
            parcel.writeInt(this.f22230k);
        }
    }

    public SpliceScheduleCommand(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(C7163c.m18507c(parcel));
        }
        this.f22217a = Collections.unmodifiableList(arrayList);
    }

    public /* synthetic */ SpliceScheduleCommand(Parcel parcel, C7161a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.f22217a.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.f22217a.get(i2).m18510a(parcel);
        }
    }
}
