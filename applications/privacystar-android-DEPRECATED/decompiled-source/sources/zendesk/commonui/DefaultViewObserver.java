package zendesk.commonui;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/DefaultViewObserver.class */
final class DefaultViewObserver<T> extends ViewObserver<T> {
    private final List<ViewListener<T>> listeners = new ArrayList();

    @Override // zendesk.commonui.ViewObserver
    public void addListener(ViewListener<T> viewListener) {
        synchronized (this.listeners) {
            this.listeners.add(viewListener);
        }
    }

    @Override // zendesk.commonui.ViewListener
    public void onAction(T t) {
        synchronized (this.listeners) {
            for (ViewListener<T> viewListener : this.listeners) {
                viewListener.onAction(t);
            }
        }
    }
}
