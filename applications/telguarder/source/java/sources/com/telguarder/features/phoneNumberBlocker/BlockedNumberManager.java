package com.telguarder.features.phoneNumberBlocker;

import android.content.Context;
import com.telguarder.features.numberLookup.PhoneCallManager;
import com.telguarder.features.rateAndFeedback.ReportResult;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.backend.BackendApi;
import com.telguarder.helpers.backend.BackendCallbackListener;
import com.telguarder.helpers.backend.BackendRequest;
import com.telguarder.helpers.backend.BackendRequestCreator;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.preferences.PreferencesManager;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneNumberBlocker/BlockedNumberManager.class */
public class BlockedNumberManager {
    private static BlockedNumberManager mInstance;
    private boolean mIsBlockerSwitchOn = true;
    private ReportResult mReportResult;

    private BlockedNumberManager() {
    }

    public static BlockedNumberManager getInstance() {
        BlockedNumberManager blockedNumberManager;
        synchronized (BlockedNumberManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new BlockedNumberManager();
                }
                blockedNumberManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return blockedNumberManager;
    }

    private void loadBlockedNumbersFromBackend(Context context, final BackendCallbackListener<ReportResult> backendCallbackListener) {
        BackendRequestCreator.backendRequestOfUrlAndMethodWithLogging(context, BackendApi.API_NUMBER_REPORT_CALL, BackendRequest.Method.GET).execute(ReportResult.class, (BackendCallbackListener) new BackendCallbackListener<ReportResult>() { // from class: com.telguarder.features.phoneNumberBlocker.BlockedNumberManager.3
            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onError(Exception exc) {
                BackendCallbackListener backendCallbackListener2 = backendCallbackListener;
                if (backendCallbackListener2 != null) {
                    backendCallbackListener2.onError(exc);
                }
            }

            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onStart() {
                BackendCallbackListener backendCallbackListener2 = backendCallbackListener;
                if (backendCallbackListener2 != null) {
                    backendCallbackListener2.onStart();
                }
            }

            public void onSuccess(ReportResult reportResult) {
                if (BlockedNumberManager.this.mReportResult == null || !BlockedNumberManager.this.mReportResult.equals(reportResult)) {
                    BlockedNumberManager.this.mReportResult = reportResult;
                    PreferencesManager.getInstance().saveCachedBlockedNumberList(BlockedNumberManager.this.mReportResult);
                }
                BackendCallbackListener backendCallbackListener2 = backendCallbackListener;
                if (backendCallbackListener2 != null) {
                    backendCallbackListener2.onSuccess(BlockedNumberManager.this.mReportResult);
                }
            }
        });
    }

    public void addBlockedNumber(final Context context, final String str, final String str2, final String str3, String str4, final boolean z, final BackendCallbackListener<Object> backendCallbackListener) {
        AnalyticsManager.getInstance().sendNumberReportApiCalled(str);
        BackendRequest backendRequestOfUrlAndMethodWithLogging = BackendRequestCreator.backendRequestOfUrlAndMethodWithLogging(context, BackendApi.API_NUMBER_REPORT_CALL, BackendRequest.Method.POST);
        backendRequestOfUrlAndMethodWithLogging.putParam("number", str);
        backendRequestOfUrlAndMethodWithLogging.putParam("owner", str2);
        backendRequestOfUrlAndMethodWithLogging.putParam("reason", str3);
        backendRequestOfUrlAndMethodWithLogging.putParam("comment", str4);
        backendRequestOfUrlAndMethodWithLogging.putParam("blocked", z);
        backendRequestOfUrlAndMethodWithLogging.execute((Type) String.class, (BackendCallbackListener) new BackendCallbackListener<Object>() { // from class: com.telguarder.features.phoneNumberBlocker.BlockedNumberManager.1
            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onError(Exception exc) {
                BackendCallbackListener backendCallbackListener2 = backendCallbackListener;
                if (backendCallbackListener2 != null) {
                    backendCallbackListener2.onError(exc);
                }
                AnalyticsManager.getInstance().sendNumberReportAddError(str);
            }

            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onStart() {
                BackendCallbackListener backendCallbackListener2 = backendCallbackListener;
                if (backendCallbackListener2 != null) {
                    backendCallbackListener2.onStart();
                }
            }

            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onSuccess(Object obj) {
                AnalyticsManager.getInstance().sendNumberReportAdd(str);
                if (z && BlockedNumberManager.this.mReportResult != null && BlockedNumberManager.this.mReportResult.numbers != null) {
                    ReportResult.ReportEntry reportEntry = new ReportResult.ReportEntry();
                    reportEntry.number = str;
                    reportEntry.owner = str2;
                    reportEntry.reason = str3;
                    if (BlockedNumberManager.this.mReportResult.numbers.size() != 2 || !BlockedNumberManager.this.mReportResult.numbers.get(1).isPlaceholderEntry()) {
                        BlockedNumberManager.this.mReportResult.numbers.add(BlockedNumberManager.this.mReportResult.numbers.size(), reportEntry);
                    } else {
                        BlockedNumberManager.this.mReportResult.numbers.set(BlockedNumberManager.this.mReportResult.numbers.size() - 1, reportEntry);
                    }
                    PreferencesManager.getInstance().saveCachedBlockedNumberList(BlockedNumberManager.this.mReportResult);
                }
                PhoneCallManager.getInstance(context).deletePhoneNumberFromCache(context, str);
                BackendCallbackListener backendCallbackListener2 = backendCallbackListener;
                if (backendCallbackListener2 != null) {
                    backendCallbackListener2.onSuccess(obj);
                }
            }
        });
    }

    public ReportResult.ReportEntry getBlockedNumberInfo(String str) {
        if (isBlockedNumberListNotEmpty()) {
            Iterator<ReportResult.ReportEntry> it = this.mReportResult.numbers.iterator();
            while (it.hasNext()) {
                ReportResult.ReportEntry next = it.next();
                if (ContactUtils.isNumberTheSame(next.number, str)) {
                    return next;
                }
            }
            return null;
        }
        return null;
    }

    public ReportResult getBlockedNumberList() {
        return this.mReportResult;
    }

    public void initBlockedNumberManager(Context context) {
        this.mIsBlockerSwitchOn = PreferencesManager.getInstance().getSavedBlockerSwitchState();
        ReportResult cachedBlockedNumberList = PreferencesManager.getInstance().getCachedBlockedNumberList();
        this.mReportResult = cachedBlockedNumberList;
        if (cachedBlockedNumberList == null) {
            refreshCachedList(context, null);
        }
    }

    public boolean isBlockedNumberListNotEmpty() {
        ReportResult reportResult = this.mReportResult;
        return (reportResult == null || reportResult.numbers == null || this.mReportResult.numbers.isEmpty()) ? false : true;
    }

    public boolean isBlockerSwitchOn() {
        return this.mIsBlockerSwitchOn;
    }

    public boolean isNumberBlocked(String str) {
        return isNumberBlocked(str, true);
    }

    public boolean isNumberBlocked(String str, boolean z) {
        if ((!z || isBlockerSwitchOn()) && isBlockedNumberListNotEmpty()) {
            Iterator<ReportResult.ReportEntry> it = this.mReportResult.numbers.iterator();
            while (it.hasNext()) {
                if (ContactUtils.isNumberTheSame(it.next().number, str)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public void refreshCachedList(Context context, BackendCallbackListener<ReportResult> backendCallbackListener) {
        synchronized (this) {
            loadBlockedNumbersFromBackend(context, backendCallbackListener);
        }
    }

    public void removeBlockedNumber(final Context context, final String str, final BackendCallbackListener<ReportResult> backendCallbackListener) {
        AnalyticsManager.getInstance().sendNumberReportDeleteApiCalled(str);
        BackendRequest backendRequestOfUrlAndMethodWithLogging = BackendRequestCreator.backendRequestOfUrlAndMethodWithLogging(context, BackendApi.API_NUMBER_REPORT_DELETE_CALL, BackendRequest.Method.POST);
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        backendRequestOfUrlAndMethodWithLogging.putParam("numbers", arrayList);
        backendRequestOfUrlAndMethodWithLogging.execute(ReportResult.class, (BackendCallbackListener) new BackendCallbackListener<ReportResult>() { // from class: com.telguarder.features.phoneNumberBlocker.BlockedNumberManager.2
            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onError(Exception exc) {
                BackendCallbackListener backendCallbackListener2 = backendCallbackListener;
                if (backendCallbackListener2 != null) {
                    backendCallbackListener2.onError(exc);
                }
                AnalyticsManager.getInstance().sendNumberReportDeleteError(str);
            }

            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onStart() {
                BackendCallbackListener backendCallbackListener2 = backendCallbackListener;
                if (backendCallbackListener2 != null) {
                    backendCallbackListener2.onStart();
                }
            }

            public void onSuccess(ReportResult reportResult) {
                AnalyticsManager.getInstance().sendNumberReportDelete(str);
                BackendCallbackListener backendCallbackListener2 = backendCallbackListener;
                if (backendCallbackListener2 != null) {
                    backendCallbackListener2.onSuccess(BlockedNumberManager.this.mReportResult);
                }
                PreferencesManager.getInstance().saveCachedBlockedNumberList(BlockedNumberManager.this.mReportResult);
                PhoneCallManager.getInstance(context).deletePhoneNumberFromCache(context, str);
            }
        });
    }

    public void setBlockerSwitchState(boolean z) {
        this.mIsBlockerSwitchOn = z;
        PreferencesManager.getInstance().savedBlockerSwitchState(this.mIsBlockerSwitchOn);
    }
}
