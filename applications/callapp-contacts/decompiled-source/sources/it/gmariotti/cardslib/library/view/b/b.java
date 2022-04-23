package it.gmariotti.cardslib.library.view.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageButton;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/b/b.class */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    protected Context f36465a;

    public b(Context context) {
        this.f36465a = context;
    }

    @Override // it.gmariotti.cardslib.library.view.b.a
    public final Drawable a(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{16843534});
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    @Override // it.gmariotti.cardslib.library.view.b.a
    public void a(View view, Drawable drawable) {
        if (view != null) {
            view.setBackgroundDrawable(drawable);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.b.a
    public void a(ImageButton imageButton, int i) {
        a(imageButton, this.f36465a.getResources().getDrawable(i));
    }

    @Override // it.gmariotti.cardslib.library.view.b.a
    public final void b(View view, Drawable drawable) {
        a(view, drawable);
    }
}
