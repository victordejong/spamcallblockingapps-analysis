package com.apptentive.android.sdk.module.messagecenter;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.view.WindowManager;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.messagecenter.model.ApptentiveToastNotification;
import com.apptentive.android.sdk.module.messagecenter.view.ApptentiveNotificationToastView;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager.class */
public class ApptentiveToastNotificationManager {
    private static ApptentiveToastNotificationManager sApptentiveToastNotificationManager;
    private Context context;
    private NotificationManager notificationManager;
    private ApptentiveNotificationToastView tContainer;
    private WindowManager wManager;
    private boolean isProcessingQueue = false;
    private Map<Integer, ApptentiveToastNotification> codeToNotificationMap = new HashMap();
    private Queue<ApptentiveToastNotification> pendingNotificationQueue = new LinkedList();

    private ApptentiveToastNotificationManager(Context context) {
        this.notificationManager = null;
        this.context = context;
        this.wManager = (WindowManager) context.getSystemService("window");
        this.notificationManager = (NotificationManager) context.getSystemService("notification");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doDismiss() {
        if (this.tContainer.getParent() != null) {
            this.wManager.removeView(this.tContainer);
            this.tContainer.postDelayed(new Runnable() { // from class: com.apptentive.android.sdk.module.messagecenter.ApptentiveToastNotificationManager.1
                @Override // java.lang.Runnable
                public void run() {
                    ApptentiveToastNotificationManager.this.processNext();
                }
            }, 1000L);
        }
    }

    public static ApptentiveToastNotificationManager getInstance(Context context, boolean z) {
        ApptentiveToastNotificationManager apptentiveToastNotificationManager;
        synchronized (ApptentiveToastNotificationManager.class) {
            if (context != null) {
                try {
                    if (sApptentiveToastNotificationManager == null) {
                        sApptentiveToastNotificationManager = new ApptentiveToastNotificationManager(context);
                    } else if (z) {
                        sApptentiveToastNotificationManager.updateContext(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            apptentiveToastNotificationManager = sApptentiveToastNotificationManager;
        }
        return apptentiveToastNotificationManager;
    }

    private void notifyInternal(ApptentiveToastNotification apptentiveToastNotification) {
        synchronized (this) {
            if (this.codeToNotificationMap.containsKey(Integer.valueOf(apptentiveToastNotification.getCode()))) {
                this.pendingNotificationQueue.remove(this.codeToNotificationMap.get(Integer.valueOf(apptentiveToastNotification.getCode())));
            }
            this.codeToNotificationMap.put(Integer.valueOf(apptentiveToastNotification.getCode()), apptentiveToastNotification);
            this.pendingNotificationQueue.add(apptentiveToastNotification);
            if (!this.isProcessingQueue) {
                processNext();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processNext() {
        synchronized (this) {
            if (!this.pendingNotificationQueue.isEmpty()) {
                ApptentiveToastNotification poll = this.pendingNotificationQueue.poll();
                this.codeToNotificationMap.remove(Integer.valueOf(poll.getCode()));
                if (poll.getCustomView() == null && poll.isActivateStatusBar()) {
                    this.isProcessingQueue = false;
                    NotificationManager notificationManager = this.notificationManager;
                    int code = poll.getCode();
                    ApptentiveToastNotification.Builder notificationBuilder = poll.getNotificationBuilder();
                    notificationBuilder.setIcon(poll.getIcon());
                    notificationManager.notify(code, notificationBuilder.build());
                }
                this.isProcessingQueue = true;
                showFloatingNotification(poll);
            } else {
                this.isProcessingQueue = false;
            }
        }
    }

    private void showFloatingNotification(ApptentiveToastNotification apptentiveToastNotification) {
        this.tContainer = new ApptentiveNotificationToastView(this.context);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.flags = 1320;
        layoutParams.type = 2010;
        layoutParams.width = -1;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.gravity = 49;
        ApptentiveNotificationToastView apptentiveNotificationToastView = this.tContainer;
        layoutParams.x = apptentiveNotificationToastView.originalLeft;
        layoutParams.y = 0;
        layoutParams.alpha = 1.0f;
        try {
            this.wManager.addView(apptentiveNotificationToastView, layoutParams);
        } catch (Exception e) {
            ErrorMetrics.logException(e);
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.tContainer.rootView, "translationY", -700.0f, 0.0f);
        ofFloat.setDuration(600L);
        ofFloat.start();
        this.tContainer.setNotification(apptentiveToastNotification);
    }

    public void cleanUp() {
        removeAllNotifications();
        ApptentiveNotificationToastView apptentiveNotificationToastView = this.tContainer;
        if (!(apptentiveNotificationToastView == null || apptentiveNotificationToastView.getParent() == null)) {
            this.wManager.removeView(this.tContainer);
        }
        this.wManager = null;
        this.notificationManager = null;
        sApptentiveToastNotificationManager = null;
    }

    public void notify(int i, ApptentiveToastNotification apptentiveToastNotification) {
        synchronized (this) {
            apptentiveToastNotification.setCode(i);
            notifyInternal(apptentiveToastNotification);
        }
    }

    public void notifyDefaultSilently(ApptentiveToastNotification apptentiveToastNotification) {
        Notification defaultSilentNotification = apptentiveToastNotification.getDefaultSilentNotification();
        if (defaultSilentNotification != null) {
            this.notificationManager.notify(apptentiveToastNotification.getCode(), defaultSilentNotification);
        }
    }

    public void removeAllNotifications() {
        this.pendingNotificationQueue.clear();
        ApptentiveNotificationToastView apptentiveNotificationToastView = this.tContainer;
        if (apptentiveNotificationToastView != null && apptentiveNotificationToastView.getParent() != null) {
            startDismissalAnimation();
        }
    }

    public void startDismissalAnimation() {
        ApptentiveNotificationToastView apptentiveNotificationToastView = this.tContainer;
        if (apptentiveNotificationToastView != null && apptentiveNotificationToastView.getParent() != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.tContainer.rootView, "translationY", 0.0f, -700.0f);
            ofFloat.setDuration(600L);
            ofFloat.start();
            ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.apptentive.android.sdk.module.messagecenter.ApptentiveToastNotificationManager.2
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ApptentiveToastNotificationManager.this.doDismiss();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            });
        }
    }

    public void startDismissalAnimationAt(ApptentiveToastNotification apptentiveToastNotification) {
        ApptentiveNotificationToastView apptentiveNotificationToastView = this.tContainer;
        if (apptentiveNotificationToastView != null && apptentiveNotificationToastView.getParent() != null && this.tContainer.getApptentiveFloatingNotification().getCode() == apptentiveToastNotification.getCode()) {
            startDismissalAnimation();
        }
    }

    public void updateContext(Context context) {
        this.context = context;
        this.wManager = (WindowManager) context.getSystemService("window");
    }
}
