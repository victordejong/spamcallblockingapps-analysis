package com.apptentive.android.sdk;

import android.app.ActivityManager;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.apptentive.android.sdk.adapter.ApptentiveViewPagerAdapter;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment;
import com.apptentive.android.sdk.notifications.ApptentiveNotification;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveViewActivity.class */
public class ApptentiveViewActivity extends ApptentiveBaseActivity implements ApptentiveBaseFragment.OnFragmentTransitionListener {
    private View contentView;
    private int current_tab;
    private View decorView;
    private int fragmentType;
    ViewTreeObserver.OnGlobalLayoutListener keyboardPresencelLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.apptentive.android.sdk.ApptentiveViewActivity.3
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Rect rect = new Rect();
            ApptentiveViewActivity.this.decorView.getWindowVisibleDisplayFrame(rect);
            int i = ApptentiveViewActivity.this.decorView.getContext().getResources().getDisplayMetrics().heightPixels - rect.bottom;
            if (i != 0) {
                if (ApptentiveViewActivity.this.contentView.getPaddingBottom() != i) {
                    ApptentiveViewActivity.this.contentView.setPadding(0, 0, 0, i);
                }
            } else if (ApptentiveViewActivity.this.contentView.getPaddingBottom() != 0) {
                ApptentiveViewActivity.this.contentView.setPadding(0, 0, 0, 0);
            }
        }
    };
    private Toolbar toolbar;
    private ViewPager viewPager;
    private ApptentiveViewPagerAdapter viewPager_Adapter;

    private void addFragmentToAdapter(ApptentiveBaseFragment apptentiveBaseFragment, String str) {
        if (this.viewPager_Adapter == null) {
            this.viewPager_Adapter = new ApptentiveViewPagerAdapter(getSupportFragmentManager());
        }
        this.viewPager_Adapter.add(apptentiveBaseFragment, str);
        this.viewPager_Adapter.notifyDataSetChanged();
    }

    private void applyApptentiveTheme(boolean z) {
        try {
            ApptentiveInternal.getInstance().updateApptentiveInteractionTheme(this, getTheme());
            if (z) {
                getTheme().applyStyle(C0726R.style.ApptentiveBaseDialogTheme, true);
                setStatusBarColor();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                setTaskDescription(new ActivityManager.TaskDescription((String) null, (Bitmap) null, Util.getThemeColor(getTheme(), C0726R.attr.colorPrimary)));
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Error apply Apptentive Theme.", new Object[0]);
            logException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissActivity() {
        if (!isFinishing()) {
            exitActivity(ApptentiveViewExitType.NOTIFICATION);
        }
    }

    private void exitActivity(ApptentiveViewExitType apptentiveViewExitType) {
        try {
            exitActivityGuarded(apptentiveViewExitType);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while trying to exit activity (type=%s)", apptentiveViewExitType);
            logException(e);
        }
    }

    private void exitActivityGuarded(ApptentiveViewExitType apptentiveViewExitType) {
        Util.hideSoftKeyboard(this, getCurrentFocus());
        ApptentiveBaseFragment apptentiveBaseFragment = (ApptentiveBaseFragment) this.viewPager_Adapter.getItem(this.viewPager.getCurrentItem());
        if (apptentiveBaseFragment != null && apptentiveBaseFragment.isVisible()) {
            if (!apptentiveBaseFragment.onFragmentExit(apptentiveViewExitType)) {
                FragmentManager childFragmentManager = apptentiveBaseFragment.getChildFragmentManager();
                if (childFragmentManager.getBackStackEntryCount() > 0) {
                    childFragmentManager.popBackStack();
                }
            } else {
                return;
            }
        }
        super.onBackPressed();
        startLauncherActivityIfRoot();
    }

    /* JADX WARN: Finally extract failed */
    private int getToolbarHeightAdjustment(boolean z) {
        int i = 0;
        if (Build.VERSION.SDK_INT >= 19) {
            boolean z2 = true;
            TypedArray obtainStyledAttributes = getTheme().obtainStyledAttributes(new int[]{16843759});
            try {
                z2 = obtainStyledAttributes.getBoolean(0, false);
                obtainStyledAttributes.recycle();
                if ((getWindow().getAttributes().flags & 67108864) == 0) {
                }
                i = 0;
                if (z2) {
                    i = 0;
                    if (z) {
                        int identifier = getResources().getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
                        i = 0;
                        if (identifier > 0) {
                            i = getResources().getDimensionPixelSize(identifier);
                        }
                    }
                    View decorView = getWindow().getDecorView();
                    this.decorView = decorView;
                    this.contentView = decorView.findViewById(16908290);
                    this.decorView.getViewTreeObserver().addOnGlobalLayoutListener(this.keyboardPresencelLayoutListener);
                }
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        }
        return i;
    }

    private void setStatusBarColor() {
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(Util.alphaMixColors(ApptentiveInternal.getInstance().getDefaultStatusBarColor(), ContextCompat.m19675d(this, C0726R.C0727color.apptentive_activity_frame_dark)));
        }
    }

    private void startLauncherActivityIfRoot() {
        try {
            if (isTaskRoot()) {
                Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
                if (launchIntentForPackage != null) {
                    Intent makeRestartActivityTask = Util.makeRestartActivityTask(launchIntentForPackage.getComponent());
                    if (makeRestartActivityTask != null) {
                        startActivity(makeRestartActivityTask);
                    }
                } else {
                    ApptentiveLog.m15633w("Unable to start app's main activity: launch intent is missing", new Object[0]);
                }
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while starting app's main activity", new Object[0]);
            logException(e);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, C0726R.anim.apptentive_slide_down_out);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        exitActivity(ApptentiveViewExitType.BACK_BUTTON);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ac, code lost:
        if (r0 == 1) goto L_0x00af;
     */
    @Override // com.apptentive.android.sdk.ApptentiveBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onCreate(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 527
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.ApptentiveViewActivity.onCreate(android.os.Bundle):void");
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment.OnFragmentTransitionListener
    public void onFragmentTransition(ApptentiveBaseFragment apptentiveBaseFragment) {
        if (apptentiveBaseFragment != null) {
            int count = this.viewPager_Adapter.getCount();
            for (int i = 0; i < count; i++) {
                if (apptentiveBaseFragment == ((ApptentiveBaseFragment) this.viewPager_Adapter.getItem(i))) {
                    if (count == 1) {
                        finish();
                        return;
                    } else {
                        apptentiveBaseFragment.dismiss();
                        this.viewPager_Adapter.removeItem(i);
                        this.viewPager_Adapter.notifyDataSetChanged();
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        overridePendingTransition(C0726R.anim.apptentive_slide_up_in, 0);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        exitActivity(ApptentiveViewExitType.MENU_ITEM);
        return true;
    }

    @Override // com.apptentive.android.sdk.ApptentiveBaseActivity, com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver
    public void onReceiveNotification(ApptentiveNotification apptentiveNotification) {
        ApptentiveHelper.checkConversationQueue();
        if (apptentiveNotification.hasName("INTERACTIONS_SHOULD_DISMISS")) {
            dispatchOnMainQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.ApptentiveViewActivity.4
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    ApptentiveViewActivity.this.dismissActivity();
                }
            });
        } else if (apptentiveNotification.hasName("CONVERSATION_STATE_DID_CHANGE")) {
            Conversation conversation = (Conversation) apptentiveNotification.getUserInfo("conversation", Conversation.class);
            Assert.assertNotNull(conversation, "Conversation expected to be not null");
            if (conversation != null && !conversation.hasActiveState()) {
                dispatchOnMainQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.ApptentiveViewActivity.5
                    @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                    protected void execute() {
                        ApptentiveViewActivity.this.dismissActivity();
                    }
                });
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putString("fragmentTag", this.viewPager_Adapter.getFragmentTag(this.current_tab));
        super.onSaveInstanceState(bundle);
    }
}
