package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand.class */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new C5154a();

    /* renamed from: d */
    public final List<C5156c> f16194d;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a.class */
    public static final class C5154a implements Parcelable.Creator<SpliceScheduleCommand> {
        C5154a() {
        }

        /* renamed from: a */
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel, null);
        }

        /* renamed from: b */
        public SpliceScheduleCommand[] newArray(int i) {
            return new SpliceScheduleCommand[i];
        }
    }

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b.class */
    public static final class C5155b {

        /* renamed from: a */
        public final int f16195a;

        /* renamed from: b */
        public final long f16196b;

        private C5155b(int i, long j) {
            this.f16195a = i;
            this.f16196b = j;
        }

        /* synthetic */ C5155b(int i, long j, C5154a c5154a) {
            this(i, j);
        }

        /* renamed from: c */
        public static C5155b m20299c(Parcel parcel) {
            return new C5155b(parcel.readInt(), parcel.readLong());
        }

        /* renamed from: d */
        public void m20298d(Parcel parcel) {
            parcel.writeInt(this.f16195a);
            parcel.writeLong(this.f16196b);
        }
    }

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$c.class */
    public static final class C5156c {

        /* renamed from: a */
        public final long f16197a;

        /* renamed from: b */
        public final boolean f16198b;

        /* renamed from: c */
        public final boolean f16199c;

        /* renamed from: d */
        public final boolean f16200d;

        /* renamed from: e */
        public final long f16201e;

        /* renamed from: f */
        public final List<C5155b> f16202f;

        /* renamed from: g */
        public final boolean f16203g;

        /* renamed from: h */
        public final long f16204h;

        /* renamed from: i */
        public final int f16205i;

        /* renamed from: j */
        public final int f16206j;

        /* renamed from: k */
        public final int f16207k;

        private C5156c(long j, boolean z, boolean z2, boolean z3, List<C5155b> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.f16197a = j;
            this.f16198b = z;
            this.f16199c = z2;
            this.f16200d = z3;
            this.f16202f = Collections.unmodifiableList(list);
            this.f16201e = j2;
            this.f16203g = z4;
            this.f16204h = j3;
            this.f16205i = i;
            this.f16206j = i2;
            this.f16207k = i3;
        }

        private C5156c(Parcel parcel) {
            this.f16197a = parcel.readLong();
            this.f16198b = parcel.readByte() == 1;
            this.f16199c = parcel.readByte() == 1;
            this.f16200d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i = 0; i < readInt; i++) {
                arrayList.add(C5155b.m20299c(parcel));
            }
            this.f16202f = Collections.unmodifiableList(arrayList);
            this.f16201e = parcel.readLong();
            this.f16203g = parcel.readByte() == 1;
            this.f16204h = parcel.readLong();
            this.f16205i = parcel.readInt();
            this.f16206j = parcel.readInt();
            this.f16207k = parcel.readInt();
        }

        /* renamed from: d */
        public static C5156c m20294d(Parcel parcel) {
            return new C5156c(parcel);
        }

        /* JADX WARN: Type inference failed for: r0v46, types: [long] */
        /* JADX WARN: Type inference failed for: r0v58, types: [long] */
        /* renamed from: e */
        public static C5156c m20293e(C5536v c5536v) {
            boolean z;
            boolean z2;
            int i;
            int i2;
            boolean z3;
            boolean z4;
            boolean z5;
            int i3;
            boolean z6;
            long m18691B = c5536v.m18691B();
            boolean z7 = (c5536v.m18653z() & 128) != 0;
            ArrayList arrayList = new ArrayList();
            if (!z7) {
                int m18653z = c5536v.m18653z();
                z5 = (m18653z & 128) != 0;
                z4 = (m18653z & 64) != 0;
                boolean z8 = (m18653z & 32) != 0;
                boolean m18691B2 = z4 ? c5536v.m18691B() : true;
                if (!z4) {
                    int m18653z2 = c5536v.m18653z();
                    arrayList = new ArrayList(m18653z2);
                    for (int i4 = 0; i4 < m18653z2; i4++) {
                        arrayList.add(new C5155b(c5536v.m18653z(), c5536v.m18691B(), null));
                    }
                }
                if (z8) {
                    long m18653z3 = c5536v.m18653z();
                    z = (128 & m18653z3) != 0;
                    z6 = ((((m18653z3 & 1) << 32) | c5536v.m18691B()) * 1000) / 90;
                } else {
                    z = false;
                    z6 = true;
                }
                i2 = c5536v.m18687F();
                i = c5536v.m18653z();
                i3 = c5536v.m18653z();
                z3 = m18691B2;
                z2 = z6;
            } else {
                z5 = false;
                z3 = true;
                z = false;
                z2 = true;
                i2 = 0;
                i = 0;
                i3 = 0;
                z4 = false;
            }
            return new C5156c(m18691B, z7, z5, z4, arrayList, z3 ? 1L : 0L, z, z2 ? 1L : 0L, i2, i, i3);
        }

        /* renamed from: f */
        public void m20292f(Parcel parcel) {
            parcel.writeLong(this.f16197a);
            parcel.writeByte(this.f16198b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f16199c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f16200d ? (byte) 1 : (byte) 0);
            int size = this.f16202f.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.f16202f.get(i).m20298d(parcel);
            }
            parcel.writeLong(this.f16201e);
            parcel.writeByte(this.f16203g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f16204h);
            parcel.writeInt(this.f16205i);
            parcel.writeInt(this.f16206j);
            parcel.writeInt(this.f16207k);
        }
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(C5156c.m20294d(parcel));
        }
        this.f16194d = Collections.unmodifiableList(arrayList);
    }

    /* synthetic */ SpliceScheduleCommand(Parcel parcel, C5154a c5154a) {
        this(parcel);
    }

    private SpliceScheduleCommand(List<C5156c> list) {
        this.f16194d = Collections.unmodifiableList(list);
    }

    /* renamed from: a */
    public static SpliceScheduleCommand m20304a(C5536v c5536v) {
        int m18653z = c5536v.m18653z();
        ArrayList arrayList = new ArrayList(m18653z);
        for (int i = 0; i < m18653z; i++) {
            arrayList.add(C5156c.m20293e(c5536v));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.f16194d.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.f16194d.get(i2).m20292f(parcel);
        }
    }
}
