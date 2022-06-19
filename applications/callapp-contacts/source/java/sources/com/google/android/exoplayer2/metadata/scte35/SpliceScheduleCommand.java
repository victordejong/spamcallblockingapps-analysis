package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C11628u;
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
    public final List<C11236b> events;

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a.class */
    public static final class C11235a {

        /* renamed from: a */
        public final int f36788a;

        /* renamed from: b */
        public final long f36789b;

        C11235a(int i, long j) {
            this.f36788a = i;
            this.f36789b = j;
        }
    }

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$b.class */
    public static final class C11236b {

        /* renamed from: a */
        public final long f36790a;

        /* renamed from: b */
        public final boolean f36791b;

        /* renamed from: c */
        public final boolean f36792c;

        /* renamed from: d */
        public final boolean f36793d;

        /* renamed from: e */
        public final long f36794e;

        /* renamed from: f */
        public final List<C11235a> f36795f;

        /* renamed from: g */
        public final boolean f36796g;

        /* renamed from: h */
        public final long f36797h;

        /* renamed from: i */
        public final int f36798i;

        /* renamed from: j */
        public final int f36799j;

        /* renamed from: k */
        public final int f36800k;

        private C11236b(long j, boolean z, boolean z2, boolean z3, List<C11235a> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.f36790a = j;
            this.f36791b = z;
            this.f36792c = z2;
            this.f36793d = z3;
            this.f36795f = Collections.unmodifiableList(list);
            this.f36794e = j2;
            this.f36796g = z4;
            this.f36797h = j3;
            this.f36798i = i;
            this.f36799j = i2;
            this.f36800k = i3;
        }

        C11236b(Parcel parcel) {
            this.f36790a = parcel.readLong();
            this.f36791b = parcel.readByte() == 1;
            this.f36792c = parcel.readByte() == 1;
            this.f36793d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i = 0; i < readInt; i++) {
                arrayList.add(new C11235a(parcel.readInt(), parcel.readLong()));
            }
            this.f36795f = Collections.unmodifiableList(arrayList);
            this.f36794e = parcel.readLong();
            this.f36796g = parcel.readByte() == 1;
            this.f36797h = parcel.readLong();
            this.f36798i = parcel.readInt();
            this.f36799j = parcel.readInt();
            this.f36800k = parcel.readInt();
        }

        /* JADX WARN: Type inference failed for: r0v46, types: [long] */
        /* JADX WARN: Type inference failed for: r0v58, types: [long] */
        /* renamed from: a */
        static C11236b m21188a(C11628u c11628u) {
            boolean z;
            boolean z2;
            int i;
            int i2;
            boolean z3;
            boolean z4;
            boolean z5;
            int i3;
            boolean z6;
            long m19794h = c11628u.m19794h();
            boolean z7 = (c11628u.m19804c() & 128) != 0;
            ArrayList arrayList = new ArrayList();
            if (!z7) {
                int m19804c = c11628u.m19804c();
                z5 = (m19804c & 128) != 0;
                z4 = (m19804c & 64) != 0;
                boolean z8 = (m19804c & 32) != 0;
                boolean m19794h2 = z4 ? c11628u.m19794h() : true;
                if (!z4) {
                    int m19804c2 = c11628u.m19804c();
                    arrayList = new ArrayList(m19804c2);
                    for (int i4 = 0; i4 < m19804c2; i4++) {
                        arrayList.add(new C11235a(c11628u.m19804c(), c11628u.m19794h()));
                    }
                }
                if (z8) {
                    long m19804c3 = c11628u.m19804c();
                    z = (128 & m19804c3) != 0;
                    z6 = ((((m19804c3 & 1) << 32) | c11628u.m19794h()) * 1000) / 90;
                } else {
                    z = false;
                    z6 = true;
                }
                i = c11628u.m19802d();
                i2 = c11628u.m19804c();
                i3 = c11628u.m19804c();
                z3 = m19794h2;
                z2 = z6;
            } else {
                z5 = false;
                z3 = true;
                z = false;
                z2 = true;
                i = 0;
                i2 = 0;
                i3 = 0;
                z4 = false;
            }
            return new C11236b(m19794h, z7, z5, z4, arrayList, z3 ? 1L : 0L, z, z2 ? 1L : 0L, i, i2, i3);
        }
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(new C11236b(parcel));
        }
        this.events = Collections.unmodifiableList(arrayList);
    }

    private SpliceScheduleCommand(List<C11236b> list) {
        this.events = Collections.unmodifiableList(list);
    }

    public static SpliceScheduleCommand parseFromSection(C11628u c11628u) {
        int m19804c = c11628u.m19804c();
        ArrayList arrayList = new ArrayList(m19804c);
        for (int i = 0; i < m19804c; i++) {
            arrayList.add(C11236b.m21188a(c11628u));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int size = this.events.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            C11236b c11236b = this.events.get(i2);
            parcel.writeLong(c11236b.f36790a);
            parcel.writeByte(c11236b.f36791b ? (byte) 1 : (byte) 0);
            parcel.writeByte(c11236b.f36792c ? (byte) 1 : (byte) 0);
            parcel.writeByte(c11236b.f36793d ? (byte) 1 : (byte) 0);
            int size2 = c11236b.f36795f.size();
            parcel.writeInt(size2);
            for (int i3 = 0; i3 < size2; i3++) {
                C11235a c11235a = c11236b.f36795f.get(i3);
                parcel.writeInt(c11235a.f36788a);
                parcel.writeLong(c11235a.f36789b);
            }
            parcel.writeLong(c11236b.f36794e);
            parcel.writeByte(c11236b.f36796g ? (byte) 1 : (byte) 0);
            parcel.writeLong(c11236b.f36797h);
            parcel.writeInt(c11236b.f36798i);
            parcel.writeInt(c11236b.f36799j);
            parcel.writeInt(c11236b.f36800k);
        }
    }
}
