package it.gmariotti.cardslib.library.p510a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.p511a.AbstractC18070a;
/* renamed from: it.gmariotti.cardslib.library.a.e */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/e.class */
public class C18087e extends AbstractC18070a {

    /* renamed from: a */
    private boolean f63007a;

    public C18087e(Context context) {
        this(context, C18061a.C18066e.inner_base_expand);
    }

    public C18087e(Context context, int i) {
        super(context);
        this.f63007a = false;
        this.mInnerLayout = i;
        if (i == C18061a.C18066e.inner_base_expand) {
            this.f63007a = true;
        }
    }

    /* renamed from: a */
    public void mo4472a(ViewGroup viewGroup, View view) {
        TextView textView;
        if (view == null || (textView = (TextView) view.findViewById(C18061a.C18064c.card_expand_inner_simple_title)) == null) {
            return;
        }
        textView.setText(this.mTitle);
    }

    @Override // it.gmariotti.cardslib.library.p510a.p511a.AbstractC18070a
    public View getInnerView(Context context, ViewGroup viewGroup) {
        if (this.f63007a && isNative()) {
            this.mInnerLayout = C18061a.C18066e.native_inner_base_expand;
        }
        View innerView = super.getInnerView(context, viewGroup);
        if (innerView != null) {
            viewGroup.addView(innerView);
            if (this.mInnerLayout >= 0) {
                mo4472a(viewGroup, innerView);
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
