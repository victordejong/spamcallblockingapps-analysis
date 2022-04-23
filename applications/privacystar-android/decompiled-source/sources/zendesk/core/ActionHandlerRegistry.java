package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ActionHandlerRegistry.class */
public interface ActionHandlerRegistry {
    void add(@NonNull ActionHandler actionHandler);

    void clear();

    @Nullable
    ActionHandler handlerByAction(@NonNull String str);

    @NonNull
    List<ActionHandler> handlersByAction(@NonNull String str);

    void remove(@NonNull ActionHandler actionHandler);
}
