package it.gmariotti.cardslib.library.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.view.component.CardHeaderView;
import it.gmariotti.cardslib.library.view.component.CardShadowView;
import it.gmariotti.cardslib.library.view.component.CardThumbnailView;
import it.gmariotti.cardslib.library.view.p515b.AbstractC18154a;
import it.gmariotti.cardslib.library.view.p515b.C18159f;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/BaseCardView.class */
public class BaseCardView extends LinearLayout {

    /* renamed from: a */
    protected static String f63069a = "BaseCardView";

    /* renamed from: b */
    protected C18073b f63070b;

    /* renamed from: c */
    protected int f63071c;

    /* renamed from: d */
    protected View f63072d;

    /* renamed from: e */
    protected CardShadowView f63073e;

    /* renamed from: f */
    protected CardHeaderView f63074f;

    /* renamed from: g */
    protected CardThumbnailView f63075g;

    /* renamed from: h */
    protected boolean f63076h;

    /* renamed from: i */
    protected boolean f63077i;

    /* renamed from: j */
    protected AbstractC18154a f63078j;

    public BaseCardView(Context context) {
        this(context, null, 0);
    }

    public BaseCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f63071c = C18061a.C18066e.card_base_layout;
        this.f63076h = false;
        this.f63077i = false;
        mo4413a(attributeSet, i);
        if (!isInEditMode()) {
            this.f63072d = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.f63071c, (ViewGroup) this, true);
        }
        this.f63078j = C18159f.m4373a(context);
    }

    /* renamed from: a */
    public void mo4414a() {
        C18073b c18073b = this.f63070b;
        if (c18073b == null) {
            Log.e(f63069a, "No card model found. Please use setCard(card) to set all values.");
        } else if (this.f63073e == null || c18073b == null) {
        } else {
            if (!c18073b.isShadow()) {
                this.f63073e.setVisibility(8);
            } else {
                this.f63073e.setVisibility(0);
            }
        }
    }

    /* renamed from: a */
    protected void mo4413a(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C18061a.C18068g.card_options, i, i);
        try {
            this.f63071c = obtainStyledAttributes.getResourceId(C18061a.C18068g.card_options_card_layout_resourceID, this.f63071c);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public void mo4412b() {
        this.f63073e = (CardShadowView) findViewById(C18061a.C18064c.card_shadow_layout);
    }

    /* renamed from: c */
    public final CardHeaderView m4427c() {
        return this.f63074f;
    }

    /* renamed from: d */
    public final CardThumbnailView m4426d() {
        return this.f63075g;
    }

    /* renamed from: e */
    public final boolean m4425e() {
        return this.f63076h;
    }

    /* renamed from: f */
    public final boolean m4424f() {
        return this.f63077i;
    }

    public C18073b getCard() {
        return this.f63070b;
    }

    public void setCard(C18073b c18073b) {
        this.f63070b = c18073b;
    }

    public void setForceReplaceInnerLayout(boolean z) {
        this.f63077i = z;
    }

    public void setRecycle(boolean z) {
        this.f63076h = z;
    }
}
