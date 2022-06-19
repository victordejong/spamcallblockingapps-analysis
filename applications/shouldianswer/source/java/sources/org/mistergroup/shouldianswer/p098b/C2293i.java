package org.mistergroup.shouldianswer.p098b;

import android.app.NotificationManager;
import android.graphics.BitmapFactory;
import android.media.RingtoneManager;
import android.os.Handler;
import androidx.core.app.C0445h;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
import java.util.Arrays;
import java.util.Date;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1699m;
import kotlin.p081e.p083b.C1705p;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3113m;
import org.mistergroup.shouldianswer.utils.C3133w;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.b.i */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/i.class */
public final class C2293i {

    /* renamed from: a */
    public static final C2294a f6464a = new C2294a(null);

    /* renamed from: b */
    private static String f6465b;

    /* renamed from: c */
    private static long f6466c;

    /* renamed from: d */
    private static int f6467d;

    /* renamed from: org.mistergroup.shouldianswer.b.i$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/i$a.class */
    public static final class C2294a {
        private C2294a() {
        }

        public /* synthetic */ C2294a(C1691e c1691e) {
            this();
        }
    }

    @AbstractC1634f(m3162b = "RingingNotification.kt", m3161c = {47, 49, 54, 74}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.notifications.RingingNotification$show$1")
    /* renamed from: org.mistergroup.shouldianswer.b.i$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/i$b.class */
    public static final class C2295b extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f6468a;

        /* renamed from: b */
        Object f6469b;

        /* renamed from: c */
        Object f6470c;

        /* renamed from: d */
        Object f6471d;

        /* renamed from: e */
        Object f6472e;

        /* renamed from: f */
        Object f6473f;

        /* renamed from: g */
        int f6474g;

        /* renamed from: h */
        int f6475h;

        /* renamed from: i */
        final /* synthetic */ NumberInfo f6476i;

        /* renamed from: j */
        final /* synthetic */ MyApp f6477j;

        /* renamed from: k */
        final /* synthetic */ String f6478k;

        /* renamed from: l */
        private AbstractC1786ad f6479l;

        @AbstractC1634f(m3162b = "RingingNotification.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.notifications.RingingNotification$show$1$1")
        /* renamed from: org.mistergroup.shouldianswer.b.i$b$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/i$b$1.class */
        public static final class C22961 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f6480a;

            /* renamed from: c */
            final /* synthetic */ int f6482c;

            /* renamed from: d */
            final /* synthetic */ C1699m.C1701b f6483d;

            /* renamed from: e */
            final /* synthetic */ C1699m.C1701b f6484e;

            /* renamed from: f */
            final /* synthetic */ C1699m.C1702c f6485f;

            /* renamed from: g */
            final /* synthetic */ String f6486g;

            /* renamed from: h */
            private AbstractC1786ad f6487h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C22961(int i, C1699m.C1701b c1701b, C1699m.C1701b c1701b2, C1699m.C1702c c1702c, String str, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2295b.this = r5;
                this.f6482c = i;
                this.f6483d = c1701b;
                this.f6484e = c1701b2;
                this.f6485f = c1702c;
                this.f6486g = str;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C22961) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C22961 c22961 = new C22961(this.f6482c, this.f6483d, this.f6484e, this.f6485f, this.f6486g, abstractC1641c);
                c22961.f6487h = (AbstractC1786ad) obj;
                return c22961;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f6480a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f6487h;
                    C0445h.C0450d m6626a = new C0445h.C0450d(C2295b.this.f6477j, C3113m.f9165a.m135b()).m6633a(this.f6482c).m6605c(true).m6601e(this.f6483d.f4390a).m6626a(BitmapFactory.decodeResource(C2295b.this.f6477j.getResources(), this.f6484e.f4390a));
                    C1705p c1705p = C1705p.f4394a;
                    Object[] objArr = {C2295b.this.f6478k, (String) this.f6485f.f4391a};
                    String format = String.format("%s - %s", Arrays.copyOf(objArr, objArr.length));
                    C1694h.m3122a((Object) format, "java.lang.String.format(format, *args)");
                    C0445h.C0450d m6598f = m6626a.m6620a((CharSequence) format).m6604d(1).m6608c(-1).m6602d(true).m6598f(1);
                    if (!(this.f6486g.length() == 0)) {
                        C1705p c1705p2 = C1705p.f4394a;
                        String string = C2295b.this.f6477j.getString(2131755405);
                        C1694h.m3122a((Object) string, "context.getString(R.stri…otification_ringing_text)");
                        Object[] objArr2 = {this.f6486g};
                        String format2 = String.format(string, Arrays.copyOf(objArr2, objArr2.length));
                        C1694h.m3122a((Object) format2, "java.lang.String.format(format, *args)");
                        m6598f.m6611b((CharSequence) format2);
                    }
                    m6598f.m6625a(RingtoneManager.getDefaultUri(2));
                    m6598f.m6628a(NumberDetailFragment.f8028b.m555a(C2295b.this.f6477j, C2295b.this.f6476i));
                    NotificationManager m21c = C3135y.f9272b.m21c();
                    C2293i.f6467d++;
                    m21c.notify(C2293i.f6467d + 1000000, m6598f.m6616b());
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2295b(NumberInfo numberInfo, MyApp myApp, String str, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f6476i = numberInfo;
            this.f6477j = myApp;
            this.f6478k = str;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2295b) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2295b c2295b = new C2295b(this.f6476i, this.f6477j, this.f6478k, abstractC1641c);
            c2295b.f6479l = (AbstractC1786ad) obj;
            return c2295b;
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x017d  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x017f  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x01b5  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x020f A[Catch: Exception -> 0x00bd, TRY_ENTER, TryCatch #0 {Exception -> 0x00bd, blocks: (B:13:0x005c, B:17:0x0096, B:20:0x00b0, B:28:0x00f4, B:33:0x0118, B:39:0x018c, B:46:0x01c4, B:47:0x01e6, B:48:0x020f, B:49:0x0235, B:49:0x0235, B:50:0x0238), top: B:58:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0293  */
        /* JADX WARN: Type inference failed for: r0v34, types: [T, java.lang.Object, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v42, types: [T, java.lang.Object, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v50, types: [T, java.lang.Object, java.lang.String] */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 675
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p098b.C2293i.C2295b.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: a */
    public final void m1671a(NumberInfo numberInfo) {
        synchronized (this) {
            C1694h.m3117b(numberInfo, "numberInfo");
            MyApp m1802a = MyApp.f5480c.m1802a();
            C3104j.m157a(C3104j.f9124a, "NOTIFICATION: RingingNotification.show", (String) null, 2, (Object) null);
            String m1479b = numberInfo.m1479b();
            C3104j.m157a(C3104j.f9124a, "RingingNotification.show.begin", (String) null, 2, (Object) null);
            long time = new Date().getTime() - f6466c;
            if (f6465b != null && C3133w.f9268a.m29a(m1479b, f6465b) && time < ((long) AbstractC1468a.DEFAULT_TIMEOUT)) {
                C3104j.m157a(C3104j.f9124a, "RingingNotification.show terminate due lastNumber=number", (String) null, 2, (Object) null);
            } else if (time < 1000) {
                C3104j.m157a(C3104j.f9124a, "RingingNotification.show terminate2 due lastNumber=number", (String) null, 2, (Object) null);
            } else {
                f6465b = m1479b;
                f6466c = new Date().getTime();
                C3074a.f8976a.m227c("RingingNotification.Show");
                new Handler();
                C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2295b(numberInfo, m1802a, m1479b, null), 2, null);
                C3104j.m157a(C3104j.f9124a, "RingingNotification.show.end", (String) null, 2, (Object) null);
            }
        }
    }
}
