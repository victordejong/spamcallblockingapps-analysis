package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c.class */
public final class SpliceScheduleCommand$c {

    /* renamed from: a */
    public final long f1024a;

    /* renamed from: b */
    public final boolean f1025b;

    /* renamed from: c */
    public final boolean f1026c;

    /* renamed from: d */
    public final boolean f1027d;

    /* renamed from: e */
    public final long f1028e;

    /* renamed from: f */
    public final List<SpliceScheduleCommand$b> f1029f;

    /* renamed from: g */
    public final boolean f1030g;

    /* renamed from: h */
    public final long f1031h;

    /* renamed from: i */
    public final int f1032i;

    /* renamed from: j */
    public final int f1033j;

    /* renamed from: k */
    public final int f1034k;

    public SpliceScheduleCommand$c(Parcel parcel) {
        this.f1024a = parcel.readLong();
        this.f1025b = parcel.readByte() == 1;
        this.f1026c = parcel.readByte() == 1;
        this.f1027d = parcel.readByte() == 1;
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(new Object(parcel.readInt(), parcel.readLong()) { // from class: androidx.media2.exoplayer.external.metadata.scte35.SpliceScheduleCommand$b

                /* renamed from: a */
                public final int f1022a;

                /* renamed from: b */
                public final long f1023b;

                {
                    this.f1022a = readInt2;
                    this.f1023b = readLong;
                }
            });
        }
        this.f1029f = Collections.unmodifiableList(arrayList);
        this.f1028e = parcel.readLong();
        this.f1030g = parcel.readByte() == 1;
        this.f1031h = parcel.readLong();
        this.f1032i = parcel.readInt();
        this.f1033j = parcel.readInt();
        this.f1034k = parcel.readInt();
    }
}
