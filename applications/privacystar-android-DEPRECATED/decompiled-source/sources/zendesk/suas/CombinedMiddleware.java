package zendesk.suas;

import android.support.annotation.NonNull;
import java.util.Collection;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/suas/CombinedMiddleware.class */
public class CombinedMiddleware implements Middleware {
    private final Collection<Middleware> middleware;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CombinedMiddleware(Collection<Middleware> collection) {
        if (collection == null || collection.size() == 0) {
            this.middleware = null;
        } else {
            this.middleware = collection;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loopThroughMiddleware(Action<?> action, final GetState getState, final Dispatcher dispatcher, final Continuation continuation, final Iterator<Middleware> it) {
        if (it.hasNext()) {
            it.next().onAction(action, getState, dispatcher, new Continuation() { // from class: zendesk.suas.CombinedMiddleware.1
                @Override // zendesk.suas.Continuation
                public void next(@NonNull Action<?> action2) {
                    CombinedMiddleware.this.loopThroughMiddleware(action2, getState, dispatcher, continuation, it);
                }
            });
        } else {
            continuation.next(action);
        }
    }

    @Override // zendesk.suas.Middleware
    public void onAction(@NonNull Action<?> action, @NonNull GetState getState, @NonNull Dispatcher dispatcher, @NonNull Continuation continuation) {
        if (this.middleware != null) {
            loopThroughMiddleware(action, getState, dispatcher, continuation, this.middleware.iterator());
        } else {
            continuation.next(action);
        }
    }
}
