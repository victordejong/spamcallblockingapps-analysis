package com.google.android.exoplayer2.decoder;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.decoder.DecoderException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.f;
import com.google.android.exoplayer2.util.a;
import java.util.ArrayDeque;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/g.class */
public abstract class g<I extends DecoderInputBuffer, O extends f, E extends DecoderException> implements c<I, O, E> {

    /* renamed from: a  reason: collision with root package name */
    private final Thread f20843a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f20844b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<I> f20845c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayDeque<O> f20846d = new ArrayDeque<>();
    private final I[] e;
    private final O[] f;
    private int g;
    private int h;
    private I i;
    private E j;
    private boolean k;
    private boolean l;
    private int m;

    public g(I[] iArr, O[] oArr) {
        this.e = iArr;
        this.g = iArr.length;
        for (int i = 0; i < this.g; i++) {
            this.e[i] = g();
        }
        this.f = oArr;
        this.h = oArr.length;
        for (int i2 = 0; i2 < this.h; i2++) {
            this.f[i2] = h();
        }
        Thread thread = new Thread("ExoPlayer:SimpleDecoder") { // from class: com.google.android.exoplayer2.decoder.g.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                do {
                    try {
                    } catch (InterruptedException e) {
                        throw new IllegalStateException(e);
                    }
                } while (g.this.f());
            }
        };
        this.f20843a = thread;
        thread.start();
    }

    private void a(I i) {
        i.a();
        I[] iArr = this.e;
        int i2 = this.g;
        this.g = i2 + 1;
        iArr[i2] = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public I a() throws DecoderException {
        I i;
        synchronized (this.f20844b) {
            k();
            a.b(this.i == null);
            int i2 = this.g;
            if (i2 == 0) {
                i = null;
            } else {
                I[] iArr = this.e;
                int i3 = i2 - 1;
                this.g = i3;
                i = iArr[i3];
            }
            this.i = i;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public O b() throws DecoderException {
        synchronized (this.f20844b) {
            k();
            if (this.f20846d.isEmpty()) {
                return null;
            }
            return this.f20846d.removeFirst();
        }
    }

    private void k() throws DecoderException {
        E e = this.j;
        if (e != null) {
            throw e;
        }
    }

    private void l() {
        if (m()) {
            this.f20844b.notify();
        }
    }

    private boolean m() {
        return !this.f20845c.isEmpty() && this.h > 0;
    }

    protected abstract E a(I i, O o, boolean z);

    protected abstract E a(Throwable th);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(O o) {
        synchronized (this.f20844b) {
            o.a();
            O[] oArr = this.f;
            int i = this.h;
            this.h = i + 1;
            oArr[i] = o;
            l();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.exoplayer2.decoder.c
    public final /* synthetic */ void a(Object obj) throws DecoderException {
        DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) obj;
        synchronized (this.f20844b) {
            k();
            a.a(decoderInputBuffer == this.i);
            this.f20845c.addLast(decoderInputBuffer);
            l();
            this.i = null;
        }
    }

    @Override // com.google.android.exoplayer2.decoder.c
    public final void c() {
        synchronized (this.f20844b) {
            this.k = true;
            this.m = 0;
            I i = this.i;
            if (i != null) {
                a((g<I, O, E>) i);
                this.i = null;
            }
            while (!this.f20845c.isEmpty()) {
                a((g<I, O, E>) this.f20845c.removeFirst());
            }
            while (!this.f20846d.isEmpty()) {
                this.f20846d.removeFirst().f();
            }
        }
    }

    @Override // com.google.android.exoplayer2.decoder.c
    public final void d() {
        synchronized (this.f20844b) {
            this.l = true;
            this.f20844b.notify();
        }
        try {
            this.f20843a.join();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e() {
        a.b(this.g == this.e.length);
        for (I i : this.e) {
            i.c(1024);
        }
    }

    final boolean f() throws InterruptedException {
        E e;
        synchronized (this.f20844b) {
            while (!this.l && !m()) {
                this.f20844b.wait();
            }
            if (this.l) {
                return false;
            }
            I removeFirst = this.f20845c.removeFirst();
            O[] oArr = this.f;
            int i = this.h - 1;
            this.h = i;
            O o = oArr[i];
            boolean z = this.k;
            this.k = false;
            if (removeFirst.c()) {
                o.a(4);
            } else {
                if (removeFirst.E_()) {
                    o.a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                }
                try {
                    e = a(removeFirst, o, z);
                } catch (OutOfMemoryError e2) {
                    e = a((Throwable) e2);
                } catch (RuntimeException e3) {
                    e = a((Throwable) e3);
                }
                if (e != null) {
                    synchronized (this.f20844b) {
                        this.j = e;
                    }
                    return false;
                }
            }
            synchronized (this.f20844b) {
                if (this.k) {
                    o.f();
                } else if (o.E_()) {
                    this.m++;
                    o.f();
                } else {
                    o.f20842c = this.m;
                    this.m = 0;
                    this.f20846d.addLast(o);
                }
                a((g<I, O, E>) removeFirst);
            }
            return true;
        }
    }

    protected abstract I g();

    protected abstract O h();
}
