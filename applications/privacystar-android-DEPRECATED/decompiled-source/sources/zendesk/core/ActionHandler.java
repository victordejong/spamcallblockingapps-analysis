package zendesk.core;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ActionHandler.class */
public interface ActionHandler {
    boolean canHandle(@NonNull String str);

    @Nullable
    ActionDescription getActionDescription();

    int getPriority();

    void handle(@Nullable Map<String, Object> map, @NonNull Context context);
}
