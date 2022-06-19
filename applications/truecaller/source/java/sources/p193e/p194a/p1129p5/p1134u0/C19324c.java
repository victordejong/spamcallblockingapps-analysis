package p193e.p194a.p1129p5.p1134u0;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.view.ViewGroup;
import io.agora.rtc.Constants;
import java.util.Iterator;
import java.util.List;
import p193e.p1575l.p1576a.C23965d;
import p193e.p1575l.p1576a.C23981g;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.p5.u0.c */
/* loaded from: classes15-dex2jar.jar:e/a/p5/u0/c.class */
public final class C19324c implements AbstractC19323b {

    /* renamed from: a */
    public C23965d f53764a;

    /* renamed from: e.a.p5.u0.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/u0/c$a.class */
    public static final class C19325a extends C23965d.C23978l {

        /* renamed from: b */
        public final /* synthetic */ AbstractC19327e f53766b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC19322a f53767c;

        public C19325a(AbstractC19327e abstractC19327e, AbstractC19322a abstractC19322a) {
            C19324c.this = r4;
            this.f53766b = abstractC19327e;
            this.f53767c = abstractC19322a;
        }

        @Override // p193e.p1575l.p1576a.C23965d.C23978l
        /* renamed from: a */
        public void mo5635a(C23965d c23965d, boolean z) {
            this.f53766b.mo10682a(this.f53767c.mo13457c().f53772e);
            C19324c.this.f53764a = null;
        }
    }

    @Override // p193e.p194a.p1129p5.p1134u0.AbstractC19323b
    /* renamed from: a */
    public void mo13455a() {
        C23965d c23965d = this.f53764a;
        if (c23965d != null) {
            c23965d.m5643b(false);
        }
    }

    @Override // p193e.p194a.p1129p5.p1134u0.AbstractC19323b
    /* renamed from: b */
    public boolean mo13454b() {
        C23965d c23965d = this.f53764a;
        return c23965d != null ? c23965d.m5640e() : false;
    }

    @Override // p193e.p194a.p1129p5.p1134u0.AbstractC19323b
    /* renamed from: c */
    public void mo13453c(List<? extends AbstractC19322a> list, Activity activity, AbstractC19327e abstractC19327e) {
        Resources resources;
        C23965d c23965d;
        l.e(list, "showcases");
        l.e(activity, "activity");
        l.e(abstractC19327e, "showcaseUtilCallback");
        AbstractC19322a m13452d = m13452d(i.a1(list));
        if (m13452d != null) {
            C19326d mo13457c = m13452d.mo13457c();
            if (mo13457c.f53768a.getVisibility() != 0) {
                return;
            }
            m13452d.mo13459a();
            float width = mo13457c.f53768a.getWidth() / 2;
            l.d(activity.getResources(), "context.resources");
            int i = (int) (width / (resources.getDisplayMetrics().densityDpi / ((float) Constants.ERR_ALREADY_IN_RECORDING)));
            if (i <= 30) {
                i = 30;
            }
            C19325a c19325a = new C19325a(abstractC19327e, m13452d);
            C23965d c23965d2 = this.f53764a;
            if ((c23965d2 != null ? c23965d2.m5640e() : false) && (c23965d = this.f53764a) != null) {
                c23965d.m5643b(false);
            }
            C23981g c23981g = new C23981g(mo13457c.f53768a, mo13457c.f53770c, mo13457c.f53771d);
            int i2 = mo13457c.f53775h;
            c23981g.f66357i = i2;
            c23981g.f66351c = 1.0f;
            c23981g.f66358j = i2;
            int i3 = mo13457c.f53773f;
            if (i3 < 0) {
                throw new IllegalArgumentException("Given negative text size");
            }
            c23981g.f66362n = i3;
            int i4 = mo13457c.f53774g;
            if (i4 < 0) {
                throw new IllegalArgumentException("Given negative text size");
            }
            c23981g.f66363o = i4;
            int i5 = mo13457c.f53777j;
            c23981g.f66360l = i5;
            c23981g.f66361m = i5;
            Integer num = mo13457c.f53778k;
            if (num != null) {
                c23981g.f66361m = num.intValue();
                c23981g.f66368t = 1.0f;
            }
            Typeface typeface = Typeface.SANS_SERIF;
            if (typeface == null) {
                throw new IllegalArgumentException("Cannot use a null typeface");
            }
            c23981g.f66355g = typeface;
            c23981g.f66356h = typeface;
            c23981g.f66359k = mo13457c.f53776i;
            c23981g.f66364p = false;
            c23981g.f66365q = true;
            c23981g.f66366r = false;
            c23981g.f66367s = true;
            c23981g.f66352d = i;
            int i6 = C23965d.f66369A0;
            ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            C23965d c23965d3 = new C23965d(activity, viewGroup, (ViewGroup) viewGroup.findViewById(16908290), c23981g, c19325a);
            viewGroup.addView(c23965d3, layoutParams);
            this.f53764a = c23965d3;
        }
    }

    /* renamed from: d */
    public final AbstractC19322a m13452d(List<AbstractC19322a> list) {
        Object obj;
        Iterator<T> it = list.iterator();
        if (!it.hasNext()) {
            obj = null;
        } else {
            obj = it.next();
            if (it.hasNext()) {
                int i = ((AbstractC19322a) obj).mo13457c().f53769b;
                Object obj2 = obj;
                do {
                    Object next = it.next();
                    int i2 = ((AbstractC19322a) next).mo13457c().f53769b;
                    obj = obj2;
                    int i3 = i;
                    if (i > i2) {
                        obj = next;
                        i3 = i2;
                    }
                    obj2 = obj;
                    i = i3;
                } while (it.hasNext());
            }
        }
        AbstractC19322a abstractC19322a = (AbstractC19322a) obj;
        if (abstractC19322a != null) {
            if (abstractC19322a.mo13458b()) {
                return abstractC19322a;
            }
            list.remove(abstractC19322a);
            return m13452d(list);
        }
        return null;
    }
}
