package com.googlecode.mp4parser;

import com.googlecode.mp4parser.p425c.AbstractC16287f;
import com.googlecode.mp4parser.p425c.C16282b;
import com.googlecode.mp4parser.p425c.C16285e;
import com.p102b.p103a.AbstractC3512b;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.AbstractC3487e;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* renamed from: com.googlecode.mp4parser.d */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/d.class */
public class C16292d implements AbstractC3487e, Closeable, Iterator<AbstractC3476b> {

    /* renamed from: a */
    private static final AbstractC3476b f57551a = new AbstractC16221a("eof ") { // from class: com.googlecode.mp4parser.d.1
        @Override // com.googlecode.mp4parser.AbstractC16221a
        protected final void _parseDetails(ByteBuffer byteBuffer) {
        }

        @Override // com.googlecode.mp4parser.AbstractC16221a
        protected final void getContent(ByteBuffer byteBuffer) {
        }

        @Override // com.googlecode.mp4parser.AbstractC16221a
        protected final long getContentSize() {
            return 0L;
        }
    };

    /* renamed from: b */
    private static AbstractC16287f f57552b = AbstractC16287f.m7514a(C16292d.class);

    /* renamed from: q */
    protected AbstractC3512b f57554q;

    /* renamed from: r */
    protected AbstractC16294e f57555r;

    /* renamed from: s */
    AbstractC3476b f57556s = null;

    /* renamed from: t */
    long f57557t = 0;

    /* renamed from: u */
    long f57558u = 0;

    /* renamed from: v */
    long f57559v = 0;

    /* renamed from: c */
    private List<AbstractC3476b> f57553c = new ArrayList();

    /* renamed from: a */
    public AbstractC3476b next() {
        AbstractC3476b mo37857a;
        AbstractC3476b abstractC3476b = this.f57556s;
        if (abstractC3476b != null && abstractC3476b != f57551a) {
            this.f57556s = null;
            return abstractC3476b;
        }
        AbstractC16294e abstractC16294e = this.f57555r;
        if (abstractC16294e == null || this.f57557t >= this.f57559v) {
            this.f57556s = f57551a;
            throw new NoSuchElementException();
        }
        try {
            synchronized (abstractC16294e) {
                this.f57555r.mo7488a(this.f57557t);
                mo37857a = this.f57554q.mo37857a(this.f57555r, this);
                this.f57557t = this.f57555r.mo7485b();
            }
            return mo37857a;
        } catch (EOFException e) {
            throw new NoSuchElementException();
        } catch (IOException e2) {
            throw new NoSuchElementException();
        }
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // com.p102b.p103a.p104a.AbstractC3487e
    /* renamed from: a */
    public final ByteBuffer mo7497a(long j, long j2) throws IOException {
        ByteBuffer mo7487a;
        AbstractC16294e abstractC16294e = this.f57555r;
        if (abstractC16294e != null) {
            synchronized (abstractC16294e) {
                mo7487a = this.f57555r.mo7487a(this.f57558u + j, j2);
            }
            return mo7487a;
        }
        ByteBuffer allocate = ByteBuffer.allocate(C16282b.m7517a(j2));
        long j3 = j + j2;
        char c = 0;
        for (AbstractC3476b abstractC3476b : this.f57553c) {
            ?? size = abstractC3476b.getSize() + c;
            if (size > j && c < j3) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                WritableByteChannel newChannel = Channels.newChannel(byteArrayOutputStream);
                abstractC3476b.getBox(newChannel);
                newChannel.close();
                int i = (c > j ? 1 : (c == j ? 0 : -1));
                if (i >= 0 && size <= j3) {
                    allocate.put(byteArrayOutputStream.toByteArray());
                } else if (i < 0 && size > j3) {
                    long size2 = abstractC3476b.getSize();
                    long j4 = j - c;
                    allocate.put(byteArrayOutputStream.toByteArray(), C16282b.m7517a(j4), C16282b.m7517a((size2 - j4) - (size - j3)));
                } else if (i < 0 && size <= j3) {
                    long size3 = abstractC3476b.getSize();
                    long j5 = j - c;
                    allocate.put(byteArrayOutputStream.toByteArray(), C16282b.m7517a(j5), C16282b.m7517a(size3 - j5));
                } else if (i >= 0 && size > j3) {
                    allocate.put(byteArrayOutputStream.toByteArray(), 0, C16282b.m7517a(abstractC3476b.getSize() - (size - j3)));
                }
            }
            c = size;
        }
        return (ByteBuffer) allocate.rewind();
    }

    @Override // com.p102b.p103a.p104a.AbstractC3487e
    /* renamed from: a */
    public final <T extends AbstractC3476b> List<T> mo7494a(Class<T> cls) {
        List<AbstractC3476b> mo7491b = mo7491b();
        ArrayList arrayList = null;
        T t = null;
        int i = 0;
        while (i < mo7491b.size()) {
            AbstractC3476b abstractC3476b = mo7491b.get(i);
            ArrayList arrayList2 = arrayList;
            T t2 = t;
            if (cls.isInstance(abstractC3476b)) {
                if (t == null) {
                    t2 = abstractC3476b;
                    arrayList2 = arrayList;
                } else {
                    arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList(2);
                        arrayList2.add(t);
                    }
                    arrayList2.add(abstractC3476b);
                    t2 = t;
                }
            }
            i++;
            arrayList = arrayList2;
            t = t2;
        }
        return arrayList != null ? arrayList : t != null ? Collections.singletonList(t) : Collections.emptyList();
    }

    /* renamed from: a */
    public final void m7496a(AbstractC3476b abstractC3476b) {
        if (abstractC3476b != null) {
            this.f57553c = new ArrayList(mo7491b());
            abstractC3476b.setParent(this);
            this.f57553c.add(abstractC3476b);
        }
    }

    /* renamed from: a */
    public void mo7495a(AbstractC16294e abstractC16294e, long j, AbstractC3512b abstractC3512b) throws IOException {
        this.f57555r = abstractC16294e;
        long mo7485b = abstractC16294e.mo7485b();
        this.f57558u = mo7485b;
        this.f57557t = mo7485b;
        abstractC16294e.mo7488a(abstractC16294e.mo7485b() + j);
        this.f57559v = abstractC16294e.mo7485b();
        this.f57554q = abstractC3512b;
    }

    @Override // com.p102b.p103a.p104a.AbstractC3487e
    /* renamed from: a */
    public final void mo7493a(WritableByteChannel writableByteChannel) throws IOException {
        for (AbstractC3476b abstractC3476b : mo7491b()) {
            abstractC3476b.getBox(writableByteChannel);
        }
    }

    /* renamed from: a */
    public void mo7492a(List<AbstractC3476b> list) {
        this.f57553c = new ArrayList(list);
        this.f57556s = f57551a;
        this.f57555r = null;
    }

    @Override // com.p102b.p103a.p104a.AbstractC3487e
    /* renamed from: b */
    public final List<AbstractC3476b> mo7491b() {
        return (this.f57555r == null || this.f57556s == f57551a) ? this.f57553c : new C16285e(this.f57553c, this);
    }

    public void close() throws IOException {
        this.f57555r.close();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        AbstractC3476b abstractC3476b = this.f57556s;
        if (abstractC3476b == f57551a) {
            return false;
        }
        if (abstractC3476b != null) {
            return true;
        }
        try {
            this.f57556s = next();
            return true;
        } catch (NoSuchElementException e) {
            this.f57556s = f57551a;
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: k */
    public final long m7490k() {
        char c = 0;
        for (int i = 0; i < mo7491b().size(); i++) {
            c += this.f57553c.get(i).getSize();
        }
        return c;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i = 0; i < this.f57553c.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.f57553c.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }
}
