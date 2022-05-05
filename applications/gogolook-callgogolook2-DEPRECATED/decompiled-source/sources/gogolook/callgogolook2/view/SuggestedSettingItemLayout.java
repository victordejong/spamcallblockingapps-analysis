package gogolook.callgogolook2.view;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.StringRes;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SuggestedSettingItemLayout.class */
public class SuggestedSettingItemLayout {
    @BindView(R$id.tv_allow_btn)
    public TextView mTvAllowBtn;
    @BindView(R$id.tv_content)
    public TextView mTvContent;
    @BindView(R$id.tv_title)
    public TextView mTvTitle;

    public SuggestedSettingItemLayout(View view) {
        ButterKnife.bind(this, view);
    }

    /* renamed from: a */
    public void m25849a(@StringRes int i, @StringRes int i2, @StringRes int i3, View.OnClickListener onClickListener) {
        TextView textView = this.mTvTitle;
        if (textView != null && this.mTvContent != null && this.mTvAllowBtn != null) {
            textView.setText(i);
            this.mTvContent.setText(i2);
            this.mTvAllowBtn.setText(i3);
            this.mTvAllowBtn.setOnClickListener(onClickListener);
        }
    }
}
