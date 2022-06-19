package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand.class */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new Parcelable.Creator<SpliceScheduleCommand>() { // from class: androidx.media2.exoplayer.external.metadata.scte35.SpliceScheduleCommand.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ SpliceScheduleCommand[] newArray(int i) {
            return new SpliceScheduleCommand[i];
        }
    };
    public final List<C1703b> events;

    /* renamed from: androidx.media2.exoplayer.external.metadata.scte35.SpliceScheduleCommand$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a.class */
    public static final class C1702a {

        /* renamed from: a */
        public final int f6699a;

        /* renamed from: b */
        public final long f6700b;

        C1702a(int i, long j) {
            this.f6699a = i;
            this.f6700b = j;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.metadata.scte35.SpliceScheduleCommand$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b.class */
    public static final class C1703b {

        /* renamed from: a */
        public final long f6701a;

        /* renamed from: b */
        public final boolean f6702b;

        /* renamed from: c */
        public final boolean f6703c;

        /* renamed from: d */
        public final boolean f6704d;

        /* renamed from: e */
        public final long f6705e;

        /* renamed from: f */
        public final List<C1702a> f6706f;

        /* renamed from: g */
        public final boolean f6707g;

        /* renamed from: h */
        public final long f6708h;

        /* renamed from: i */
        public final int f6709i;

        /* renamed from: j */
        public final int f6710j;

        /* renamed from: k */
        public final int f6711k;

        private C1703b(long j, boolean z, boolean z2, boolean z3, List<C1702a> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.f6701a = j;
            this.f6702b = z;
            this.f6703c = z2;
            this.f6704d = z3;
            this.f6706f = Collections.unmodifiableList(list);
            this.f6705e = j2;
            this.f6707g = z4;
            this.f6708h = j3;
            this.f6709i = i;
            this.f6710j = i2;
            this.f6711k = i3;
        }

        C1703b(Parcel parcel) {
            this.f6701a = parcel.readLong();
            this.f6702b = parcel.readByte() == 1;
            this.f6703c = parcel.readByte() == 1;
            this.f6704d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i = 0; i < readInt; i++) {
                arrayList.add(new C1702a(parcel.readInt(), parcel.readLong()));
            }
            this.f6706f = Collections.unmodifiableList(arrayList);
            this.f6705e = parcel.readLong();
            this.f6707g = parcel.readByte() == 1;
            this.f6708h = parcel.readLong();
            this.f6709i = parcel.readInt();
            this.f6710j = parcel.readInt();
            this.f6711k = parcel.readInt();
        }

        /* JADX WARN: Type inference failed for: r0v48, types: [long] */
        /* JADX WARN: Type inference failed for: r0v60, types: [long] */
        /* renamed from: a */
        static C1703b m42384a(C2018p c2018p) {
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
            long m41526g = c2018p.m41526g();
            boolean z7 = (c2018p.m41534c() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (!z7) {
                int m41534c = c2018p.m41534c();
                z5 = (m41534c & 128) != 0;
                z4 = (m41534c & 64) != 0;
                boolean z8 = (m41534c & 32) != 0;
                boolean m41526g2 = z4 ? c2018p.m41526g() : true;
                if (!z4) {
                    int m41534c2 = c2018p.m41534c();
                    arrayList2 = new ArrayList(m41534c2);
                    for (int i4 = 0; i4 < m41534c2; i4++) {
                        arrayList2.add(new C1702a(c2018p.m41534c(), c2018p.m41526g()));
                    }
                }
                if (z8) {
                    long m41534c3 = c2018p.m41534c();
                    z = (128 & m41534c3) != 0;
                    z6 = ((((m41534c3 & 1) << 32) | c2018p.m41526g()) * 1000) / 90;
                } else {
                    z = false;
                    z6 = true;
                }
                i = c2018p.m41532d();
                i2 = c2018p.m41534c();
                i3 = c2018p.m41534c();
                arrayList = arrayList2;
                z3 = m41526g2;
                z2 = z6;
            } else {
                arrayList = arrayList2;
                z5 = false;
                z3 = true;
                z = false;
                z2 = true;
                i = 0;
                i2 = 0;
                i3 = 0;
                z4 = false;
            }
            return new C1703b(m41526g, z7, z5, z4, arrayList, z3 ? 1L : 0L, z, z2 ? 1L : 0L, i, i2, i3);
        }
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(new C1703b(parcel));
        }
        this.events = Collections.unmodifiableList(arrayList);
    }

    private SpliceScheduleCommand(List<C1703b> list) {
        this.events = Collections.unmodifiableList(list);
    }

    public static SpliceScheduleCommand parseFromSection(C2018p c2018p) {
        int m41534c = c2018p.m41534c();
        ArrayList arrayList = new ArrayList(m41534c);
        for (int i = 0; i < m41534c; i++) {
            arrayList.add(C1703b.m42384a(c2018p));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int size = this.events.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            C1703b c1703b = this.events.get(i2);
            parcel.writeLong(c1703b.f6701a);
            parcel.writeByte(c1703b.f6702b ? (byte) 1 : (byte) 0);
            parcel.writeByte(c1703b.f6703c ? (byte) 1 : (byte) 0);
            parcel.writeByte(c1703b.f6704d ? (byte) 1 : (byte) 0);
            int size2 = c1703b.f6706f.size();
            parcel.writeInt(size2);
            for (int i3 = 0; i3 < size2; i3++) {
                C1702a c1702a = c1703b.f6706f.get(i3);
                parcel.writeInt(c1702a.f6699a);
                parcel.writeLong(c1702a.f6700b);
            }
            parcel.writeLong(c1703b.f6705e);
            parcel.writeByte(c1703b.f6707g ? (byte) 1 : (byte) 0);
            parcel.writeLong(c1703b.f6708h);
            parcel.writeInt(c1703b.f6709i);
            parcel.writeInt(c1703b.f6710j);
            parcel.writeInt(c1703b.f6711k);
        }
    }
}
