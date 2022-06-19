package p193e.p194a.p1365y.p1366a.p1377j;

import com.google.firebase.messaging.FirebaseMessaging;
import e.m.e.k;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1365y.p1381b.AbstractC21593a;
import p193e.p194a.p1365y.p1381b.AbstractC21597c;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p1365y.p1381b.AbstractC21614m;
import p193e.p194a.p1365y.p1381b.AbstractC21624u;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1381b.AbstractC21629z;
import p193e.p194a.p1365y.p1382c.AbstractC21644k;
import p193e.p194a.p1365y.p1387e.C21733i;
import p193e.p194a.p1365y.p1391i.C21751a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.y.a.j.s */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/j/s.class */
public final class C21570s implements Object<AbstractC21571t> {

    /* renamed from: a */
    public final C21567p f60168a;

    /* renamed from: b */
    public final Provider<f> f60169b;

    /* renamed from: c */
    public final Provider<FirebaseMessaging> f60170c;

    /* renamed from: d */
    public final Provider<AbstractC21629z<C21733i>> f60171d;

    /* renamed from: e */
    public final Provider<AbstractC21626w> f60172e;

    /* renamed from: f */
    public final Provider<AbstractC21606g0> f60173f;

    /* renamed from: g */
    public final Provider<AbstractC21603f> f60174g;

    /* renamed from: h */
    public final Provider<AbstractC21597c> f60175h;

    /* renamed from: i */
    public final Provider<AbstractC21593a> f60176i;

    /* renamed from: j */
    public final Provider<C21751a> f60177j;

    /* renamed from: k */
    public final Provider<AbstractC21624u> f60178k;

    /* renamed from: l */
    public final Provider<k> f60179l;

    /* renamed from: m */
    public final Provider<AbstractC21644k> f60180m;

    /* renamed from: n */
    public final Provider<AbstractC21614m> f60181n;

    /* renamed from: o */
    public final Provider<AbstractC19219a0> f60182o;

    /* renamed from: p */
    public final Provider<AbstractC8541a> f60183p;

    public C21570s(C21567p c21567p, Provider<f> provider, Provider<FirebaseMessaging> provider2, Provider<AbstractC21629z<C21733i>> provider3, Provider<AbstractC21626w> provider4, Provider<AbstractC21606g0> provider5, Provider<AbstractC21603f> provider6, Provider<AbstractC21597c> provider7, Provider<AbstractC21593a> provider8, Provider<C21751a> provider9, Provider<AbstractC21624u> provider10, Provider<k> provider11, Provider<AbstractC21644k> provider12, Provider<AbstractC21614m> provider13, Provider<AbstractC19219a0> provider14, Provider<AbstractC8541a> provider15) {
        this.f60168a = c21567p;
        this.f60169b = provider;
        this.f60170c = provider2;
        this.f60171d = provider3;
        this.f60172e = provider4;
        this.f60173f = provider5;
        this.f60174g = provider6;
        this.f60175h = provider7;
        this.f60176i = provider8;
        this.f60177j = provider9;
        this.f60178k = provider10;
        this.f60179l = provider11;
        this.f60180m = provider12;
        this.f60181n = provider13;
        this.f60182o = provider14;
        this.f60183p = provider15;
    }

    public Object get() {
        C21567p c21567p = this.f60168a;
        f fVar = (f) this.f60169b.get();
        FirebaseMessaging firebaseMessaging = (FirebaseMessaging) this.f60170c.get();
        AbstractC21629z abstractC21629z = (AbstractC21629z) this.f60171d.get();
        AbstractC21626w abstractC21626w = (AbstractC21626w) this.f60172e.get();
        AbstractC21606g0 abstractC21606g0 = (AbstractC21606g0) this.f60173f.get();
        AbstractC21603f abstractC21603f = (AbstractC21603f) this.f60174g.get();
        AbstractC21597c abstractC21597c = (AbstractC21597c) this.f60175h.get();
        AbstractC21593a abstractC21593a = (AbstractC21593a) this.f60176i.get();
        C21751a c21751a = (C21751a) this.f60177j.get();
        AbstractC21624u abstractC21624u = (AbstractC21624u) this.f60178k.get();
        k kVar = (k) this.f60179l.get();
        AbstractC21644k abstractC21644k = (AbstractC21644k) this.f60180m.get();
        AbstractC21614m abstractC21614m = (AbstractC21614m) this.f60181n.get();
        AbstractC19219a0 abstractC19219a0 = (AbstractC19219a0) this.f60182o.get();
        AbstractC8541a abstractC8541a = (AbstractC8541a) this.f60183p.get();
        Objects.requireNonNull(c21567p);
        l.e(fVar, "uiContext");
        l.e(firebaseMessaging, "messaging");
        l.e(abstractC21629z, "recentEmojiManager");
        l.e(abstractC21626w, "preferenceUtil");
        l.e(abstractC21606g0, "resourceProvider");
        l.e(abstractC21603f, "deviceUtils");
        l.e(abstractC21597c, "contactUtils");
        l.e(abstractC21593a, "colorProvider");
        l.e(c21751a, "toolTipsManager");
        l.e(abstractC21624u, "locationFormatter");
        l.e(kVar, "gson");
        l.e(abstractC21644k, "flashRequestHandler");
        l.e(abstractC21614m, "flashMediaHelper");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC8541a, "coreSettings");
        return new C21572u(fVar, firebaseMessaging, abstractC21629z, abstractC21626w, abstractC21606g0, abstractC21603f, abstractC21597c, abstractC21593a, c21751a, abstractC21624u, kVar, abstractC21644k, abstractC21614m, abstractC19219a0, abstractC8541a);
    }
}
