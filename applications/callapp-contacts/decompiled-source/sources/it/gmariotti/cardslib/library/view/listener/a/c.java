package it.gmariotti.cardslib.library.view.listener.a;

import android.widget.Adapter;
import it.gmariotti.cardslib.library.a.b;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a/c.class */
public interface c {

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a/c$a.class */
    public enum a {
        BOTH(0),
        LEFT(1),
        RIGHT(2);
        
        private final int mValue;

        a(int i) {
            this.mValue = i;
        }

        public final int getValue() {
            return this.mValue;
        }
    }

    a a();

    void a(Adapter adapter);

    boolean a(b bVar);
}
