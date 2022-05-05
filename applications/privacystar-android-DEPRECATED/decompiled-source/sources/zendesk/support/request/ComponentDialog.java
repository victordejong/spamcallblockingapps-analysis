package zendesk.support.request;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.support.annotation.NonNull;
import java.util.List;
import zendesk.suas.Dispatcher;
import zendesk.suas.Listener;
import zendesk.support.UiUtils;
import zendesk.support.request.RetryDialog;
import zendesk.support.request.StateUi;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentDialog.class */
class ComponentDialog implements Listener<StateUi> {
    private final Activity activity;

    /* renamed from: af */
    private final ActionFactory f1870af;
    private Dialog dialog;
    private final Dispatcher dispatcher;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentDialog$OnDismissedListener.class */
    public static class OnDismissedListener implements DialogInterface.OnDismissListener {

        /* renamed from: af */
        private final ActionFactory f1871af;
        private final Dispatcher dispatcher;

        OnDismissedListener(ActionFactory actionFactory, Dispatcher dispatcher) {
            this.f1871af = actionFactory;
            this.dispatcher = dispatcher;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            this.dispatcher.dispatch(this.f1871af.onDialogDismissed());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentDialog$RetryDialogListener.class */
    public static class RetryDialogListener implements RetryDialog.Listener {

        /* renamed from: af */
        private final ActionFactory f1872af;
        private final Dispatcher dispatcher;

        RetryDialogListener(ActionFactory actionFactory, Dispatcher dispatcher) {
            this.f1872af = actionFactory;
            this.dispatcher = dispatcher;
        }

        @Override // zendesk.support.request.RetryDialog.Listener
        public void onDeleteMessage(List<StateMessage> list) {
            for (StateMessage stateMessage : list) {
                this.dispatcher.dispatch(this.f1872af.deleteMessage(stateMessage));
            }
        }

        @Override // zendesk.support.request.RetryDialog.Listener
        public void onRetryMessage(List<StateMessage> list) {
            onDeleteMessage(list);
            for (StateMessage stateMessage : list) {
                this.dispatcher.dispatch(this.f1872af.resendCommentAsync(stateMessage));
                this.dispatcher.dispatch(this.f1872af.updateCommentsAsync());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComponentDialog(Activity activity, ActionFactory actionFactory, Dispatcher dispatcher) {
        this.activity = activity;
        this.f1870af = actionFactory;
        this.dispatcher = dispatcher;
    }

    private Dialog getDialogForState(StateUi.DialogState dialogState) {
        RetryDialog retryDialog;
        if (dialogState instanceof StateRetryDialog) {
            retryDialog = new RetryDialog(this.activity, ((StateRetryDialog) dialogState).getMessage());
            retryDialog.setListener(new RetryDialogListener(this.f1870af, this.dispatcher));
        } else {
            retryDialog = null;
        }
        return retryDialog;
    }

    public void update(@NonNull StateUi stateUi) {
        StateUi.DialogState dialogState = stateUi.getDialogState();
        if (dialogState == null) {
            return;
        }
        if (this.dialog == null || !this.dialog.isShowing()) {
            UiUtils.dismissKeyboard(this.activity);
            this.dialog = getDialogForState(dialogState);
            this.dialog.setOnDismissListener(new OnDismissedListener(this.f1870af, this.dispatcher));
            this.dialog.show();
        }
    }
}
