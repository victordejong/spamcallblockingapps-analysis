package net.pubnative.lite.sdk.vpaid.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import net.pubnative.lite.sdk.core.R;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/widget/CountDownView.class */
public class CountDownView extends FrameLayout {
    private ProgressBar progressBarView;
    private TextView progressTextView;

    public CountDownView(Context context) {
        super(context);
        init(context);
    }

    public CountDownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public CountDownView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        View inflate = inflate(context, R.layout.player_count_down, this);
        this.progressBarView = (ProgressBar) inflate.findViewById(R.id.view_progress_bar);
        this.progressTextView = (TextView) inflate.findViewById(R.id.view_progress_text);
        RotateAnimation rotateAnimation = new RotateAnimation(BitmapDescriptorFactory.HUE_RED, -90.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setFillAfter(true);
        this.progressBarView.startAnimation(rotateAnimation);
    }

    public void setProgress(int i, int i2) {
        this.progressBarView.setMax(i2);
        this.progressBarView.setSecondaryProgress(i2);
        this.progressBarView.setProgress(i);
        this.progressTextView.setText(String.valueOf(((i2 - i) / 1000) + 1));
    }
}
