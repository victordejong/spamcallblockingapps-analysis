package p193e.p1577m.p1578a.p1596c.p1622m1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.AbstractC24852u;
import p193e.p1577m.p1578a.p1596c.C24286g0;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24568h;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24789n;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24792q;
/* renamed from: e.m.a.c.m1.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/l.class */
public final class C24573l extends AbstractC24852u implements Handler.Callback {

    /* renamed from: l */
    public final Handler f68678l;

    /* renamed from: m */
    public final AbstractC24572k f68679m;

    /* renamed from: n */
    public final AbstractC24568h f68680n;

    /* renamed from: o */
    public final C24286g0 f68681o;

    /* renamed from: p */
    public boolean f68682p;

    /* renamed from: q */
    public boolean f68683q;

    /* renamed from: r */
    public int f68684r;

    /* renamed from: s */
    public Format f68685s;

    /* renamed from: t */
    public AbstractC24566f f68686t;

    /* renamed from: u */
    public C24570i f68687u;

    /* renamed from: v */
    public AbstractC24571j f68688v;

    /* renamed from: w */
    public AbstractC24571j f68689w;

    /* renamed from: x */
    public int f68690x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C24573l(AbstractC24572k abstractC24572k, Looper looper) {
        super(3);
        Handler handler;
        AbstractC24568h abstractC24568h = AbstractC24568h.f68674a;
        Objects.requireNonNull(abstractC24572k);
        this.f68679m = abstractC24572k;
        if (looper == null) {
            handler = null;
        } else {
            int i = C24773d0.f69427a;
            handler = new Handler(looper, this);
        }
        this.f68678l = handler;
        this.f68680n = abstractC24568h;
        this.f68681o = new C24286g0();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: D */
    public void mo4412D(Format[] formatArr, long j) {
        Format format = formatArr[0];
        this.f68685s = format;
        if (this.f68686t != null) {
            this.f68684r = 1;
        } else {
            this.f68686t = ((AbstractC24568h.C24569a) this.f68680n).m4906a(format);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: F */
    public int mo4410F(Format format) {
        Objects.requireNonNull((AbstractC24568h.C24569a) this.f68680n);
        String str = format.f4847i;
        if ("text/vtt".equals(str) || "text/x-ssa".equals(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-subrip".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/cea-608".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/cea-708".equals(str) || "application/dvbsubs".equals(str) || "application/pgs".equals(str)) {
            return (AbstractC24852u.m4409G(null, format.f4850l) ? 4 : 2) | 0 | 0;
        }
        return "text".equals(C24792q.m4570d(format.f4847i)) ? 1 : 0;
    }

    /* renamed from: I */
    public final void m4904I() {
        List<C24562b> emptyList = Collections.emptyList();
        Handler handler = this.f68678l;
        if (handler != null) {
            handler.obtainMessage(0, emptyList).sendToTarget();
        } else {
            this.f68679m.mo4905j(emptyList);
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: J */
    public final long m4903J() {
        char c;
        int i = this.f68690x;
        if (i != -1) {
            AbstractC24565e abstractC24565e = this.f68688v.f68676a;
            Objects.requireNonNull(abstractC24565e);
            if (i < abstractC24565e.mo4812c()) {
                AbstractC24571j abstractC24571j = this.f68688v;
                int i2 = this.f68690x;
                AbstractC24565e abstractC24565e2 = abstractC24571j.f68676a;
                Objects.requireNonNull(abstractC24565e2);
                c = abstractC24565e2.mo4813a(i2) + abstractC24571j.f68677b;
                return c;
            }
        }
        c = 65535;
        return c;
    }

    /* renamed from: K */
    public final void m4902K(C24567g c24567g) {
        StringBuilder m8728C = C22128a.m8728C("Subtitle decoding failed. streamFormat=");
        m8728C.append(this.f68685s);
        C24789n.m4576a(m8728C.toString(), c24567g);
        m4904I();
        if (this.f68684r != 0) {
            m4900M();
            return;
        }
        m4901L();
        this.f68686t.flush();
    }

    /* renamed from: L */
    public final void m4901L() {
        this.f68687u = null;
        this.f68690x = -1;
        AbstractC24571j abstractC24571j = this.f68688v;
        if (abstractC24571j != null) {
            abstractC24571j.release();
            this.f68688v = null;
        }
        AbstractC24571j abstractC24571j2 = this.f68689w;
        if (abstractC24571j2 != null) {
            abstractC24571j2.release();
            this.f68689w = null;
        }
    }

    /* renamed from: M */
    public final void m4900M() {
        m4901L();
        this.f68686t.release();
        this.f68686t = null;
        this.f68684r = 0;
        this.f68686t = ((AbstractC24568h.C24569a) this.f68680n).m4906a(this.f68685s);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: b */
    public boolean mo4400b() {
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: c */
    public boolean mo4399c() {
        return this.f68683q;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            this.f68679m.mo4905j((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Type inference failed for: r0v100, types: [long] */
    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: i */
    public void mo4394i(long j, long j2) {
        boolean z;
        if (this.f68683q) {
            return;
        }
        if (this.f68689w == null) {
            this.f68686t.mo4878b(j);
            try {
                this.f68689w = this.f68686t.mo4877c();
            } catch (C24567g e) {
                m4902K(e);
                return;
            }
        }
        if (this.f69694e != 2) {
            return;
        }
        if (this.f68688v != null) {
            char m4903J = m4903J();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (m4903J > j) {
                    break;
                }
                this.f68690x++;
                m4903J = m4903J();
                z2 = true;
            }
        } else {
            z = false;
        }
        AbstractC24571j abstractC24571j = this.f68689w;
        boolean z3 = z;
        if (abstractC24571j != null) {
            if (abstractC24571j.isEndOfStream()) {
                z3 = z;
                if (!z) {
                    z3 = z;
                    if (m4903J() == RecyclerView.FOREVER_NS) {
                        if (this.f68684r == 2) {
                            m4900M();
                            z3 = z;
                        } else {
                            m4901L();
                            this.f68683q = true;
                            z3 = z;
                        }
                    }
                }
            } else {
                z3 = z;
                if (this.f68689w.timeUs <= j) {
                    AbstractC24571j abstractC24571j2 = this.f68688v;
                    if (abstractC24571j2 != null) {
                        abstractC24571j2.release();
                    }
                    AbstractC24571j abstractC24571j3 = this.f68689w;
                    this.f68688v = abstractC24571j3;
                    this.f68689w = null;
                    AbstractC24565e abstractC24565e = abstractC24571j3.f68676a;
                    Objects.requireNonNull(abstractC24565e);
                    this.f68690x = abstractC24565e.mo4811d(j - abstractC24571j3.f68677b);
                    z3 = true;
                }
            }
        }
        if (z3) {
            AbstractC24571j abstractC24571j4 = this.f68688v;
            AbstractC24565e abstractC24565e2 = abstractC24571j4.f68676a;
            Objects.requireNonNull(abstractC24565e2);
            List<C24562b> mo4810e = abstractC24565e2.mo4810e(j - abstractC24571j4.f68677b);
            Handler handler = this.f68678l;
            if (handler != null) {
                handler.obtainMessage(0, mo4810e).sendToTarget();
            } else {
                this.f68679m.mo4905j(mo4810e);
            }
        }
        if (this.f68684r == 2) {
            return;
        }
        while (!this.f68682p) {
            try {
                if (this.f68687u == null) {
                    C24570i mo4879a = this.f68686t.mo4879a();
                    this.f68687u = mo4879a;
                    if (mo4879a == null) {
                        return;
                    }
                }
                if (this.f68684r == 1) {
                    this.f68687u.setFlags(4);
                    this.f68686t.mo4876d(this.f68687u);
                    this.f68687u = null;
                    this.f68684r = 2;
                    return;
                }
                int m4411E = m4411E(this.f68681o, this.f68687u, false);
                if (m4411E == -4) {
                    if (this.f68687u.isEndOfStream()) {
                        this.f68682p = true;
                    } else {
                        C24570i c24570i = this.f68687u;
                        c24570i.f68675g = this.f68681o.f67334c.f4851m;
                        c24570i.m5328h();
                    }
                    this.f68686t.mo4876d(this.f68687u);
                    this.f68687u = null;
                } else if (m4411E == -3) {
                    return;
                }
            } catch (C24567g e2) {
                m4902K(e2);
                return;
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: x */
    public void mo4404x() {
        this.f68685s = null;
        m4904I();
        m4901L();
        this.f68686t.release();
        this.f68686t = null;
        this.f68684r = 0;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24852u
    /* renamed from: z */
    public void mo4402z(long j, boolean z) {
        this.f68682p = false;
        this.f68683q = false;
        m4904I();
        if (this.f68684r != 0) {
            m4900M();
            return;
        }
        m4901L();
        this.f68686t.flush();
    }
}
