package com.mixpanel.android.mpmetrics;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import com.mixpanel.android.C1492R;
import com.mixpanel.android.mpmetrics.UpdateDisplayState;
import com.mixpanel.android.util.MPLog;
import com.mixpanel.android.util.ViewUtils;
import org.json.JSONException;
import org.json.JSONObject;
@SuppressLint({"ClickableViewAccessibility"})
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/InAppFragment.class */
public class InAppFragment extends Fragment {
    private static final String LOGTAG = "MixpanelAPI.InAppFrag";
    private static final int MINI_REMOVE_TIME = 10000;
    private boolean mCleanedUp;
    private GestureDetector mDetector;
    private Runnable mDisplayMini;
    private UpdateDisplayState.DisplayState.InAppNotificationState mDisplayState;
    private int mDisplayStateId;
    private Handler mHandler;
    private View mInAppView;
    private MixpanelAPI mMixpanel;
    private Activity mParent;
    private Runnable mRemover;

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/InAppFragment$SineBounceInterpolator.class */
    private class SineBounceInterpolator implements Interpolator {
        public SineBounceInterpolator() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return ((float) (-(Math.pow(2.718281828459045d, (-8.0f) * f) * Math.cos(f * 12.0f)))) + 1.0f;
        }
    }

    private void cleanUp() {
        if (!this.mCleanedUp) {
            this.mHandler.removeCallbacks(this.mRemover);
            this.mHandler.removeCallbacks(this.mDisplayMini);
            UpdateDisplayState.releaseDisplayState(this.mDisplayStateId);
            this.mParent.getFragmentManager().beginTransaction().remove(this).commit();
        }
        this.mCleanedUp = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void remove() {
        boolean isDestroyed = Build.VERSION.SDK_INT >= 17 ? this.mParent.isDestroyed() : false;
        if (this.mParent != null && !this.mParent.isFinishing() && !isDestroyed && !this.mCleanedUp) {
            this.mHandler.removeCallbacks(this.mRemover);
            this.mHandler.removeCallbacks(this.mDisplayMini);
            this.mParent.getFragmentManager().beginTransaction().setCustomAnimations(0, C1492R.animator.com_mixpanel_android_slide_down).remove(this).commit();
            UpdateDisplayState.releaseDisplayState(this.mDisplayStateId);
            this.mCleanedUp = true;
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mParent = activity;
        if (this.mDisplayState == null) {
            cleanUp();
            return;
        }
        this.mHandler = new Handler();
        this.mRemover = new Runnable() { // from class: com.mixpanel.android.mpmetrics.InAppFragment.1
            @Override // java.lang.Runnable
            public void run() {
                InAppFragment.this.remove();
            }
        };
        this.mDisplayMini = new Runnable() { // from class: com.mixpanel.android.mpmetrics.InAppFragment.2
            @Override // java.lang.Runnable
            public void run() {
                InAppFragment.this.mInAppView.setVisibility(0);
                InAppFragment.this.mInAppView.setOnTouchListener(new View.OnTouchListener() { // from class: com.mixpanel.android.mpmetrics.InAppFragment.2.1
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        return InAppFragment.this.mDetector.onTouchEvent(motionEvent);
                    }
                });
                ImageView imageView = (ImageView) InAppFragment.this.mInAppView.findViewById(C1492R.C1495id.com_mixpanel_android_notification_image);
                float applyDimension = TypedValue.applyDimension(1, 65.0f, InAppFragment.this.mParent.getResources().getDisplayMetrics());
                TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, applyDimension, 0.0f);
                translateAnimation.setInterpolator(new DecelerateInterpolator());
                translateAnimation.setDuration(200L);
                InAppFragment.this.mInAppView.startAnimation(translateAnimation);
                float f = applyDimension / 2.0f;
                ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, f, f);
                scaleAnimation.setInterpolator(new SineBounceInterpolator());
                scaleAnimation.setDuration(400L);
                scaleAnimation.setStartOffset(200L);
                imageView.startAnimation(scaleAnimation);
            }
        };
        this.mDetector = new GestureDetector(activity, new GestureDetector.OnGestureListener() { // from class: com.mixpanel.android.mpmetrics.InAppFragment.3
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (f2 <= 0.0f) {
                    return true;
                }
                InAppFragment.this.remove();
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                MiniInAppNotification miniInAppNotification = (MiniInAppNotification) InAppFragment.this.mDisplayState.getInAppNotification();
                String ctaUrl = miniInAppNotification.getCtaUrl();
                r6 = null;
                JSONObject jSONObject = null;
                if (ctaUrl != null) {
                    jSONObject = null;
                    if (ctaUrl.length() > 0) {
                        try {
                            Uri parse = Uri.parse(ctaUrl);
                            try {
                                InAppFragment.this.mParent.startActivity(new Intent("android.intent.action.VIEW", parse));
                            } catch (ActivityNotFoundException e) {
                                MPLog.m309i(InAppFragment.LOGTAG, "User doesn't have an activity for notification URI " + parse);
                            }
                            try {
                                jSONObject = new JSONObject();
                                try {
                                    jSONObject.put("url", ctaUrl);
                                } catch (JSONException e2) {
                                    MPLog.m311e(InAppFragment.LOGTAG, "Can't put url into json properties");
                                    InAppFragment.this.mMixpanel.getPeople().trackNotification("$campaign_open", miniInAppNotification, jSONObject);
                                    InAppFragment.this.remove();
                                    return true;
                                }
                            } catch (JSONException e3) {
                            }
                        } catch (IllegalArgumentException e4) {
                            MPLog.m308i(InAppFragment.LOGTAG, "Can't parse notification URI, will not take any action", e4);
                            return true;
                        }
                    }
                }
                InAppFragment.this.mMixpanel.getPeople().trackNotification("$campaign_open", miniInAppNotification, jSONObject);
                InAppFragment.this.remove();
                return true;
            }
        });
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mCleanedUp = false;
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.mDisplayState == null) {
            cleanUp();
        } else {
            this.mInAppView = layoutInflater.inflate(C1492R.C1496layout.com_mixpanel_android_activity_notification_mini, viewGroup, false);
            TextView textView = (TextView) this.mInAppView.findViewById(C1492R.C1495id.com_mixpanel_android_notification_title);
            ImageView imageView = (ImageView) this.mInAppView.findViewById(C1492R.C1495id.com_mixpanel_android_notification_image);
            MiniInAppNotification miniInAppNotification = (MiniInAppNotification) this.mDisplayState.getInAppNotification();
            textView.setText(miniInAppNotification.getBody());
            textView.setTextColor(miniInAppNotification.getBodyColor());
            imageView.setImageBitmap(miniInAppNotification.getImage());
            this.mHandler.postDelayed(this.mRemover, 10000L);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(miniInAppNotification.getBackgroundColor());
            gradientDrawable.setCornerRadius(ViewUtils.dpToPx(7.0f, getActivity()));
            gradientDrawable.setStroke((int) ViewUtils.dpToPx(2.0f, getActivity()), miniInAppNotification.getBorderColor());
            if (Build.VERSION.SDK_INT < 16) {
                this.mInAppView.setBackgroundDrawable(gradientDrawable);
            } else {
                this.mInAppView.setBackground(gradientDrawable);
            }
            BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), this.mDisplayState.getInAppNotification().getImage());
            bitmapDrawable.setColorFilter(miniInAppNotification.getImageTintColor(), PorterDuff.Mode.SRC_ATOP);
            imageView.setImageDrawable(bitmapDrawable);
        }
        return this.mInAppView;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        cleanUp();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.mHandler.postDelayed(this.mDisplayMini, 500L);
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        cleanUp();
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.mCleanedUp) {
            this.mParent.getFragmentManager().beginTransaction().remove(this).commit();
        }
    }

    public void setDisplayState(MixpanelAPI mixpanelAPI, int i, UpdateDisplayState.DisplayState.InAppNotificationState inAppNotificationState) {
        this.mMixpanel = mixpanelAPI;
        this.mDisplayStateId = i;
        this.mDisplayState = inAppNotificationState;
    }
}
