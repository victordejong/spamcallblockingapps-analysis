package p193e.p1577m.p1578a.p1596c.p1618j1;

import android.net.Uri;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import p193e.p1577m.p1578a.p1596c.p1618j1.AbstractC24494j;
import p193e.p1577m.p1578a.p1596c.p1618j1.C24486g;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24742n;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24717k;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24703a;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24711f;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24719m;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24800v;
/* renamed from: e.m.a.c.j1.m */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/j1/m.class */
public final class C24498m implements AbstractC24494j {

    /* renamed from: a */
    public final C24742n f68407a;

    /* renamed from: b */
    public final AbstractC24705c f68408b;

    /* renamed from: c */
    public final C24711f f68409c;

    /* renamed from: d */
    public final AbstractC24717k f68410d;

    /* renamed from: e */
    public final C24800v f68411e;

    /* renamed from: f */
    public final AtomicBoolean f68412f;

    /* renamed from: e.m.a.c.j1.m$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/j1/m$a.class */
    public static final class C24499a implements C24719m.AbstractC24720a {

        /* renamed from: a */
        public final AbstractC24494j.AbstractC24495a f68413a;

        public C24499a(AbstractC24494j.AbstractC24495a abstractC24495a) {
            this.f68413a = abstractC24495a;
        }

        /* renamed from: a */
        public void m4999a(long j, long j2, long j3) {
            float f = (j == -1 || j == 0) ? -1.0f : (((float) j2) * 100.0f) / ((float) j);
            C24486g.C24491e c24491e = (C24486g.C24491e) this.f68413a;
            C24493i c24493i = c24491e.f68394c;
            c24493i.f68401a = j2;
            c24493i.f68402b = f;
            if (j != c24491e.f68400i) {
                c24491e.f68400i = j;
                C24486g.HandlerC24489c handlerC24489c = c24491e.f68397f;
                if (handlerC24489c == null) {
                    return;
                }
                handlerC24489c.obtainMessage(10, c24491e).sendToTarget();
            }
        }
    }

    public C24498m(Uri uri, String str, C24496k c24496k) {
        this.f68407a = new C24742n(uri, 0L, 0L, -1L, str, 4);
        this.f68408b = c24496k.f68403a;
        this.f68409c = c24496k.f68406d.mo4656a();
        C24703a c24703a = c24496k.f68404b;
        if (c24703a == null) {
            int i = C24719m.f69272a;
            c24703a = C24703a.f69216a;
        }
        this.f68410d = c24703a;
        C24800v c24800v = c24496k.f68405c;
        this.f68411e = c24800v == null ? new C24800v() : c24800v;
        this.f68412f = new AtomicBoolean();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1618j1.AbstractC24494j
    /* renamed from: a */
    public void mo5000a(AbstractC24494j.AbstractC24495a abstractC24495a) throws InterruptedException, IOException {
        this.f68411e.m4509a(-1000);
        try {
            C24719m.m4749a(this.f68407a, this.f68408b, this.f68410d, this.f68409c, new byte[131072], this.f68411e, -1000, new C24499a(abstractC24495a), this.f68412f, true);
        } finally {
            this.f68411e.m4508b(-1000);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1618j1.AbstractC24494j
    public void cancel() {
        this.f68412f.set(true);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1618j1.AbstractC24494j
    public void remove() {
        C24742n c24742n = this.f68407a;
        AbstractC24705c abstractC24705c = this.f68408b;
        int i = C24719m.f69272a;
        String str = c24742n.f69335h;
        if (str == null) {
            str = c24742n.f69328a.toString();
        }
        C24719m.m4746d(abstractC24705c, str);
    }
}
