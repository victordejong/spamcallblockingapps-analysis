package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand.class */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new C5151a();

    /* renamed from: d */
    public final long f16178d;

    /* renamed from: e */
    public final boolean f16179e;

    /* renamed from: f */
    public final boolean f16180f;

    /* renamed from: g */
    public final boolean f16181g;

    /* renamed from: h */
    public final boolean f16182h;

    /* renamed from: i */
    public final long f16183i;

    /* renamed from: j */
    public final long f16184j;

    /* renamed from: k */
    public final List<C5152b> f16185k;

    /* renamed from: l */
    public final boolean f16186l;

    /* renamed from: m */
    public final long f16187m;

    /* renamed from: n */
    public final int f16188n;

    /* renamed from: o */
    public final int f16189o;

    /* renamed from: p */
    public final int f16190p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a.class */
    public static final class C5151a implements Parcelable.Creator<SpliceInsertCommand> {
        C5151a() {
        }

        /* renamed from: a */
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel, null);
        }

        /* renamed from: b */
        public SpliceInsertCommand[] newArray(int i) {
            return new SpliceInsertCommand[i];
        }
    }

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$b.class */
    public static final class C5152b {

        /* renamed from: a */
        public final int f16191a;

        /* renamed from: b */
        public final long f16192b;

        /* renamed from: c */
        public final long f16193c;

        private C5152b(int i, long j, long j2) {
            this.f16191a = i;
            this.f16192b = j;
            this.f16193c = j2;
        }

        /* synthetic */ C5152b(int i, long j, long j2, C5151a c5151a) {
            this(i, j, j2);
        }

        /* renamed from: a */
        public static C5152b m20308a(Parcel parcel) {
            return new C5152b(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        /* renamed from: b */
        public void m20307b(Parcel parcel) {
            parcel.writeInt(this.f16191a);
            parcel.writeLong(this.f16192b);
            parcel.writeLong(this.f16193c);
        }
    }

    private SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<C5152b> list, boolean z5, long j4, int i, int i2, int i3) {
        this.f16178d = j;
        this.f16179e = z;
        this.f16180f = z2;
        this.f16181g = z3;
        this.f16182h = z4;
        this.f16183i = j2;
        this.f16184j = j3;
        this.f16185k = Collections.unmodifiableList(list);
        this.f16186l = z5;
        this.f16187m = j4;
        this.f16188n = i;
        this.f16189o = i2;
        this.f16190p = i3;
    }

    private SpliceInsertCommand(Parcel parcel) {
        this.f16178d = parcel.readLong();
        this.f16179e = parcel.readByte() == 1;
        this.f16180f = parcel.readByte() == 1;
        this.f16181g = parcel.readByte() == 1;
        this.f16182h = parcel.readByte() == 1;
        this.f16183i = parcel.readLong();
        this.f16184j = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(C5152b.m20308a(parcel));
        }
        this.f16185k = Collections.unmodifiableList(arrayList);
        this.f16186l = parcel.readByte() == 1;
        this.f16187m = parcel.readLong();
        this.f16188n = parcel.readInt();
        this.f16189o = parcel.readInt();
        this.f16190p = parcel.readInt();
    }

    /* synthetic */ SpliceInsertCommand(Parcel parcel, C5151a c5151a) {
        this(parcel);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r23v0, types: [com.google.android.exoplayer2.util.e0] */
    /* renamed from: a */
    public static SpliceInsertCommand m20311a(C5536v c5536v, long j, C5509e0 c5509e0) {
        boolean z;
        int i;
        char c;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        int i3;
        boolean z5;
        List list;
        boolean z6;
        long m18691B = c5536v.m18691B();
        boolean z7 = (c5536v.m18653z() & 128) != 0;
        ArrayList emptyList = Collections.emptyList();
        if (!z7) {
            int m18653z = c5536v.m18653z();
            boolean z8 = (m18653z & 128) != 0;
            z3 = (m18653z & 64) != 0;
            boolean z9 = (m18653z & 32) != 0;
            boolean z10 = (m18653z & 16) != 0;
            char m20290b = (!z3 || z10) ? (char) 1 : TimeSignalCommand.m20290b(c5536v, j);
            if (!z3) {
                int m18653z2 = c5536v.m18653z();
                emptyList = new ArrayList(m18653z2);
                for (int i4 = 0; i4 < m18653z2; i4++) {
                    int m18653z3 = c5536v.m18653z();
                    char m20290b2 = !z10 ? TimeSignalCommand.m20290b(c5536v, j) : -9223372036854775807;
                    emptyList.add(new C5152b(m18653z3, m20290b2, c5509e0.m18905b(m20290b2), null));
                }
            }
            if (z9) {
                long m18653z4 = c5536v.m18653z();
                z = (128 & m18653z4) != 0;
                z6 = ((((m18653z4 & 1) << 32) | c5536v.m18691B()) * 1000) / 90;
            } else {
                z = false;
                z6 = true;
            }
            i3 = c5536v.m18687F();
            i = c5536v.m18653z();
            i2 = c5536v.m18653z();
            list = emptyList;
            boolean z11 = z10;
            z2 = z8;
            z4 = z11;
            z5 = z6;
            c = m20290b;
        } else {
            list = emptyList;
            z2 = false;
            z4 = false;
            c = 1;
            z = false;
            z5 = true;
            i3 = 0;
            i = 0;
            i2 = 0;
            z3 = false;
        }
        return new SpliceInsertCommand(m18691B, z7, z2, z3, z4, c, c5509e0.m18905b(c), list, z, z5 ? 1L : 0L, i3, i, i2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f16178d);
        parcel.writeByte(this.f16179e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f16180f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f16181g ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f16182h ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f16183i);
        parcel.writeLong(this.f16184j);
        int size = this.f16185k.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.f16185k.get(i2).m20307b(parcel);
        }
        parcel.writeByte(this.f16186l ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f16187m);
        parcel.writeInt(this.f16188n);
        parcel.writeInt(this.f16189o);
        parcel.writeInt(this.f16190p);
    }
}
