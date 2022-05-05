package com.android.contacts.activities;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/DialtactsViewPager.class */
public class DialtactsViewPager extends ViewPager {
    private static final String KEY_SWIPE_TO_DO_ACTION = "swipe_to_do_action";
    private static final int MOVE_OFFSET_PAD = 200;
    private static final int MOVE_OFFSET_PHONE = 180;
    private static final String TAG = "DialtactsViewPager";
    private Context mContext;
    private boolean mIsSwipeToDoAction;
    private int mMoveOffset;
    private SharedPreferences mPrefs;
    private boolean scrollDisable = false;
    private int previousX = 0;
    private int mActionMoveLeftCount = 0;
    private long mEventDownTime = 0;
    private int mStartX = 0;
    private int mEndX = 0;
    private boolean mIsFirstEnter = true;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/DialtactsViewPager$onSwipeLeftListener.class */
    public interface onSwipeLeftListener {
        void hideOptionsMenu();
    }

    public DialtactsViewPager(Context context) {
        super(context);
        this.mContext = null;
        this.mMoveOffset = 0;
        this.mContext = context;
        if (PhoneCapabilityTester.isUsingTwoPanes(this.mContext)) {
            this.mMoveOffset = MOVE_OFFSET_PAD;
        } else {
            this.mMoveOffset = MOVE_OFFSET_PHONE;
        }
    }

    public DialtactsViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = null;
        this.mMoveOffset = 0;
        this.mContext = context;
        if (PhoneCapabilityTester.isUsingTwoPanes(this.mContext)) {
            this.mMoveOffset = MOVE_OFFSET_PAD;
        } else {
            this.mMoveOffset = MOVE_OFFSET_PHONE;
        }
    }

    @Override // android.support.v4.view.ViewPager, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        try {
            super.addView(view, i, layoutParams);
        } catch (Exception e) {
            Log.d(TAG, "[ViewPager] Fail to add view, Exception : " + e.toString());
            ((ViewGroup) view.getParent()).removeView(view);
            super.addView(view, i, layoutParams);
        }
    }

    public void disableScroll() {
        this.scrollDisable = true;
    }

    public void enableScroll() {
        this.scrollDisable = false;
    }

    @Override // android.support.v4.view.ViewPager
    public boolean executeKeyEvent(KeyEvent keyEvent) {
        boolean z;
        if (keyEvent.getKeyCode() == 22 || keyEvent.getKeyCode() == 21) {
            Log.d(TAG, "[ViewPager] key event code = " + keyEvent.getKeyCode() + ", do nothing...");
            z = false;
        } else {
            z = super.executeKeyEvent(keyEvent);
        }
        return z;
    }

    @Override // android.support.v4.view.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
