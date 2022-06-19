package it.gmariotti.cardslib.library.view.p515b;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageButton;
/* renamed from: it.gmariotti.cardslib.library.view.b.b */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/b/b.class */
public class C18155b implements AbstractC18154a {

    /* renamed from: a */
    protected Context f63173a;

    public C18155b(Context context) {
        this.f63173a = context;
    }

    @Override // it.gmariotti.cardslib.library.view.p515b.AbstractC18154a
    /* renamed from: a */
    public final Drawable mo4377a(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{16843534});
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    @Override // it.gmariotti.cardslib.library.view.p515b.AbstractC18154a
    /* renamed from: a */
    public void mo4375a(View view, Drawable drawable) {
        if (view != null) {
            view.setBackgroundDrawable(drawable);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p515b.AbstractC18154a
    /* renamed from: a */
    public void mo4374a(ImageButton imageButton, int i) {
        mo4375a(imageButton, this.f63173a.getResources().getDrawable(i));
    }

    @Override // it.gmariotti.cardslib.library.view.p515b.AbstractC18154a
    /* renamed from: b */
    public final void mo4376b(View view, Drawable drawable) {
        mo4375a(view, drawable);
    }
}
