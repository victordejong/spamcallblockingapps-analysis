package zendesk.suas;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/suas/StateSelector.class */
public interface StateSelector<E> {
    @Nullable
    E selectData(@NonNull State state);
}
