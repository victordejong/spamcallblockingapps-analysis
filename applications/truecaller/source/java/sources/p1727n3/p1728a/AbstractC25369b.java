package p1727n3.p1728a;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: n3.a.b */
/* loaded from: classes-dex2jar.jar:n3/a/b.class */
public abstract class AbstractC25369b {
    private CopyOnWriteArrayList<AbstractC25368a> mCancellables = new CopyOnWriteArrayList<>();
    private boolean mEnabled;

    public AbstractC25369b(boolean z) {
        this.mEnabled = z;
    }

    public void addCancellable(AbstractC25368a abstractC25368a) {
        this.mCancellables.add(abstractC25368a);
    }

    public abstract void handleOnBackPressed();

    public final boolean isEnabled() {
        return this.mEnabled;
    }

    public final void remove() {
        Iterator<AbstractC25368a> it = this.mCancellables.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    public void removeCancellable(AbstractC25368a abstractC25368a) {
        this.mCancellables.remove(abstractC25368a);
    }

    public final void setEnabled(boolean z) {
        this.mEnabled = z;
    }
}
