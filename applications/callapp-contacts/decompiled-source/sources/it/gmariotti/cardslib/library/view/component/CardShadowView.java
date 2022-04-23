package it.gmariotti.cardslib.library.view.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import it.gmariotti.cardslib.library.a;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardShadowView.class */
public class CardShadowView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    protected int f36476a = a.e.base_shadow_layout;

    /* renamed from: b  reason: collision with root package name */
    protected View f36477b;

    public CardShadowView(Context context) {
        super(context);
        a(null, 0);
    }

    public CardShadowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet, 0);
    }

    public CardShadowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet, i);
    }

    private void a() {
        this.f36477b = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.f36476a, (ViewGroup) this, true);
    }

    private void a(AttributeSet attributeSet, int i) {
        b(attributeSet, i);
        if (!isInEditMode()) {
            a();
        }
    }

    private void b(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, a.g.card_options, i, i);
        try {
            this.f36476a = obtainStyledAttributes.getResourceId(a.g.card_options_card_shadow_layout_resourceID, this.f36476a);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
