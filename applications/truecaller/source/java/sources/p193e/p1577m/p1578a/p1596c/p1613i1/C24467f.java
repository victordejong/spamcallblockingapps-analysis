package p193e.p1577m.p1578a.p1596c.p1613i1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.AbstractC24852u;
import p193e.p1577m.p1578a.p1596c.C24286g0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.i1.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/i1/f.class */
public final class C24467f extends AbstractC24852u implements Handler.Callback {

    /* renamed from: l */
    public final AbstractC24463c f68303l;

    /* renamed from: m */
    public final AbstractC24466e f68304m;

    /* renamed from: n */
    public final Handler f68305n;

    /* renamed from: o */
    public final C24465d f68306o;

    /* renamed from: p */
    public final Metadata[] f68307p;

    /* renamed from: q */
    public final long[] f68308q;

    /* renamed from: r */
    public int f68309r;

    /* renamed from: s */
    public int f68310s;

    /* renamed from: t */
    public AbstractC24462b f68311t;

    /* renamed from: u */
    public boolean f68312u;

    /* renamed from: v */
    public long f68313v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C24467f(AbstractC24466e abstractC24466e, Looper looper) {
        super(4);
        Handler handler;
        AbstractC24463c abstractC24463c = AbstractC24463c.f68301a;
        Objects.requireNonNull(abstractC24466e);
        this.f68304m = abstractC24466e;
        if (looper == null) {
            handler = null;
        } else {
            int i = C24773d0.f69427a;
            handler = new Handler(looper, this);
        }
        this.f68305n = handler;
        this.f68303l = abstractC24463c;
        this.f68306o = new C24465d();
        this.f68307p = new Metadata[5];
        this.f68308q = new long[5];
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: D */
    public void mo4412D(Format[] formatArr, long j) {
        this.f68311t = this.f68303l.mo5072b(formatArr[0]);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: F */
    public int mo4410F(Format format) {
        if (this.f68303l.mo5073a(format)) {
            return (AbstractC24852u.m4409G(null, format.f4850l) ? 4 : 2) | 0 | 0;
        }
        return 0;
    }

    /* renamed from: I */
    public final void m5070I(Metadata metadata, List<Metadata.Entry> list) {
        int i = 0;
        while (true) {
            Metadata.Entry[] entryArr = metadata.f4888a;
            if (i < entryArr.length) {
                Format mo39237q = entryArr[i].mo39237q();
                if (mo39237q == null || !this.f68303l.mo5073a(mo39237q)) {
                    list.add(metadata.f4888a[i]);
                } else {
                    AbstractC24462b mo5072b = this.f68303l.mo5072b(mo39237q);
                    byte[] mo39238j = metadata.f4888a[i].mo39238j();
                    Objects.requireNonNull(mo39238j);
                    this.f68306o.clear();
                    this.f68306o.m5329g(mo39238j.length);
                    ByteBuffer byteBuffer = this.f68306o.f67301b;
                    int i2 = C24773d0.f69427a;
                    byteBuffer.put(mo39238j);
                    this.f68306o.m5328h();
                    Metadata mo5044a = mo5072b.mo5044a(this.f68306o);
                    if (mo5044a != null) {
                        m5070I(mo5044a, list);
                    }
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: b */
    public boolean mo4400b() {
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: c */
    public boolean mo4399c() {
        return this.f68312u;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            this.f68304m.mo5071m((Metadata) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: i */
    public void mo4394i(long j, long j2) {
        if (!this.f68312u && this.f68310s < 5) {
            this.f68306o.clear();
            C24286g0 m4405w = m4405w();
            int m4411E = m4411E(m4405w, this.f68306o, false);
            if (m4411E == -4) {
                if (this.f68306o.isEndOfStream()) {
                    this.f68312u = true;
                } else if (!this.f68306o.isDecodeOnly()) {
                    C24465d c24465d = this.f68306o;
                    c24465d.f68302g = this.f68313v;
                    c24465d.m5328h();
                    AbstractC24462b abstractC24462b = this.f68311t;
                    int i = C24773d0.f69427a;
                    Metadata mo5044a = abstractC24462b.mo5044a(this.f68306o);
                    if (mo5044a != null) {
                        ArrayList arrayList = new ArrayList(mo5044a.f4888a.length);
                        m5070I(mo5044a, arrayList);
                        if (!arrayList.isEmpty()) {
                            Metadata metadata = new Metadata(arrayList);
                            int i2 = this.f68309r;
                            int i3 = this.f68310s;
                            int i4 = (i2 + i3) % 5;
                            this.f68307p[i4] = metadata;
                            this.f68308q[i4] = this.f68306o.f67303d;
                            this.f68310s = i3 + 1;
                        }
                    }
                }
            } else if (m4411E == -5) {
                Format format = m4405w.f67334c;
                Objects.requireNonNull(format);
                this.f68313v = format.f4851m;
            }
        }
        if (this.f68310s > 0) {
            long[] jArr = this.f68308q;
            int i5 = this.f68309r;
            if (jArr[i5] > j) {
                return;
            }
            Metadata metadata2 = this.f68307p[i5];
            int i6 = C24773d0.f69427a;
            Handler handler = this.f68305n;
            if (handler != null) {
                handler.obtainMessage(0, metadata2).sendToTarget();
            } else {
                this.f68304m.mo5071m(metadata2);
            }
            Metadata[] metadataArr = this.f68307p;
            int i7 = this.f68309r;
            metadataArr[i7] = null;
            this.f68309r = (i7 + 1) % 5;
            this.f68310s--;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: x */
    public void mo4404x() {
        Arrays.fill(this.f68307p, (Object) null);
        this.f68309r = 0;
        this.f68310s = 0;
        this.f68311t = null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: z */
    public void mo4402z(long j, boolean z) {
        Arrays.fill(this.f68307p, (Object) null);
        this.f68309r = 0;
        this.f68310s = 0;
        this.f68312u = false;
    }
}
