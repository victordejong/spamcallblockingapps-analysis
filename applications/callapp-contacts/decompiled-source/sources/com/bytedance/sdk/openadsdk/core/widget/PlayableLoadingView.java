package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.utils.x;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView.class */
public class PlayableLoadingView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private ProgressBar f9280a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f9281b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f9282c;

    public PlayableLoadingView(Context context) {
        super(context);
        a(context);
    }

    public PlayableLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public PlayableLoadingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        setBackgroundColor(Color.parseColor("#0D1833"));
        setClickable(true);
        setVisibility(8);
        LayoutInflater.from(context).inflate(x.f(context, "tt_playable_loading_layout"), (ViewGroup) this, true);
        this.f9280a = (ProgressBar) findViewById(x.e(context, "tt_playable_pb_view"));
        this.f9281b = (TextView) findViewById(x.e(context, "tt_playable_progress_tip"));
        this.f9282c = (TextView) findViewById(x.e(context, "tt_playable_play"));
    }

    public void a() {
        setVisibility(8);
    }

    public void b() {
        setVisibility(0);
    }

    public TextView getPlayView() {
        return this.f9282c;
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
        ProgressBar progressBar = this.f9280a;
        if (progressBar != null) {
            progressBar.setProgress(i3);
        }
        TextView textView = this.f9281b;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf(i3)));
        }
    }
}
