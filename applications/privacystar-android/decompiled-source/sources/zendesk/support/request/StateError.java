package zendesk.support.request;

import java.io.Serializable;
import zendesk.suas.State;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateError.class */
class StateError implements Serializable {
    private final String message;
    private final ErrorType state;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateError$ErrorType.class */
    public enum ErrorType {
        InitialGetComments,
        InputFormSubmission,
        NoAccess,
        NoError
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateError() {
        this(ErrorType.NoError, "=)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateError(ErrorType errorType, String str) {
        this.state = errorType;
        this.message = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateError fromState(State state) {
        StateError stateError = (StateError) state.getState(StateError.class);
        return stateError != null ? stateError : new StateError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getMessage() {
        return this.message;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ErrorType getState() {
        return this.state;
    }
}
