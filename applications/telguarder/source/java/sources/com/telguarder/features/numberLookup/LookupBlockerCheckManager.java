package com.telguarder.features.numberLookup;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.PowerManager;
import android.provider.Settings;
import androidx.appcompat.app.AlertDialog;
import com.telguarder.ApplicationConstants;
import com.telguarder.C2083R;
import com.telguarder.features.numberLookup.PhoneEventLogManager;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.contact.ContactManager;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.preferences.PreferencesKeys;
import com.telguarder.helpers.preferences.PreferencesManager;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/LookupBlockerCheckManager.class */
public class LookupBlockerCheckManager {
    private static LookupBlockerCheckManager mInstance;
    private boolean mAlreadyChecked = false;
    private boolean mEnableMessageBoxOnSettingsScreens = false;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber.class */
    public static class LastLookedupNumber {
        public long checkedCallLogId;
        public String number;
        public boolean visible;
    }

    private LookupBlockerCheckManager() {
    }

    public static LookupBlockerCheckManager getInstance() {
        if (mInstance == null) {
            LookupBlockerCheckManager lookupBlockerCheckManager = new LookupBlockerCheckManager();
            mInstance = lookupBlockerCheckManager;
            lookupBlockerCheckManager.mAlreadyChecked = false;
        }
        return mInstance;
    }

    public static /* synthetic */ void lambda$saveLastLookedupNumber$2(String str, boolean z, long j, int i) {
        LastLookedupNumber lastLookedupNumber = new LastLookedupNumber();
        lastLookedupNumber.number = str;
        lastLookedupNumber.visible = z;
        lastLookedupNumber.checkedCallLogId = j;
        if (i == 2) {
            PreferencesManager.getInstance().saveLastOutgoingLookedupNumber(lastLookedupNumber);
        } else {
            PreferencesManager.getInstance().saveLastIncomingLookedupNumber(lastLookedupNumber);
        }
    }

    private void saveLastLookedupNumber(final String str, final int i, final boolean z, final long j) {
        new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup._$$Lambda$LookupBlockerCheckManager$vcXTKzN8RRXTJRfdsZyqgcOd4Ns
            @Override // java.lang.Runnable
            public final void run() {
                LookupBlockerCheckManager.lambda$saveLastLookedupNumber$2(str, z, j, i);
            }
        }).start();
    }

    public boolean batteryOptimisationsIgnored(Context context) {
        PowerManager powerManager;
        return Build.VERSION.SDK_INT < 23 || (powerManager = (PowerManager) context.getSystemService(PowerManager.class)) == null || powerManager.isIgnoringBatteryOptimizations(context.getPackageName());
    }

    public boolean canDrawOverlays(Context context) {
        return Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(context);
    }

    public void checkForFirmwareSpecificBlockers(final Context context) {
        if (!PreferencesManager.getInstance().isProtectedAppchekDone()) {
            openCustomSettingsPage(context, true);
        } else if (this.mAlreadyChecked) {
        } else {
            this.mAlreadyChecked = true;
            PhoneEventLogManager.getInstance().checkLastNumber(context, Long.valueOf(AppUtil.getFirstInstallTime(context)), new PhoneEventLogManager.LastNumberCheckCompletionHandler() { // from class: com.telguarder.features.numberLookup._$$Lambda$LookupBlockerCheckManager$QKlbrIheJpw06JzkfyMln3Zols4
                @Override // com.telguarder.features.numberLookup.PhoneEventLogManager.LastNumberCheckCompletionHandler
                public final void handle(String str, Long l, int i, long j) {
                    LookupBlockerCheckManager.this.m420xaeb7b671(context, str, l, i, j);
                }
            });
        }
    }

    public boolean isLookupBlockerCheckNeeded(Context context) {
        if (PreferencesManager.getInstance().getSettingEnabled(PreferencesKeys.SETTINGS_LOOK_UP_INCOMING_CALLS) || PreferencesManager.getInstance().getSettingEnabled(PreferencesKeys.SETTINGS_LOOK_UP_OUTGOING_CALLS)) {
            return !AppUtil.isDeviceOnAbroadNetwork(context) || PreferencesManager.getInstance().getSettingEnabled(PreferencesKeys.SETTINGS_LOOK_UP_ABROAD);
        }
        return false;
    }

    public boolean isMessageBoxOnSettingsScreensNeeded(Context context) {
        return this.mEnableMessageBoxOnSettingsScreens && canDrawOverlays(context) && batteryOptimisationsIgnored(context);
    }

    /* renamed from: lambda$checkForFirmwareSpecificBlockers$0$LookupBlockerCheckManager */
    public /* synthetic */ void m420xaeb7b671(Context context, String str, Long l, int i, long j) {
        if (str != null) {
            if (!PreferencesManager.getInstance().getSettingEnabled(PreferencesKeys.SETTINGS_LOOK_UP_STORED_CONTACTS) && ContactManager.getInstance().getContactByPhoneNumber(context, str) != null) {
                return;
            }
            LastLookedupNumber lastIncomingLookedupNumber = i != 2 ? PreferencesManager.getInstance().getLastIncomingLookedupNumber() : PreferencesManager.getInstance().getLastOutgoingLookedupNumber();
            if (lastIncomingLookedupNumber == null) {
                openCustomSettingsPage(context, true);
            } else if (l.longValue() != 0 && lastIncomingLookedupNumber.checkedCallLogId != 0 && l.longValue() != lastIncomingLookedupNumber.checkedCallLogId) {
                openCustomSettingsPage(context, true);
            } else if (lastIncomingLookedupNumber.checkedCallLogId != 0 || lastIncomingLookedupNumber.number == null) {
            } else {
                if (!ContactUtils.isNumberTheSame(lastIncomingLookedupNumber.number, str)) {
                    openCustomSettingsPage(context, true);
                    return;
                }
                saveLastLookedupNumber(lastIncomingLookedupNumber.number, i, lastIncomingLookedupNumber.visible, l.longValue());
                if (lastIncomingLookedupNumber.visible) {
                    return;
                }
                openCustomSettingsPage(context, true);
            }
        }
    }

    public /* synthetic */ void lambda$openCustomSettingsPage$1$LookupBlockerCheckManager(Context context, Intent intent, DialogInterface dialogInterface, int i) {
        try {
            context.startActivity(intent);
        } catch (Exception e) {
            AnalyticsManager.getInstance().sendLookupBlockerCheckPopupError(intent.getComponent().getClassName());
        }
        dialogInterface.dismiss();
        PreferencesManager.getInstance().saveProtectedAppchekDone(true);
        AnalyticsManager.getInstance().sendLookupBlockerCheckPopupClickAction(intent.getComponent().getClassName());
        this.mEnableMessageBoxOnSettingsScreens = false;
    }

    public void openCustomSettingsPage(final Context context, boolean z) {
        for (final Intent intent : ApplicationConstants.POWERMANAGER_INTENTS) {
            if (ApplicationConstants.isCallable(context, intent)) {
                AnalyticsManager.getInstance().sendLookupBlockerCheckPopupShowAction(intent.getComponent().getClassName());
                this.mEnableMessageBoxOnSettingsScreens = z;
                if (z && PreferencesManager.getInstance().isProtectedAppchekDone()) {
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                AlertDialog.Builder title = builder.setTitle(Build.MANUFACTURER + " " + context.getString(C2083R.string.whitelisting_appsstart_blocker_popup_title));
                title.setMessage(context.getString(C2083R.string.whitelisting_appsstart_blocker_popup_line1) + "\n\n" + context.getString(C2083R.string.whitelisting_appsstart_blocker_popup_line2) + "\n").setPositiveButton(context.getString(C2083R.string.whitelisting_appsstart_blocker_popup_button), new DialogInterface.OnClickListener() { // from class: com.telguarder.features.numberLookup._$$Lambda$LookupBlockerCheckManager$N_CING3UAJLCIDWKHgo1nXskh_4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        LookupBlockerCheckManager.this.lambda$openCustomSettingsPage$1$LookupBlockerCheckManager(context, intent, dialogInterface, i);
                    }
                }).show();
                return;
            }
        }
    }

    public void saveLastLookedupNumber(String str, int i, boolean z) {
        saveLastLookedupNumber(str, i, z, 0L);
    }

    public void setMessageBoxOnSettingsScreensNotNeeded() {
        this.mEnableMessageBoxOnSettingsScreens = false;
    }
}
