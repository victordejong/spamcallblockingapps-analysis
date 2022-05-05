package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardViewApi21Impl.class */
public class CardViewApi21Impl implements CardViewImpl {
    /* renamed from: p */
    private RoundRectDrawable m21120p(CardViewDelegate cardViewDelegate) {
        return (RoundRectDrawable) cardViewDelegate.mo21112f();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: a */
    public void mo21110a(CardViewDelegate cardViewDelegate, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        cardViewDelegate.mo21115c(new RoundRectDrawable(colorStateList, f));
        View g = cardViewDelegate.mo21111g();
        g.setClipToOutline(true);
        g.setElevation(f2);
        mo21096o(cardViewDelegate, f3);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: b */
    public void mo21109b(CardViewDelegate cardViewDelegate, float f) {
        m21120p(cardViewDelegate).m21088h(f);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: c */
    public float mo21108c(CardViewDelegate cardViewDelegate) {
        return cardViewDelegate.mo21111g().getElevation();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: d */
    public float mo21107d(CardViewDelegate cardViewDelegate) {
        return m21120p(cardViewDelegate).m21092d();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: e */
    public void mo21106e(CardViewDelegate cardViewDelegate) {
        mo21096o(cardViewDelegate, mo21104g(cardViewDelegate));
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: f */
    public void mo21105f(CardViewDelegate cardViewDelegate, float f) {
        cardViewDelegate.mo21111g().setElevation(f);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: g */
    public float mo21104g(CardViewDelegate cardViewDelegate) {
        return m21120p(cardViewDelegate).m21093c();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: h */
    public ColorStateList mo21103h(CardViewDelegate cardViewDelegate) {
        return m21120p(cardViewDelegate).m21094b();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: i */
    public void mo21102i(CardViewDelegate cardViewDelegate) {
        if (!cardViewDelegate.mo21113e()) {
            cardViewDelegate.mo21117a(0, 0, 0, 0);
            return;
        }
        float g = mo21104g(cardViewDelegate);
        float d = mo21107d(cardViewDelegate);
        int ceil = (int) Math.ceil(RoundRectDrawableWithShadow.m21084c(g, d, cardViewDelegate.mo21114d()));
        int ceil2 = (int) Math.ceil(RoundRectDrawableWithShadow.m21083d(g, d, cardViewDelegate.mo21114d()));
        cardViewDelegate.mo21117a(ceil, ceil2, ceil, ceil2);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: j */
    public void mo21101j() {
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: k */
    public float mo21100k(CardViewDelegate cardViewDelegate) {
        return mo21107d(cardViewDelegate) * 2.0f;
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: l */
    public float mo21099l(CardViewDelegate cardViewDelegate) {
        return mo21107d(cardViewDelegate) * 2.0f;
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: m */
    public void mo21098m(CardViewDelegate cardViewDelegate) {
        mo21096o(cardViewDelegate, mo21104g(cardViewDelegate));
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: n */
    public void mo21097n(CardViewDelegate cardViewDelegate, @Nullable ColorStateList colorStateList) {
        m21120p(cardViewDelegate).m21090f(colorStateList);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: o */
    public void mo21096o(CardViewDelegate cardViewDelegate, float f) {
        m21120p(cardViewDelegate).m21089g(f, cardViewDelegate.mo21113e(), cardViewDelegate.mo21114d());
        mo21102i(cardViewDelegate);
    }
}
