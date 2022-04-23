package com.googlecode.mp4parser;

import com.b.a.a.b;
import com.b.a.a.e;
import com.googlecode.mp4parser.c.f;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/d.class */
public class d implements e, Closeable, Iterator<b> {

    /* renamed from: a  reason: collision with root package name */
    private static final b f33179a = new a("eof ") { // from class: com.googlecode.mp4parser.d.1
        @Override // com.googlecode.mp4parser.a
        protected final void _parseDetails(ByteBuffer byteBuffer) {
        }

        @Override // com.googlecode.mp4parser.a
        protected final void getContent(ByteBuffer byteBuffer) {
        }

        @Override // com.googlecode.mp4parser.a
        protected final long getContentSize() {
            return 0L;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static f f33180b = f.a(d.class);
    protected com.b.a.b q;
    protected e r;
    b s = null;
    long t = 0;
    long u = 0;
    long v = 0;

    /* renamed from: c  reason: collision with root package name */
    private List<b> f33181c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public b next() {
        b a2;
        b bVar = this.s;
        if (bVar == null || bVar == f33179a) {
            e eVar = this.r;
            if (eVar == null || this.t >= this.v) {
                this.s = f33179a;
                throw new NoSuchElementException();
            }
            try {
                synchronized (eVar) {
                    this.r.a(this.t);
                    a2 = this.q.a(this.r, this);
                    this.t = this.r.b();
                }
                return a2;
            } catch (EOFException e) {
                throw new NoSuchElementException();
            } catch (IOException e2) {
                throw new NoSuchElementException();
            }
        } else {
            this.s = null;
            return bVar;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.b.a.a.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.nio.ByteBuffer a(long r8, long r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.d.a(long, long):java.nio.ByteBuffer");
    }

    @Override // com.b.a.a.e
    public final <T extends b> List<T> a(Class<T> cls) {
        List<b> b2 = b();
        ArrayList arrayList = null;
        b bVar = null;
        for (int i = 0; i < b2.size(); i++) {
            b bVar2 = b2.get(i);
            arrayList = arrayList;
            bVar = bVar;
            if (cls.isInstance(bVar2)) {
                if (bVar == null) {
                    bVar = bVar2;
                    arrayList = arrayList;
                } else {
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList(2);
                        arrayList.add(bVar);
                    }
                    arrayList.add(bVar2);
                    bVar = bVar;
                }
            }
        }
        return arrayList != null ? arrayList : bVar != null ? Collections.singletonList(bVar) : Collections.emptyList();
    }

    public final void a(b bVar) {
        if (bVar != null) {
            this.f33181c = new ArrayList(b());
            bVar.setParent(this);
            this.f33181c.add(bVar);
        }
    }

    public void a(e eVar, long j, com.b.a.b bVar) throws IOException {
        this.r = eVar;
        long b2 = eVar.b();
        this.u = b2;
        this.t = b2;
        eVar.a(eVar.b() + j);
        this.v = eVar.b();
        this.q = bVar;
    }

    @Override // com.b.a.a.e
    public final void a(WritableByteChannel writableByteChannel) throws IOException {
        for (b bVar : b()) {
            bVar.getBox(writableByteChannel);
        }
    }

    public void a(List<b> list) {
        this.f33181c = new ArrayList(list);
        this.s = f33179a;
        this.r = null;
    }

    @Override // com.b.a.a.e
    public final List<b> b() {
        return (this.r == null || this.s == f33179a) ? this.f33181c : new com.googlecode.mp4parser.c.e(this.f33181c, this);
    }

    public void close() throws IOException {
        this.r.close();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        b bVar = this.s;
        if (bVar == f33179a) {
            return false;
        }
        if (bVar != null) {
            return true;
        }
        try {
            this.s = next();
            return true;
        } catch (NoSuchElementException e) {
            this.s = f33179a;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long k() {
        long j = 0;
        for (int i = 0; i < b().size(); i++) {
            j += this.f33181c.get(i).getSize();
        }
        return j;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i = 0; i < this.f33181c.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.f33181c.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }
}
