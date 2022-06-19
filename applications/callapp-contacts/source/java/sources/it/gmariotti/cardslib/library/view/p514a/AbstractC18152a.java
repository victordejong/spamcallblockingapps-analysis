package it.gmariotti.cardslib.library.view.p514a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import it.gmariotti.cardslib.library.p510a.C18073b;
/* renamed from: it.gmariotti.cardslib.library.view.a.a */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/a/a.class */
public interface AbstractC18152a {

    /* renamed from: it.gmariotti.cardslib.library.view.a.a$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/a/a$a.class */
    public interface AbstractC18153a {
        /* renamed from: a */
        void mo4379a(AbstractC18152a abstractC18152a, View view);

        /* renamed from: b */
        void mo4378b(AbstractC18152a abstractC18152a, View view);
    }

    /* renamed from: a */
    void mo4385a(int i);

    /* renamed from: a */
    void mo4384a(Drawable drawable);

    /* renamed from: a */
    void mo4383a(C18073b c18073b);

    /* renamed from: g */
    void mo4382g();

    C18073b getCard();

    Context getContext();

    View getInternalMainCardLayout();

    /* renamed from: h */
    void mo4381h();

    /* renamed from: i */
    void mo4380i();

    boolean isNative();

    void setCard(C18073b c18073b);

    void setExpanded(boolean z);

    void setForceReplaceInnerLayout(boolean z);

    void setOnExpandListAnimatorListener(AbstractC18153a abstractC18153a);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRecycle(boolean z);
}
