package com.telguarder.features.postCallSpamInfo;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProxy;
import com.telguarder.features.main.MainActivity;
import com.telguarder.features.numberLookup.PhoneEvent;
import com.telguarder.features.phoneCallWidget.PhoneCallWidget;
import com.telguarder.features.phoneCallWidget.PhonecallStateHandler;
import com.telguarder.features.postCallStatistics.LastPhoneCallActivity;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.LinearLayoutManagerWithSmoothScroller;
import com.telguarder.helpers.p022ui.UiHelper;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity.class */
public class LastPhoneCallSpamActivity extends AppCompatActivity {
    private static final String EXTRA_KEY_PHONE_DIRECTION_FROM_CALL = "EXTRA_KEY_PHONE_DIRECTION_FROM_CALL";
    private static final String EXTRA_KEY_PHONE_NUMBER_LOG_ENTRY = "EXTRA_KEY_PHONE_NUMBER_LOG_ENTRY";
    static boolean active = false;
    private static LastPhoneCallSpamActivity mInstance;
    private int mCallType;
    private LinearLayout mHeaderLayout;
    private PhoneEvent mLastLogEntry;
    private BroadcastReceiver mScreenOffReceiver;
    private SpamCommentsViewAdapter mSpamCommentsViewAdapter;
    private boolean stoppedByUser = false;
    private long userInteractionTime = 0;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$ScreenReceiver.class */
    public class ScreenReceiver extends BroadcastReceiver {
        public ScreenReceiver() {
            LastPhoneCallSpamActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction() == null || !intent.getAction().equals("android.intent.action.SCREEN_OFF") || LastPhoneCallSpamActivity.this.stoppedByUser || LastPhoneCallSpamActivity.this.mCallType == 3) {
                return;
            }
            if (LastPhoneCallSpamActivity.this.isPassOrPinSet() && (!LastPhoneCallSpamActivity.this.isPassOrPinSet() || LastPhoneCallSpamActivity.this.mCallType == 1)) {
                return;
            }
            LastPhoneCallSpamActivity.this.stop();
        }
    }

    public static LastPhoneCallSpamActivity getInstance() {
        return mInstance;
    }

    private void initSpamCommentListSections() {
        RecyclerView recyclerView = (RecyclerView) findViewById(C2083R.C2086id.recyclerviewSpamComment);
        SpamCommentsViewAdapter spamCommentsViewAdapter = new SpamCommentsViewAdapter(this, this.mLastLogEntry);
        this.mSpamCommentsViewAdapter = spamCommentsViewAdapter;
        recyclerView.setAdapter(spamCommentsViewAdapter);
        recyclerView.getRecycledViewPool().setMaxRecycledViews(4, 0);
        recyclerView.setLayoutManager(new LinearLayoutManagerWithSmoothScroller(this));
    }

    public static boolean isInstantiated() {
        return mInstance != null;
    }

    public boolean isPassOrPinSet() {
        KeyguardManager keyguardManager;
        if (Build.VERSION.SDK_INT < 16 || (keyguardManager = (KeyguardManager) getSystemService("keyguard")) == null) {
            return true;
        }
        return keyguardManager.isKeyguardSecure();
    }

    public static void openLastPhoneCallSpam(Context context, PhoneEvent phoneEvent, int i) {
        LastPhoneCallSpamActivity lastPhoneCallSpamActivity = mInstance;
        if (lastPhoneCallSpamActivity != null) {
            try {
                lastPhoneCallSpamActivity.stop();
            } catch (Exception e) {
                Logger.error("Error during open last call spam page");
            }
            mInstance = null;
        }
        if (phoneEvent == null || TextUtils.isEmpty(phoneEvent.calledPhoneNumber)) {
            return;
        }
        PhonecallStateHandler.PhoneStateCallData phoneStateCallData = PhonecallStateHandler.getInstance().getPhoneStateCallData(phoneEvent.calledPhoneNumber);
        if (phoneStateCallData != null && !phoneStateCallData.lastCallState.equals(TelephonyManager.EXTRA_STATE_IDLE)) {
            return;
        }
        Intent intent = new Intent(context, LastPhoneCallSpamActivity.class);
        if (!(context instanceof AppCompatActivity)) {
            intent.addFlags(343965696);
        } else {
            intent.addFlags(343932928);
        }
        intent.putExtra(EXTRA_KEY_PHONE_NUMBER_LOG_ENTRY, phoneEvent);
        intent.putExtra(EXTRA_KEY_PHONE_DIRECTION_FROM_CALL, i);
        context.startActivity(intent);
    }

    private void registerScreenStateReceiver() {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        ScreenReceiver screenReceiver = new ScreenReceiver();
        this.mScreenOffReceiver = screenReceiver;
        try {
            registerReceiver(screenReceiver, intentFilter);
        } catch (Exception e) {
            Logger.error("Spam call activity screen_off receiver register error");
        }
    }

    private void setupSpamNumberAndName() {
        if (this.mLastLogEntry != null) {
            TextView textView = (TextView) findViewById(C2083R.C2086id.spam_warning_number);
            if (!TextUtils.isEmpty(this.mLastLogEntry.phoneNumberForDisplaying)) {
                textView.setText(this.mLastLogEntry.phoneNumberForDisplaying);
            } else if (!TextUtils.isEmpty(this.mLastLogEntry.calledPhoneNumber)) {
                textView.setText(this.mLastLogEntry.calledPhoneNumber);
            }
            ((LinearLayout) findViewById(C2083R.C2086id.spam_warning_header_layout)).setBackgroundColor(UiHelper.getColorWrapper(this, this.mLastLogEntry.isSpamCommunityOrange() ? 2131034393 : 2131034392));
            findViewById(C2083R.C2086id.last_phone_call_warning_root_view).setBackgroundColor(UiHelper.getColorWrapper(this, this.mLastLogEntry.isSpamCommunityOrange() ? 2131034393 : 2131034392));
            TextView textView2 = (TextView) findViewById(C2083R.C2086id.spam_warning_name);
            SpannableString spannableString = new SpannableString(TextUtils.isEmpty(this.mLastLogEntry.name) ? this.mLastLogEntry.getSpamTitle(this) : this.mLastLogEntry.name);
            spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
            textView2.setText(spannableString);
            UiHelper.simulateLinkEffect(textView2, UiHelper.getColorWrapper(this, 2131034142), UiHelper.getColorWrapper(this, C2083R.C2084color.last_phone_call_button_text_light), new UiHelper.LinkEffectCompletionHandler() { // from class: com.telguarder.features.postCallSpamInfo.LastPhoneCallSpamActivity.2
                @Override // com.telguarder.helpers.p022ui.UiHelper.LinkEffectCompletionHandler
                public void actionDown() {
                }

                @Override // com.telguarder.helpers.p022ui.UiHelper.LinkEffectCompletionHandler
                public void actionMove() {
                }

                @Override // com.telguarder.helpers.p022ui.UiHelper.LinkEffectCompletionHandler
                public void actionUp() {
                    LastPhoneCallSpamActivity lastPhoneCallSpamActivity = LastPhoneCallSpamActivity.this;
                    LastPhoneCallActivity.openLastPhoneCall(lastPhoneCallSpamActivity, lastPhoneCallSpamActivity.mLastLogEntry.calledPhoneNumber, LastPhoneCallSpamActivity.this.mLastLogEntry.type, Long.valueOf(LastPhoneCallSpamActivity.this.mLastLogEntry.dateTimeInMillis), false);
                }
            });
        }
    }

    public void stop() {
        unregisterScreenStateReceiver();
        SpamCommentsViewAdapter spamCommentsViewAdapter = this.mSpamCommentsViewAdapter;
        if (spamCommentsViewAdapter != null) {
            spamCommentsViewAdapter.onStop();
        }
        if (isTaskRoot()) {
            if (PostcallAdvertProxy.isInstanciated()) {
                PostcallAdvertProxy.getInstance().onStop();
            }
            finish();
        }
    }

    private void unregisterScreenStateReceiver() {
        BroadcastReceiver broadcastReceiver = this.mScreenOffReceiver;
        if (broadcastReceiver != null) {
            try {
                unregisterReceiver(broadcastReceiver);
            } catch (Exception e) {
                Logger.error("Spam call activity screen_off receiver unregister error");
            }
            this.mScreenOffReceiver = null;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        if (Build.VERSION.SDK_INT >= 27) {
            setTurnScreenOn(true);
        } else {
            getWindow().addFlags(2097152);
        }
        super.onAttachedToWindow();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.stoppedByUser = true;
        if (PostcallAdvertProxy.isInstanciated()) {
            PostcallAdvertProxy.getInstance().onStop();
        }
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            this.stoppedByUser = false;
            getWindow().getDecorView().setSystemUiVisibility(0);
            setContentView(C2083R.layout.activity_last_phone_call_spam);
            UiHelper.setupBarScreenWithBottomNavbarPadding(this, null, findViewById(C2083R.C2086id.bottom_view_to_blur), false);
            this.mHeaderLayout = (LinearLayout) findViewById(C2083R.C2086id.spam_warning_header_layout);
            if (Build.VERSION.SDK_INT >= 23) {
                findViewById(C2083R.C2086id.recyclerviewSpamComment).setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.telguarder.features.postCallSpamInfo.LastPhoneCallSpamActivity.1
                    @Override // android.view.View.OnScrollChangeListener
                    public void onScrollChange(View view, int i, int i2, int i3, int i4) {
                        LastPhoneCallSpamActivity.this.mHeaderLayout.setElevation(view.canScrollVertically(-1) ? 15.0f : 0.0f);
                    }
                });
            }
            this.mLastLogEntry = (PhoneEvent) getIntent().getSerializableExtra(EXTRA_KEY_PHONE_NUMBER_LOG_ENTRY);
            this.mCallType = getIntent().getIntExtra(EXTRA_KEY_PHONE_DIRECTION_FROM_CALL, 0);
            setupSpamNumberAndName();
            initSpamCommentListSections();
            registerScreenStateReceiver();
            mInstance = this;
        } catch (Exception e) {
            try {
                finish();
            } catch (Exception e2) {
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterScreenStateReceiver();
        SpamCommentsViewAdapter spamCommentsViewAdapter = this.mSpamCommentsViewAdapter;
        if (spamCommentsViewAdapter != null) {
            spamCommentsViewAdapter.onDestroy();
        }
        if (PostcallAdvertProxy.isInstanciated()) {
            PostcallAdvertProxy.getInstance().onDestroy();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        SpamCommentsViewAdapter spamCommentsViewAdapter = this.mSpamCommentsViewAdapter;
        if (spamCommentsViewAdapter != null) {
            spamCommentsViewAdapter.onPause();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        PhoneCallWidget.hide(this);
        SpamCommentsViewAdapter spamCommentsViewAdapter = this.mSpamCommentsViewAdapter;
        if (spamCommentsViewAdapter != null) {
            spamCommentsViewAdapter.onResume();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        active = true;
        if (this.stoppedByUser) {
            startActivity(new Intent(this, MainActivity.class));
            stop();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        active = false;
        if (!this.stoppedByUser || isPassOrPinSet()) {
            return;
        }
        stop();
    }

    @Override // android.app.Activity
    public void onUserInteraction() {
        this.userInteractionTime = System.currentTimeMillis();
        super.onUserInteraction();
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        if (System.currentTimeMillis() - this.userInteractionTime < 100) {
            this.stoppedByUser = true;
        }
        super.onUserLeaveHint();
    }
}
