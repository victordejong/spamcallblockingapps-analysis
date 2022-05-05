package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.func.ZFunc1;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskActionHandlerRegistry.class */
class ZendeskActionHandlerRegistry implements ActionHandlerRegistry {
    private static final Comparator<ActionHandler> PRIORITY_ACTION_HANDLER_COMPARATOR = new Comparator<ActionHandler>() { // from class: zendesk.core.ZendeskActionHandlerRegistry.2
        public int compare(ActionHandler actionHandler, ActionHandler actionHandler2) {
            return actionHandler2.getPriority() - actionHandler.getPriority();
        }
    };
    private List<ActionHandler> registry = new ArrayList();

    @Override // zendesk.core.ActionHandlerRegistry
    public void add(@NonNull ActionHandler actionHandler) {
        if (actionHandler != null) {
            this.registry.add(actionHandler);
        }
    }

    @Override // zendesk.core.ActionHandlerRegistry
    public void clear() {
        this.registry.clear();
    }

    @Override // zendesk.core.ActionHandlerRegistry
    @Nullable
    public ActionHandler handlerByAction(@NonNull String str) {
        if (StringUtils.isEmpty(str)) {
            return null;
        }
        ArrayList<ActionHandler> arrayList = new ArrayList(this.registry);
        Collections.sort(arrayList, PRIORITY_ACTION_HANDLER_COMPARATOR);
        for (ActionHandler actionHandler : arrayList) {
            if (actionHandler.canHandle(str)) {
                return actionHandler;
            }
        }
        return null;
    }

    @Override // zendesk.core.ActionHandlerRegistry
    @NonNull
    public List<ActionHandler> handlersByAction(@NonNull final String str) {
        if (StringUtils.isEmpty(str)) {
            return Collections.emptyList();
        }
        List<ActionHandler> filter = CollectionUtils.filter(this.registry, new ZFunc1<ActionHandler, Boolean>() { // from class: zendesk.core.ZendeskActionHandlerRegistry.1
            public Boolean apply(ActionHandler actionHandler) {
                return Boolean.valueOf(actionHandler.canHandle(str));
            }
        });
        Collections.sort(filter, PRIORITY_ACTION_HANDLER_COMPARATOR);
        return filter;
    }

    @Override // zendesk.core.ActionHandlerRegistry
    public void remove(@NonNull ActionHandler actionHandler) {
        if (actionHandler != null) {
            this.registry.remove(actionHandler);
        }
    }
}
