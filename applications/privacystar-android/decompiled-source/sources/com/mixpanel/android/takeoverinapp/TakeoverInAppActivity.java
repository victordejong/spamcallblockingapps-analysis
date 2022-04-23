package com.mixpanel.android.takeoverinapp;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Point;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mixpanel.android.C1492R;
import com.mixpanel.android.mpmetrics.InAppButton;
import com.mixpanel.android.mpmetrics.InAppNotification;
import com.mixpanel.android.mpmetrics.MixpanelAPI;
import com.mixpanel.android.mpmetrics.TakeoverInAppNotification;
import com.mixpanel.android.mpmetrics.UpdateDisplayState;
import com.mixpanel.android.util.MPLog;
import com.mixpanel.android.util.ViewUtils;
import java.util.ArrayList;
import java.util.Iterator;
@SuppressLint({"ClickableViewAccessibility"})
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/takeoverinapp/TakeoverInAppActivity.class */
public class TakeoverInAppActivity extends Activity {
    public static final String INTENT_ID_KEY = "com.mixpanel.android.takeoverinapp.TakeoverInAppActivity.INTENT_ID_KEY";
    private static final String LOGTAG = "MixpanelAPI.TakeoverInAppActivity";
    private int mIntentId = -1;
    private MixpanelAPI mMixpanel;
    private UpdateDisplayState mUpdateDisplayState;

    private void onCreateInAppNotification() {
        setContentView(C1492R.C1496layout.com_mixpanel_android_activity_notification_full);
        ImageView imageView = (ImageView) findViewById(C1492R.C1495id.com_mixpanel_android_notification_gradient);
        FadingImageView fadingImageView = (FadingImageView) findViewById(C1492R.C1495id.com_mixpanel_android_notification_image);
        TextView textView = (TextView) findViewById(C1492R.C1495id.com_mixpanel_android_notification_title);
        TextView textView2 = (TextView) findViewById(C1492R.C1495id.com_mixpanel_android_notification_subtext);
        ArrayList<Button> arrayList = new ArrayList<>();
        Button button = (Button) findViewById(C1492R.C1495id.com_mixpanel_android_notification_button);
        arrayList.add(button);
        arrayList.add((Button) findViewById(C1492R.C1495id.com_mixpanel_android_notification_second_button));
        LinearLayout linearLayout = (LinearLayout) findViewById(C1492R.C1495id.com_mixpanel_android_button_exit_wrapper);
        ImageView imageView2 = (ImageView) findViewById(C1492R.C1495id.com_mixpanel_android_image_close);
        TakeoverInAppNotification takeoverInAppNotification = (TakeoverInAppNotification) ((UpdateDisplayState.DisplayState.InAppNotificationState) this.mUpdateDisplayState.getDisplayState()).getInAppNotification();
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        if (getResources().getConfiguration().orientation == 1) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
            layoutParams.setMargins(0, 0, 0, (int) (point.y * 0.06f));
            linearLayout.setLayoutParams(layoutParams);
        }
        fadingImageView.showShadow(takeoverInAppNotification.setShouldShowShadow());
        imageView.setBackgroundColor(takeoverInAppNotification.getBackgroundColor());
        if (takeoverInAppNotification.hasTitle()) {
            textView.setVisibility(0);
            textView.setText(takeoverInAppNotification.getTitle());
            textView.setTextColor(takeoverInAppNotification.getTitleColor());
        } else {
            textView.setVisibility(8);
        }
        if (takeoverInAppNotification.hasBody()) {
            textView2.setVisibility(0);
            textView2.setText(takeoverInAppNotification.getBody());
            textView2.setTextColor(takeoverInAppNotification.getBodyColor());
        } else {
            textView2.setVisibility(8);
        }
        fadingImageView.setImageBitmap(takeoverInAppNotification.getImage());
        for (int i = 0; i < arrayList.size(); i++) {
            setUpInAppButton(arrayList.get(i), takeoverInAppNotification.getButton(i), takeoverInAppNotification, i);
        }
        if (takeoverInAppNotification.getNumButtons() == 1) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button.getLayoutParams();
            layoutParams2.weight = 0.0f;
            layoutParams2.width = -2;
            button.setLayoutParams(layoutParams2);
        }
        imageView2.setColorFilter(takeoverInAppNotification.getCloseColor());
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mixpanel.android.takeoverinapp.TakeoverInAppActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TakeoverInAppActivity.this.finish();
                UpdateDisplayState.releaseDisplayState(TakeoverInAppActivity.this.mIntentId);
            }
        });
        setUpNotificationAnimations(fadingImageView, textView, textView2, arrayList, linearLayout);
    }

    private void setUpInAppButton(Button button, final InAppButton inAppButton, final InAppNotification inAppNotification, final int i) {
        if (inAppButton != null) {
            button.setVisibility(0);
            button.setText(inAppButton.getText());
            button.setTextColor(inAppButton.getTextColor());
            button.setTransformationMethod(null);
            final GradientDrawable gradientDrawable = new GradientDrawable();
            final int i2 = 864454278;
            if (inAppButton.getBackgroundColor() != 0) {
                i2 = ViewUtils.mixColors(inAppButton.getBackgroundColor(), 864454278);
            }
            button.setOnTouchListener(new View.OnTouchListener() { // from class: com.mixpanel.android.takeoverinapp.TakeoverInAppActivity.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        gradientDrawable.setColor(i2);
                        return false;
                    }
                    gradientDrawable.setColor(inAppButton.getBackgroundColor());
                    return false;
                }
            });
            gradientDrawable.setColor(inAppButton.getBackgroundColor());
            gradientDrawable.setStroke((int) ViewUtils.dpToPx(2.0f, this), inAppButton.getBorderColor());
            gradientDrawable.setCornerRadius((int) ViewUtils.dpToPx(5.0f, this));
            if (Build.VERSION.SDK_INT < 16) {
                button.setBackgroundDrawable(gradientDrawable);
            } else {
                button.setBackground(gradientDrawable);
            }
            button.setOnClickListener(new View.OnClickListener() { // from class: com.mixpanel.android.takeoverinapp.TakeoverInAppActivity.3
                /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x0090  */
                @Override // android.view.View.OnClickListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onClick(android.view.View r6) {
                    /*
                        Method dump skipped, instructions count: 232
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.takeoverinapp.TakeoverInAppActivity.View$OnClickListenerC15383.onClick(android.view.View):void");
                }
            });
            return;
        }
        button.setVisibility(8);
    }

    private void setUpNotificationAnimations(ImageView imageView, TextView textView, TextView textView2, ArrayList<Button> arrayList, LinearLayout linearLayout) {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.95f, 1.0f, 0.95f, 1.0f, 1, 0.5f, 1, 1.0f);
        scaleAnimation.setDuration(200L);
        imageView.startAnimation(scaleAnimation);
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.5f, 1, 0.0f);
        translateAnimation.setInterpolator(new DecelerateInterpolator());
        translateAnimation.setDuration(200L);
        textView.startAnimation(translateAnimation);
        textView2.startAnimation(translateAnimation);
        Iterator<Button> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().startAnimation(translateAnimation);
        }
        linearLayout.startAnimation(AnimationUtils.loadAnimation(this, C1492R.anim.com_mixpanel_android_fade_in));
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        UpdateDisplayState.releaseDisplayState(this.mIntentId);
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mIntentId = getIntent().getIntExtra(INTENT_ID_KEY, Integer.MAX_VALUE);
        this.mUpdateDisplayState = UpdateDisplayState.claimDisplayState(this.mIntentId);
        if (this.mUpdateDisplayState == null) {
            MPLog.m311e(LOGTAG, "TakeoverInAppActivity intent received, but nothing was found to show.");
            finish();
            return;
        }
        this.mMixpanel = MixpanelAPI.getInstance(this, this.mUpdateDisplayState.getToken());
        onCreateInAppNotification();
    }
}
