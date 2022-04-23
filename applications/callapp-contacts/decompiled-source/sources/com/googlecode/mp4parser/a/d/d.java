package com.googlecode.mp4parser.a.d;

import com.b.a.a.ac;
import com.b.a.a.d;
import com.b.a.a.u;
import com.b.a.a.v;
import com.googlecode.mp4parser.a.a;
import com.googlecode.mp4parser.a.f;
import com.googlecode.mp4parser.a.g;
import com.googlecode.mp4parser.a.h;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/d/d.class */
public class d extends a {
    static final /* synthetic */ boolean e = true;

    /* renamed from: d  reason: collision with root package name */
    g f33078d;
    private int f;
    private int g;

    public d(g gVar, long j, long j2) {
        super("crop(" + gVar.f() + ")");
        this.f33078d = gVar;
        boolean z = e;
        if (!z && j > 2147483647L) {
            throw new AssertionError();
        } else if (z || j2 <= 2147483647L) {
            this.f = (int) j;
            this.g = (int) j2;
        } else {
            throw new AssertionError();
        }
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final List<d.a> a() {
        d.a next;
        List<d.a> a2 = this.f33078d.a();
        long j = this.f;
        long j2 = this.g;
        if (a2 == null || a2.isEmpty()) {
            return null;
        }
        long j3 = 0;
        ListIterator<d.a> listIterator = a2.listIterator();
        ArrayList arrayList = new ArrayList();
        while (true) {
            next = listIterator.next();
            if (next.f7112a + j3 > j) {
                break;
            }
            j3 += next.f7112a;
        }
        if (next.f7112a + j3 >= j2) {
            arrayList.add(new d.a((int) (j2 - j), next.f7113b));
            return arrayList;
        }
        arrayList.add(new d.a((int) ((next.f7112a + j3) - j), next.f7113b));
        int i = next.f7112a;
        while (true) {
            j3 += i;
            if (!listIterator.hasNext()) {
                break;
            }
            next = listIterator.next();
            if (next.f7112a + j3 >= j2) {
                break;
            }
            arrayList.add(next);
            i = next.f7112a;
        }
        arrayList.add(new d.a((int) (j2 - j3), next.f7113b));
        return arrayList;
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final long[] b() {
        int i;
        synchronized (this) {
            if (this.f33078d.b() == null) {
                return null;
            }
            long[] b2 = this.f33078d.b();
            int length = b2.length;
            int i2 = 0;
            while (true) {
                i = length;
                if (i2 >= b2.length) {
                    break;
                } else if (b2[i2] >= this.f) {
                    i = length;
                    break;
                } else {
                    i2++;
                }
            }
            while (i > 0 && this.g < b2[i - 1]) {
                i--;
            }
            int i3 = i - i2;
            long[] jArr = new long[i3];
            System.arraycopy(this.f33078d.b(), i2, jArr, 0, i3);
            for (int i4 = 0; i4 < i3; i4++) {
                jArr[i4] = jArr[i4] - this.f;
            }
            return jArr;
        }
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final List<u.a> c() {
        if (this.f33078d.c() == null || this.f33078d.c().isEmpty()) {
            return null;
        }
        return this.f33078d.c().subList(this.f, this.g);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33078d.close();
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final ac d() {
        return this.f33078d.d();
    }

    @Override // com.googlecode.mp4parser.a.g
    public final List<f> j() {
        return this.f33078d.j().subList(this.f, this.g);
    }

    @Override // com.googlecode.mp4parser.a.g
    public final long[] k() {
        long[] jArr;
        synchronized (this) {
            int i = this.g - this.f;
            jArr = new long[i];
            System.arraycopy(this.f33078d.k(), this.f, jArr, 0, i);
        }
        return jArr;
    }

    @Override // com.googlecode.mp4parser.a.g
    public final v l() {
        return this.f33078d.l();
    }

    @Override // com.googlecode.mp4parser.a.g
    public final h m() {
        return this.f33078d.m();
    }

    @Override // com.googlecode.mp4parser.a.g
    public final String n() {
        return this.f33078d.n();
    }
}
