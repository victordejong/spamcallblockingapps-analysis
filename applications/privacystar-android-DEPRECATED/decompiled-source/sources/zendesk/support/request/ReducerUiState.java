package zendesk.support.request;

import android.support.annotation.NonNull;
import java.util.List;
import zendesk.suas.Action;
import zendesk.suas.Reducer;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ReducerUiState.class */
class ReducerUiState extends Reducer<StateUi> {
    @Override // zendesk.suas.Reducer
    @NonNull
    public StateUi getInitialState() {
        return new StateUi();
    }

    @Override // zendesk.suas.Reducer
    public /* bridge */ /* synthetic */ StateUi reduce(@NonNull StateUi stateUi, @NonNull Action action) {
        return reduce2(stateUi, (Action<?>) action);
    }

    /* renamed from: reduce  reason: avoid collision after fix types in other method */
    public StateUi reduce2(@NonNull StateUi stateUi, @NonNull Action<?> action) {
        char c;
        String actionType = action.getActionType();
        int hashCode = actionType.hashCode();
        if (hashCode != -1264564654) {
            if (hashCode == 222524641 && actionType.equals("SHOW_RETRY_DIALOG")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (actionType.equals("DIALOG_DISMISSED")) {
                c = 1;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                return stateUi.setDialogState(new StateRetryDialog((List) action.getData()));
            case 1:
                return stateUi.setDialogState(null);
            default:
                return null;
        }
    }
}
