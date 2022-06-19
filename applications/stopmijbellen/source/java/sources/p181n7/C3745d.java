package p181n7;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import com.koushikdutta.async.AsyncSSLException;
import java.net.URL;
import java.util.Locale;
import java.util.Objects;
import p148k7.AbstractC3356j;
import p148k7.AbstractC3360m;
import p148k7.C3343h;
import p159l7.AbstractC3513c;
import p181n7.AbstractC3749g;
import p181n7.C3732a;
import p212q7.AbstractC4165a;
/* renamed from: n7.d */
/* loaded from: classes2-dex2jar.jar:n7/d.class */
public class C3745d extends AbstractC3761j {

    /* renamed from: q */
    public final /* synthetic */ C3732a.C3736d f12166q;

    /* renamed from: r */
    public final /* synthetic */ C3759h f12167r;

    /* renamed from: s */
    public final /* synthetic */ AbstractC4165a f12168s;

    /* renamed from: t */
    public final /* synthetic */ AbstractC3749g.C3756g f12169t;

    /* renamed from: u */
    public final /* synthetic */ int f12170u;

    /* renamed from: v */
    public final /* synthetic */ C3732a f12171v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3745d(C3732a c3732a, C3759h c3759h, C3732a.C3736d c3736d, C3759h c3759h2, AbstractC4165a abstractC4165a, AbstractC3749g.C3756g c3756g, int i) {
        super(c3759h);
        this.f12171v = c3732a;
        this.f12166q = c3736d;
        this.f12167r = c3759h2;
        this.f12168s = abstractC4165a;
        this.f12169t = c3756g;
        this.f12170u = i;
    }

    @Override // p181n7.AbstractC3761j, p148k7.AbstractC3361n
    /* renamed from: n */
    public void mo1262n(Exception exc) {
        if (exc != null) {
            this.f12167r.m1821c("exception during response", exc);
        }
        if (this.f12166q.isCancelled()) {
            return;
        }
        if (exc instanceof AsyncSSLException) {
            this.f12167r.m1821c("SSL Exception", exc);
            Objects.requireNonNull(this.f12167r);
            Objects.requireNonNull((AsyncSSLException) exc);
        }
        AbstractC3356j abstractC3356j = this.f12199j;
        if (abstractC3356j == null) {
            return;
        }
        super.mo1262n(exc);
        if ((!abstractC3356j.isOpen() || exc != null) && this.f12200k == null && exc != null) {
            this.f12171v.m1831e(this.f12166q, exc, null, this.f12167r, this.f12168s);
        }
        this.f12169t.f12183j = exc;
        for (AbstractC3749g abstractC3749g : this.f12171v.f12122a) {
            abstractC3749g.mo1485g(this.f12169t);
        }
    }

    @Override // p148k7.C3367r
    /* renamed from: o */
    public void mo1827o(AbstractC3360m abstractC3360m) {
        this.f12169t.f12176i = abstractC3360m;
        for (AbstractC3749g abstractC3749g : this.f12171v.f12122a) {
            abstractC3749g.mo1486d(this.f12169t);
        }
        super.mo1827o(this.f12169t.f12176i);
        for (AbstractC3749g abstractC3749g2 : this.f12171v.f12122a) {
            final C3759h mo1826a = abstractC3749g2.mo1826a(this.f12169t);
            if (mo1826a != null) {
                C3759h c3759h = this.f12167r;
                mo1826a.f12195l = c3759h.f12195l;
                mo1826a.f12194k = c3759h.f12194k;
                mo1826a.f12193j = c3759h.f12193j;
                mo1826a.f12191h = c3759h.f12191h;
                mo1826a.f12192i = c3759h.f12192i;
                C3732a.m1830f(mo1826a);
                this.f12167r.m1820d("Response intercepted by middleware");
                mo1826a.m1820d("Request initiated by middleware intercept by middleware");
                C3343h c3343h = this.f12171v.f12125d;
                final int i = this.f12170u;
                final C3732a.C3736d c3736d = this.f12166q;
                final AbstractC4165a abstractC4165a = this.f12168s;
                c3343h.m2357i(new Runnable() { // from class: n7.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3745d c3745d = C3745d.this;
                        c3745d.f12171v.m1833c(mo1826a, i, c3736d, abstractC4165a);
                    }
                }, 0L);
                this.f11385c = new AbstractC3513c.C3514a();
                return;
            }
        }
        C3782w c3782w = this.f12200k;
        int i2 = this.f12202m;
        if ((i2 != 301 && i2 != 302 && i2 != 307) || !this.f12167r.f12188e) {
            C3759h c3759h2 = this.f12167r;
            StringBuilder m8752j = C0082b.m8752j("Final (post cache response) headers:\n");
            m8752j.append(toString());
            c3759h2.m1819e(m8752j.toString());
            this.f12171v.m1831e(this.f12166q, null, this, this.f12167r, this.f12168s);
            return;
        }
        String m1829a = c3782w.f12257a.m1829a("Location".toLowerCase(Locale.US));
        try {
            Uri parse = Uri.parse(m1829a);
            Uri uri = parse;
            if (parse.getScheme() == null) {
                uri = Uri.parse(new URL(new URL(this.f12167r.f12186c.toString()), m1829a).toString());
            }
            String str = "HEAD";
            if (!this.f12167r.f12185b.equals("HEAD")) {
                str = "GET";
            }
            final C3759h c3759h3 = new C3759h(uri, str, null);
            C3759h c3759h4 = this.f12167r;
            c3759h3.f12195l = c3759h4.f12195l;
            c3759h3.f12194k = c3759h4.f12194k;
            c3759h3.f12193j = c3759h4.f12193j;
            c3759h3.f12191h = c3759h4.f12191h;
            c3759h3.f12192i = c3759h4.f12192i;
            C3732a.m1830f(c3759h3);
            C3732a.m1834b(this.f12167r, c3759h3, "User-Agent");
            C3732a.m1834b(this.f12167r, c3759h3, "Range");
            this.f12167r.m1820d("Redirecting");
            c3759h3.m1820d("Redirected");
            C3343h c3343h2 = this.f12171v.f12125d;
            final int i3 = this.f12170u;
            final C3732a.C3736d c3736d2 = this.f12166q;
            final AbstractC4165a abstractC4165a2 = this.f12168s;
            c3343h2.m2357i(new Runnable() { // from class: n7.c
                @Override // java.lang.Runnable
                public final void run() {
                    C3745d c3745d = C3745d.this;
                    C3759h c3759h5 = c3759h3;
                    int i4 = i3;
                    c3745d.f12171v.m1833c(c3759h5, i4 + 1, c3736d2, abstractC4165a2);
                }
            }, 0L);
            this.f11385c = new AbstractC3513c.C3514a();
        } catch (Exception e) {
            this.f12171v.m1831e(this.f12166q, e, this, this.f12167r, this.f12168s);
        }
    }

    @Override // p181n7.AbstractC3761j
    /* renamed from: p */
    public void mo1817p(Exception exc) {
        if (exc != null) {
            this.f12171v.m1831e(this.f12166q, exc, null, this.f12167r, this.f12168s);
            return;
        }
        this.f12167r.m1819e("request completed");
        if (this.f12166q.isCancelled()) {
            return;
        }
        C3732a.C3736d c3736d = this.f12166q;
        if (c3736d.f12145l != null && this.f12200k == null) {
            c3736d.f12144k.cancel();
            C3732a.C3736d c3736d2 = this.f12166q;
            c3736d2.f12144k = this.f12171v.f12125d.m2357i(c3736d2.f12145l, this.f12167r.f12190g);
        }
        for (AbstractC3749g abstractC3749g : this.f12171v.f12122a) {
            abstractC3749g.mo1796e(this.f12169t);
        }
    }
}
