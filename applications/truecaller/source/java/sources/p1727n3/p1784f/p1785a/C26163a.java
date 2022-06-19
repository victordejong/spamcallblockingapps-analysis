package p1727n3.p1784f.p1785a;

import android.content.Context;
import android.content.res.ColorStateList;
import androidx.cardview.widget.CardView;
/* renamed from: n3.f.a.a */
/* loaded from: classes-dex2jar.jar:n3/f/a/a.class */
public class C26163a implements AbstractC26165c {
    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: a */
    public float mo2646a(AbstractC26164b abstractC26164b) {
        return m2647o(abstractC26164b).f72933a;
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: b */
    public float mo2645b(AbstractC26164b abstractC26164b) {
        return m2647o(abstractC26164b).f72937e;
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: c */
    public float mo2644c(AbstractC26164b abstractC26164b) {
        return m2647o(abstractC26164b).f72933a * 2.0f;
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: d */
    public float mo2643d(AbstractC26164b abstractC26164b) {
        return CardView.this.getElevation();
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: e */
    public void mo2642e(AbstractC26164b abstractC26164b) {
        CardView.C0110a c0110a = (CardView.C0110a) abstractC26164b;
        if (!CardView.this.getUseCompatPadding()) {
            c0110a.m43054b(0, 0, 0, 0);
            return;
        }
        float f = m2647o(abstractC26164b).f72937e;
        float f2 = m2647o(abstractC26164b).f72933a;
        int ceil = (int) Math.ceil(C26167e.m2629a(f, f2, c0110a.m43055a()));
        int ceil2 = (int) Math.ceil(C26167e.m2628b(f, f2, c0110a.m43055a()));
        c0110a.m43054b(ceil, ceil2, ceil, ceil2);
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: f */
    public float mo2641f(AbstractC26164b abstractC26164b) {
        return m2647o(abstractC26164b).f72933a * 2.0f;
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: g */
    public void mo2640g(AbstractC26164b abstractC26164b, float f) {
        C26166d m2647o = m2647o(abstractC26164b);
        CardView.C0110a c0110a = (CardView.C0110a) abstractC26164b;
        boolean useCompatPadding = CardView.this.getUseCompatPadding();
        boolean m43055a = c0110a.m43055a();
        if (f != m2647o.f72937e || m2647o.f72938f != useCompatPadding || m2647o.f72939g != m43055a) {
            m2647o.f72937e = f;
            m2647o.f72938f = useCompatPadding;
            m2647o.f72939g = m43055a;
            m2647o.m2630c(null);
            m2647o.invalidateSelf();
        }
        mo2642e(abstractC26164b);
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: h */
    public void mo2639h(AbstractC26164b abstractC26164b, float f) {
        C26166d m2647o = m2647o(abstractC26164b);
        if (f == m2647o.f72933a) {
            return;
        }
        m2647o.f72933a = f;
        m2647o.m2630c(null);
        m2647o.invalidateSelf();
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: i */
    public void mo2638i(AbstractC26164b abstractC26164b, float f) {
        CardView.this.setElevation(f);
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: j */
    public ColorStateList mo2637j(AbstractC26164b abstractC26164b) {
        return m2647o(abstractC26164b).f72940h;
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: k */
    public void mo2636k(AbstractC26164b abstractC26164b) {
        mo2640g(abstractC26164b, m2647o(abstractC26164b).f72937e);
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: l */
    public void mo2635l(AbstractC26164b abstractC26164b, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        C26166d c26166d = new C26166d(colorStateList, f);
        CardView.C0110a c0110a = (CardView.C0110a) abstractC26164b;
        c0110a.f534a = c26166d;
        CardView.this.setBackgroundDrawable(c26166d);
        CardView cardView = CardView.this;
        cardView.setClipToOutline(true);
        cardView.setElevation(f2);
        mo2640g(abstractC26164b, f3);
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: m */
    public void mo2634m(AbstractC26164b abstractC26164b) {
        mo2640g(abstractC26164b, m2647o(abstractC26164b).f72937e);
    }

    @Override // p1727n3.p1784f.p1785a.AbstractC26165c
    /* renamed from: n */
    public void mo2633n(AbstractC26164b abstractC26164b, ColorStateList colorStateList) {
        C26166d m2647o = m2647o(abstractC26164b);
        m2647o.m2631b(colorStateList);
        m2647o.invalidateSelf();
    }

    /* renamed from: o */
    public final C26166d m2647o(AbstractC26164b abstractC26164b) {
        return (C26166d) ((CardView.C0110a) abstractC26164b).f534a;
    }
}
