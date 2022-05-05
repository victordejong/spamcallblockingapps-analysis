package zendesk.suas;

import android.support.annotation.NonNull;
/* loaded from: classes3-dex2jar.jar:zendesk/suas/Middleware.class */
public interface Middleware {
    void onAction(@NonNull Action<?> action, @NonNull GetState getState, @NonNull Dispatcher dispatcher, @NonNull Continuation continuation);
}
