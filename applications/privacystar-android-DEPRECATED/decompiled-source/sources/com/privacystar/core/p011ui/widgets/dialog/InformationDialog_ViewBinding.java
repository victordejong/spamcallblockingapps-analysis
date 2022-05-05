package com.privacystar.core.p011ui.widgets.dialog;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.dialog.InformationDialog_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/InformationDialog_ViewBinding.class */
public class InformationDialog_ViewBinding implements Unbinder {
    private InformationDialog target;

    @UiThread
    public InformationDialog_ViewBinding(InformationDialog informationDialog, View view) {
        this.target = informationDialog;
        informationDialog.iconImageView = (ImageView) Utils.findRequiredViewAsType(view, C1566R.C1569id.information_dialog_icon, "field 'iconImageView'", ImageView.class);
        informationDialog.titleTextView = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.information_dialog_title, "field 'titleTextView'", TextView.class);
        informationDialog.bodyTextView = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.information_dialog_explanation, "field 'bodyTextView'", TextView.class);
        informationDialog.dialogButtons = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.information_dialog_buttons_ll, "field 'dialogButtons'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        InformationDialog informationDialog = this.target;
        if (informationDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        informationDialog.iconImageView = null;
        informationDialog.titleTextView = null;
        informationDialog.bodyTextView = null;
        informationDialog.dialogButtons = null;
    }
}
