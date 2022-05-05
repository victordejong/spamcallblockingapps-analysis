package com.privacystar.core.p011ui.widgets;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.EditText;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.GroupBlockingAddDialog_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/GroupBlockingAddDialog_ViewBinding.class */
public class GroupBlockingAddDialog_ViewBinding implements Unbinder {
    private GroupBlockingAddDialog target;
    private View view2131297299;
    private View view2131297300;

    @UiThread
    public GroupBlockingAddDialog_ViewBinding(final GroupBlockingAddDialog groupBlockingAddDialog, View view) {
        this.target = groupBlockingAddDialog;
        groupBlockingAddDialog.numberTextView = (EditText) Utils.findRequiredViewAsType(view, C1566R.C1569id.string_input_edit_text, "field 'numberTextView'", EditText.class);
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.string_input_yes, "method 'okayClicked'");
        this.view2131297300 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.widgets.GroupBlockingAddDialog_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                groupBlockingAddDialog.okayClicked();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, C1566R.C1569id.string_input_no, "method 'cancelClicked'");
        this.view2131297299 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.widgets.GroupBlockingAddDialog_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                groupBlockingAddDialog.cancelClicked();
            }
        });
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GroupBlockingAddDialog groupBlockingAddDialog = this.target;
        if (groupBlockingAddDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        groupBlockingAddDialog.numberTextView = null;
        this.view2131297300.setOnClickListener(null);
        this.view2131297300 = null;
        this.view2131297299.setOnClickListener(null);
        this.view2131297299 = null;
    }
}
