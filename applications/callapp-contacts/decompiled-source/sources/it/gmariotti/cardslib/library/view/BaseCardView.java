package it.gmariotti.cardslib.library.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.b;
import it.gmariotti.cardslib.library.view.b.a;
import it.gmariotti.cardslib.library.view.b.f;
import it.gmariotti.cardslib.library.view.component.CardHeaderView;
import it.gmariotti.cardslib.library.view.component.CardShadowView;
import it.gmariotti.cardslib.library.view.component.CardThumbnailView;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/BaseCardView.class */
public class BaseCardView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    protected static String f36400a = "BaseCardView";

    /* renamed from: b  reason: collision with root package name */
    protected b f36401b;

    /* renamed from: c  reason: collision with root package name */
    protected int f36402c;

    /* renamed from: d  reason: collision with root package name */
    protected View f36403d;
    protected CardShadowView e;
    protected CardHeaderView f;
    protected CardThumbnailView g;
    protected boolean h;
    protected boolean i;
    protected a j;

    public BaseCardView(Context context) {
        this(context, null, 0);
    }

    public BaseCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f36402c = a.e.card_base_layout;
        this.h = false;
        this.i = false;
        a(attributeSet, i);
        if (!isInEditMode()) {
            this.f36403d = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.f36402c, (ViewGroup) this, true);
        }
        this.j = f.a(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        b bVar = this.f36401b;
        if (bVar == null) {
            Log.e(f36400a, "No card model found. Please use setCard(card) to set all values.");
        } else if (this.e != null && bVar != null) {
            if (!bVar.isShadow()) {
                this.e.setVisibility(8);
            } else {
                this.e.setVisibility(0);
            }
        }
    }

    protected void a(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, a.g.card_options, i, i);
        try {
            this.f36402c = obtainStyledAttributes.getResourceId(a.g.card_options_card_layout_resourceID, this.f36402c);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        this.e = (CardShadowView) findViewById(a.c.card_shadow_layout);
    }

    public final CardHeaderView c() {
        return this.f;
    }

    public final CardThumbnailView d() {
        return this.g;
    }

    public final boolean e() {
        return this.h;
    }

    public final boolean f() {
        return this.i;
    }

    public b getCard() {
        return this.f36401b;
    }

    public void setCard(b bVar) {
        this.f36401b = bVar;
    }

    public void setForceReplaceInnerLayout(boolean z) {
        this.i = z;
    }

    public void setRecycle(boolean z) {
        this.h = z;
    }
}
