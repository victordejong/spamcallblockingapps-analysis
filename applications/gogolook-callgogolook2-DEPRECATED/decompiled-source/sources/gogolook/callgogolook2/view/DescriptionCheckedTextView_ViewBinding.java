package gogolook.callgogolook2.view;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/DescriptionCheckedTextView_ViewBinding.class */
public class DescriptionCheckedTextView_ViewBinding implements Unbinder {

    /* renamed from: a */
    public DescriptionCheckedTextView f13049a;

    @UiThread
    public DescriptionCheckedTextView_ViewBinding(DescriptionCheckedTextView descriptionCheckedTextView, View view) {
        this.f13049a = descriptionCheckedTextView;
        descriptionCheckedTextView.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_title, "field 'mTvTitle'", TextView.class);
        descriptionCheckedTextView.mTvDescription = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_description, "field 'mTvDescription'", TextView.class);
        descriptionCheckedTextView.mCheckbox = (CheckBox) Utils.findRequiredViewAsType(view, 2131362065, "field 'mCheckbox'", CheckBox.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DescriptionCheckedTextView descriptionCheckedTextView = this.f13049a;
        if (descriptionCheckedTextView != null) {
            this.f13049a = null;
            descriptionCheckedTextView.mTvTitle = null;
            descriptionCheckedTextView.mTvDescription = null;
            descriptionCheckedTextView.mCheckbox = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
