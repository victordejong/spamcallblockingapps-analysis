package org.mistergroup.shouldianswer.p098b;

import android.graphics.BitmapFactory;
import android.media.RingtoneManager;
import androidx.core.app.C0445h;
import java.util.Arrays;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1699m;
import kotlin.p081e.p083b.C1705p;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3113m;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.b.e */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/e.class */
public final class C2274e {

    /* renamed from: a */
    public static final C2274e f6371a = new C2274e();

    @AbstractC1634f(m3162b = "MissedCallNotification.kt", m3161c = {32, 36, 56}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.notifications.MissedCallNotification$show$1")
    /* renamed from: org.mistergroup.shouldianswer.b.e$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/e$a.class */
    public static final class C2275a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f6372a;

        /* renamed from: b */
        Object f6373b;

        /* renamed from: c */
        Object f6374c;

        /* renamed from: d */
        Object f6375d;

        /* renamed from: e */
        Object f6376e;

        /* renamed from: f */
        Object f6377f;

        /* renamed from: g */
        int f6378g;

        /* renamed from: h */
        int f6379h;

        /* renamed from: i */
        final /* synthetic */ NumberInfo f6380i;

        /* renamed from: j */
        final /* synthetic */ MyApp f6381j;

        /* renamed from: k */
        private AbstractC1786ad f6382k;

        /* renamed from: org.mistergroup.shouldianswer.b.e$a$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/e$a$a.class */
        public static final class C2276a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f6383a;

            /* renamed from: b */
            Object f6384b;

            /* renamed from: c */
            Object f6385c;

            /* renamed from: d */
            Object f6386d;

            /* renamed from: e */
            Object f6387e;

            /* renamed from: f */
            Object f6388f;

            /* renamed from: g */
            int f6389g;

            /* renamed from: h */
            int f6390h;

            /* renamed from: i */
            final /* synthetic */ int f6391i;

            /* renamed from: j */
            final /* synthetic */ C1699m.C1701b f6392j;

            /* renamed from: k */
            final /* synthetic */ C1699m.C1701b f6393k;

            /* renamed from: l */
            final /* synthetic */ NumberInfo f6394l;

            /* renamed from: m */
            final /* synthetic */ C2275a f6395m;

            /* renamed from: n */
            private AbstractC1786ad f6396n;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2276a(int i, C1699m.C1701b c1701b, C1699m.C1701b c1701b2, NumberInfo numberInfo, AbstractC1641c abstractC1641c, C2275a c2275a) {
                super(2, abstractC1641c);
                this.f6391i = i;
                this.f6392j = c1701b;
                this.f6393k = c1701b2;
                this.f6394l = numberInfo;
                this.f6395m = c2275a;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C2276a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2276a c2276a = new C2276a(this.f6391i, this.f6392j, this.f6393k, this.f6394l, abstractC1641c, this.f6395m);
                c2276a.f6396n = (AbstractC1786ad) obj;
                return c2276a;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                Object obj2;
                String str;
                C0445h.C0450d c0450d;
                Object[] objArr;
                EnumC2395ag.C2396a c2396a;
                int i;
                Object[] objArr2;
                Object a = C1622b.m3174a();
                int i2 = this.f6390h;
                if (i2 == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f6396n;
                    c0450d = new C0445h.C0450d(this.f6395m.f6381j, C3113m.f9165a.m135b()).m6633a(this.f6391i).m6605c(true).m6601e(this.f6392j.f4390a).m6626a(BitmapFactory.decodeResource(this.f6395m.f6381j.getResources(), this.f6393k.f4390a));
                    C1705p c1705p = C1705p.f4394a;
                    str = this.f6395m.f6381j.getString(2131755380);
                    C1694h.m3122a((Object) str, "context.getString(R.string.missed_call_s___s)");
                    Object[] objArr3 = new Object[2];
                    objArr3[0] = this.f6394l.m1483a(MyApp.f5480c.m1802a());
                    c2396a = EnumC2395ag.f6924e;
                    NumberInfo numberInfo = this.f6394l;
                    this.f6383a = abstractC1786ad;
                    this.f6384b = str;
                    this.f6385c = c0450d;
                    this.f6386d = objArr3;
                    this.f6387e = objArr3;
                    this.f6389g = 1;
                    this.f6388f = c2396a;
                    this.f6390h = 1;
                    obj2 = numberInfo.m1454m(this);
                    if (obj2 == a) {
                        return a;
                    }
                    i = 1;
                    objArr2 = objArr3;
                    objArr = objArr3;
                } else if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    c2396a = (EnumC2395ag.C2396a) this.f6388f;
                    i = this.f6389g;
                    objArr2 = (Object[]) this.f6387e;
                    objArr = (Object[]) this.f6386d;
                    c0450d = (C0445h.C0450d) this.f6385c;
                    str = (String) this.f6384b;
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f6383a;
                    C1771k.m2979a(obj);
                    obj2 = obj;
                }
                objArr2[i] = c2396a.m1313a((EnumC2395ag) obj2);
                String format = String.format(str, Arrays.copyOf(objArr, objArr.length));
                C1694h.m3122a((Object) format, "java.lang.String.format(format, *args)");
                C0445h.C0450d m6598f = c0450d.m6620a((CharSequence) format).m6604d(1).m6608c(5).m6632a(-16776961, 1000, 500).m6602d(true).m6598f(1);
                m6598f.m6611b((CharSequence) this.f6394l.m1459k());
                m6598f.m6625a(RingtoneManager.getDefaultUri(2));
                m6598f.m6628a(NumberDetailFragment.f8028b.m555a(this.f6395m.f6381j, this.f6394l));
                C3135y.f9272b.m21c().notify(701512212, m6598f.m6616b());
                return C1775o.f4450a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2275a(NumberInfo numberInfo, MyApp myApp, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f6380i = numberInfo;
            this.f6381j = myApp;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2275a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2275a c2275a = new C2275a(this.f6380i, this.f6381j, abstractC1641c);
            c2275a.f6382k = (AbstractC1786ad) obj;
            return c2275a;
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x0165  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x01af A[Catch: Exception -> 0x022f, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x022f, blocks: (B:11:0x0057, B:15:0x0091, B:18:0x00b0, B:21:0x00c4, B:23:0x00d3, B:27:0x00ee, B:33:0x013c, B:40:0x0174, B:41:0x018e, B:42:0x01af, B:43:0x01d0), top: B:52:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x022d  */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 574
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p098b.C2274e.C2275a.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    private C2274e() {
    }

    /* renamed from: a */
    public final void m1709a() {
        try {
            C3135y.f9272b.m21c().cancel(701512212);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m1708a(NumberInfo numberInfo, int i) {
        synchronized (this) {
            MyApp m1802a = MyApp.f5480c.m1802a();
            C3104j.m157a(C3104j.f9124a, "NOTIFICATION: MissedCallNotification.show", (String) null, 2, (Object) null);
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2275a(numberInfo, m1802a, null), 2, null);
            C3104j.m157a(C3104j.f9124a, "MissedCallNotification.show.end", (String) null, 2, (Object) null);
        }
    }
}
