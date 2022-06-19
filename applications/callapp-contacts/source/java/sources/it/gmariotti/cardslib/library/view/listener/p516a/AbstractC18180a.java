package it.gmariotti.cardslib.library.view.listener.p516a;

import android.widget.Adapter;
import it.gmariotti.cardslib.library.p510a.C18073b;
/* renamed from: it.gmariotti.cardslib.library.view.listener.a.a */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a/a.class */
public abstract class AbstractC18180a implements AbstractC18182c {

    /* renamed from: a */
    protected Adapter f63246a;

    @Override // it.gmariotti.cardslib.library.view.listener.p516a.AbstractC18182c
    /* renamed from: a */
    public final void mo4332a(Adapter adapter) {
        this.f63246a = adapter;
    }

    @Override // it.gmariotti.cardslib.library.view.listener.p516a.AbstractC18182c
    /* renamed from: a */
    public final boolean mo4331a(C18073b c18073b) {
        return c18073b.isSwipeable();
    }
}
