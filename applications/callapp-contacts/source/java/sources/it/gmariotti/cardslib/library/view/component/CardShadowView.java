package it.gmariotti.cardslib.library.view.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import it.gmariotti.cardslib.library.C18061a;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardShadowView.class */
public class CardShadowView extends FrameLayout {

    /* renamed from: a */
    protected int f63193a = C18061a.C18066e.base_shadow_layout;

    /* renamed from: b */
    protected View f63194b;

    public CardShadowView(Context context) {
        super(context);
        m4366a(null, 0);
    }

    public CardShadowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4366a(attributeSet, 0);
    }

    public CardShadowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4366a(attributeSet, i);
    }

    /* renamed from: a */
    private void m4367a() {
        this.f63194b = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.f63193a, (ViewGroup) this, true);
    }

    /* renamed from: a */
    private void m4366a(AttributeSet attributeSet, int i) {
        m4365b(attributeSet, i);
        if (!isInEditMode()) {
            m4367a();
        }
    }

    /* renamed from: b */
    private void m4365b(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C18061a.C18068g.card_options, i, i);
        try {
            this.f63193a = obtainStyledAttributes.getResourceId(C18061a.C18068g.card_options_card_shadow_layout_resourceID, this.f63193a);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
