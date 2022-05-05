package zendesk.suas;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/suas/Reducer.class */
public abstract class Reducer<E> {
    @NonNull
    public abstract E getInitialState();

    @NonNull
    public String getStateKey() {
        return State.keyForClass(getInitialState().getClass());
    }

    @Nullable
    public abstract E reduce(@NonNull E e, @NonNull Action<?> action);
}
