package com.google.android.exoplayer2.decoder;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.decoder.AbstractC10936f;
import com.google.android.exoplayer2.decoder.DecoderException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.util.C11593a;
import java.util.ArrayDeque;
/* renamed from: com.google.android.exoplayer2.decoder.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/g.class */
public abstract class AbstractC10938g<I extends DecoderInputBuffer, O extends AbstractC10936f, E extends DecoderException> implements AbstractC10933c<I, O, E> {

    /* renamed from: a */
    private final Thread f35375a;

    /* renamed from: b */
    private final Object f35376b = new Object();

    /* renamed from: c */
    private final ArrayDeque<I> f35377c = new ArrayDeque<>();

    /* renamed from: d */
    private final ArrayDeque<O> f35378d = new ArrayDeque<>();

    /* renamed from: e */
    private final I[] f35379e;

    /* renamed from: f */
    private final O[] f35380f;

    /* renamed from: g */
    private int f35381g;

    /* renamed from: h */
    private int f35382h;

    /* renamed from: i */
    private I f35383i;

    /* renamed from: j */
    private E f35384j;

    /* renamed from: k */
    private boolean f35385k;

    /* renamed from: l */
    private boolean f35386l;

    /* renamed from: m */
    private int f35387m;

    public AbstractC10938g(I[] iArr, O[] oArr) {
        this.f35379e = iArr;
        this.f35381g = iArr.length;
        for (int i = 0; i < this.f35381g; i++) {
            this.f35379e[i] = mo20727g();
        }
        this.f35380f = oArr;
        this.f35382h = oArr.length;
        for (int i2 = 0; i2 < this.f35382h; i2++) {
            this.f35380f[i2] = mo20726h();
        }
        Thread thread = new Thread("ExoPlayer:SimpleDecoder") { // from class: com.google.android.exoplayer2.decoder.g.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                do {
                    try {
                    } catch (InterruptedException e) {
                        throw new IllegalStateException(e);
                    }
                } while (AbstractC10938g.this.m21910f());
            }
        };
        this.f35375a = thread;
        thread.start();
    }

    /* renamed from: a */
    private void m21913a(I i) {
        i.mo20663a();
        I[] iArr = this.f35379e;
        int i2 = this.f35381g;
        this.f35381g = i2 + 1;
        iArr[i2] = i;
    }

    /* renamed from: i */
    public I mo20761a() throws DecoderException {
        I i;
        synchronized (this.f35376b) {
            m21907k();
            C11593a.m20019b(this.f35383i == null);
            int i2 = this.f35381g;
            if (i2 == 0) {
                i = null;
            } else {
                I[] iArr = this.f35379e;
                int i3 = i2 - 1;
                this.f35381g = i3;
                i = iArr[i3];
            }
            this.f35383i = i;
        }
        return i;
    }

    /* renamed from: j */
    public O mo20756b() throws DecoderException {
        synchronized (this.f35376b) {
            m21907k();
            if (this.f35378d.isEmpty()) {
                return null;
            }
            return this.f35378d.removeFirst();
        }
    }

    /* renamed from: k */
    private void m21907k() throws DecoderException {
        E e = this.f35384j;
        if (e == null) {
            return;
        }
        throw e;
    }

    /* renamed from: l */
    private void m21906l() {
        if (m21905m()) {
            this.f35376b.notify();
        }
    }

    /* renamed from: m */
    private boolean m21905m() {
        return !this.f35377c.isEmpty() && this.f35382h > 0;
    }

    /* renamed from: a */
    protected abstract E mo20730a(I i, O o, boolean z);

    /* renamed from: a */
    protected abstract E mo20728a(Throwable th);

    /* renamed from: a */
    public void m21912a(O o) {
        synchronized (this.f35376b) {
            o.mo20663a();
            O[] oArr = this.f35380f;
            int i = this.f35382h;
            this.f35382h = i + 1;
            oArr[i] = o;
            m21906l();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.exoplayer2.decoder.AbstractC10933c
    /* renamed from: a */
    public final /* synthetic */ void mo20757a(Object obj) throws DecoderException {
        DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) obj;
        synchronized (this.f35376b) {
            m21907k();
            C11593a.m20022a(decoderInputBuffer == this.f35383i);
            this.f35377c.addLast(decoderInputBuffer);
            m21906l();
            this.f35383i = null;
        }
    }

    @Override // com.google.android.exoplayer2.decoder.AbstractC10933c
    /* renamed from: c */
    public final void mo20754c() {
        synchronized (this.f35376b) {
            this.f35385k = true;
            this.f35387m = 0;
            I i = this.f35383i;
            if (i != null) {
                m21913a((AbstractC10938g<I, O, E>) i);
                this.f35383i = null;
            }
            while (!this.f35377c.isEmpty()) {
                m21913a((AbstractC10938g<I, O, E>) this.f35377c.removeFirst());
            }
            while (!this.f35378d.isEmpty()) {
                this.f35378d.removeFirst().mo19678f();
            }
        }
    }

    @Override // com.google.android.exoplayer2.decoder.AbstractC10933c
    /* renamed from: d */
    public final void mo20753d() {
        synchronized (this.f35376b) {
            this.f35386l = true;
            this.f35376b.notify();
        }
        try {
            this.f35375a.join();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    /* renamed from: e */
    public final void m21911e() {
        C11593a.m20019b(this.f35381g == this.f35379e.length);
        for (I i : this.f35379e) {
            i.m21925c(1024);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v58, types: [com.google.android.exoplayer2.decoder.DecoderException] */
    /* JADX WARN: Type inference failed for: r0v60, types: [com.google.android.exoplayer2.decoder.DecoderException] */
    /* JADX WARN: Type inference failed for: r0v62, types: [com.google.android.exoplayer2.decoder.DecoderException] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.exoplayer2.decoder.g, com.google.android.exoplayer2.decoder.g<I extends com.google.android.exoplayer2.decoder.DecoderInputBuffer, O extends com.google.android.exoplayer2.decoder.f, E extends com.google.android.exoplayer2.decoder.DecoderException>] */
    /* renamed from: f */
    final boolean m21910f() throws InterruptedException {
        E e;
        synchronized (this.f35376b) {
            while (!this.f35386l && !m21905m()) {
                this.f35376b.wait();
            }
            if (this.f35386l) {
                return false;
            }
            I removeFirst = this.f35377c.removeFirst();
            O[] oArr = this.f35380f;
            int i = this.f35382h - 1;
            this.f35382h = i;
            O o = oArr[i];
            boolean z = this.f35385k;
            this.f35385k = false;
            if (removeFirst.m21917c()) {
                o.m21919a(4);
            } else {
                if (removeFirst.m21920E_()) {
                    o.m21919a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                }
                try {
                    e = mo20730a(removeFirst, o, z);
                } catch (OutOfMemoryError e2) {
                    e = mo20728a(e2);
                } catch (RuntimeException e3) {
                    e = mo20728a(e3);
                }
                if (e != null) {
                    synchronized (this.f35376b) {
                        this.f35384j = e;
                    }
                    return false;
                }
            }
            synchronized (this.f35376b) {
                if (this.f35385k) {
                    o.mo19678f();
                } else if (o.m21920E_()) {
                    this.f35387m++;
                    o.mo19678f();
                } else {
                    o.f35374c = this.f35387m;
                    this.f35387m = 0;
                    this.f35378d.addLast(o);
                }
                m21913a(removeFirst);
            }
            return true;
        }
    }

    /* renamed from: g */
    protected abstract I mo20727g();

    /* renamed from: h */
    protected abstract O mo20726h();
}
