package com.apptentive.android.sdk.module.messagecenter.model;

import android.app.Notification;
import android.content.Context;
import android.view.View;
import androidx.core.app.NotificationCompat;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification.class */
public class ApptentiveToastNotification {
    private boolean activateStatusBar;
    private Builder builder;
    private int code;
    private View customView;
    private long duration;
    private int iconRes;
    private String imageUrl;
    private boolean isSticky;
    private CharSequence msgStr;
    private Notification notificationDelegate;
    private CharSequence titleStr;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification$Builder.class */
    public static class Builder extends NotificationCompat.Builder {
        private ApptentiveToastNotification apptentiveNotification;

        public Builder(Context context) {
            super(context);
            this.apptentiveNotification = new ApptentiveToastNotification(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Notification buildDefaultSilentNotification() {
            super.setSmallIcon(this.apptentiveNotification.getIcon());
            setDefaults(0);
            return build();
        }

        public ApptentiveToastNotification buildApptentiveToastNotification() {
            this.apptentiveNotification.setNotification(build());
            this.apptentiveNotification.setNotificationBuilder(this);
            return this.apptentiveNotification;
        }

        @Override // androidx.core.app.NotificationCompat.Builder
        public Builder setContentText(CharSequence charSequence) {
            this.apptentiveNotification.setMessage(charSequence);
            super.setContentText(charSequence);
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Builder
        public Builder setContentTitle(CharSequence charSequence) {
            this.apptentiveNotification.setTitle(charSequence);
            super.setContentTitle(charSequence);
            return this;
        }

        public Builder setIcon(int i) {
            super.setSmallIcon(i);
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Builder
        public Builder setSmallIcon(int i) {
            this.apptentiveNotification.setIcon(i);
            return this;
        }
    }

    private ApptentiveToastNotification(Context context) {
        this.duration = 5L;
        this.isSticky = false;
        this.activateStatusBar = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNotificationBuilder(Builder builder) {
        this.builder = builder;
    }

    public String getAvatarUrl() {
        return this.imageUrl;
    }

    public int getCode() {
        return this.code;
    }

    public View getCustomView() {
        return this.customView;
    }

    public Notification getDefaultSilentNotification() {
        return getNotificationBuilder().buildDefaultSilentNotification();
    }

    public long getDuration() {
        return this.duration;
    }

    public int getIcon() {
        return this.iconRes;
    }

    public CharSequence getMsgStr() {
        return this.msgStr;
    }

    public Notification getNotification() {
        return this.notificationDelegate;
    }

    public Builder getNotificationBuilder() {
        return this.builder;
    }

    public CharSequence getTitleStr() {
        return this.titleStr;
    }

    public boolean isActivateStatusBar() {
        return this.activateStatusBar;
    }

    public boolean isSticky() {
        return this.isSticky;
    }

    public void setAvatarUrl(String str) {
        this.imageUrl = str;
    }

    public void setCode(int i) {
        this.code = i;
    }

    protected void setIcon(int i) {
        this.iconRes = i;
    }

    protected void setMessage(CharSequence charSequence) {
        this.msgStr = charSequence;
    }

    protected void setNotification(Notification notification) {
        this.notificationDelegate = notification;
    }

    protected void setTitle(CharSequence charSequence) {
        this.titleStr = charSequence;
    }
}
