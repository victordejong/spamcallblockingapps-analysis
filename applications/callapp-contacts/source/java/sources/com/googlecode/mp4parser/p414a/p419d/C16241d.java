package com.googlecode.mp4parser.p414a.p419d;

import com.googlecode.mp4parser.p414a.AbstractC16222a;
import com.googlecode.mp4parser.p414a.AbstractC16243f;
import com.googlecode.mp4parser.p414a.AbstractC16244g;
import com.googlecode.mp4parser.p414a.C16245h;
import com.p102b.p103a.p104a.C3466ac;
import com.p102b.p103a.p104a.C3485d;
import com.p102b.p103a.p104a.C3504u;
import com.p102b.p103a.p104a.C3506v;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
/* renamed from: com.googlecode.mp4parser.a.d.d */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/d/d.class */
public class C16241d extends AbstractC16222a {

    /* renamed from: e */
    static final /* synthetic */ boolean f57301e = true;

    /* renamed from: d */
    AbstractC16244g f57302d;

    /* renamed from: f */
    private int f57303f;

    /* renamed from: g */
    private int f57304g;

    public C16241d(AbstractC16244g abstractC16244g, long j, long j2) {
        super("crop(" + abstractC16244g.mo7569f() + ")");
        this.f57302d = abstractC16244g;
        boolean z = f57301e;
        if (z || j <= 2147483647L) {
            if (!z && j2 > 2147483647L) {
                throw new AssertionError();
            }
            this.f57303f = (int) j;
            this.f57304g = (int) j2;
            return;
        }
        throw new AssertionError();
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: a */
    public final List<C3485d.C3486a> mo7574a() {
        C3485d.C3486a next;
        List<C3485d.C3486a> mo7574a = this.f57302d.mo7574a();
        long j = this.f57303f;
        long j2 = this.f57304g;
        if (mo7574a == null || mo7574a.isEmpty()) {
            return null;
        }
        char c = 0;
        ListIterator<C3485d.C3486a> listIterator = mo7574a.listIterator();
        ArrayList arrayList = new ArrayList();
        while (true) {
            next = listIterator.next();
            if (next.f13238a + c > j) {
                break;
            }
            c += next.f13238a;
        }
        if (next.f13238a + c >= j2) {
            arrayList.add(new C3485d.C3486a((int) (j2 - j), next.f13239b));
            return arrayList;
        }
        arrayList.add(new C3485d.C3486a((int) ((next.f13238a + c) - j), next.f13239b));
        int i = next.f13238a;
        while (true) {
            c += i;
            if (!listIterator.hasNext()) {
                break;
            }
            next = listIterator.next();
            if (next.f13238a + c >= j2) {
                break;
            }
            arrayList.add(next);
            i = next.f13238a;
        }
        arrayList.add(new C3485d.C3486a((int) (j2 - c), next.f13239b));
        return arrayList;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: b */
    public final long[] mo7573b() {
        int i;
        synchronized (this) {
            if (this.f57302d.mo7573b() != null) {
                long[] mo7573b = this.f57302d.mo7573b();
                int length = mo7573b.length;
                int i2 = 0;
                while (true) {
                    i = length;
                    if (i2 >= mo7573b.length) {
                        break;
                    } else if (mo7573b[i2] >= this.f57303f) {
                        i = length;
                        break;
                    } else {
                        i2++;
                    }
                }
                while (i > 0 && this.f57304g < mo7573b[i - 1]) {
                    i--;
                }
                int i3 = i - i2;
                long[] jArr = new long[i3];
                System.arraycopy(this.f57302d.mo7573b(), i2, jArr, 0, i3);
                for (int i4 = 0; i4 < i3; i4++) {
                    jArr[i4] = jArr[i4] - this.f57303f;
                }
                return jArr;
            }
            return null;
        }
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: c */
    public final List<C3504u.C3505a> mo7572c() {
        if (this.f57302d.mo7572c() == null || this.f57302d.mo7572c().isEmpty()) {
            return null;
        }
        return this.f57302d.mo7572c().subList(this.f57303f, this.f57304g);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f57302d.close();
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: d */
    public final C3466ac mo7571d() {
        return this.f57302d.mo7571d();
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: j */
    public final List<AbstractC16243f> mo7566j() {
        return this.f57302d.mo7566j().subList(this.f57303f, this.f57304g);
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: k */
    public final long[] mo7565k() {
        long[] jArr;
        synchronized (this) {
            int i = this.f57304g - this.f57303f;
            jArr = new long[i];
            System.arraycopy(this.f57302d.mo7565k(), this.f57303f, jArr, 0, i);
        }
        return jArr;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: l */
    public final C3506v mo7564l() {
        return this.f57302d.mo7564l();
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: m */
    public final C16245h mo7563m() {
        return this.f57302d.mo7563m();
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: n */
    public final String mo7562n() {
        return this.f57302d.mo7562n();
    }
}
