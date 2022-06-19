package p293y2;

import android.content.Context;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import p004a3.AbstractC0011a;
import p018b3.AbstractC0721a;
import p134j4.C3260w0;
import p250u2.AbstractC4469i;
import p261v2.AbstractC4592e;
import p261v2.AbstractC4594g;
import p261v2.AbstractC4599k;
import p261v2.C4587a;
import p303z2.AbstractC5039c;
import p303z2.AbstractC5047h;
/* renamed from: y2.n */
/* loaded from: classes-dex2jar.jar:y2/n.class */
public class C4997n {

    /* renamed from: a */
    public final Context f15220a;

    /* renamed from: b */
    public final AbstractC4592e f15221b;

    /* renamed from: c */
    public final AbstractC5039c f15222c;

    /* renamed from: d */
    public final AbstractC5003t f15223d;

    /* renamed from: e */
    public final Executor f15224e;

    /* renamed from: f */
    public final AbstractC0011a f15225f;

    /* renamed from: g */
    public final AbstractC0721a f15226g;

    public C4997n(Context context, AbstractC4592e abstractC4592e, AbstractC5039c abstractC5039c, AbstractC5003t abstractC5003t, Executor executor, AbstractC0011a abstractC0011a, AbstractC0721a abstractC0721a) {
        this.f15220a = context;
        this.f15221b = abstractC4592e;
        this.f15222c = abstractC5039c;
        this.f15223d = abstractC5003t;
        this.f15224e = executor;
        this.f15225f = abstractC0011a;
        this.f15226g = abstractC0721a;
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* renamed from: a */
    public void m153a(final AbstractC4469i abstractC4469i, int i) {
        AbstractC4594g abstractC4594g;
        AbstractC4599k mo741a = this.f15221b.mo741a(abstractC4469i.mo892b());
        char c = 0;
        while (((Boolean) this.f15225f.mo90d(new C4996m(this, abstractC4469i, 0))).booleanValue()) {
            final Iterable<AbstractC5047h> iterable = (Iterable) this.f15225f.mo90d(new C4989f(this, abstractC4469i));
            if (!iterable.iterator().hasNext()) {
                return;
            }
            if (mo741a == null) {
                C3260w0.m2480e("Uploader", "Unknown backend for %s, deleting event batch for it...", abstractC4469i);
                abstractC4594g = AbstractC4594g.m748a();
            } else {
                ArrayList arrayList = new ArrayList();
                for (AbstractC5047h abstractC5047h : iterable) {
                    arrayList.add(abstractC5047h.mo110a());
                }
                abstractC4594g = mo741a.mo739a(new C4587a(arrayList, abstractC4469i.mo891c(), null));
            }
            if (abstractC4594g.mo746c() == 2) {
                final char c2 = c;
                this.f15225f.mo90d(new AbstractC0011a.AbstractC0012a() { // from class: y2.h
                    @Override // p004a3.AbstractC0011a.AbstractC0012a
                    /* renamed from: e */
                    public final Object mo149e() {
                        C4997n c4997n = C4997n.this;
                        Iterable<AbstractC5047h> iterable2 = iterable;
                        AbstractC4469i abstractC4469i2 = abstractC4469i;
                        long j = c2;
                        c4997n.f15222c.mo94M(iterable2);
                        c4997n.f15222c.mo93N(abstractC4469i2, c4997n.f15226g.mo7430a() + j);
                        return null;
                    }
                });
                this.f15223d.mo146b(abstractC4469i, i + 1, true);
                return;
            }
            this.f15225f.mo90d(new C4994k(this, iterable, 0));
            if (abstractC4594g.mo746c() == 1) {
                c = Math.max((long) c, abstractC4594g.mo747b());
            }
        }
        final char c3 = c;
        this.f15225f.mo90d(new AbstractC0011a.AbstractC0012a() { // from class: y2.j
            @Override // p004a3.AbstractC0011a.AbstractC0012a
            /* renamed from: e */
            public final Object mo149e() {
                C4997n c4997n = C4997n.this;
                c4997n.f15222c.mo93N(abstractC4469i, c4997n.f15226g.mo7430a() + c3);
                return null;
            }
        });
    }
}
