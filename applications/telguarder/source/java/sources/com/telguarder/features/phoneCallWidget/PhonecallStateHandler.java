package com.telguarder.features.phoneCallWidget;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.telephony.TelephonyManager;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.numberLookup.PhoneNumberLookupResult;
import com.telguarder.features.postCallStatistics.LastPhoneCallActivity;
import com.telguarder.features.userConsentHandling.NumberLookupConsentActivity;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.preferences.PreferencesKeys;
import com.telguarder.helpers.preferences.PreferencesManager;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneCallWidget/PhonecallStateHandler.class */
public class PhonecallStateHandler {
    private static PhonecallStateHandler mInstance;
    private Runnable keepaliveCode;
    private Handler keepaliveHandler;
    public Boolean outgoingLookupAllowed = null;
    public Boolean incomingLookupAllowed = null;
    public Boolean roamingLookupAllowed = null;
    public boolean mLastNumberWasTestNumber = false;
    private boolean firstKeepaliveRun = true;
    private NavigableMap<String, PhoneStateCallData> mPhoneStateCallDataList = null;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData.class */
    public static class PhoneStateCallData {
        public boolean ring = false;
        public boolean callReceived = false;
        public long lastCallTimestamp = 0;
        public long lastCallDuration = 0;
        public long lastCallOffHookTimestamp = 0;
        public String lastCallNumber = null;
        public String lastBlockedCallNumber = null;
        public int lastCallType = 0;
        public String lastCallState = TelephonyManager.EXTRA_STATE_IDLE;
        public PhoneNumberLookupResult lastCallLookupResult = null;
    }

    private PhonecallStateHandler() {
    }

    public static PhonecallStateHandler getInstance() {
        PhonecallStateHandler phonecallStateHandler;
        synchronized (PhonecallStateHandler.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PhonecallStateHandler();
                }
                phonecallStateHandler = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phonecallStateHandler;
    }

    private boolean isAbroadAndLookupNotAllowed(Context context) {
        if (this.roamingLookupAllowed == null) {
            this.roamingLookupAllowed = Boolean.valueOf(!PreferencesManager.getInstance().getSettingEnabled(PreferencesKeys.SETTINGS_LOOK_UP_ABROAD) && AppUtil.isDeviceOnAbroadNetwork(context));
        }
        return this.roamingLookupAllowed.booleanValue();
    }

    public static /* synthetic */ void lambda$openPhoneCallLogIfEnabledBySetting$0(Context context, String str, PhoneStateCallData phoneStateCallData) {
        LastPhoneCallActivity.openLastPhoneCall(context, str, phoneStateCallData.lastCallLookupResult, phoneStateCallData.lastCallType, Long.valueOf(phoneStateCallData.lastCallTimestamp), true);
        AnalyticsManager.getInstance().sendCallStatisticsPageOpenedFromAction("call_brdcst_rcvr");
    }

    public void cleanPhoneStateCallData() {
        NavigableMap<String, PhoneStateCallData> navigableMap = this.mPhoneStateCallDataList;
        if (navigableMap != null) {
            navigableMap.clear();
        }
    }

    public PhoneStateCallData getPhoneStateCallData(String str) {
        return getPhoneStateCallData(str, false);
    }

    public PhoneStateCallData getPhoneStateCallData(String str, boolean z) {
        PhoneStateCallData phoneStateCallData;
        synchronized (this) {
            PhoneStateCallData phoneStateCallData2 = null;
            if (str == null) {
                return null;
            }
            if (z) {
                NavigableMap<String, PhoneStateCallData> navigableMap = this.mPhoneStateCallDataList;
                if (navigableMap == null) {
                    this.mPhoneStateCallDataList = new TreeMap();
                    phoneStateCallData = new PhoneStateCallData();
                    this.mPhoneStateCallDataList.put(str, phoneStateCallData);
                } else {
                    PhoneStateCallData phoneStateCallData3 = (PhoneStateCallData) navigableMap.get(str);
                    PhoneStateCallData phoneStateCallData4 = phoneStateCallData3;
                    if (phoneStateCallData3 == null) {
                        Iterator<Map.Entry<String, PhoneStateCallData>> it = this.mPhoneStateCallDataList.entrySet().iterator();
                        while (true) {
                            phoneStateCallData4 = phoneStateCallData3;
                            if (!it.hasNext()) {
                                break;
                            }
                            Map.Entry<String, PhoneStateCallData> next = it.next();
                            if (ContactUtils.isNumberTheSame(str, next.getKey())) {
                                phoneStateCallData4 = next.getValue();
                                break;
                            }
                        }
                    }
                    PhoneStateCallData phoneStateCallData5 = phoneStateCallData4;
                    phoneStateCallData = phoneStateCallData5;
                    if (phoneStateCallData5 == null) {
                        phoneStateCallData = new PhoneStateCallData();
                        this.mPhoneStateCallDataList.put(str, phoneStateCallData);
                    }
                }
            } else {
                NavigableMap<String, PhoneStateCallData> navigableMap2 = this.mPhoneStateCallDataList;
                phoneStateCallData = null;
                if (navigableMap2 != null) {
                    phoneStateCallData = null;
                    if (!navigableMap2.isEmpty()) {
                        phoneStateCallData = (PhoneStateCallData) this.mPhoneStateCallDataList.get(str);
                        if (phoneStateCallData == null) {
                            Iterator<Map.Entry<String, PhoneStateCallData>> it2 = this.mPhoneStateCallDataList.entrySet().iterator();
                            while (true) {
                                phoneStateCallData = phoneStateCallData2;
                                if (!it2.hasNext()) {
                                    break;
                                }
                                Map.Entry<String, PhoneStateCallData> next2 = it2.next();
                                if (ContactUtils.isNumberTheSame(str, next2.getKey())) {
                                    phoneStateCallData2 = (PhoneStateCallData) this.mPhoneStateCallDataList.get(next2.getKey());
                                }
                            }
                        }
                    }
                }
            }
            return phoneStateCallData;
        }
    }

    public boolean isKeepAliveRunning() {
        Runnable runnable;
        boolean z = true;
        if (Build.VERSION.SDK_INT < 29) {
            return (this.keepaliveHandler == null || this.keepaliveCode == null) ? false : true;
        }
        Handler handler = this.keepaliveHandler;
        if (handler == null || (runnable = this.keepaliveCode) == null || !handler.hasCallbacks(runnable)) {
            z = false;
        }
        return z;
    }

    public /* synthetic */ void lambda$preloadKeepAlive$1$PhonecallStateHandler() {
        if (this.firstKeepaliveRun) {
            this.firstKeepaliveRun = false;
        } else {
            AdvertManager.incAdNetworkFlowKeepaliveCount();
        }
        if (LastPhoneCallActivity.isInstantiated() && LastPhoneCallActivity.getInstance().isVisible()) {
            stopPreloadKeepAlive();
            return;
        }
        Handler handler = this.keepaliveHandler;
        if (handler == null) {
            return;
        }
        try {
            handler.removeCallbacksAndMessages(null);
        } catch (Exception e) {
        }
        try {
            this.keepaliveHandler.postDelayed(this.keepaliveCode, AdvertManager.keepAliveTimeStep * 1000);
        } catch (Exception e2) {
        }
    }

    public void openPhoneCallLogIfEnabledBySetting(final Context context, final String str) {
        final PhoneStateCallData phoneStateCallData = getInstance().getPhoneStateCallData(str);
        if (phoneStateCallData != null && PreferencesManager.getInstance().postCallScreenIsEnabled()) {
            Runnable runnable = new Runnable() { // from class: com.telguarder.features.phoneCallWidget._$$Lambda$PhonecallStateHandler$90UlgeRQm_ufJZ4svqvYyC717i0
                @Override // java.lang.Runnable
                public final void run() {
                    PhonecallStateHandler.lambda$openPhoneCallLogIfEnabledBySetting$0(context, str, phoneStateCallData);
                }
            };
            if (!PreferencesManager.getInstance().getUserConsentForPolicy2018()) {
                NumberLookupConsentActivity.openNumberLookupConsentActivity(context, false, true);
            } else {
                runnable.run();
            }
        }
    }

    public void preloadKeepAlive(Context context) {
        AdvertManager.addAdNetworkFlowDebugInfo(" PRELOAD KEEPALIVE START");
        stopPreloadKeepAlive();
        AdvertManager.resetAdNetworkFlowKeepaliveCount();
        this.firstKeepaliveRun = true;
        this.keepaliveHandler = new Handler();
        Runnable runnable = new Runnable() { // from class: com.telguarder.features.phoneCallWidget._$$Lambda$PhonecallStateHandler$PjrGDCuDzxymY1kxlCBLRwnCk5s
            @Override // java.lang.Runnable
            public final void run() {
                PhonecallStateHandler.this.lambda$preloadKeepAlive$1$PhonecallStateHandler();
            }
        };
        this.keepaliveCode = runnable;
        this.keepaliveHandler.post(runnable);
    }

    public boolean shouldDoIncomingPhoneNumberLookup(Context context) {
        if (this.incomingLookupAllowed == null) {
            this.incomingLookupAllowed = Boolean.valueOf(!isAbroadAndLookupNotAllowed(context) && PreferencesManager.getInstance().getSettingEnabled(PreferencesKeys.SETTINGS_LOOK_UP_INCOMING_CALLS));
        }
        Boolean bool = this.incomingLookupAllowed;
        boolean z = false;
        if (bool != null) {
            z = bool.booleanValue();
        }
        return z;
    }

    public boolean shouldDoOutgoingPhoneNumberLookup(Context context) {
        if (this.outgoingLookupAllowed == null) {
            this.outgoingLookupAllowed = Boolean.valueOf(!isAbroadAndLookupNotAllowed(context) && PreferencesManager.getInstance().getSettingEnabled(PreferencesKeys.SETTINGS_LOOK_UP_OUTGOING_CALLS));
        }
        return this.outgoingLookupAllowed.booleanValue();
    }

    public void stopPreloadKeepAlive() {
        boolean z;
        try {
            Handler handler = this.keepaliveHandler;
            z = false;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                z = true;
            }
        } catch (Exception e) {
            z = false;
        }
        this.keepaliveHandler = null;
        this.keepaliveCode = null;
        if (z) {
            AdvertManager.addAdNetworkFlowDebugInfo(" PRELOAD KEEPALIVE STOP");
        }
    }
}
