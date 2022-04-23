package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand.class */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new Parcelable.Creator<SpliceScheduleCommand>() { // from class: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand.1
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21454a;

        /* renamed from: b  reason: collision with root package name */
        public final long f21455b;

        a(int i, long j) {
            this.f21454a = i;
            this.f21455b = j;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final long f21456a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f21457b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f21458c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f21459d;
        public final long e;
        public final List<a> f;
        public final boolean g;
        public final long h;
        public final int i;
        public final int j;
        public final int k;

        private b(long j, boolean z, boolean z2, boolean z3, List<a> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.f21456a = j;
            this.f21457b = z;
            this.f21458c = z2;
            this.f21459d = z3;
            this.f = Collections.unmodifiableList(list);
            this.e = j2;
            this.g = z4;
            this.h = j3;
            this.i = i;
            this.j = i2;
            this.k = i3;
        }

        b(Parcel parcel) {
            this.f21456a = parcel.readLong();
            boolean z = false;
            this.f21457b = parcel.readByte() == 1;
            this.f21458c = parcel.readByte() == 1;
            this.f21459d = parcel.readByte() == 1;
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

        static b a(u uVar) {
            boolean z;
            long j;
            int i;
            int i2;
            long j2;
            boolean z2;
            boolean z3;
            int i3;
            long h = uVar.h();
            boolean z4 = (uVar.c() & 128) != 0;
            ArrayList arrayList = new ArrayList();
            if (!z4) {
                int c2 = uVar.c();
                z3 = (c2 & 128) != 0;
                z2 = (c2 & 64) != 0;
                boolean z5 = (c2 & 32) != 0;
                j2 = z2 ? uVar.h() : -9223372036854775807L;
                if (!z2) {
                    int c3 = uVar.c();
                    arrayList = new ArrayList(c3);
                    for (int i4 = 0; i4 < c3; i4++) {
                        arrayList.add(new a(uVar.c(), uVar.h()));
                    }
                }
                if (z5) {
                    long c4 = uVar.c();
                    z = (128 & c4) != 0;
                    j = ((((c4 & 1) << 32) | uVar.h()) * 1000) / 90;
                } else {
                    z = false;
                    j = -9223372036854775807L;
                }
                i = uVar.d();
                i2 = uVar.c();
                i3 = uVar.c();
            } else {
                z3 = false;
                j2 = -9223372036854775807L;
                z = false;
                j = -9223372036854775807L;
                i = 0;
                i2 = 0;
                i3 = 0;
                z2 = false;
            }
            return new b(h, z4, z3, z2, arrayList, j2, z, j, i, i2, i3);
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
    public static SpliceScheduleCommand parseFromSection(u uVar) {
        int c2 = uVar.c();
        ArrayList arrayList = new ArrayList(c2);
        for (int i = 0; i < c2; i++) {
            arrayList.add(b.a(uVar));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int size = this.events.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.events.get(i2);
            parcel.writeLong(bVar.f21456a);
            parcel.writeByte(bVar.f21457b ? (byte) 1 : (byte) 0);
            parcel.writeByte(bVar.f21458c ? (byte) 1 : (byte) 0);
            parcel.writeByte(bVar.f21459d ? (byte) 1 : (byte) 0);
            int size2 = bVar.f.size();
            parcel.writeInt(size2);
            for (int i3 = 0; i3 < size2; i3++) {
                a aVar = bVar.f.get(i3);
                parcel.writeInt(aVar.f21454a);
                parcel.writeLong(aVar.f21455b);
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
