package org.mistergroup.shouldianswer.p098b;

import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.media.RingtoneManager;
import android.net.Uri;
import androidx.core.app.C0445h;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1699m;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3113m;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.b.l */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/l.class */
public final class C2299l {

    /* renamed from: a */
    public static final C2299l f6490a = new C2299l();

    @AbstractC1634f(m3162b = "VoicemailNotification.kt", m3161c = {52}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.notifications.VoicemailNotification$show$1")
    /* renamed from: org.mistergroup.shouldianswer.b.l$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/l$a.class */
    public static final class C2300a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f6491a;

        /* renamed from: b */
        Object f6492b;

        /* renamed from: c */
        Object f6493c;

        /* renamed from: d */
        int f6494d;

        /* renamed from: e */
        int f6495e;

        /* renamed from: f */
        int f6496f;

        /* renamed from: g */
        final /* synthetic */ MyApp f6497g;

        /* renamed from: h */
        final /* synthetic */ String f6498h;

        /* renamed from: i */
        private AbstractC1786ad f6499i;

        @AbstractC1634f(m3162b = "VoicemailNotification.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.notifications.VoicemailNotification$show$1$1")
        /* renamed from: org.mistergroup.shouldianswer.b.l$a$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/l$a$1.class */
        public static final class C23011 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f6500a;

            /* renamed from: c */
            final /* synthetic */ int f6502c;

            /* renamed from: d */
            final /* synthetic */ C1699m.C1701b f6503d;

            /* renamed from: e */
            private AbstractC1786ad f6504e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C23011(int i, C1699m.C1701b c1701b, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2300a.this = r5;
                this.f6502c = i;
                this.f6503d = c1701b;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C23011) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C23011 c23011 = new C23011(this.f6502c, this.f6503d, abstractC1641c);
                c23011.f6504e = (AbstractC1786ad) obj;
                return c23011;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f6500a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f6504e;
                    C0445h.C0450d m6598f = new C0445h.C0450d(C2300a.this.f6497g, C3113m.f9165a.m135b()).m6633a(this.f6502c).m6626a(BitmapFactory.decodeResource(C2300a.this.f6497g.getResources(), this.f6503d.f4390a)).m6620a((CharSequence) C2300a.this.f6497g.getString(2131755565)).m6604d(1).m6608c(-1).m6602d(true).m6598f(1);
                    m6598f.m6625a(RingtoneManager.getDefaultUri(2));
                    if (C2300a.this.f6498h != null) {
                        Uri parse = Uri.parse("tel:" + Uri.encode(C2300a.this.f6498h));
                        Intent intent = new Intent("android.intent.action.CALL");
                        intent.setData(parse);
                        m6598f.m6628a(PendingIntent.getActivity(C2300a.this.f6497g, 0, intent, 1073741824));
                    }
                    C3135y.f9272b.m21c().notify(701512212, m6598f.m6616b());
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2300a(MyApp myApp, String str, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f6497g = myApp;
            this.f6498h = str;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2300a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2300a c2300a = new C2300a(this.f6497g, this.f6498h, abstractC1641c);
            c2300a.f6499i = (AbstractC1786ad) obj;
            return c2300a;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f6496f;
            try {
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f6499i;
                    C3113m.f9165a.m129h();
                    C1699m.C1701b c1701b = new C1699m.C1701b();
                    c1701b.f4390a = 2131230814;
                    this.f6491a = abstractC1786ad;
                    this.f6494d = 2131230954;
                    this.f6492b = c1701b;
                    this.f6493c = "";
                    this.f6495e = -16777216;
                    this.f6496f = 1;
                    if (C1890e.m2686a(C3084c.m192b(), new C23011(2131230954, c1701b, null), this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    int i2 = this.f6495e;
                    String str = (String) this.f6493c;
                    C1699m.C1701b c1701b2 = (C1699m.C1701b) this.f6492b;
                    int i3 = this.f6494d;
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f6491a;
                    C1771k.m2979a(obj);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            return C1775o.f4450a;
        }
    }

    private C2299l() {
    }

    /* renamed from: a */
    public final void m1668a(String str) {
        synchronized (this) {
            MyApp m1802a = MyApp.f5480c.m1802a();
            C3104j.m157a(C3104j.f9124a, "NOTIFICATION: VoicemailNotification.show", (String) null, 2, (Object) null);
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2300a(m1802a, str, null), 2, null);
            C3104j.m157a(C3104j.f9124a, "VoicemailNotification.show.end", (String) null, 2, (Object) null);
        }
    }
}
