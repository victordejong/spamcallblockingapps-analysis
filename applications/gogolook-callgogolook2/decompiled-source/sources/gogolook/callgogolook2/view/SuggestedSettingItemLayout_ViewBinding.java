package gogolook.callgogolook2.view;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SuggestedSettingItemLayout_ViewBinding.class */
public class SuggestedSettingItemLayout_ViewBinding implements Unbinder {

    /* renamed from: a */
    public SuggestedSettingItemLayout f13110a;

    @UiThread
    public SuggestedSettingItemLayout_ViewBinding(SuggestedSettingItemLayout suggestedSettingItemLayout, View view) {
        this.f13110a = suggestedSettingItemLayout;
        suggestedSettingItemLayout.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_title, "field 'mTvTitle'", TextView.class);
        suggestedSettingItemLayout.mTvContent = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_content, "field 'mTvContent'", TextView.class);
        suggestedSettingItemLayout.mTvAllowBtn = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_allow_btn, "field 'mTvAllowBtn'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SuggestedSettingItemLayout suggestedSettingItemLayout = this.f13110a;
        if (suggestedSettingItemLayout != null) {
            this.f13110a = null;
            suggestedSettingItemLayout.mTvTitle = null;
            suggestedSettingItemLayout.mTvContent = null;
            suggestedSettingItemLayout.mTvAllowBtn = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
