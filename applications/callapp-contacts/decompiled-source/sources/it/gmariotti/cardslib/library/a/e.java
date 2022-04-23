package it.gmariotti.cardslib.library.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.a.a;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/e.class */
public class e extends a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f36359a;

    public e(Context context) {
        this(context, a.e.inner_base_expand);
    }

    public e(Context context, int i) {
        super(context);
        this.f36359a = false;
        this.mInnerLayout = i;
        if (i == a.e.inner_base_expand) {
            this.f36359a = true;
        }
    }

    public void a(ViewGroup viewGroup, View view) {
        TextView textView;
        if (view != null && (textView = (TextView) view.findViewById(a.c.card_expand_inner_simple_title)) != null) {
            textView.setText(this.mTitle);
        }
    }

    @Override // it.gmariotti.cardslib.library.a.a.a
    public View getInnerView(Context context, ViewGroup viewGroup) {
        if (this.f36359a && isNative()) {
            this.mInnerLayout = a.e.native_inner_base_expand;
        }
        View innerView = super.getInnerView(context, viewGroup);
        if (innerView != null) {
            viewGroup.addView(innerView);
            if (this.mInnerLayout >= 0) {
                a(viewGroup, innerView);
            }
        }
        return innerView;
    }

    protected boolean isNative() {
        if (getParentCard() != null) {
            return getParentCard().isNative();
        }
        return false;
    }
}
