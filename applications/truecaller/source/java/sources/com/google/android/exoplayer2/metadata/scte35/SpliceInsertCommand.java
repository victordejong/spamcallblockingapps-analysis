package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand.class */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new C1989a();

    /* renamed from: a */
    public final long f4957a;

    /* renamed from: b */
    public final boolean f4958b;

    /* renamed from: c */
    public final boolean f4959c;

    /* renamed from: d */
    public final boolean f4960d;

    /* renamed from: e */
    public final boolean f4961e;

    /* renamed from: f */
    public final long f4962f;

    /* renamed from: g */
    public final long f4963g;

    /* renamed from: h */
    public final List<C1990b> f4964h;

    /* renamed from: i */
    public final boolean f4965i;

    /* renamed from: j */
    public final long f4966j;

    /* renamed from: k */
    public final int f4967k;

    /* renamed from: l */
    public final int f4968l;

    /* renamed from: m */
    public final int f4969m;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a.class */
    public static final class C1989a implements Parcelable.Creator<SpliceInsertCommand> {
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand[] newArray(int i) {
            return new SpliceInsertCommand[i];
        }
    }

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$b.class */
    public static final class C1990b {

        /* renamed from: a */
        public final int f4970a;

        /* renamed from: b */
        public final long f4971b;

        /* renamed from: c */
        public final long f4972c;

        public C1990b(int i, long j, long j2) {
            this.f4970a = i;
            this.f4971b = j;
            this.f4972c = j2;
        }

        public C1990b(int i, long j, long j2, C1989a c1989a) {
            this.f4970a = i;
            this.f4971b = j;
            this.f4972c = j2;
        }
    }

    public SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<C1990b> list, boolean z5, long j4, int i, int i2, int i3) {
        this.f4957a = j;
        this.f4958b = z;
        this.f4959c = z2;
        this.f4960d = z3;
        this.f4961e = z4;
        this.f4962f = j2;
        this.f4963g = j3;
        this.f4964h = Collections.unmodifiableList(list);
        this.f4965i = z5;
        this.f4966j = j4;
        this.f4967k = i;
        this.f4968l = i2;
        this.f4969m = i3;
    }

    public SpliceInsertCommand(Parcel parcel, C1989a c1989a) {
        this.f4957a = parcel.readLong();
        this.f4958b = parcel.readByte() == 1;
        this.f4959c = parcel.readByte() == 1;
        this.f4960d = parcel.readByte() == 1;
        this.f4961e = parcel.readByte() == 1;
        this.f4962f = parcel.readLong();
        this.f4963g = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(new C1990b(parcel.readInt(), parcel.readLong(), parcel.readLong()));
        }
        this.f4964h = Collections.unmodifiableList(arrayList);
        this.f4965i = parcel.readByte() == 1;
        this.f4966j = parcel.readLong();
        this.f4967k = parcel.readInt();
        this.f4968l = parcel.readInt();
        this.f4969m = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f4957a);
        parcel.writeByte(this.f4958b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4959c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4960d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4961e ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f4962f);
        parcel.writeLong(this.f4963g);
        int size = this.f4964h.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            C1990b c1990b = this.f4964h.get(i2);
            parcel.writeInt(c1990b.f4970a);
            parcel.writeLong(c1990b.f4971b);
            parcel.writeLong(c1990b.f4972c);
        }
        parcel.writeByte(this.f4965i ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f4966j);
        parcel.writeInt(this.f4967k);
        parcel.writeInt(this.f4968l);
        parcel.writeInt(this.f4969m);
    }
}
