package zendesk.support.request;

import android.support.annotation.NonNull;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import zendesk.suas.Action;
import zendesk.suas.Reducer;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ReducerProgress.class */
class ReducerProgress extends Reducer<StateProgress> {
    private static final Collection<String> INCREMENT_ACTIONS = new HashSet(Arrays.asList("CREATE_COMMENT", "LOAD_SETTINGS", "LOAD_COMMENTS_FROM_CACHE", "LOAD_COMMENT_INITIAL", "LOAD_REQUEST"));
    private static final Collection<String> DECREMENT_ACTION = new HashSet(Arrays.asList("CREATE_COMMENT_ERROR", "CREATE_COMMENT_SUCCESS", "LOAD_SETTINGS_ERROR", "LOAD_SETTINGS_SUCCESS", "CREATE_REQUEST_ERROR", "CREATE_REQUEST_SUCCESS", "LOAD_COMMENTS_INITIAL_ERROR", "LOAD_COMMENTS_INITIAL_SUCCESS", "LOAD_COMMENTS_FROM_CACHE_SUCCESS", "LOAD_COMMENTS_FROM_CACHE_ERROR", "LOAD_REQUEST_ERROR", "LOAD_REQUEST_SUCCESS", "SKIP_ACTION"));

    @Override // zendesk.suas.Reducer
    @NonNull
    public StateProgress getInitialState() {
        return new StateProgress();
    }

    @Override // zendesk.suas.Reducer
    public /* bridge */ /* synthetic */ StateProgress reduce(@NonNull StateProgress stateProgress, @NonNull Action action) {
        return reduce2(stateProgress, (Action<?>) action);
    }

    /* renamed from: reduce  reason: avoid collision after fix types in other method */
    public StateProgress reduce2(@NonNull StateProgress stateProgress, @NonNull Action<?> action) {
        if (INCREMENT_ACTIONS.contains(action.getActionType())) {
            return stateProgress.increment();
        }
        if (DECREMENT_ACTION.contains(action.getActionType())) {
            return stateProgress.decrement();
        }
        return null;
    }
}
