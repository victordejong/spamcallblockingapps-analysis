package zendesk.support.request;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.Snackbar;
import android.view.View;
import com.zendesk.sdk.C1790R;
import zendesk.suas.Dispatcher;
import zendesk.suas.Listener;
import zendesk.suas.State;
import zendesk.suas.StateSelector;
import zendesk.support.request.StateError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentError.class */
public class ComponentError implements Listener<ErrorStateModel> {

    /* renamed from: af */
    private final ActionFactory f1873af;
    private final CoordinatorLayout container;
    private final Dispatcher dispatcher;
    private StateError.ErrorType errorState;
    private Snackbar snackbar;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: zendesk.support.request.ComponentError$2 */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentError$2.class */
    public static /* synthetic */ class C28282 {
        static final /* synthetic */ int[] $SwitchMap$zendesk$support$request$StateError$ErrorType = new int[StateError.ErrorType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$zendesk$support$request$StateError$ErrorType[StateError.ErrorType.InitialGetComments.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$zendesk$support$request$StateError$ErrorType[StateError.ErrorType.InputFormSubmission.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentError$ErrorStateModel.class */
    public static class ErrorStateModel {
        private final boolean conversationsEnabled;
        private final String errorMessage;
        private final StateError.ErrorType errorState;

        ErrorStateModel(StateError.ErrorType errorType, String str, boolean z) {
            this.errorState = errorType;
            this.errorMessage = str;
            this.conversationsEnabled = z;
        }

        String getErrorMessage() {
            return this.errorMessage;
        }

        StateError.ErrorType getErrorState() {
            return this.errorState;
        }

        boolean isConversationsEnabled() {
            return this.conversationsEnabled;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentError$ErrorStateSelector.class */
    public static class ErrorStateSelector implements StateSelector<ErrorStateModel> {
        ErrorStateSelector() {
        }

        @Override // zendesk.suas.StateSelector
        @Nullable
        public ErrorStateModel selectData(@NonNull State state) {
            StateError fromState = StateError.fromState(state);
            return new ErrorStateModel(fromState.getState(), fromState.getMessage(), StateConfig.fromState(state).getSettings().isConversationsEnabled());
        }
    }

    private ComponentError(CoordinatorLayout coordinatorLayout, Dispatcher dispatcher, ActionFactory actionFactory) {
        this.container = coordinatorLayout;
        this.dispatcher = dispatcher;
        this.f1873af = actionFactory;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ComponentError create(Activity activity, Dispatcher dispatcher, ActionFactory actionFactory) {
        return new ComponentError((CoordinatorLayout) activity.findViewById(C1790R.C1793id.activity_request), dispatcher, actionFactory);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateSelector<ErrorStateModel> getSelector() {
        return new ErrorStateSelector();
    }

    public void update(@NonNull ErrorStateModel errorStateModel) {
        if (errorStateModel.errorState != this.errorState) {
            this.errorState = errorStateModel.errorState;
            if (errorStateModel.errorState != StateError.ErrorType.NoError) {
                this.snackbar = Snackbar.make(this.container, errorStateModel.getErrorMessage(), -2);
                switch (C28282.$SwitchMap$zendesk$support$request$StateError$ErrorType[errorStateModel.getErrorState().ordinal()]) {
                    case 1:
                        this.snackbar.setText(C1790R.string.request_error_load_comments);
                        this.snackbar.setAction(C1790R.string.retry_view_button_label, new View.OnClickListener() { // from class: zendesk.support.request.ComponentError.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                ComponentError.this.errorState = StateError.ErrorType.NoError;
                                ComponentError.this.dispatcher.dispatch(ComponentError.this.f1873af.initialLoadCommentsAsync());
                            }
                        });
                        this.snackbar.show();
                        return;
                    case 2:
                        if (!errorStateModel.isConversationsEnabled()) {
                            this.snackbar.setText(C1790R.string.request_error_create_request);
                            this.snackbar.show();
                            return;
                        }
                        return;
                    default:
                        return;
                }
            } else if (this.snackbar != null) {
                this.snackbar.dismiss();
            }
        }
    }
}
