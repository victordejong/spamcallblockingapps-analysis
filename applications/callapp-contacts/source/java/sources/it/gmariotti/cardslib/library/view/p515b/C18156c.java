package it.gmariotti.cardslib.library.view.p515b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageButton;
/* renamed from: it.gmariotti.cardslib.library.view.b.c */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/b/c.class */
public class C18156c extends C18155b {
    public C18156c(Context context) {
        super(context);
    }

    @Override // it.gmariotti.cardslib.library.view.p515b.C18155b, it.gmariotti.cardslib.library.view.p515b.AbstractC18154a
    /* renamed from: a */
    public final void mo4375a(View view, Drawable drawable) {
        if (view != null) {
            view.setBackground(drawable);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.p515b.C18155b, it.gmariotti.cardslib.library.view.p515b.AbstractC18154a
    /* renamed from: a */
    public void mo4374a(ImageButton imageButton, int i) {
        mo4375a(imageButton, this.f63173a.getResources().getDrawable(i));
    }
}
