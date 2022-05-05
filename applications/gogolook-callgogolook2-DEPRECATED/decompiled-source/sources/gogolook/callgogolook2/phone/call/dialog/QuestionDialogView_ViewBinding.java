package gogolook.callgogolook2.phone.call.dialog;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.view.RecycleSafeImageView;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/QuestionDialogView_ViewBinding.class */
public class QuestionDialogView_ViewBinding implements Unbinder {

    /* renamed from: a */
    public QuestionDialogView f12370a;

    @UiThread
    public QuestionDialogView_ViewBinding(QuestionDialogView questionDialogView, View view) {
        this.f12370a = questionDialogView;
        questionDialogView.mMetaphor = (RecycleSafeImageView) Utils.findRequiredViewAsType(view, R$id.iv_metaphor, "field 'mMetaphor'", RecycleSafeImageView.class);
        questionDialogView.mMetaphorBadge = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_card_spam_icon, "field 'mMetaphorBadge'", ImageView.class);
        questionDialogView.mTvPrimary = (TextView) Utils.findRequiredViewAsType(view, 2131363467, "field 'mTvPrimary'", TextView.class);
        questionDialogView.mTvSecondary = (TextView) Utils.findRequiredViewAsType(view, 2131363555, "field 'mTvSecondary'", TextView.class);
        questionDialogView.mViewClose = Utils.findRequiredView(view, R$id.call_btn_close, "field 'mViewClose'");
        questionDialogView.mAnswerButtons = (TextView[]) Utils.arrayFilteringNull((TextView) Utils.findRequiredViewAsType(view, R$id.question_btn1, "field 'mAnswerButtons'", TextView.class), (TextView) Utils.findRequiredViewAsType(view, R$id.question_btn2, "field 'mAnswerButtons'", TextView.class));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        QuestionDialogView questionDialogView = this.f12370a;
        if (questionDialogView != null) {
            this.f12370a = null;
            questionDialogView.mMetaphor = null;
            questionDialogView.mMetaphorBadge = null;
            questionDialogView.mTvPrimary = null;
            questionDialogView.mTvSecondary = null;
            questionDialogView.mViewClose = null;
            questionDialogView.mAnswerButtons = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
