package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView.class */
public class PlayableLoadingView extends FrameLayout {

    /* renamed from: a */
    private ProgressBar f17448a;

    /* renamed from: b */
    private TextView f17449b;

    /* renamed from: c */
    private TextView f17450c;

    public PlayableLoadingView(Context context) {
        super(context);
        m34081a(context);
    }

    public PlayableLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m34081a(context);
    }

    public PlayableLoadingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m34081a(context);
    }

    /* renamed from: a */
    private void m34081a(Context context) {
        setBackgroundColor(Color.parseColor("#0D1833"));
        setClickable(true);
        setVisibility(8);
        LayoutInflater.from(context).inflate(C5486x.m32065f(context, "tt_playable_loading_layout"), (ViewGroup) this, true);
        this.f17448a = (ProgressBar) findViewById(C5486x.m32066e(context, "tt_playable_pb_view"));
        this.f17449b = (TextView) findViewById(C5486x.m32066e(context, "tt_playable_progress_tip"));
        this.f17450c = (TextView) findViewById(C5486x.m32066e(context, "tt_playable_play"));
    }

    /* renamed from: a */
    public void m34082a() {
        setVisibility(8);
    }

    /* renamed from: b */
    public void m34080b() {
        setVisibility(0);
    }

    public TextView getPlayView() {
        return this.f17450c;
    }

    public void setProgress(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        int i3 = i2;
        if (i2 > 100) {
            i3 = 100;
        }
        ProgressBar progressBar = this.f17448a;
        if (progressBar != null) {
            progressBar.setProgress(i3);
        }
        TextView textView = this.f17449b;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf(i3)));
        }
    }
}
