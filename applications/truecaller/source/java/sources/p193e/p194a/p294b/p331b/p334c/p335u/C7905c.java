package p193e.p194a.p294b.p331b.p334c.p335u;

import android.content.Context;
import android.location.Geocoder;
import com.razorpay.AnalyticsConstants;
import e.m.e.k;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.p1060m4.p1061c.AbstractC18204c;
import p193e.p194a.p1060m4.p1061c.AbstractC18218f;
import p193e.p194a.p1060m4.p1061c.C18205d;
import p193e.p194a.p1060m4.p1061c.C18219g;
import p193e.p194a.p1129p5.AbstractC19251o0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19496e;
import p193e.p194a.p294b.p331b.p334c.AbstractC7877d;
import p193e.p194a.p294b.p331b.p334c.C7901s;
import p193e.p194a.p294b.p354l.AbstractC8018a;
import p193e.p194a.p294b.p354l.AbstractC8024f;
import p193e.p194a.p294b.p354l.AbstractC8027h;
import p193e.p194a.p294b.p354l.AbstractC8040o;
import p193e.p194a.p294b.p354l.C8019b;
import p193e.p194a.p294b.p354l.C8025g;
import p193e.p194a.p294b.p354l.C8028i;
import p193e.p194a.p294b.p354l.C8041p;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p677d3.AbstractC12582a;
import p193e.p194a.p798g5.AbstractC14460a0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.b.c.u.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/c/u/c.class */
public final class C7905c implements AbstractC7903a {

    /* renamed from: a */
    public final AbstractC8412c f24504a;

    /* renamed from: b */
    public final AbstractC19496e f24505b;

    /* renamed from: c */
    public final C7904b f24506c;

    /* renamed from: d */
    public final AbstractC14460a0 f24507d;

    /* renamed from: e */
    public final AbstractC12582a f24508e;

    /* renamed from: f */
    public final AbstractC19251o0 f24509f;

    /* renamed from: g */
    public final C7905c f24510g = this;

    /* renamed from: h */
    public Provider<C8025g> f24511h;

    /* renamed from: i */
    public Provider<AbstractC8024f> f24512i;

    /* renamed from: j */
    public Provider<C18219g> f24513j;

    /* renamed from: k */
    public Provider<AbstractC18218f> f24514k;

    /* renamed from: l */
    public Provider<C18205d> f24515l;

    /* renamed from: m */
    public Provider<AbstractC18204c> f24516m;

    /* renamed from: n */
    public Provider<k> f24517n;

    /* renamed from: o */
    public Provider<C8028i> f24518o;

    /* renamed from: p */
    public Provider<AbstractC8027h> f24519p;

    /* renamed from: q */
    public Provider<Geocoder> f24520q;

    /* renamed from: r */
    public Provider<C8019b> f24521r;

    /* renamed from: s */
    public Provider<AbstractC8018a> f24522s;

    /* renamed from: t */
    public Provider<C7901s> f24523t;

    /* renamed from: u */
    public Provider<AbstractC7877d> f24524u;

    /* renamed from: v */
    public Provider<C8041p> f24525v;

    /* renamed from: w */
    public Provider<AbstractC8040o> f24526w;

    /* renamed from: e.a.b.b.c.u.c$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/c/u/c$b.class */
    public static final class C7907b<T> implements Provider<T> {

        /* renamed from: a */
        public final C7905c f24527a;

        /* renamed from: b */
        public final int f24528b;

        public C7907b(C7905c c7905c, int i) {
            this.f24527a = c7905c;
            this.f24528b = i;
        }

        public T get() {
            switch (this.f24528b) {
                case 0:
                    C7905c c7905c = this.f24527a;
                    AbstractC8024f abstractC8024f = (AbstractC8024f) c7905c.f24512i.get();
                    AbstractC18204c abstractC18204c = (AbstractC18204c) c7905c.f24516m.get();
                    AbstractC8541a mo12420d = c7905c.f24504a.mo12420d();
                    Objects.requireNonNull(mo12420d, "Cannot return null from a non-@Nullable component method");
                    AbstractC8438a mo12484Y = c7905c.f24504a.mo12484Y();
                    Objects.requireNonNull(mo12484Y, "Cannot return null from a non-@Nullable component method");
                    k kVar = (k) c7905c.f24517n.get();
                    f mo12793B1 = c7905c.f24504a.mo12793B1();
                    Objects.requireNonNull(mo12793B1, "Cannot return null from a non-@Nullable component method");
                    return (T) new C8028i(abstractC8024f, abstractC18204c, mo12420d, mo12484Y, kVar, mo12793B1);
                case 1:
                    return (T) new C8025g();
                case 2:
                    C7905c c7905c2 = this.f24527a;
                    AbstractC18218f abstractC18218f = (AbstractC18218f) c7905c2.f24514k.get();
                    f mo12793B12 = c7905c2.f24504a.mo12793B1();
                    Objects.requireNonNull(mo12793B12, "Cannot return null from a non-@Nullable component method");
                    return (T) new C18205d(abstractC18218f, mo12793B12);
                case 3:
                    return (T) new C18219g();
                case 4:
                    Objects.requireNonNull(this.f24527a.f24506c);
                    return (T) new k();
                case 5:
                    C7905c c7905c3 = this.f24527a;
                    Context mo12335j = c7905c3.f24504a.mo12335j();
                    Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
                    Geocoder geocoder = (Geocoder) c7905c3.f24520q.get();
                    f mo12606P = c7905c3.f24504a.mo12606P();
                    Objects.requireNonNull(mo12606P, "Cannot return null from a non-@Nullable component method");
                    return (T) new C8019b(mo12335j, geocoder, mo12606P);
                case 6:
                    C7905c c7905c4 = this.f24527a;
                    C7904b c7904b = c7905c4.f24506c;
                    Context mo12335j2 = c7905c4.f24504a.mo12335j();
                    Objects.requireNonNull(mo12335j2, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c7904b);
                    l.e(mo12335j2, AnalyticsConstants.CONTEXT);
                    return (T) new Geocoder(mo12335j2, Locale.getDefault());
                case 7:
                    AbstractC19462a mo12776C4 = this.f24527a.f24505b.mo12776C4();
                    Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
                    return (T) new C7901s(mo12776C4);
                case 8:
                    return (T) new C8041p();
                default:
                    throw new AssertionError(this.f24528b);
            }
        }
    }

    public C7905c(C7904b c7904b, AbstractC8412c abstractC8412c, AbstractC19251o0 abstractC19251o0, AbstractC19496e abstractC19496e, AbstractC12582a abstractC12582a, AbstractC14460a0 abstractC14460a0, C7906a c7906a) {
        this.f24504a = abstractC8412c;
        this.f24505b = abstractC19496e;
        this.f24506c = c7904b;
        this.f24507d = abstractC14460a0;
        this.f24508e = abstractC12582a;
        this.f24509f = abstractC19251o0;
        C7907b c7907b = new C7907b(this, 1);
        this.f24511h = c7907b;
        this.f24512i = b.b(c7907b);
        C7907b c7907b2 = new C7907b(this, 3);
        this.f24513j = c7907b2;
        this.f24514k = b.b(c7907b2);
        C7907b c7907b3 = new C7907b(this, 2);
        this.f24515l = c7907b3;
        this.f24516m = b.b(c7907b3);
        Provider c7907b4 = new C7907b(this, 4);
        this.f24517n = !(c7907b4 instanceof b) ? new b(c7907b4) : c7907b4;
        C7907b c7907b5 = new C7907b(this, 0);
        this.f24518o = c7907b5;
        this.f24519p = b.b(c7907b5);
        Provider c7907b6 = new C7907b(this, 6);
        this.f24520q = !(c7907b6 instanceof b) ? new b(c7907b6) : c7907b6;
        C7907b c7907b7 = new C7907b(this, 5);
        this.f24521r = c7907b7;
        this.f24522s = b.b(c7907b7);
        C7907b c7907b8 = new C7907b(this, 7);
        this.f24523t = c7907b8;
        this.f24524u = b.b(c7907b8);
        C7907b c7907b9 = new C7907b(this, 8);
        this.f24525v = c7907b9;
        this.f24526w = b.b(c7907b9);
    }
}
