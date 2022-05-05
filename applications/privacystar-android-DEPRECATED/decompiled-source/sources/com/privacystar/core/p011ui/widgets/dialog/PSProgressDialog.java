package com.privacystar.core.p011ui.widgets.dialog;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.p004v7.app.AppCompatDialog;
import android.view.Window;
import android.widget.TextView;
import com.privacystar.core.C1566R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0014J\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006\r"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/dialog/PSProgressDialog;", "Landroid/support/v7/app/AppCompatDialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "messageText", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "setMessage", "message", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.dialog.PSProgressDialog */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/PSProgressDialog.class */
public final class PSProgressDialog extends AppCompatDialog {
    private String messageText = "";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSProgressDialog(@NotNull Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatDialog, android.app.Dialog
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(C1566R.C1571layout.progress_dialog_spinner_and_text);
        TextView progress_dialog_spinner_message = (TextView) findViewById(C1566R.C1569id.progress_dialog_spinner_message);
        Intrinsics.checkExpressionValueIsNotNull(progress_dialog_spinner_message, "progress_dialog_spinner_message");
        progress_dialog_spinner_message.setText(this.messageText);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
    }

    public final void setMessage(@NotNull String message) {
        Intrinsics.checkParameterIsNotNull(message, "message");
        this.messageText = message;
    }
}
