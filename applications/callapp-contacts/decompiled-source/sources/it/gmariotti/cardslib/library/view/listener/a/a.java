package it.gmariotti.cardslib.library.view.listener.a;

import android.widget.Adapter;
import it.gmariotti.cardslib.library.a.b;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a/a.class */
public abstract class a implements c {

    /* renamed from: a  reason: collision with root package name */
    protected Adapter f36507a;

    @Override // it.gmariotti.cardslib.library.view.listener.a.c
    public final void a(Adapter adapter) {
        this.f36507a = adapter;
    }

    @Override // it.gmariotti.cardslib.library.view.listener.a.c
    public final boolean a(b bVar) {
        return bVar.isSwipeable();
    }
}
