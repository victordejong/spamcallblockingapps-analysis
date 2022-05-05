package zendesk.support.request;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.design.C0089R;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.BottomSheetDialog;
import android.view.View;
import android.widget.FrameLayout;
import com.zendesk.sdk.C1790R;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RetryDialog.class */
class RetryDialog extends BottomSheetDialog {
    private BottomSheetBehavior<FrameLayout> bottomSheetBehavior;
    private Listener listener;
    private final List<StateMessage> message;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/RetryDialog$Listener.class */
    interface Listener {
        void onDeleteMessage(List<StateMessage> list);

        void onRetryMessage(List<StateMessage> list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RetryDialog(@NonNull Context context, List<StateMessage> list) {
        super(context);
        this.message = list;
        init();
    }

    private void init() {
        setContentView(C1790R.C1794layout.zs_request_dialog_retry);
        setCancelable(true);
        setCanceledOnTouchOutside(true);
        this.bottomSheetBehavior = initBottomSheet();
        initListener();
    }

    private BottomSheetBehavior<FrameLayout> initBottomSheet() {
        FrameLayout frameLayout = (FrameLayout) findViewById(C0089R.C0092id.design_bottom_sheet);
        if (frameLayout == null) {
            return null;
        }
        try {
            return BottomSheetBehavior.from(frameLayout);
        } catch (Exception e) {
            return null;
        }
    }

    private void initListener() {
        View findViewById = findViewById(C1790R.C1793id.request_dialog_retry_delete);
        View findViewById2 = findViewById(C1790R.C1793id.request_dialog_retry_retry);
        if (findViewById2 != null && findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.request.RetryDialog.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (RetryDialog.this.listener != null) {
                        RetryDialog.this.listener.onDeleteMessage(RetryDialog.this.message);
                    }
                    RetryDialog.this.dismiss();
                }
            });
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.request.RetryDialog.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (RetryDialog.this.listener != null) {
                        RetryDialog.this.listener.onRetryMessage(RetryDialog.this.message);
                    }
                    RetryDialog.this.dismiss();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.design.widget.BottomSheetDialog, android.app.Dialog
    public void onStart() {
        super.onStart();
        if (this.bottomSheetBehavior != null) {
            this.bottomSheetBehavior.setState(3);
        }
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }
}
