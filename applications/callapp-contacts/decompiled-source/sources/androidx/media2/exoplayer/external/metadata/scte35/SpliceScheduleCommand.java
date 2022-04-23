package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.util.p;
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
    public final List<b> events;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3462a;

        /* renamed from: b  reason: collision with root package name */
        public final long f3463b;

        a(int i, long j) {
            this.f3462a = i;
            this.f3463b = j;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final long f3464a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3465b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f3466c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f3467d;
        public final long e;
        public final List<a> f;
        public final boolean g;
        public final long h;
        public final int i;
        public final int j;
        public final int k;

        private b(long j, boolean z, boolean z2, boolean z3, List<a> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.f3464a = j;
            this.f3465b = z;
            this.f3466c = z2;
            this.f3467d = z3;
            this.f = Collections.unmodifiableList(list);
            this.e = j2;
            this.g = z4;
            this.h = j3;
            this.i = i;
            this.j = i2;
            this.k = i3;
        }

        b(Parcel parcel) {
            this.f3464a = parcel.readLong();
            boolean z = false;
            this.f3465b = parcel.readByte() == 1;
            this.f3466c = parcel.readByte() == 1;
            this.f3467d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i = 0; i < readInt; i++) {
                arrayList.add(new a(parcel.readInt(), parcel.readLong()));
            }
            this.f = Collections.unmodifiableList(arrayList);
            this.e = parcel.readLong();
            this.g = parcel.readByte() == 1 ? true : z;
            this.h = parcel.readLong();
            this.i = parcel.readInt();
            this.j = parcel.readInt();
            this.k = parcel.readInt();
        }

        static b a(p pVar) {
            boolean z;
            long j;
            int i;
            int i2;
            long j2;
            boolean z2;
            boolean z3;
            int i3;
            long g = pVar.g();
            boolean z4 = (pVar.c() & 128) != 0;
            ArrayList arrayList = new ArrayList();
            if (!z4) {
                int c2 = pVar.c();
                z3 = (c2 & 128) != 0;
                z2 = (c2 & 64) != 0;
                boolean z5 = (c2 & 32) != 0;
                j2 = z2 ? pVar.g() : -9223372036854775807L;
                if (!z2) {
                    int c3 = pVar.c();
                    arrayList = new ArrayList(c3);
                    for (int i4 = 0; i4 < c3; i4++) {
                        arrayList.add(new a(pVar.c(), pVar.g()));
                    }
                }
                if (z5) {
                    long c4 = pVar.c();
                    z = (128 & c4) != 0;
                    j = ((((c4 & 1) << 32) | pVar.g()) * 1000) / 90;
                } else {
                    z = false;
                    j = -9223372036854775807L;
                }
                i = pVar.d();
                i2 = pVar.c();
                i3 = pVar.c();
            } else {
                arrayList = arrayList;
                z3 = false;
                j2 = -9223372036854775807L;
                z = false;
                j = -9223372036854775807L;
                i = 0;
                i2 = 0;
                i3 = 0;
                z2 = false;
            }
            return new b(g, z4, z3, z2, arrayList, j2, z, j, i, i2, i3);
        }
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(new b(parcel));
        }
        this.events = Collections.unmodifiableList(arrayList);
    }

    private SpliceScheduleCommand(List<b> list) {
        this.events = Collections.unmodifiableList(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpliceScheduleCommand parseFromSection(p pVar) {
        int c2 = pVar.c();
        ArrayList arrayList = new ArrayList(c2);
        for (int i = 0; i < c2; i++) {
            arrayList.add(b.a(pVar));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int size = this.events.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.events.get(i2);
            parcel.writeLong(bVar.f3464a);
            parcel.writeByte(bVar.f3465b ? (byte) 1 : (byte) 0);
            parcel.writeByte(bVar.f3466c ? (byte) 1 : (byte) 0);
            parcel.writeByte(bVar.f3467d ? (byte) 1 : (byte) 0);
            int size2 = bVar.f.size();
            parcel.writeInt(size2);
            for (int i3 = 0; i3 < size2; i3++) {
                a aVar = bVar.f.get(i3);
                parcel.writeInt(aVar.f3462a);
                parcel.writeLong(aVar.f3463b);
            }
            parcel.writeLong(bVar.e);
            parcel.writeByte(bVar.g ? (byte) 1 : (byte) 0);
            parcel.writeLong(bVar.h);
            parcel.writeInt(bVar.i);
            parcel.writeInt(bVar.j);
            parcel.writeInt(bVar.k);
        }
    }
}
