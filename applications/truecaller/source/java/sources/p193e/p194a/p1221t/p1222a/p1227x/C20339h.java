package p193e.p194a.p1221t.p1222a.p1227x;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.CancellationException;
import java.util.concurrent.FutureTask;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1221t.p1222a.AbstractC20279e;
import p193e.p194a.p1221t.p1222a.AbstractC20301p;
import p193e.p194a.p1221t.p1222a.p1224u.C20308c;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import p193e.p194a.p1221t.p1222a.p1224u.C20311f;
import p193e.p194a.p1221t.p1222a.p1224u.C20314i;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.t.a.x.h */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/x/h.class */
public final class C20339h extends AbstractC20574a<AbstractC20338g> implements AbstractC20337f {

    /* renamed from: d */
    public p1 f57169d;

    /* renamed from: e */
    public int f57170e;

    /* renamed from: f */
    public final f f57171f;

    /* renamed from: g */
    public final a<AbstractC20279e> f57172g;

    /* renamed from: h */
    public final AbstractC20301p f57173h;

    /* renamed from: i */
    public final AbstractC19462a f57174i;

    @e(c = "com.truecaller.android.truemoji.search.EmojiSearchPresenter$onSearchTextChanged$1", f = "EmojiSearchPresenter.kt", l = {52}, m = "invokeSuspend")
    /* renamed from: e.a.t.a.x.h$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/x/h$a.class */
    public static final class C20340a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f57175e;

        /* renamed from: g */
        public final /* synthetic */ CharSequence f57177g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20340a(CharSequence charSequence, d dVar) {
            super(2, dVar);
            C20339h.this = r5;
            this.f57177g = charSequence;
        }

        /* renamed from: i */
        public final d<s> m11240i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20340a(this.f57177g, dVar);
        }

        /* renamed from: k */
        public final Object m11239k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20340a(this.f57177g, dVar).m11238s(s.a);
        }

        /* renamed from: s */
        public final Object m11238s(Object obj) {
            C20309d c20309d;
            C20311f c20311f;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f57175e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC20279e abstractC20279e = (AbstractC20279e) C20339h.this.f57172g.get();
                StringBuilder sb = new StringBuilder();
                sb.append(this.f57177g);
                sb.append('%');
                String sb2 = sb.toString();
                this.f57175e = 1;
                Object mo11282b = abstractC20279e.mo11282b(sb2, 20, this);
                obj = mo11282b;
                if (mo11282b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            ArrayList arrayList = new ArrayList();
            for (String str : (Iterable) obj) {
                l.e(str, "value");
                if (!(str.length() == 0)) {
                    FutureTask<C20311f> futureTask = C20314i.f57127a;
                    if (futureTask != null && (c20311f = futureTask.get()) != null) {
                        C20308c c20308c = c20311f.f57124a;
                        int i2 = 0;
                        while (true) {
                            int codePointAt = str.codePointAt(i2);
                            i2 += Character.charCount(codePointAt);
                            if (i2 >= str.length()) {
                                c20309d = c20308c.f57117a.get(Integer.valueOf(codePointAt));
                                break;
                            }
                            C20308c c20308c2 = c20308c.f57118b.get(Integer.valueOf(codePointAt));
                            c20309d = null;
                            if (c20308c2 == null) {
                                break;
                            }
                            c20308c = c20308c2;
                        }
                    } else {
                        throw new IllegalStateException("Emoji data loader has not been set");
                    }
                } else {
                    c20309d = null;
                }
                if (c20309d != null) {
                    arrayList.add(c20309d);
                }
            }
            AbstractC20338g abstractC20338g = (AbstractC20338g) C20339h.this.f57683a;
            if (abstractC20338g != null) {
                abstractC20338g.mo11242B1(arrayList);
            }
            AbstractC20338g abstractC20338g2 = (AbstractC20338g) C20339h.this.f57683a;
            if (abstractC20338g2 != null) {
                abstractC20338g2.mo11243A1(arrayList.isEmpty());
            }
            C20339h.this.f57170e = this.f57177g.length();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20339h(@Named("UI") f fVar, a<AbstractC20279e> aVar, AbstractC20301p abstractC20301p, AbstractC19462a abstractC19462a) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(aVar, "emojiDao");
        l.e(abstractC20301p, "recentEmoji");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f57171f = fVar;
        this.f57172g = aVar;
        this.f57173h = abstractC20301p;
        this.f57174i = abstractC19462a;
    }

    /* renamed from: Ij */
    public void m11241Ij(CharSequence charSequence) {
        l.e(charSequence, "text");
        p1 p1Var = this.f57169d;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        if (charSequence.length() == 0) {
            Collection<C20309d> mo11259b = this.f57173h.mo11259b();
            if (true ^ mo11259b.isEmpty()) {
                AbstractC20338g abstractC20338g = (AbstractC20338g) this.f57683a;
                if (abstractC20338g != null) {
                    abstractC20338g.mo11242B1(s1.u.i.S0(mo11259b));
                }
                AbstractC20338g abstractC20338g2 = (AbstractC20338g) this.f57683a;
                if (abstractC20338g2 == null) {
                    return;
                }
                abstractC20338g2.mo11243A1(false);
                return;
            }
        }
        this.f57169d = s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C20340a(charSequence, null), 3, (Object) null);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.t.a.x.g, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20338g abstractC20338g) {
        AbstractC20338g abstractC20338g2 = abstractC20338g;
        l.e(abstractC20338g2, "presenterView");
        this.f57683a = abstractC20338g2;
        m11241Ij("");
    }
}
