package p193e.p1577m.p1578a.p1596c.p1613i1.p1617j;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.scte35.PrivateCommand;
import com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand;
import com.google.android.exoplayer2.metadata.scte35.SpliceNullCommand;
import com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand;
import com.google.android.exoplayer2.metadata.scte35.TimeSignalCommand;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24462b;
import p193e.p1577m.p1578a.p1596c.p1613i1.C24465d;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24771c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24797s;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.i1.j.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/i1/j/a.class */
public final class C24475a implements AbstractC24462b {

    /* renamed from: a */
    public final C24798t f68325a = new C24798t();

    /* renamed from: b */
    public final C24797s f68326b = new C24797s();

    /* renamed from: c */
    public C24771c0 f68327c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* JADX WARN: Type inference failed for: r0v141, types: [e.m.a.c.q1.c0] */
    /* JADX WARN: Type inference failed for: r0v193, types: [long] */
    /* JADX WARN: Type inference failed for: r0v204 */
    /* JADX WARN: Type inference failed for: r0v207 */
    /* JADX WARN: Type inference failed for: r0v209, types: [long] */
    /* JADX WARN: Type inference failed for: r0v213, types: [long] */
    /* JADX WARN: Type inference failed for: r21v15 */
    /* JADX WARN: Type inference failed for: r21v18 */
    @Override // p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24462b
    /* renamed from: a */
    public Metadata mo5044a(C24465d c24465d) {
        int i;
        int i2;
        boolean z;
        int i3;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        int i4;
        int i5;
        char c;
        int i6;
        List list;
        boolean z11;
        ByteBuffer byteBuffer = c24465d.f67301b;
        Objects.requireNonNull(byteBuffer);
        C24771c0 c24771c0 = this.f68327c;
        if (c24771c0 == null || c24465d.f68302g != c24771c0.m4631c()) {
            C24771c0 c24771c02 = new C24771c0(c24465d.f67303d);
            this.f68327c = c24771c02;
            c24771c02.m4633a(c24465d.f67303d - c24465d.f68302g);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f68325a.m4549A(array, limit);
        this.f68326b.m4553i(array, limit);
        this.f68326b.m4550l(39);
        long m4556f = (this.f68326b.m4556f(1) << 32) | this.f68326b.m4556f(32);
        this.f68326b.m4550l(20);
        int m4556f2 = this.f68326b.m4556f(12);
        int m4556f3 = this.f68326b.m4556f(8);
        this.f68325a.m4546D(14);
        TimeSignalCommand timeSignalCommand = null;
        if (m4556f3 == 0) {
            timeSignalCommand = new SpliceNullCommand();
        } else if (m4556f3 == 255) {
            C24798t c24798t = this.f68325a;
            long m4528r = c24798t.m4528r();
            int i7 = m4556f2 - 4;
            byte[] bArr = new byte[i7];
            System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, i7);
            c24798t.f69505b += i7;
            timeSignalCommand = new PrivateCommand(m4528r, bArr, m4556f);
        } else if (m4556f3 == 4) {
            C24798t c24798t2 = this.f68325a;
            int m4529q = c24798t2.m4529q();
            ArrayList arrayList = new ArrayList(m4529q);
            for (int i8 = 0; i8 < m4529q; i8++) {
                long m4528r2 = c24798t2.m4528r();
                boolean z12 = (c24798t2.m4529q() & 128) != 0;
                ArrayList arrayList2 = new ArrayList();
                if (!z12) {
                    int m4529q2 = c24798t2.m4529q();
                    z4 = (m4529q2 & 128) != 0;
                    z3 = (m4529q2 & 64) != 0;
                    boolean z13 = (m4529q2 & 32) != 0;
                    boolean m4528r3 = z3 ? c24798t2.m4528r() : true;
                    if (!z3) {
                        int m4529q3 = c24798t2.m4529q();
                        arrayList2 = new ArrayList(m4529q3);
                        for (int i9 = 0; i9 < m4529q3; i9++) {
                            arrayList2.add(new SpliceScheduleCommand.C1993b(c24798t2.m4529q(), c24798t2.m4528r(), null));
                        }
                    }
                    if (z13) {
                        long m4529q4 = c24798t2.m4529q();
                        z2 = (m4529q4 & 128) != 0;
                        z = ((((m4529q4 & 1) << 32) | c24798t2.m4528r()) * 1000) / 90;
                    } else {
                        z2 = false;
                        z = true;
                    }
                    i2 = c24798t2.m4524v();
                    i3 = c24798t2.m4529q();
                    i = c24798t2.m4529q();
                    z5 = m4528r3;
                } else {
                    z4 = false;
                    z3 = false;
                    z5 = true;
                    z2 = false;
                    z = true;
                    i2 = 0;
                    i3 = 0;
                    i = 0;
                }
                arrayList.add(new SpliceScheduleCommand.C1994c(m4528r2, z12, z4, z3, arrayList2, z5 ? 1L : 0L, z2, z ? 1L : 0L, i2, i3, i));
            }
            timeSignalCommand = new SpliceScheduleCommand(arrayList);
        } else if (m4556f3 == 5) {
            C24798t c24798t3 = this.f68325a;
            ?? r0 = this.f68327c;
            long m4528r4 = c24798t3.m4528r();
            boolean z14 = (c24798t3.m4529q() & 128) != 0;
            ArrayList emptyList = Collections.emptyList();
            if (!z14) {
                int m4529q5 = c24798t3.m4529q();
                z10 = (m4529q5 & 128) != 0;
                z9 = (m4529q5 & 64) != 0;
                boolean z15 = (m4529q5 & 32) != 0;
                z8 = (m4529q5 & 16) != 0;
                char m39236a = (!z9 || z8) ? (char) 1 : TimeSignalCommand.m39236a(c24798t3, m4556f);
                if (!z9) {
                    int m4529q6 = c24798t3.m4529q();
                    emptyList = new ArrayList(m4529q6);
                    for (int i10 = 0; i10 < m4529q6; i10++) {
                        int m4529q7 = c24798t3.m4529q();
                        char m39236a2 = !z8 ? TimeSignalCommand.m39236a(c24798t3, m4556f) : -9223372036854775807;
                        emptyList.add(new SpliceInsertCommand.C1990b(m4529q7, m39236a2, r0.m4632b(m39236a2), null));
                    }
                }
                if (z15) {
                    long m4529q8 = c24798t3.m4529q();
                    z6 = (m4529q8 & 128) != 0;
                    z11 = ((((m4529q8 & 1) << 32) | c24798t3.m4528r()) * 1000) / 90;
                } else {
                    z6 = false;
                    z11 = true;
                }
                int m4524v = c24798t3.m4524v();
                int m4529q9 = c24798t3.m4529q();
                i6 = c24798t3.m4529q();
                i4 = m4524v;
                i5 = m4529q9;
                list = emptyList;
                c = m39236a;
                z7 = z11;
            } else {
                c = 1;
                z10 = false;
                z9 = false;
                z8 = false;
                z6 = false;
                z7 = true;
                i4 = 0;
                i5 = 0;
                i6 = 0;
                list = emptyList;
            }
            timeSignalCommand = new SpliceInsertCommand(m4528r4, z14, z10, z9, z8, c, r0.m4632b(c), list, z6, z7 ? 1L : 0L, i4, i5, i6);
        } else if (m4556f3 == 6) {
            C24798t c24798t4 = this.f68325a;
            C24771c0 c24771c03 = this.f68327c;
            long m39236a3 = TimeSignalCommand.m39236a(c24798t4, m4556f);
            timeSignalCommand = new TimeSignalCommand(m39236a3, c24771c03.m4632b(m39236a3));
        }
        return timeSignalCommand == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(timeSignalCommand);
    }
}
