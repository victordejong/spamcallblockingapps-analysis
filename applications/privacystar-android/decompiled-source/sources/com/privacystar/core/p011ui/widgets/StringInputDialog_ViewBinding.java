package com.privacystar.core.p011ui.widgets;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.StringInputDialog_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/StringInputDialog_ViewBinding.class */
public class StringInputDialog_ViewBinding implements Unbinder {
    private StringInputDialog target;
    private View view2131297299;
    private View view2131297300;

    @UiThread
    public StringInputDialog_ViewBinding(final StringInputDialog stringInputDialog, View view) {
        this.target = stringInputDialog;
        stringInputDialog.titleTextView = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.string_input_dialog_title, "field 'titleTextView'", TextView.class);
        stringInputDialog.inputEditText = (EditText) Utils.findRequiredViewAsType(view, C1566R.C1569id.string_input_edit_text, "field 'inputEditText'", EditText.class);
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.string_input_yes, "field 'yesButton' and method 'okayClicked'");
        stringInputDialog.yesButton = (Button) Utils.castView(findRequiredView, C1566R.C1569id.string_input_yes, "field 'yesButton'", Button.class);
        this.view2131297300 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.widgets.StringInputDialog_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                stringInputDialog.okayClicked();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, C1566R.C1569id.string_input_no, "field 'noButton' and method 'cancelClicked'");
        stringInputDialog.noButton = (Button) Utils.castView(findRequiredView2, C1566R.C1569id.string_input_no, "field 'noButton'", Button.class);
        this.view2131297299 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.widgets.StringInputDialog_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                stringInputDialog.cancelClicked();
            }
        });
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        StringInputDialog stringInputDialog = this.target;
        if (stringInputDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        stringInputDialog.titleTextView = null;
        stringInputDialog.inputEditText = null;
        stringInputDialog.yesButton = null;
        stringInputDialog.noButton = null;
        this.view2131297300.setOnClickListener(null);
        this.view2131297300 = null;
        this.view2131297299.setOnClickListener(null);
        this.view2131297299 = null;
    }
}
