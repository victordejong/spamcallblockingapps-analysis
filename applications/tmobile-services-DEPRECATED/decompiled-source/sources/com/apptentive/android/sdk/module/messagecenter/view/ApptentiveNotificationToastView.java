package com.apptentive.android.sdk.module.messagecenter.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.messagecenter.ApptentiveToastNotificationManager;
import com.apptentive.android.sdk.module.messagecenter.model.ApptentiveToastNotification;
import com.apptentive.android.sdk.util.image.ImageUtil;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView.class */
public class ApptentiveNotificationToastView extends LinearLayout {
    private ApptentiveToastNotification apptentiveNotification;
    private long countDown;
    private CountDownTimer countDownTimer;
    private int maxVelocity;
    private int pointerId;
    private int preLeft;
    public LinearLayout rootView;
    private View toastView;
    private float validWidth;
    private VelocityTracker velocityTracker;
    public int viewWidth;
    private float rawX = 0.0f;
    private float rawY = 0.0f;
    private float touchX = 0.0f;
    private float startY = 0.0f;
    private Handler mHandle = null;
    private ScrollOrientationEnum scrollOrientationEnum = ScrollOrientationEnum.NONE;
    public int originalLeft = 0;

    /* renamed from: com.apptentive.android.sdk.module.messagecenter.view.ApptentiveNotificationToastView$3 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$3.class */
    static /* synthetic */ class C08593 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$messagecenter$view$ApptentiveNotificationToastView$ScrollOrientationEnum */
        static final /* synthetic */ int[] f6462x42880402;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ScrollOrientationEnum.values().length];
            f6462x42880402 = iArr;
            try {
                iArr[ScrollOrientationEnum.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6462x42880402[ScrollOrientationEnum.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6462x42880402[ScrollOrientationEnum.VERTICAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$CountDownTimer.class */
    public class CountDownTimer extends Thread {
        private CountDownTimer() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (ApptentiveNotificationToastView.this.countDown > 0) {
                try {
                    Thread.sleep(1000L);
                    ApptentiveNotificationToastView.access$010(ApptentiveNotificationToastView.this);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    ApptentiveNotificationToastView.this.logException(e);
                }
            }
            if (ApptentiveNotificationToastView.this.countDown == 0) {
                ApptentiveNotificationToastView.this.mHandle.sendEmptyMessage(0);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum.class */
    enum ScrollOrientationEnum {
        VERTICAL,
        HORIZONTAL,
        NONE
    }

    public ApptentiveNotificationToastView(Context context) {
        super(context);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(getContext()).inflate(C0726R.layout.apptentive_notification_toast_container, (ViewGroup) null);
        this.maxVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        this.rootView = (LinearLayout) linearLayout.findViewById(C0726R.C0729id.rootView);
        addView(linearLayout);
        int i = context.getResources().getDisplayMetrics().widthPixels;
        this.viewWidth = i;
        this.validWidth = i / 2.0f;
    }

    static /* synthetic */ long access$010(ApptentiveNotificationToastView apptentiveNotificationToastView) {
        long j = apptentiveNotificationToastView.countDown;
        apptentiveNotificationToastView.countDown = j - 1;
        return j;
    }

    private void acquireVelocityTracker(MotionEvent motionEvent) {
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    public void dismiss() {
        ApptentiveToastNotificationManager.getInstance(getContext(), false).startDismissalAnimation();
        this.countDown = -1L;
        this.countDownTimer.interrupt();
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            try {
                velocityTracker.clear();
                this.velocityTracker.recycle();
            } catch (IllegalStateException e) {
                logException(e);
            }
        }
    }

    public ApptentiveToastNotification getApptentiveFloatingNotification() {
        return this.apptentiveNotification;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.rawX = motionEvent.getRawX();
        this.rawY = motionEvent.getRawY();
        acquireVelocityTracker(motionEvent);
        this.countDown = this.apptentiveNotification.getDuration();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.touchX = motionEvent.getX();
            this.startY = motionEvent.getRawY();
            this.pointerId = motionEvent.getPointerId(0);
            this.rootView.setBackgroundDrawable(getResources().getDrawable(C0726R.C0728drawable.apptentive_toast_bg_dark_pressed));
        } else if (action == 1) {
            this.toastView.setBackgroundColor(getResources().getColor(17170445));
            this.velocityTracker.computeCurrentVelocity(1000, this.maxVelocity);
            int yVelocity = (int) this.velocityTracker.getYVelocity(this.pointerId);
            if (this.scrollOrientationEnum != ScrollOrientationEnum.NONE) {
                int i = this.preLeft;
                float abs = i > 0 ? i + Math.abs(yVelocity) : i - Math.abs(yVelocity);
                float f = this.validWidth;
                if (abs <= (-f)) {
                    float abs2 = 1.0f - (Math.abs(this.preLeft) / this.validWidth);
                    if (abs2 < 0.0f) {
                        abs2 = 0.0f;
                    }
                    translationX(this.preLeft, -(this.validWidth + 10.0f), abs2, 0.0f);
                } else if (abs <= f) {
                    float abs3 = 1.0f - (Math.abs(this.preLeft) / this.validWidth);
                    if (abs3 < 0.0f) {
                        abs3 = 0.0f;
                    }
                    translationX(this.preLeft, 0.0f, abs3, 1.0f);
                } else {
                    float abs4 = 1.0f - (Math.abs(this.preLeft) / this.validWidth);
                    if (abs4 < 0.0f) {
                        abs4 = 0.0f;
                    }
                    translationX(this.preLeft, this.validWidth + 10.0f, abs4, 0.0f);
                }
                this.preLeft = 0;
                this.scrollOrientationEnum = ScrollOrientationEnum.NONE;
            } else if (this.apptentiveNotification.getNotification().contentIntent != null) {
                try {
                    this.apptentiveNotification.getNotification().contentIntent.send();
                    dismiss();
                } catch (PendingIntent.CanceledException e) {
                    e.printStackTrace();
                    logException(e);
                }
            }
        } else if (action == 2) {
            int i2 = C08593.f6462x42880402[this.scrollOrientationEnum.ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    updatePosition((int) (this.rawX - this.touchX));
                } else if (i2 == 3 && this.startY - this.rawY > 20.0f) {
                    dismiss();
                }
            } else if (Math.abs(this.rawX - this.touchX) > 20.0f) {
                this.scrollOrientationEnum = ScrollOrientationEnum.HORIZONTAL;
            } else if (this.startY - this.rawY > 20.0f) {
                this.scrollOrientationEnum = ScrollOrientationEnum.VERTICAL;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCustomView(View view) {
        this.rootView.addView(view);
    }

    public void setNotification(ApptentiveToastNotification apptentiveToastNotification) {
        this.apptentiveNotification = apptentiveToastNotification;
        this.mHandle = new Handler() { // from class: com.apptentive.android.sdk.module.messagecenter.view.ApptentiveNotificationToastView.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (ApptentiveNotificationToastView.this.apptentiveNotification.isActivateStatusBar()) {
                    ApptentiveToastNotificationManager.getInstance(ApptentiveNotificationToastView.this.getContext(), false).notifyDefaultSilently(ApptentiveNotificationToastView.this.apptentiveNotification);
                }
                ApptentiveToastNotificationManager.getInstance(ApptentiveNotificationToastView.this.getContext(), false).startDismissalAnimationAt(ApptentiveNotificationToastView.this.apptentiveNotification);
            }
        };
        this.countDownTimer = new CountDownTimer();
        if (!this.apptentiveNotification.isSticky()) {
            this.countDownTimer.start();
        }
        this.countDown = this.apptentiveNotification.getDuration();
        if (this.apptentiveNotification.getCustomView() == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(C0726R.layout.apptentive_notification_toast, (ViewGroup) this.rootView, false);
            this.toastView = inflate;
            this.rootView.addView(inflate);
            ApptentiveAvatarView apptentiveAvatarView = (ApptentiveAvatarView) this.toastView.findViewById(C0726R.C0729id.toast_avatar);
            TextView textView = (TextView) this.toastView.findViewById(C0726R.C0729id.toast_title);
            TextView textView2 = (TextView) this.toastView.findViewById(C0726R.C0729id.toast_timestamp);
            TextView textView3 = (TextView) this.toastView.findViewById(C0726R.C0729id.toast_message);
            if (this.apptentiveNotification.getAvatarUrl() != null) {
                ImageUtil.startDownloadAvatarTask(apptentiveAvatarView, this.apptentiveNotification.getAvatarUrl());
            } else {
                apptentiveAvatarView.setImageResource(this.apptentiveNotification.getIcon());
            }
            textView.setText(this.apptentiveNotification.getTitleStr());
            textView3.setText(this.apptentiveNotification.getMsgStr());
            textView2.setText(new SimpleDateFormat("HH:mm").format(new Date()));
            return;
        }
        setCustomView(this.apptentiveNotification.getCustomView());
    }

    public void translationX(float f, float f2, float f3, final float f4) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.rootView, "alpha", f3, f4);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.rootView, "translationX", f, f2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.apptentive.android.sdk.module.messagecenter.view.ApptentiveNotificationToastView.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (f4 == 0.0f) {
                    ApptentiveToastNotificationManager.getInstance(ApptentiveNotificationToastView.this.getContext(), false).startDismissalAnimation();
                    ApptentiveNotificationToastView.this.countDown = -1L;
                    if (ApptentiveNotificationToastView.this.velocityTracker != null) {
                        ApptentiveNotificationToastView.this.velocityTracker.clear();
                        try {
                            ApptentiveNotificationToastView.this.velocityTracker.recycle();
                        } catch (IllegalStateException e) {
                            ApptentiveNotificationToastView.this.logException(e);
                        }
                    }
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        animatorSet.start();
    }

    public void updatePosition(int i) {
        float abs = 1.0f - (Math.abs(this.preLeft) / this.validWidth);
        float abs2 = 1.0f - (Math.abs(i) / this.validWidth);
        if (abs < 0.0f) {
            abs = 0.0f;
        }
        if (abs2 < 0.0f) {
            abs2 = 0.0f;
        }
        translationX(this.preLeft, i, abs, abs2);
        this.preLeft = i;
    }
}
