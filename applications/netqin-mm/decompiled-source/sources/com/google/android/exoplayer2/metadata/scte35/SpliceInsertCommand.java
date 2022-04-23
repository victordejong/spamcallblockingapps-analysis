package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand.class */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new C7158a();

    /* renamed from: a */
    public final long f22201a;

    /* renamed from: b */
    public final boolean f22202b;

    /* renamed from: c */
    public final boolean f22203c;

    /* renamed from: d */
    public final boolean f22204d;

    /* renamed from: e */
    public final boolean f22205e;

    /* renamed from: f */
    public final long f22206f;

    /* renamed from: g */
    public final long f22207g;

    /* renamed from: h */
    public final List<C7159b> f22208h;

    /* renamed from: i */
    public final boolean f22209i;

    /* renamed from: j */
    public final long f22210j;

    /* renamed from: k */
    public final int f22211k;

    /* renamed from: l */
    public final int f22212l;

    /* renamed from: m */
    public final int f22213m;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a.class */
    public static final class C7158a implements Parcelable.Creator<SpliceInsertCommand> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand[] newArray(int i) {
            return new SpliceInsertCommand[i];
        }
    }

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$b.class */
    public static final class C7159b {

        /* renamed from: a */
        public final int f22214a;

        /* renamed from: b */
        public final long f22215b;

        /* renamed from: c */
        public final long f22216c;

        public C7159b(int i, long j, long j2) {
            this.f22214a = i;
            this.f22215b = j;
            this.f22216c = j2;
        }

        /* renamed from: b */
        public static C7159b m18515b(Parcel parcel) {
            return new C7159b(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        /* renamed from: a */
        public void m18516a(Parcel parcel) {
            parcel.writeInt(this.f22214a);
            parcel.writeLong(this.f22215b);
            parcel.writeLong(this.f22216c);
        }
    }

    public SpliceInsertCommand(Parcel parcel) {
        this.f22201a = parcel.readLong();
        boolean z = false;
        this.f22202b = parcel.readByte() == 1;
        this.f22203c = parcel.readByte() == 1;
        this.f22204d = parcel.readByte() == 1;
        this.f22205e = parcel.readByte() == 1;
        this.f22206f = parcel.readLong();
        this.f22207g = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(C7159b.m18515b(parcel));
        }
        this.f22208h = Collections.unmodifiableList(arrayList);
        this.f22209i = parcel.readByte() == 1 ? true : z;
        this.f22210j = parcel.readLong();
        this.f22211k = parcel.readInt();
        this.f22212l = parcel.readInt();
        this.f22213m = parcel.readInt();
    }

    public /* synthetic */ SpliceInsertCommand(Parcel parcel, C7158a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f22201a);
        parcel.writeByte(this.f22202b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f22203c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f22204d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f22205e ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f22206f);
        parcel.writeLong(this.f22207g);
        int size = this.f22208h.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.f22208h.get(i2).m18516a(parcel);
        }
        parcel.writeByte(this.f22209i ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f22210j);
        parcel.writeInt(this.f22211k);
        parcel.writeInt(this.f22212l);
        parcel.writeInt(this.f22213m);
    }
}
