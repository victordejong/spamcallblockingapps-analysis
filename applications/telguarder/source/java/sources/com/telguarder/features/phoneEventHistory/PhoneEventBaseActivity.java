package com.telguarder.features.phoneEventHistory;

import android.content.Intent;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.capricorn.ArcMenu;
import com.telguarder.C2083R;
import com.telguarder.features.numberLookup.ActorType;
import com.telguarder.features.numberLookup.PhoneEvent;
import com.telguarder.features.numberLookup.PhoneEventLogManager;
import com.telguarder.features.phoneEventHistory.ArcMenuManager;
import com.telguarder.features.phoneEventHistory.PhoneEventLogAdapter;
import com.telguarder.features.phoneNumberAnalyzer.AnalyzeActivity;
import com.telguarder.features.phoneNumberBlocker.BlockNumberActivity;
import com.telguarder.features.postCallStatistics.LastPhoneCallActivity;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.contact.BackendLogEntry;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.UiHelper;
import com.telguarder.helpers.web.WebViewPreloadHelper;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneEventHistory/PhoneEventBaseActivity.class */
public class PhoneEventBaseActivity extends AppCompatActivity {
    private static final String TAG = "PhoneEventBaseActivity";
    static volatile boolean active = false;
    protected ArcMenu mArcMenu;
    private LinearLayout mArcMenuContainer;
    private TextView mError;
    private float mLastTouchX;
    private float mLastTouchY;
    protected ArrayList<ArcMenuManager.ArcMenuItem> mMenuItems;
    private String mMoreInfoUrl;
    protected RecyclerView mPhoneCallLogListView;
    protected PhoneEventLogAdapter mPhoneEventLogAdapter;
    private ProgressBar mProgress;
    private View mRootView;
    private Toolbar mToolbar;
    protected int pageTitle;
    protected boolean spamFilter;
    protected volatile ArrayList<PhoneEvent> mPhoneCallLog = new ArrayList<>();
    private PhoneEventLogAdapter.OnItemClickListener nnItemClickListener = new PhoneEventLogAdapter.OnItemClickListener() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.2
        @Override // com.telguarder.features.phoneEventHistory.PhoneEventLogAdapter.OnItemClickListener
        public void onItemClick(int i) {
            if (PhoneEventBaseActivity.this.mArcMenu == null || !PhoneEventBaseActivity.this.mArcMenu.isMenuVisible()) {
                PhoneEventBaseActivity.this.startDetailActivityForPhoneEvent(i);
            }
        }

        @Override // com.telguarder.features.phoneEventHistory.PhoneEventLogAdapter.OnItemClickListener
        public boolean onItemLongClick(int i) {
            PhoneEventBaseActivity.this.cancelDetailActivityStart();
            if (i < 0 || PhoneEventBaseActivity.this.mPhoneCallLog == null || i >= PhoneEventBaseActivity.this.mPhoneCallLog.size()) {
                PhoneEventBaseActivity.this.initContent();
                return false;
            }
            final PhoneEvent phoneEvent = PhoneEventBaseActivity.this.mPhoneCallLog.get(i);
            PhoneEventBaseActivity.this.mArcMenuContainer.removeAllViews();
            PhoneEventBaseActivity phoneEventBaseActivity = PhoneEventBaseActivity.this;
            phoneEventBaseActivity.createArcMenuItemsForSelectedPhoneCall(phoneEventBaseActivity.mPhoneCallLog.get(i));
            PhoneEventBaseActivity phoneEventBaseActivity2 = PhoneEventBaseActivity.this;
            ArcMenuManager arcMenuManager = ArcMenuManager.getInstance();
            PhoneEventBaseActivity phoneEventBaseActivity3 = PhoneEventBaseActivity.this;
            phoneEventBaseActivity2.mArcMenu = arcMenuManager.getArcMenu(phoneEventBaseActivity3, phoneEventBaseActivity3.mMenuItems, new ArcMenuManager.ArcMenuItemClickListener() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.2.1
                @Override // com.telguarder.features.phoneEventHistory.ArcMenuManager.ArcMenuItemClickListener
                public void onArcMenuItemClicked(ArcMenuManager.ArcMenuItem arcMenuItem) {
                    PhoneEventBaseActivity.this.handleArcMenuItemSelections(arcMenuItem, phoneEvent);
                }
            });
            if (PhoneEventBaseActivity.this.mArcMenu == null) {
                return false;
            }
            PhoneEventBaseActivity.this.placeArcMenuToAppropriatePosition();
            UiHelper.longPressHapticFeedback(PhoneEventBaseActivity.this.mArcMenu);
            return false;
        }
    };
    private final WebViewPreloadHelper.PreloadWebViewCallback preloadAnalyseWebViewCallback = new WebViewPreloadHelper.PreloadWebViewCallback() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.6
        @Override // com.telguarder.helpers.web.WebViewPreloadHelper.PreloadWebViewCallback
        public void onDownloadFinished(final WebViewPreloadHelper.LoadErrorType loadErrorType, final boolean z) {
            PhoneEventBaseActivity.this.runOnUiThread(new Runnable() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.6.1
                @Override // java.lang.Runnable
                public void run() {
                    if (PhoneEventBaseActivity.this.isFinishing() || !PhoneEventBaseActivity.active) {
                        PhoneEventBaseActivity.this.cancelDetailActivityStart();
                    }
                    if (loadErrorType == null) {
                        AnalyzeActivity.openAnalyze(PhoneEventBaseActivity.this, null, PhoneEventBaseActivity.this.mMoreInfoUrl, z);
                        return;
                    }
                    PhoneEventBaseActivity.this.cancelDetailActivityStart();
                    Toast.makeText(PhoneEventBaseActivity.this, loadErrorType == WebViewPreloadHelper.LoadErrorType.DATA_NOT_AVAILABLE ? 2131755302 : 2131755301, 0).show();
                }
            });
        }
    };
    private final PhoneEventLogManager.CallLogUpdateCallBack mCallLogUpdateCallBack = new PhoneEventLogManager.CallLogUpdateCallBack() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.11
        @Override // com.telguarder.features.numberLookup.PhoneEventLogManager.CallLogUpdateCallBack
        public void onUpdateFinished(final ArrayList<PhoneEvent> arrayList, final ArrayList<PhoneEvent> arrayList2, final boolean z) {
            PhoneEventBaseActivity.this.runOnUiThread(new Runnable() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.11.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!PhoneEventBaseActivity.active) {
                        return;
                    }
                    if (z) {
                        PhoneEventBaseActivity.this.showError();
                        return;
                    }
                    PhoneEventBaseActivity.this.mPhoneCallLog.clear();
                    PhoneEventBaseActivity.this.mPhoneCallLog.addAll(PhoneEventBaseActivity.this.spamFilter ? arrayList2 : arrayList);
                    PhoneEventBaseActivity.this.mPhoneEventLogAdapter.notifyDataSetChanged();
                    PhoneEventBaseActivity.this.updateSpamComments();
                }
            });
        }

        @Override // com.telguarder.features.numberLookup.PhoneEventLogManager.CallLogUpdateCallBack
        public void onUpdateNotNeeded() {
            PhoneEventBaseActivity.this.updateSpamComments();
        }
    };

    /* renamed from: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity$15 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$15.class */
    public static /* synthetic */ class C223715 {

        /* renamed from: $SwitchMap$com$telguarder$features$phoneEventHistory$ArcMenuManager$ArcMenuAction */
        static final /* synthetic */ int[] f1295xbf79b778;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[ArcMenuManager.ArcMenuAction.values().length];
            f1295xbf79b778 = iArr;
            try {
                iArr[ArcMenuManager.ArcMenuAction.CALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1295xbf79b778[ArcMenuManager.ArcMenuAction.SMS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1295xbf79b778[ArcMenuManager.ArcMenuAction.BLOCK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1295xbf79b778[ArcMenuManager.ArcMenuAction.STAT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private Point getArcMenuContainerSize() {
        this.mArcMenuContainer.measure(0, 0);
        Point point = new Point();
        point.x = this.mArcMenuContainer.getWidth();
        point.y = this.mArcMenuContainer.getHeight();
        return point;
    }

    private int getArcMenuLeftMargin() {
        return getArcMenuMargin(getArcMenuContainerSize().x, this.mArcMenu.getArcLayout().getMeasuredWidth(), (int) this.mLastTouchX);
    }

    private int getArcMenuMargin(int i, int i2, int i3) {
        int i4;
        int i5 = i2 / 2;
        if (i3 < i5) {
            i4 = 0;
        } else {
            int i6 = i3 - i5;
            i4 = i - i2;
            if (i6 <= i4) {
                i4 = i6;
            }
        }
        return i4;
    }

    private int getArcMenuTopMargin() {
        return getArcMenuMargin(getArcMenuContainerSize().y, this.mArcMenu.getArcLayout().getMeasuredHeight(), (int) this.mLastTouchY);
    }

    public int getTouchYWithHeaderCorrection(int i) {
        return i + this.mToolbar.getHeight() + UiHelper.getStatusBarHeight(this);
    }

    public void initContent() {
        new Thread(new Runnable() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.7
            @Override // java.lang.Runnable
            public void run() {
                if (!PhoneEventBaseActivity.this.mPhoneCallLog.isEmpty()) {
                    PhoneEventLogManager.getInstance().preloadFinalPhoneCallLog(PhoneEventBaseActivity.this.getApplicationContext());
                    return;
                }
                PhoneEventBaseActivity.this.showProgress();
                PhoneEventBaseActivity.this.mPhoneCallLog.addAll(PhoneEventBaseActivity.this.spamFilter ? PhoneEventLogManager.getInstance().getSpamCallLog() : PhoneEventLogManager.getInstance().getPhoneCallLog());
                if (PhoneEventBaseActivity.this.mPhoneCallLog.isEmpty()) {
                    PhoneEventBaseActivity.this.showError();
                } else {
                    PhoneEventBaseActivity.this.showContent();
                }
            }
        }).start();
    }

    private void initViews() {
        RecyclerView recyclerView = (RecyclerView) this.mRootView.findViewById(C2083R.C2086id.phone_call_log_list_x);
        this.mPhoneCallLogListView = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.mPhoneCallLogListView.setLayoutManager(new LinearLayoutManager(this));
        if (Build.VERSION.SDK_INT >= 23) {
            this.mPhoneCallLogListView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.1
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i, int i2, int i3, int i4) {
                    PhoneEventBaseActivity.this.mToolbar.setElevation(view.canScrollVertically(-1) ? 15.0f : 0.0f);
                }
            });
        }
        this.mProgress = (ProgressBar) this.mRootView.findViewById(C2083R.C2086id.phone_call_log_progress_x);
        this.mError = (TextView) this.mRootView.findViewById(C2083R.C2086id.phone_call_log_error_x);
        this.mArcMenuContainer = (LinearLayout) this.mRootView.findViewById(C2083R.C2086id.phone_call_log_arc_menu_container_x);
    }

    public boolean isScreenInForeGround() {
        return !isFinishing();
    }

    public void placeArcMenuToAppropriatePosition() {
        this.mArcMenuContainer.addView(this.mArcMenu);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mArcMenu.getLayoutParams();
        requestArcMenuToMeasureItsSize();
        layoutParams.leftMargin = getArcMenuLeftMargin();
        layoutParams.topMargin = getArcMenuTopMargin();
        this.mArcMenu.setLayoutParams(layoutParams);
        new Handler().postDelayed(new Runnable() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.5
            @Override // java.lang.Runnable
            public void run() {
                if (PhoneEventBaseActivity.this.isScreenInForeGround()) {
                    PhoneEventBaseActivity.this.mArcMenu.openArcMenu(true);
                }
            }
        }, 50L);
    }

    private void requestArcMenuToMeasureItsSize() {
        this.mArcMenu.getArcLayout().measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    private void setCallLogListTouchListener() {
        this.mPhoneCallLogListView.setOnTouchListener(new View.OnTouchListener() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    ArcMenuManager.getInstance().handleTouchEvent((int) motionEvent.getX(), PhoneEventBaseActivity.this.getTouchYWithHeaderCorrection((int) motionEvent.getY()), motionEvent.getAction());
                    return false;
                } else if (PhoneEventBaseActivity.this.mArcMenu == null || !PhoneEventBaseActivity.this.mArcMenu.isMenuVisible()) {
                    return false;
                } else {
                    PhoneEventBaseActivity.this.mArcMenuContainer.dispatchTouchEvent(motionEvent);
                    return true;
                }
            }
        });
    }

    private void setErrorText() {
        this.mError.setText(C2083R.string.call_log_no_item_found);
    }

    private void setMenuContainerTouchListener() {
        this.mArcMenuContainer.setOnTouchListener(new View.OnTouchListener() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    ArcMenuManager.getInstance().handleTouchEvent((int) motionEvent.getX(), PhoneEventBaseActivity.this.getTouchYWithHeaderCorrection((int) motionEvent.getY()), motionEvent.getAction());
                    return true;
                }
                PhoneEventBaseActivity.this.mLastTouchX = motionEvent.getX();
                PhoneEventBaseActivity.this.mLastTouchY = motionEvent.getY();
                if (PhoneEventBaseActivity.this.mArcMenu == null || PhoneEventBaseActivity.this.mArcMenu.getVisibility() != 0) {
                    return false;
                }
                PhoneEventBaseActivity.this.mArcMenu.closeArcMenu(true);
                return false;
            }
        });
    }

    private void setViewListeners() {
        setMenuContainerTouchListener();
        setCallLogListTouchListener();
    }

    public void updateSpamComments() {
        PhoneEventLogManager.getInstance().mDownloadSpamCommentCompletionHandler = new PhoneEventLogManager.DownloadSpamCommentCompletionHandler() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.12
            @Override // com.telguarder.features.numberLookup.PhoneEventLogManager.DownloadSpamCommentCompletionHandler
            public void handle(final int i) {
                PhoneEventBaseActivity.this.runOnUiThread(new Runnable() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.12.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (PhoneEventBaseActivity.active) {
                            PhoneEventBaseActivity.this.mPhoneEventLogAdapter.notifyItemChanged(i);
                        }
                    }
                });
            }
        };
        if (PhoneEventLogManager.getInstance().spamCommentLoadInProgress) {
            runOnUiThread(new Runnable() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.13
                @Override // java.lang.Runnable
                public void run() {
                    if (PhoneEventBaseActivity.active) {
                        PhoneEventBaseActivity.this.mPhoneEventLogAdapter.notifyDataSetChanged();
                    }
                }
            });
        } else {
            new Thread(new Runnable() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.14
                @Override // java.lang.Runnable
                public void run() {
                    PhoneEventLogManager.getInstance().spamCommentLoadInProgress = true;
                    PhoneEventLogManager.getInstance().downloadSpamCommentData(PhoneEventBaseActivity.this.getApplicationContext(), PhoneEventBaseActivity.this.mPhoneCallLog, 0);
                }
            }).start();
        }
    }

    protected void cancelDetailActivityStart() {
        WebViewPreloadHelper.getInstance().mPreloadWebViewCallback = null;
        PhoneEventLogAdapter phoneEventLogAdapter = this.mPhoneEventLogAdapter;
        if (phoneEventLogAdapter != null) {
            phoneEventLogAdapter.hideItemDetailLoadingProgress();
        }
    }

    protected ArcMenuManager.ArcMenuItem createArcMenuItemFor(String str, ArcMenuManager.ArcMenuAction arcMenuAction, int i) {
        ArcMenuManager.ArcMenuItem arcMenuItem = new ArcMenuManager.ArcMenuItem();
        arcMenuItem.f1294id = str;
        arcMenuItem.menuAction = arcMenuAction;
        arcMenuItem.imageResourceId = i;
        return arcMenuItem;
    }

    protected void createArcMenuItemsForSelectedPhoneCall(PhoneEvent phoneEvent) {
        this.mMenuItems = new ArrayList<>();
        this.mMenuItems.add(createArcMenuItemFor(phoneEvent.actorId, ArcMenuManager.ArcMenuAction.CALL, C2083R.C2085drawable.contact_popover_actbtn_icon_dial));
        this.mMenuItems.add(createArcMenuItemFor(phoneEvent.actorId, ArcMenuManager.ArcMenuAction.SMS, C2083R.C2085drawable.contact_popover_actbtn_icon_sms));
        if (!TextUtils.isEmpty(phoneEvent.calledPhoneNumber)) {
            this.mMenuItems.add(createArcMenuItemFor(phoneEvent.actorId, ArcMenuManager.ArcMenuAction.BLOCK, C2083R.C2085drawable.ic_content_block));
        }
        this.mMenuItems.add(createArcMenuItemFor(phoneEvent.actorId, ArcMenuManager.ArcMenuAction.STAT, C2083R.C2085drawable.ic_assessment));
    }

    public void handleArcMenuItemSelections(ArcMenuManager.ArcMenuItem arcMenuItem, PhoneEvent phoneEvent) {
        int i = C223715.f1295xbf79b778[arcMenuItem.menuAction.ordinal()];
        if (i == 1) {
            BackendLogEntry backendLogEntry = new BackendLogEntry();
            backendLogEntry.f1300id = phoneEvent.actorId;
            backendLogEntry.calledNumber = phoneEvent.calledPhoneNumber;
            if (phoneEvent.actorType != null) {
                backendLogEntry.actorType = ActorType.valueOf(phoneEvent.actorType);
            }
            ContactUtils.callNumber(this, phoneEvent.calledPhoneNumber, backendLogEntry, null);
            AnalyticsManager.getInstance().sendArcMenuSelection(TAG, NotificationCompat.CATEGORY_CALL);
        } else if (i == 2) {
            ContactUtils.sendSms(this, phoneEvent.calledPhoneNumber, null);
            AnalyticsManager.getInstance().sendArcMenuSelection(TAG, "sms");
        } else if (i == 3) {
            startBlockActivityWithPhoneEvent(phoneEvent);
            AnalyticsManager.getInstance().sendArcMenuSelection(TAG, "block");
        } else if (i != 4) {
            Logger.error("Unhandled menu item selection!");
        } else {
            LastPhoneCallActivity.openLastPhoneCall(this, phoneEvent.calledPhoneNumber, phoneEvent.type, Long.valueOf(phoneEvent.dateTimeInMillis), true);
            AnalyticsManager.getInstance().sendCallStatisticsPageOpenedFromAction("main_calls");
            AnalyticsManager.getInstance().sendArcMenuSelection(TAG, "stat");
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            setContentView(C2083R.layout.activity_call_list);
            this.mRootView = findViewById(C2083R.C2086id.call_list_root_layout);
            UiHelper.setupBarScreenWithBottomNavbarPadding(this, null, findViewById(C2083R.C2086id.bottom_view_to_blur), false);
            UiHelper.setCircularActivityTransition(this, bundle, this.mRootView);
            Toolbar toolbar = (Toolbar) findViewById(C2083R.C2086id.call_list_toolbar);
            this.mToolbar = toolbar;
            UiHelper.initToolbar(this, toolbar, this.pageTitle);
            initViews();
            setErrorText();
            setViewListeners();
        } catch (Exception e) {
            try {
                finish();
            } catch (Exception e2) {
            }
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        initContent();
        cancelDetailActivityStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        active = true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        active = false;
    }

    protected void showContent() {
        runOnUiThread(new Runnable() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.10
            @Override // java.lang.Runnable
            public void run() {
                if (PhoneEventBaseActivity.active) {
                    if (PhoneEventBaseActivity.this.mPhoneCallLogListView.getAdapter() == null) {
                        PhoneEventBaseActivity phoneEventBaseActivity = PhoneEventBaseActivity.this;
                        phoneEventBaseActivity.mPhoneEventLogAdapter = new PhoneEventLogAdapter(phoneEventBaseActivity.mPhoneCallLog, PhoneEventBaseActivity.this.nnItemClickListener);
                        PhoneEventBaseActivity.this.mPhoneCallLogListView.setAdapter(PhoneEventBaseActivity.this.mPhoneEventLogAdapter);
                    } else {
                        PhoneEventBaseActivity.this.mPhoneEventLogAdapter.notifyDataSetChanged();
                    }
                    PhoneEventBaseActivity.this.mPhoneCallLogListView.setVisibility(0);
                    PhoneEventBaseActivity.this.mProgress.setVisibility(4);
                    PhoneEventBaseActivity.this.mError.setVisibility(4);
                    PhoneEventLogManager.getInstance().mCallLogUpdateCallBack = PhoneEventBaseActivity.this.mCallLogUpdateCallBack;
                    if (!PhoneEventBaseActivity.this.spamFilter) {
                        return;
                    }
                    PhoneEventBaseActivity.this.updateSpamComments();
                }
            }
        });
    }

    protected void showError() {
        runOnUiThread(new Runnable() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.9
            @Override // java.lang.Runnable
            public void run() {
                if (PhoneEventBaseActivity.active) {
                    PhoneEventBaseActivity.this.mPhoneCallLogListView.setVisibility(4);
                    PhoneEventBaseActivity.this.mProgress.setVisibility(4);
                    PhoneEventBaseActivity.this.mError.setVisibility(0);
                }
            }
        });
    }

    protected void showProgress() {
        runOnUiThread(new Runnable() { // from class: com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity.8
            @Override // java.lang.Runnable
            public void run() {
                if (PhoneEventBaseActivity.active) {
                    PhoneEventBaseActivity.this.mPhoneCallLogListView.setVisibility(4);
                    PhoneEventBaseActivity.this.mProgress.setVisibility(0);
                    PhoneEventBaseActivity.this.mError.setVisibility(4);
                }
            }
        });
    }

    protected void startBlockActivityWithPhoneEvent(PhoneEvent phoneEvent) {
        if (phoneEvent == null || TextUtils.isEmpty(phoneEvent.calledPhoneNumber)) {
            return;
        }
        Intent intent = new Intent(this, BlockNumberActivity.class);
        intent.putExtra(BlockNumberActivity.EXTRA_KEY_PHONE_EVENT, phoneEvent);
        startActivity(intent);
    }

    protected void startDetailActivityForPhoneEvent(int i) {
        if (this.mPhoneCallLog == null || i >= this.mPhoneCallLog.size()) {
            initContent();
            return;
        }
        PhoneEvent phoneEvent = this.mPhoneCallLog.get(i);
        if (phoneEvent == null || !ContactUtils.isPhoneNumber(phoneEvent.calledPhoneNumber)) {
            return;
        }
        String analyzeUrl = WebViewPreloadHelper.getInstance().getAnalyzeUrl(this, phoneEvent.calledPhoneNumber);
        this.mMoreInfoUrl = analyzeUrl;
        if (TextUtils.isEmpty(analyzeUrl)) {
            return;
        }
        PhoneEventLogAdapter phoneEventLogAdapter = this.mPhoneEventLogAdapter;
        if (phoneEventLogAdapter != null) {
            phoneEventLogAdapter.showItemDetailLoadingProgress(i);
        }
        WebViewPreloadHelper.getInstance().preloadWebView(this, this.mMoreInfoUrl, this.preloadAnalyseWebViewCallback);
    }
}
