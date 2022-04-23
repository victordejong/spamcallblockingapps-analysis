package it.gmariotti.cardslib.library.view.a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import it.gmariotti.cardslib.library.a.b;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/a/a.class */
public interface a {

    /* renamed from: it.gmariotti.cardslib.library.view.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/a/a$a.class */
    public interface AbstractC0600a {
        void a(a aVar, View view);

        void b(a aVar, View view);
    }

    void a(int i);

    void a(Drawable drawable);

    void a(b bVar);

    void g();

    b getCard();

    Context getContext();

    View getInternalMainCardLayout();

    void h();

    void i();

    boolean isNative();

    void setCard(b bVar);

    void setExpanded(boolean z);

    void setForceReplaceInnerLayout(boolean z);

    void setOnExpandListAnimatorListener(AbstractC0600a aVar);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRecycle(boolean z);
}
