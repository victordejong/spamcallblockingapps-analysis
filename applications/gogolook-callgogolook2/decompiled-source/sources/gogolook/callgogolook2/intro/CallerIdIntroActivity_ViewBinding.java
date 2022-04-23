package gogolook.callgogolook2.intro;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.viewpagerindicator.CirclePageIndicator;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.view.CustomViewPager;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/CallerIdIntroActivity_ViewBinding.class */
public class CallerIdIntroActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public CallerIdIntroActivity f10831a;

    @UiThread
    public CallerIdIntroActivity_ViewBinding(CallerIdIntroActivity callerIdIntroActivity, View view) {
        this.f10831a = callerIdIntroActivity;
        callerIdIntroActivity.mPager = (CustomViewPager) Utils.findRequiredViewAsType(view, R$id.pager, "field 'mPager'", CustomViewPager.class);
        callerIdIntroActivity.mIndicator = (CirclePageIndicator) Utils.findRequiredViewAsType(view, R$id.indicator, "field 'mIndicator'", CirclePageIndicator.class);
        callerIdIntroActivity.mTvSkip = Utils.findRequiredView(view, R$id.tv_skip, "field 'mTvSkip'");
        callerIdIntroActivity.mTvStart = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_start, "field 'mTvStart'", TextView.class);
        callerIdIntroActivity.mTvDesc = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_description, "field 'mTvDesc'", TextView.class);
        callerIdIntroActivity.mTvTos = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_tos, "field 'mTvTos'", TextView.class);
        callerIdIntroActivity.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_title, "field 'mTvTitle'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CallerIdIntroActivity callerIdIntroActivity = this.f10831a;
        if (callerIdIntroActivity != null) {
            this.f10831a = null;
            callerIdIntroActivity.mPager = null;
            callerIdIntroActivity.mIndicator = null;
            callerIdIntroActivity.mTvSkip = null;
            callerIdIntroActivity.mTvStart = null;
            callerIdIntroActivity.mTvDesc = null;
            callerIdIntroActivity.mTvTos = null;
            callerIdIntroActivity.mTvTitle = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
