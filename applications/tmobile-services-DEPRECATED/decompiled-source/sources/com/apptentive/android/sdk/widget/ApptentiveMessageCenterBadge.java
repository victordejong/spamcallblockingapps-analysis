package com.apptentive.android.sdk.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.module.messagecenter.UnreadMessagesListener;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge.class */
public class ApptentiveMessageCenterBadge extends RelativeLayout {
    private boolean bUpdateLocked;
    private int badgeSize;
    private int badgeTextColor;
    private LayoutInflater inflater;

    /* renamed from: tv */
    private TextView f6466tv;
    private UnreadMessagesListener unreadMessagesListener;
    private int unreadMsgCounter;

    public ApptentiveMessageCenterBadge(Context context) {
        super(context);
        this.inflater = LayoutInflater.from(context);
        init(context, null, 0);
    }

    public ApptentiveMessageCenterBadge(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.inflater = LayoutInflater.from(context);
        init(context, attributeSet, C0726R.attr.apptentiveMessageCenterBadgeStyle);
    }

    public ApptentiveMessageCenterBadge(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.inflater = LayoutInflater.from(context);
        init(context, attributeSet, i);
    }

    private void updateBadgeCounter() {
        if (!this.bUpdateLocked) {
            this.f6466tv.setText(Integer.toString(this.unreadMsgCounter));
            invalidate();
        }
    }

    private void updateEntireBadge() {
        if (!this.bUpdateLocked) {
            if (this.badgeSize == 0) {
                this.f6466tv.setTextSize(getResources().getDimension(C0726R.dimen.apptentive_message_center_badge_normal));
            } else {
                this.f6466tv.setTextSize(getResources().getDimension(C0726R.dimen.apptentive_message_center_badge_mini));
            }
            this.f6466tv.setTextColor(this.badgeTextColor);
            updateBadgeCounter();
        }
    }

    public int getCounter() {
        return this.unreadMsgCounter;
    }

    public int getSize() {
        return this.badgeSize;
    }

    public int getTextColor() {
        return this.badgeTextColor;
    }

    /* JADX WARN: Finally extract failed */
    public void init(Context context, AttributeSet attributeSet, int i) {
        Resources.Theme theme;
        TypedArray obtainStyledAttributes;
        View inflate = this.inflater.inflate(C0726R.layout.apptentive_widget_message_center_badge, (ViewGroup) this, true);
        ImageView imageView = (ImageView) inflate.findViewById(C0726R.C0729id.message_center_badge_icon);
        this.f6466tv = (TextView) inflate.findViewById(C0726R.C0729id.message_center_badge_counter);
        this.badgeSize = 0;
        this.badgeTextColor = -16777216;
        if (!ApptentiveInternal.isApptentiveRegistered()) {
            inflate.setVisibility(8);
            return;
        }
        this.unreadMsgCounter = Apptentive.getUnreadMessageCount();
        UnreadMessagesListener unreadMessagesListener = new UnreadMessagesListener() { // from class: com.apptentive.android.sdk.widget.ApptentiveMessageCenterBadge.1
            @Override // com.apptentive.android.sdk.module.messagecenter.UnreadMessagesListener
            public void onUnreadMessageCountChanged(final int i2) {
                ((Activity) ApptentiveMessageCenterBadge.this.getContext()).runOnUiThread(new Runnable() { // from class: com.apptentive.android.sdk.widget.ApptentiveMessageCenterBadge.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ApptentiveMessageCenterBadge.this.setCounter(i2);
                    }
                });
            }
        };
        this.unreadMessagesListener = unreadMessagesListener;
        Apptentive.addUnreadMessagesListener(unreadMessagesListener);
        if (attributeSet != null && (theme = context.getTheme()) != null && (obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C0726R.styleable.ApptentiveMessageCenterBadge, i, 0)) != null) {
            try {
                lockUpdate();
                setSize(obtainStyledAttributes.getInteger(C0726R.styleable.ApptentiveMessageCenterBadge_apptentive_badgeSize, 0));
                setTextColor(obtainStyledAttributes.getColor(C0726R.styleable.ApptentiveMessageCenterBadge_apptentive_counterColor, -16777216));
                unlockUpdate();
                obtainStyledAttributes.recycle();
                updateEntireBadge();
            } catch (Throwable th) {
                unlockUpdate();
                obtainStyledAttributes.recycle();
                throw th;
            }
        }
    }

    public void lockUpdate() {
        this.bUpdateLocked = true;
    }

    public void setCounter(int i) {
        boolean z = this.unreadMsgCounter != i;
        this.unreadMsgCounter = i;
        if (z) {
            updateBadgeCounter();
        }
    }

    public void setSize(int i) {
        boolean z = this.badgeSize != i;
        this.badgeSize = i;
        if (z) {
            updateEntireBadge();
        }
    }

    public void setTextColor(int i) {
        boolean z = this.badgeTextColor != i;
        this.badgeTextColor = i;
        if (z) {
            updateEntireBadge();
        }
    }

    public void unlockUpdate() {
        this.bUpdateLocked = false;
    }
}
