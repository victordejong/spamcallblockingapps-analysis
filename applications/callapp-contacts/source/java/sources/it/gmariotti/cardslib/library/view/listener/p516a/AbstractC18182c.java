package it.gmariotti.cardslib.library.view.listener.p516a;

import android.widget.Adapter;
import it.gmariotti.cardslib.library.p510a.C18073b;
/* renamed from: it.gmariotti.cardslib.library.view.listener.a.c */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a/c.class */
public interface AbstractC18182c {

    /* renamed from: it.gmariotti.cardslib.library.view.listener.a.c$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a/c$a.class */
    public enum EnumC18183a {
        BOTH(0),
        LEFT(1),
        RIGHT(2);
        
        private final int mValue;

        EnumC18183a(int i) {
            this.mValue = i;
        }

        public final int getValue() {
            return this.mValue;
        }
    }

    /* renamed from: a */
    EnumC18183a mo4333a();

    /* renamed from: a */
    void mo4332a(Adapter adapter);

    /* renamed from: a */
    boolean mo4331a(C18073b c18073b);
}
