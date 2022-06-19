package com.callapp.contacts.activity.settings;

import android.app.Activity;
import android.app.Dialog;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.preference.TwoStatePreference;
import android.text.format.DateFormat;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.widget.ListAdapter;
import com.amazonaws.services.p101s3.model.BucketVersioningConfiguration;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import com.callapp.common.api.ReturnCode;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.activity.contact.details.overlay.driveMode.BluetoothDeviceData;
import com.callapp.contacts.activity.contact.details.overlay.driveMode.DriveModePopUp;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.activity.linkedaccounts.LinkedAccountsActivity;
import com.callapp.contacts.activity.marketplace.ChooseThemeActivity;
import com.callapp.contacts.activity.marketplace.MarketPlaceActivity;
import com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity;
import com.callapp.contacts.activity.proxy.CallLogSubActivity;
import com.callapp.contacts.activity.proxy.DialerSubActivity;
import com.callapp.contacts.activity.proxy.FavoritesSubActivity;
import com.callapp.contacts.activity.records.CallRecordsActivity;
import com.callapp.contacts.activity.settings.PrivateModeDialog;
import com.callapp.contacts.activity.settings.SettingsFragment;
import com.callapp.contacts.activity.settings.WhoViewedMyProfileAdvancedOptions;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.api.helper.backup.BackupIntervalPeriod;
import com.callapp.contacts.api.helper.backup.BackupLoginCallBack;
import com.callapp.contacts.api.helper.backup.BackupUtils;
import com.callapp.contacts.api.helper.backup.BackupViaType;
import com.callapp.contacts.api.helper.backup.DropBoxHelper;
import com.callapp.contacts.api.helper.backup.GoogleDriveHelper;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.CallAppShortcutManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.PrefsUtils;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.DialogMaxRecordsConfiguration;
import com.callapp.contacts.popup.contact.DialogDateAndTime;
import com.callapp.contacts.popup.contact.DialogEditText;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImage;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoice;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.DialogWithEditTextDelegate;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.popup.contact.callrecorder.CallRecorderAdvancedSettingsDialog;
import com.callapp.contacts.receiver.BluetoothReceiver;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.enums.MaxRecordConfiguration;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.LocaleUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.TCF2Manager;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.widget.CallAppListPreference;
import com.callapp.contacts.widget.T9Preference;
import com.callapp.contacts.workers.BirthdayDailyWorker;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.facebook.C10181g;
import io.objectbox.BoxStore;
import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SettingsFragment.class */
public class SettingsFragment extends PreferenceFragment implements DialogInterface.OnDismissListener, PrivateModeDialog.IPrivateMode, WhoViewedMyProfileAdvancedOptions.whoViewedMyProfileNotificationTimeChange {

    /* renamed from: a */
    protected SimpleProgressDialog f24140a;

    /* renamed from: d */
    protected BillingManager f24143d;

    /* renamed from: f */
    private Preference f24145f;

    /* renamed from: h */
    private SwitchPreference f24147h;

    /* renamed from: i */
    private SwitchPreference f24148i;

    /* renamed from: e */
    private boolean f24144e = false;

    /* renamed from: b */
    Dialog f24141b = null;

    /* renamed from: c */
    int f24142c = -1;

    /* renamed from: g */
    private long f24146g = 0;

    /* renamed from: com.callapp.contacts.activity.settings.SettingsFragment$11 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SettingsFragment$11.class */
    public class C693711 extends Task {

        /* renamed from: a */
        final /* synthetic */ SimpleProgressDialog f24154a;

        C693711(SimpleProgressDialog simpleProgressDialog) {
            SettingsFragment.this = r4;
            this.f24154a = simpleProgressDialog;
        }

        /* renamed from: a */
        public static /* synthetic */ void m29611a(Activity activity) {
        }

        /* renamed from: a */
        public /* synthetic */ void m29610a(SimpleProgressDialog simpleProgressDialog) {
            simpleProgressDialog.dismiss();
            DialogSimpleMessage dialogSimpleMessage = new DialogSimpleMessage(Activities.getString(2131886631), Activities.getString(2131887286), Activities.getString(2131887338), null, _$$Lambda$SettingsFragment$11$HujLXzCBsoRHa6vEyi2Qeghhg90.INSTANCE, _$$Lambda$SettingsFragment$11$zCTMfC7w1ss50iFth3hp7rRWGqM.INSTANCE, new DefaultInterfaceImplUtils.OnDialogSimpleListener());
            dialogSimpleMessage.setCancelable(false);
            PopupManager.get().m28209a(SettingsFragment.this.getActivity(), dialogSimpleMessage);
        }

        /* renamed from: a */
        public static /* synthetic */ void m29609a(Boolean bool) {
        }

        /* renamed from: b */
        public static /* synthetic */ void m29608b(Activity activity) {
        }

        /* renamed from: b */
        public /* synthetic */ void m29607b(SimpleProgressDialog simpleProgressDialog) {
            simpleProgressDialog.dismiss();
            DialogSimpleMessage dialogSimpleMessage = new DialogSimpleMessage(Activities.getString(2131888107), Activities.getString(2131888108), Activities.getString(2131887338), null, _$$Lambda$SettingsFragment$11$ESHK3yE67E4ChfrHqj3JoINqh2Q.INSTANCE, _$$Lambda$SettingsFragment$11$V_b8tAqqfBcmQBZED3jajbYPOnk.INSTANCE, new DefaultInterfaceImplUtils.OnDialogSimpleListener());
            dialogSimpleMessage.setCancelable(false);
            PopupManager.get().m28209a(SettingsFragment.this.getActivity(), dialogSimpleMessage);
        }

        /* renamed from: c */
        public static /* synthetic */ void m29606c(Activity activity) {
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0165 -> B:11:0x0096). Please submit an issue!!! */
        /* renamed from: c */
        public /* synthetic */ void m29605c(final SimpleProgressDialog simpleProgressDialog) {
            File[] listFiles;
            AnalyticsManager.get().m28449a(Constants.SETTINGS, "Delete Account", "Account deleted from server, trying to delete cache");
            try {
                Context applicationContext = SettingsFragment.this.getActivity().getApplicationContext();
                for (File file : new File(CallAppApplication.get().getFilesDir().getParentFile().getAbsolutePath() + File.separator + "shared_prefs").listFiles()) {
                    try {
                        applicationContext.getSharedPreferences(file.getName().substring(0, file.getName().indexOf(".xml")), 0).edit().clear().apply();
                    } catch (Exception e) {
                    }
                    try {
                        file.delete();
                    } catch (Exception e2) {
                    }
                }
            } catch (Exception e3) {
            }
            CookieManager cookieManager = CookieManager.getInstance();
            if (Build.VERSION.SDK_INT >= 21) {
                cookieManager.removeAllCookies(_$$Lambda$SettingsFragment$11$PXd_vrX53wzhbCMBUf02y0ZlBak.INSTANCE);
            } else {
                cookieManager.removeAllCookie();
            }
            CallAppApplication.get().getObjectBoxStore().close();
            BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
            if (objectBoxStore.f62689m) {
                if (!BoxStore.m4735b(objectBoxStore.f62677a) || !AndroidUtils.m27634a((Context) SettingsFragment.this.getActivity())) {
                    Prefs.f26241aR.set(null);
                    Prefs.f26245aV.set(null);
                    AnalyticsManager.get().m28449a(Constants.SETTINGS, "Delete Account", "Unable to delete cache, removed progammatically");
                } else {
                    AnalyticsManager.get().m28449a(Constants.SETTINGS, "Delete Account", "Successfully deleted account from device, closing app");
                }
                PreferenceManager.getDefaultSharedPreferences(CallAppApplication.get()).edit().clear().apply();
                C10181g.m23290i().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0).edit().clear().apply();
                new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$11$sQzQq6pC41V5_c3bdAFbRrFxAnk
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingsFragment.C693711.this.m29603d(simpleProgressDialog);
                    }
                }, 1000L);
                return;
            }
            throw new IllegalStateException("Store must be closed");
        }

        /* renamed from: d */
        public static /* synthetic */ void m29604d(Activity activity) {
        }

        /* renamed from: d */
        public /* synthetic */ void m29603d(SimpleProgressDialog simpleProgressDialog) {
            simpleProgressDialog.dismiss();
            SettingsFragment.this.getActivity().setResult(-1111111, new Intent("ACTION_DEACTIVATE"));
            SettingsFragment.this.getActivity().finish();
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            HttpUtils.getCallAppServerHost();
            if (!HttpUtils.m26972b()) {
                CallAppApplication callAppApplication = CallAppApplication.get();
                final SimpleProgressDialog simpleProgressDialog = this.f24154a;
                callAppApplication.m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$11$Hz_ilksRnkcEX7TtoQ0KVFrN6zg
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingsFragment.C693711.this.m29610a(simpleProgressDialog);
                    }
                });
                AnalyticsManager.get().m28449a(Constants.SETTINGS, "Delete Account", "Account deletion failed because server is not reachable");
                return;
            }
            int m26964d = HttpUtils.m26964d();
            if (m26964d == ReturnCode.OK.statusCode) {
                CallAppApplication callAppApplication2 = CallAppApplication.get();
                final SimpleProgressDialog simpleProgressDialog2 = this.f24154a;
                callAppApplication2.m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$11$We63Lt39UFVCumvOgMes1u2oO5s
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingsFragment.C693711.this.m29605c(simpleProgressDialog2);
                    }
                });
                return;
            }
            CallAppApplication callAppApplication3 = CallAppApplication.get();
            final SimpleProgressDialog simpleProgressDialog3 = this.f24154a;
            callAppApplication3.m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$11$GV172pV6BVD8dFjZP0ev4NX3YrA
                @Override // java.lang.Runnable
                public final void run() {
                    SettingsFragment.C693711.this.m29607b(simpleProgressDialog3);
                }
            });
            AnalyticsManager.get().m28449a(Constants.SETTINGS, "Delete Account", "Account deletion failed because of unknown error. StatusCode: ".concat(String.valueOf(m26964d)));
        }
    }

    /* renamed from: com.callapp.contacts.activity.settings.SettingsFragment$7 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SettingsFragment$7.class */
    public class C70097 implements BackupLoginCallBack {

        /* renamed from: a */
        final /* synthetic */ CustomSwitchPreference f24275a;

        /* renamed from: b */
        final /* synthetic */ CustomSwitchPreference f24276b;

        /* renamed from: c */
        final /* synthetic */ CustomSwitchPreference f24277c;

        C70097(CustomSwitchPreference customSwitchPreference, CustomSwitchPreference customSwitchPreference2, CustomSwitchPreference customSwitchPreference3) {
            SettingsFragment.this = r4;
            this.f24275a = customSwitchPreference;
            this.f24276b = customSwitchPreference2;
            this.f24277c = customSwitchPreference3;
        }

        /* renamed from: a */
        public static /* synthetic */ void m29599a(CustomSwitchPreference customSwitchPreference, CustomSwitchPreference customSwitchPreference2) {
            customSwitchPreference.setChecked(false);
            customSwitchPreference2.setChecked(true);
        }

        @Override // com.callapp.contacts.api.helper.backup.BackupLoginCallBack
        /* renamed from: a */
        public final void mo29304a() {
            Prefs.f26605hK.set(BackupViaType.GOOGLE_DRIVE);
            CallAppApplication callAppApplication = CallAppApplication.get();
            final CustomSwitchPreference customSwitchPreference = this.f24275a;
            final CustomSwitchPreference customSwitchPreference2 = this.f24276b;
            callAppApplication.m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$7$GxqrGX_7w2NdKoKJKBeiFS4CU2I
                @Override // java.lang.Runnable
                public final void run() {
                    SettingsFragment.C70097.m29599a(CustomSwitchPreference.this, customSwitchPreference2);
                }
            });
        }

        @Override // com.callapp.contacts.api.helper.backup.BackupLoginCallBack
        /* renamed from: a */
        public final void mo29303a(String str) {
            if (Prefs.f26605hK.get() == BackupViaType.GOOGLE_DRIVE) {
                Prefs.f26605hK.set(BackupViaType.UN_KNOWN);
            }
            CallAppApplication callAppApplication = CallAppApplication.get();
            final CustomSwitchPreference customSwitchPreference = this.f24277c;
            callAppApplication.m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$7$I72JbC3R1K4UBmNCnOs9V1_PRn4
                @Override // java.lang.Runnable
                public final void run() {
                    CustomSwitchPreference.this.setChecked(false);
                }
            });
        }

        @Override // com.callapp.contacts.api.helper.backup.BackupLoginCallBack
        /* renamed from: b */
        public final void mo29302b(String str) {
            if (Prefs.f26605hK.get() == BackupViaType.GOOGLE_DRIVE) {
                Prefs.f26605hK.set(BackupViaType.UN_KNOWN);
            }
            CallAppApplication callAppApplication = CallAppApplication.get();
            final CustomSwitchPreference customSwitchPreference = this.f24277c;
            callAppApplication.m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$7$RrjtO_YHMyHlNccT2fHZs6_o_ds
                @Override // java.lang.Runnable
                public final void run() {
                    CustomSwitchPreference.this.setChecked(false);
                }
            });
        }
    }

    /* renamed from: com.callapp.contacts.activity.settings.SettingsFragment$8 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SettingsFragment$8.class */
    public class C70108 implements BackupLoginCallBack {

        /* renamed from: a */
        final /* synthetic */ CustomSwitchPreference f24279a;

        /* renamed from: b */
        final /* synthetic */ CustomSwitchPreference f24280b;

        /* renamed from: c */
        final /* synthetic */ CustomSwitchPreference f24281c;

        C70108(CustomSwitchPreference customSwitchPreference, CustomSwitchPreference customSwitchPreference2, CustomSwitchPreference customSwitchPreference3) {
            SettingsFragment.this = r4;
            this.f24279a = customSwitchPreference;
            this.f24280b = customSwitchPreference2;
            this.f24281c = customSwitchPreference3;
        }

        /* renamed from: a */
        public static /* synthetic */ void m29596a(CustomSwitchPreference customSwitchPreference, CustomSwitchPreference customSwitchPreference2) {
            customSwitchPreference.setChecked(false);
            customSwitchPreference2.setChecked(true);
        }

        @Override // com.callapp.contacts.api.helper.backup.BackupLoginCallBack
        /* renamed from: a */
        public final void mo29304a() {
            Prefs.f26605hK.set(BackupViaType.DROP_BOX);
            CallAppApplication callAppApplication = CallAppApplication.get();
            final CustomSwitchPreference customSwitchPreference = this.f24279a;
            final CustomSwitchPreference customSwitchPreference2 = this.f24280b;
            callAppApplication.m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$8$_jWbjdqUvScsWMyi8JPUI_Vs0FY
                @Override // java.lang.Runnable
                public final void run() {
                    SettingsFragment.C70108.m29596a(CustomSwitchPreference.this, customSwitchPreference2);
                }
            });
        }

        @Override // com.callapp.contacts.api.helper.backup.BackupLoginCallBack
        /* renamed from: a */
        public final void mo29303a(String str) {
            if (Prefs.f26605hK.get() == BackupViaType.DROP_BOX) {
                Prefs.f26605hK.set(BackupViaType.UN_KNOWN);
            }
            CallAppApplication callAppApplication = CallAppApplication.get();
            final CustomSwitchPreference customSwitchPreference = this.f24281c;
            callAppApplication.m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$8$KvbgJ8lbr8q3LK1YTx777mvd_2M
                @Override // java.lang.Runnable
                public final void run() {
                    CustomSwitchPreference.this.setChecked(false);
                }
            });
        }

        @Override // com.callapp.contacts.api.helper.backup.BackupLoginCallBack
        /* renamed from: b */
        public final void mo29302b(String str) {
            if (Prefs.f26605hK.get() == BackupViaType.DROP_BOX) {
                Prefs.f26605hK.set(BackupViaType.UN_KNOWN);
            }
            CallAppApplication callAppApplication = CallAppApplication.get();
            final CustomSwitchPreference customSwitchPreference = this.f24281c;
            callAppApplication.m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$8$VTIfSDQe0tRPwZC17J5lekJ_flw
                @Override // java.lang.Runnable
                public final void run() {
                    CustomSwitchPreference.this.setChecked(false);
                }
            });
        }
    }

    /* renamed from: a */
    private int m29642a(String str) {
        int i;
        ListAdapter rootAdapter = ((PreferenceScreen) findPreference("pref_screen_key")).getRootAdapter();
        int i2 = 0;
        while (true) {
            i = 0;
            if (i2 < rootAdapter.getCount()) {
                if ((rootAdapter.getItem(i2) instanceof Preference) && StringUtils.m26042b(str, ((Preference) rootAdapter.getItem(i2)).getKey())) {
                    i = i2;
                    break;
                }
                i2++;
            } else {
                break;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static /* synthetic */ void m29658a(Activity activity) {
        AnalyticsManager.get().m28449a(Constants.SETTINGS, "Delete Account", "User cancelled remove account");
    }

    /* renamed from: a */
    private static void m29656a(Preference preference) {
        if (preference instanceof ListPreference) {
            preference.setSummary(((ListPreference) preference).getEntry());
        }
        if (preference instanceof EditTextPreference) {
            preference.setSummary(((EditTextPreference) preference).getText());
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m29655a(Preference preference, Object obj) {
        CallAppListPreference callAppListPreference = (CallAppListPreference) preference;
        int indexOf = Arrays.asList(callAppListPreference.getEntryValues()).indexOf(obj);
        if (indexOf >= 0) {
            preference.setSummary(callAppListPreference.getEntries()[indexOf]);
        }
    }

    /* renamed from: a */
    private static void m29654a(PreferenceScreen preferenceScreen, int i, int i2) {
        Drawable drawable = ViewUtils.getDrawable(i2);
        if (drawable != null) {
            drawable.mutate();
            drawable.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            preferenceScreen.setIcon(drawable);
        }
    }

    /* renamed from: a */
    public void m29651a(final CustomSwitchPreference customSwitchPreference, final CheckBoxPreference checkBoxPreference, final CheckBoxPreference checkBoxPreference2, final PreferenceCategory preferenceCategory) {
        if (!Activities.m27641e()) {
            Activities.m27649c(getActivity(), new PopupDoneListener() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg
                @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                public final void popupDone(boolean z) {
                    SettingsFragment.this.m29650a(customSwitchPreference, checkBoxPreference, checkBoxPreference2, preferenceCategory, z);
                }
            });
        } else {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.27
                @Override // java.lang.Runnable
                public void run() {
                    SettingsFragment.m29646a(SettingsFragment.this, customSwitchPreference, checkBoxPreference, checkBoxPreference2);
                }
            });
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m29650a(final CustomSwitchPreference customSwitchPreference, final CheckBoxPreference checkBoxPreference, final CheckBoxPreference checkBoxPreference2, final PreferenceCategory preferenceCategory, final boolean z) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.26
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    SettingsFragment.m29646a(SettingsFragment.this, customSwitchPreference, checkBoxPreference, checkBoxPreference2);
                    return;
                }
                customSwitchPreference.setChecked(false);
                checkBoxPreference.setEnabled(false);
                checkBoxPreference2.setEnabled(false);
            }
        });
    }

    /* renamed from: a */
    static /* synthetic */ void m29648a(SettingsFragment settingsFragment) {
        new Task() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.44
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                ContactDeviceIDAndPhoneChangesUtils.m28368a();
                IMDataExtractionUtils.m28605d();
            }
        }.execute();
    }

    /* renamed from: a */
    static /* synthetic */ void m29647a(SettingsFragment settingsFragment, BluetoothAdapter bluetoothAdapter, final CustomSwitchPreference customSwitchPreference, final CheckBoxPreference checkBoxPreference, final CheckBoxPreference checkBoxPreference2, final PreferenceCategory preferenceCategory) {
        if (bluetoothAdapter.isEnabled()) {
            settingsFragment.m29651a(customSwitchPreference, checkBoxPreference, checkBoxPreference2, preferenceCategory);
            return;
        }
        Activities.m27683a(settingsFragment.getActivity(), new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), new ActivityResult() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.24
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                if (i2 == -1) {
                    SettingsFragment.this.m29651a(customSwitchPreference, checkBoxPreference, checkBoxPreference2, preferenceCategory);
                    return;
                }
                customSwitchPreference.setChecked(false);
                checkBoxPreference.setEnabled(false);
                checkBoxPreference2.setEnabled(false);
                FeedbackManager.get().m28669a(Activities.getString(2131886790), (Integer) null);
            }
        });
    }

    /* renamed from: a */
    static /* synthetic */ void m29646a(SettingsFragment settingsFragment, final CustomSwitchPreference customSwitchPreference, final CheckBoxPreference checkBoxPreference, final CheckBoxPreference checkBoxPreference2) {
        List<BluetoothDeviceData> bluetoothCarDeviceList = BluetoothReceiver.getBluetoothCarDeviceList();
        if (!bluetoothCarDeviceList.isEmpty()) {
            PopupManager.get().m28209a(CallAppApplication.get(), new DriveModePopUp(new DriveModePopUp.DriveModeOverlayViewInterface() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.25
                @Override // com.callapp.contacts.activity.contact.details.overlay.driveMode.DriveModePopUp.DriveModeOverlayViewInterface
                /* renamed from: a */
                public final void mo29601a(boolean z) {
                    if (!z) {
                        customSwitchPreference.setChecked(false);
                    }
                    checkBoxPreference.setEnabled(z);
                    checkBoxPreference2.setEnabled(z);
                }
            }, bluetoothCarDeviceList, false, DriveModePopUp.CarViewType.GENERAL));
            return;
        }
        checkBoxPreference.setEnabled(false);
        checkBoxPreference2.setEnabled(false);
        FeedbackManager.get().m28669a(Activities.getString(2131886793), (Integer) null);
    }

    /* renamed from: a */
    static /* synthetic */ void m29644a(SettingsFragment settingsFragment, CustomSwitchPreference customSwitchPreference, CustomSwitchPreference customSwitchPreference2, CustomSwitchPreference customSwitchPreference3) {
        if (!DropBoxHelper.get().isLoggedIn()) {
            DropBoxHelper.get().setLoginListener(new C70108(customSwitchPreference2, customSwitchPreference3, customSwitchPreference));
            DropBoxHelper.get().m29287a(settingsFragment.getActivity());
            return;
        }
        Prefs.f26605hK.set(BackupViaType.DROP_BOX);
        customSwitchPreference2.setChecked(false);
        customSwitchPreference3.setChecked(true);
    }

    /* renamed from: a */
    static /* synthetic */ void m29643a(SettingsFragment settingsFragment, boolean z) {
        CustomSwitchPreference customSwitchPreference = (CustomSwitchPreference) settingsFragment.getPreferenceScreen().findPreference("callRecorderAuto");
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) settingsFragment.getPreferenceScreen().findPreference("callRecorderIncomingCallEnabled");
        CheckBoxPreference checkBoxPreference2 = (CheckBoxPreference) settingsFragment.getPreferenceScreen().findPreference("callRecorderOutgoingCallEnabled");
        if (!z) {
            checkBoxPreference.setEnabled(false);
            checkBoxPreference2.setEnabled(false);
            return;
        }
        checkBoxPreference.setEnabled(false);
        checkBoxPreference2.setEnabled(false);
        customSwitchPreference.setChecked(false);
        checkBoxPreference.setChecked(false);
        checkBoxPreference2.setChecked(false);
    }

    /* renamed from: a */
    private void m29641a(String str, final BooleanPref booleanPref) {
        ((CheckBoxPreference) getPreferenceScreen().findPreference(str)).setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.9
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                booleanPref.set(Boolean.valueOf(((Boolean) obj).booleanValue()));
                return true;
            }
        });
    }

    /* renamed from: a */
    private void m29640a(String str, final String str2) {
        if (StringUtils.m26045b((CharSequence) str2)) {
            findPreference(str).setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.65
                @Override // android.preference.Preference.OnPreferenceClickListener
                public boolean onPreferenceClick(Preference preference) {
                    AndroidUtils.m27635a((Activity) preference.getContext());
                    AnalyticsManager.get().m28449a(Constants.SETTINGS, str2, Constants.CLICK);
                    return false;
                }
            });
        }
    }

    /* renamed from: a */
    private void m29639a(String str, boolean z) {
        ((CustomSwitchPreference) getPreferenceScreen().findPreference(str)).setChecked(z);
    }

    /* renamed from: a */
    public void m29638a(boolean z) {
        if (z) {
            getPreferenceScreen().findPreference("showCallAppOnIncoming").setEnabled(false);
            getPreferenceScreen().findPreference("showCallAppOnOutgoing").setEnabled(false);
            getPreferenceScreen().findPreference("fullScreenModeEnabled").setEnabled(false);
            return;
        }
        getPreferenceScreen().findPreference("isInDriveMode").setEnabled(false);
        ((SwitchPreference) getPreferenceScreen().findPreference("isDefaultPhoneApp")).setChecked(false);
        getPreferenceScreen().findPreference("inCallFloatingWidgetEnabled").setEnabled(false);
        getPreferenceScreen().findPreference("callFabEnabled").setEnabled(false);
        getPreferenceScreen().findPreference("forcePhoneToRing").setEnabled(false);
        getPreferenceScreen().findPreference("requestHorizontalAnsweringOrientation").setEnabled(false);
        getPreferenceScreen().findPreference("requestVerticalAnsweringOrientation").setEnabled(false);
    }

    /* renamed from: a */
    public /* synthetic */ boolean m29649a(final CustomSwitchPreference customSwitchPreference, Preference preference, Object obj) {
        TCF2Manager.m27215a(getActivity(), new OutcomeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.12
            @Override // com.callapp.contacts.manager.task.OutcomeListener
            /* renamed from: a */
            public final void mo28119a(boolean z) {
                customSwitchPreference.setChecked(Prefs.f26305bc.get() == AdUtils.ConsentStatus.PERSONALIZED);
            }
        }, true);
        return true;
    }

    /* renamed from: b */
    public /* synthetic */ void m29637b(Activity activity) {
        AnalyticsManager.get().m28449a(Constants.SETTINGS, "Delete Account", "User requested to remove account");
        String string = Activities.getString(2131887415);
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        simpleProgressDialog.setMessage(string);
        simpleProgressDialog.setCancelable(false);
        PopupManager.get().m28209a(getActivity(), simpleProgressDialog);
        new C693711(simpleProgressDialog).execute();
    }

    /* renamed from: b */
    public static void m29634b(SwitchPreference switchPreference) {
        if (Prefs.f26646hz.get().booleanValue()) {
            switchPreference.setSummary(((WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile) Prefs.f26645hy.get()).getType());
        } else {
            switchPreference.setSummary(2131887843);
        }
    }

    /* renamed from: b */
    public static void m29633b(SwitchPreference switchPreference, Pair<Integer, Integer> pair) {
        if (pair == null) {
            switchPreference.setChecked(false);
            switchPreference.setSummary(2131887842);
            return;
        }
        switchPreference.setChecked(true);
        switchPreference.setSummary(String.format(Activities.getString(2131886334), pair.first, pair.second));
    }

    /* renamed from: b */
    static /* synthetic */ void m29631b(SettingsFragment settingsFragment, CustomSwitchPreference customSwitchPreference, CustomSwitchPreference customSwitchPreference2, CustomSwitchPreference customSwitchPreference3) {
        if (!GoogleDriveHelper.get().isLoggedIn()) {
            GoogleDriveHelper.get().setLoginListener(new C70097(customSwitchPreference, customSwitchPreference3, customSwitchPreference2));
            GoogleDriveHelper.get().m29279a(settingsFragment.getActivity());
            return;
        }
        Prefs.f26605hK.set(BackupViaType.GOOGLE_DRIVE);
        customSwitchPreference.setChecked(false);
        customSwitchPreference.setChecked(false);
        customSwitchPreference3.setChecked(true);
    }

    /* renamed from: b */
    static /* synthetic */ void m29630b(SettingsFragment settingsFragment, boolean z) {
        CustomSwitchPreference customSwitchPreference = (CustomSwitchPreference) settingsFragment.getPreferenceScreen().findPreference("callRecorderManual");
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) settingsFragment.getPreferenceScreen().findPreference("callRecorderIncomingCallEnabled");
        CheckBoxPreference checkBoxPreference2 = (CheckBoxPreference) settingsFragment.getPreferenceScreen().findPreference("callRecorderOutgoingCallEnabled");
        if (!z) {
            checkBoxPreference.setEnabled(false);
            checkBoxPreference2.setEnabled(false);
            checkBoxPreference.setChecked(false);
            checkBoxPreference2.setChecked(false);
            return;
        }
        customSwitchPreference.setChecked(false);
        checkBoxPreference.setEnabled(true);
        checkBoxPreference2.setEnabled(true);
        checkBoxPreference.setChecked(true);
        checkBoxPreference2.setChecked(true);
    }

    /* renamed from: b */
    private void m29629b(String str, final String str2) {
        Preference findPreference = findPreference(str);
        m29640a(str, str2);
        findPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.66
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                AnalyticsManager.get().m28449a(Constants.SETTINGS, str2, Boolean.TRUE.equals(obj) ? "On" : BucketVersioningConfiguration.OFF);
                return true;
            }
        });
    }

    /* renamed from: b */
    private void m29628b(String str, boolean z) {
        ((CheckBoxPreference) getPreferenceScreen().findPreference(str)).setChecked(z);
    }

    /* renamed from: b */
    public /* synthetic */ boolean m29636b(Preference preference) {
        PopupManager.get().m28209a(getActivity(), new DialogSimpleMessage(Activities.getString(2131886735), Activities.getString(2131886734), Activities.getString(2131888248), Activities.getString(2131887301), ThemeUtils.getColor(2131099784), false, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$vYAHl5HgO0LbSHrme_o8gsFmCJk
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                SettingsFragment.this.m29637b(activity);
            }
        }, _$$Lambda$SettingsFragment$CwGk2hISF2BeuYNZfPMK9rJ11hA.INSTANCE, new DefaultInterfaceImplUtils.OnDialogSimpleListener()));
        AnalyticsManager.get().m28449a(Constants.SETTINGS, "Delete Account", "Account deletion notification shown");
        return false;
    }

    /* renamed from: b */
    public /* synthetic */ boolean m29635b(Preference preference, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        Prefs.f26493fE.set(Boolean.valueOf(booleanValue));
        ((SwitchPreference) getPreferenceScreen().findPreference("requestVerticalAnsweringOrientation")).setChecked(!booleanValue);
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        StringBuilder sb = new StringBuilder("Widget: ");
        sb.append(Prefs.f26493fE.get().booleanValue() ? "horizontal" : "vertical");
        analyticsManager.m28449a(Constants.SETTINGS, "Default call screen", sb.toString());
        return true;
    }

    /* renamed from: c */
    private void m29627c() {
        this.f24142c = m29642a("general_settings");
    }

    /* renamed from: c */
    public /* synthetic */ boolean m29626c(Preference preference) {
        Intent intent = new Intent(getActivity(), PlanPageActivity.class);
        intent.putExtra("PLAN_PAGE_SOURCE", "settings");
        Activities.m27656b(getActivity(), intent);
        return true;
    }

    /* renamed from: c */
    public /* synthetic */ boolean m29625c(Preference preference, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        Prefs.f26493fE.set(Boolean.valueOf(!booleanValue));
        ((SwitchPreference) getPreferenceScreen().findPreference("requestHorizontalAnsweringOrientation")).setChecked(!booleanValue);
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        StringBuilder sb = new StringBuilder("Widget: ");
        sb.append(Prefs.f26493fE.get().booleanValue() ? "horizontal" : "vertical");
        analyticsManager.m28449a(Constants.SETTINGS, "Default call screen", sb.toString());
        return true;
    }

    /* renamed from: d */
    private void m29622d() {
        this.f24142c = m29642a("callerid_settings");
    }

    /* renamed from: d */
    public /* synthetic */ boolean m29621d(Preference preference, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        ActivityResult activityResult = new ActivityResult() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.17

            /* renamed from: com.callapp.contacts.activity.settings.SettingsFragment$17$1 */
            /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SettingsFragment$17$1.class */
            class C69441 implements DialogPopup.IDialogOnClickListener {
                C69441() {
                    C694317.this = r4;
                }

                /* renamed from: a */
                public static /* synthetic */ void m29602a(boolean z) {
                    if (z) {
                        AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "Gave Permission");
                    }
                }

                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Draw On Screen", "Clicked yes from Settings");
                    Activities.m27649c(activity, (PopupDoneListener) _$$Lambda$SettingsFragment$17$1$cc1i5EHe3O_vVI_aZ6dAJoQz_Tk.INSTANCE);
                }
            }

            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                if (i2 != 0 || System.currentTimeMillis() - SettingsFragment.this.f24146g > 400) {
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    StringBuilder sb = new StringBuilder("Click ");
                    sb.append(i2 == -1 ? "yes" : "no");
                    analyticsManager.m28449a(Constants.SETTINGS, "Gave Permission/ Set Callapp as default call screen", sb.toString());
                    AnalyticsManager.get().mo28446a(Constants.PERMISSIONS, "Default dailer from settings", PhoneManager.get().isDefaultSystemPhoneApp() ? "true" : "false", 0.0d);
                    AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Default dialer", PhoneManager.get().isDefaultSystemPhoneApp() ? "true" : "false");
                    AnalyticsManager.get().mo28434g();
                    PhoneManager.get().m28226e();
                    boolean isDefaultPhoneApp = PhoneManager.get().isDefaultPhoneApp();
                    SettingsFragment.this.m29638a(isDefaultPhoneApp);
                    if (isDefaultPhoneApp && !Activities.m27641e()) {
                        Prefs.f26496fH.m28169b(1);
                        AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                        analyticsManager2.mo28444a(Constants.PERMISSIONS, "Draw On Screen", "Popup shown from Settings " + Prefs.f26496fH.get(), Prefs.f26496fH.get().intValue(), new String[0]);
                        PopupManager.get().m28209a(SettingsFragment.this.getActivity(), new DialogSimpleMessage(Activities.getString(2131887019), Activities.getString(2131887018), Activities.getString(2131887338), Activities.getString(2131887301), new C69441(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.17.2
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                            public void onClickListener(Activity activity2) {
                                AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Draw On Screen", "Clicked no from Settings Activity");
                            }
                        }));
                    }
                } else {
                    Activities.m27687a(SettingsFragment.this.getActivity(), false, (ActivityResult) this);
                }
                SettingsFragment.this.f24146g = 0L;
            }
        };
        if (booleanValue) {
            AnalyticsManager.get().m28450a(Constants.SETTINGS, "Gave Permission/ Set Callapp as default call screen");
            Activities.m27687a(getActivity(), true, activityResult);
        } else {
            Activities.m27687a(getActivity(), false, activityResult);
        }
        this.f24146g = System.currentTimeMillis();
        return true;
    }

    /* renamed from: e */
    private void m29619e() {
        this.f24142c = m29642a("call_recorder_settings");
    }

    /* renamed from: e */
    public static /* synthetic */ boolean m29618e(Preference preference, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        AnalyticsManager.get().mo28444a(Constants.SETTINGS, "Default call screen", "callFabEnabled ", (booleanValue ? 4607182418800017408 : null) == 1 ? 1.0d : 0.0d, new String[0]);
        return true;
    }

    /* renamed from: f */
    private void m29617f() {
        this.f24142c = m29642a("customize_settings");
    }

    /* renamed from: g */
    private void m29616g() {
        this.f24142c = m29642a("backup_settings");
    }

    /* renamed from: h */
    private void m29615h() {
        this.f24142c = m29642a("notifications_settings");
    }

    /* renamed from: i */
    private void m29614i() {
        final SwitchPreference switchPreference = (SwitchPreference) findPreference("birthdayReminderEnabled");
        final SwitchPreference switchPreference2 = (SwitchPreference) findPreference("birthdayReminderSoundEnabled");
        m29633b(switchPreference, (Pair<Integer, Integer>) Prefs.f26664u.get());
        switchPreference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.51
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                AndroidUtils.m27635a((Activity) preference.getContext());
                AnalyticsManager.get().m28449a(Constants.SETTINGS, "Birthday Reminder", Constants.CLICK);
                return false;
            }
        });
        switchPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.52
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                int i;
                int i2;
                Pair pair = (Pair) Prefs.f26664u.get();
                if (pair != null) {
                    i2 = ((Integer) pair.first).intValue();
                    i = ((Integer) pair.second).intValue();
                } else {
                    i2 = 10;
                    i = 0;
                }
                final Calendar calendar = Calendar.getInstance();
                calendar.set(11, i2);
                calendar.set(12, i);
                DialogDateAndTime dialogDateAndTime = new DialogDateAndTime(calendar, new DialogDateAndTime.IDateAndTimeDialogListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.52.1
                    @Override // com.callapp.contacts.popup.contact.DialogDateAndTime.IDateAndTimeDialogListener
                    /* renamed from: a */
                    public final void mo27973a() {
                        Prefs.f26664u.set(null);
                        SettingsFragment.m29633b(switchPreference, (Pair<Integer, Integer>) null);
                        BirthdayDailyWorker.f29568a.m26184a();
                        switchPreference2.setEnabled(false);
                    }

                    @Override // com.callapp.contacts.popup.contact.DialogDateAndTime.IDateAndTimeDialogListener
                    /* renamed from: a */
                    public final void mo27972a(long j) {
                        calendar.setTimeInMillis(j);
                        int i3 = calendar.get(11);
                        int i4 = calendar.get(12);
                        Pair pair2 = new Pair(Integer.valueOf(i3), Integer.valueOf(i4));
                        Prefs.f26664u.set(pair2);
                        SettingsFragment.m29633b(switchPreference, (Pair<Integer, Integer>) pair2);
                        BirthdayDailyWorker.f29568a.m26184a();
                        AnalyticsManager analyticsManager = AnalyticsManager.get();
                        analyticsManager.m28449a(Constants.SETTINGS, "Birthday reminder", i3 + ":" + i4);
                        switchPreference2.setEnabled(true);
                    }
                });
                dialogDateAndTime.setAllowToggleState(false);
                dialogDateAndTime.setDialogTitleText(switchPreference.getTitle().toString());
                dialogDateAndTime.setNegativeBtnText(Activities.getString(2131886772));
                PopupManager.get().m28209a(SettingsFragment.this.getActivity(), dialogDateAndTime);
                return false;
            }
        });
        if (Build.VERSION.SDK_INT >= 26) {
            Prefs.f26667x.set(Boolean.valueOf(NotificationManager.get().isBirthdayChannelHasSound()));
        }
        switchPreference2.setChecked(Prefs.f26667x.get().booleanValue());
        switchPreference2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.53
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                if (Build.VERSION.SDK_INT >= 26) {
                    SettingsFragment.this.startActivityForResult(NotificationManager.get().getOpenBirthdayChannelSettingsIntent(), 15);
                    return false;
                }
                Prefs.f26667x.set((Boolean) obj);
                return true;
            }
        });
    }

    /* renamed from: j */
    public /* synthetic */ void m29613j() {
        getActivity().finish();
    }

    /* renamed from: k */
    public static /* synthetic */ void m29612k() {
    }

    private void setSummaryPreferenceById(String str) {
        Preference findPreference = getPreferenceScreen().findPreference(str);
        m29656a(findPreference);
        findPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.37
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                SettingsFragment.m29655a(preference, obj);
                return true;
            }
        });
    }

    private void setupAppShortcuts(final Context context) {
        findPreference("addCallLogShortcut").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.20
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                Intent intent = new Intent(context, CallLogSubActivity.class);
                intent.setAction("android.intent.action.CREATE_SHORTCUT");
                String string = Activities.getString(2131887675);
                CallAppShortcutManager.m28696a(context, intent, string, string, 2131689472);
                return true;
            }
        });
        findPreference("addFavoritesShortcut").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.21
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                Intent intent = new Intent(context, FavoritesSubActivity.class);
                intent.setAction("android.intent.action.CREATE_SHORTCUT");
                String string = Activities.getString(2131887677);
                CallAppShortcutManager.m28696a(context, intent, string, string, 2131689476);
                return true;
            }
        });
        findPreference("addDialerShortcut").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.22
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                Intent intent = new Intent(context, DialerSubActivity.class);
                intent.setAction("android.intent.action.CREATE_SHORTCUT");
                String string = Activities.getString(2131887676);
                CallAppShortcutManager.m28696a(context, intent, string, string, 2131689474);
                return true;
            }
        });
    }

    @Override // com.callapp.contacts.activity.settings.PrivateModeDialog.IPrivateMode
    /* renamed from: a */
    public final void mo29659a() {
        this.f24148i.setChecked(Prefs.f26595hA.get().booleanValue());
        AnalyticsManager.get().m28449a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ViewProfilePrivateModeChange", Prefs.f26595hA.get().booleanValue() ? "enable" : "disable");
    }

    /* renamed from: a */
    public final void m29657a(Intent intent) {
        if (!this.f24144e || intent == null) {
            return;
        }
        if (intent.hasExtra("general_settings")) {
            m29627c();
        } else if (intent.hasExtra("callerid_settings")) {
            m29622d();
        } else if (intent.hasExtra("call_recorder_settings") && !intent.hasExtra("EXTRA_HIDE_CALL_RECORDER")) {
            m29619e();
        } else if (intent.hasExtra("customize_settings")) {
            m29617f();
        } else if (intent.hasExtra("backup_settings")) {
            m29616g();
        } else if (!intent.hasExtra("notifications_settings")) {
        } else {
            m29615h();
        }
    }

    @Override // com.callapp.contacts.activity.settings.WhoViewedMyProfileAdvancedOptions.whoViewedMyProfileNotificationTimeChange
    /* renamed from: b */
    public final void mo29562b() {
        Prefs.f26646hz.set(Boolean.TRUE);
        this.f24147h.setChecked(true);
        AnalyticsManager.get().m28449a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ViewProfileNotificationPeriodChange", ((WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile) Prefs.f26645hy.get()).name());
        m29634b(this.f24147h);
    }

    public Preference getCurrentPreferenceScreen() {
        return this.f24145f;
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        getActivity();
        if (SocialNetworksSearchUtil.m29233a(i, i2, intent)) {
            return;
        }
        if (i == 15) {
            boolean isBirthdayChannelHasSound = NotificationManager.get().isBirthdayChannelHasSound();
            ((SwitchPreference) findPreference("birthdayReminderSoundEnabled")).setChecked(isBirthdayChannelHasSound);
            Prefs.f26667x.set(Boolean.valueOf(isBirthdayChannelHasSound));
        } else if (i != 1011 || i2 != 0) {
        } else {
            FeedbackManager.get().m28671a(Activities.getString(2131887102));
        }
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2132082698);
        setupPreferencesScreensIcons(getPreferenceScreen());
        getPreferenceScreen().findPreference("general_settings").setTitle(Activities.getString(2131886930));
        getPreferenceScreen().findPreference("language").setTitle(Activities.getString(2131887103));
        getPreferenceScreen().findPreference("menuLanguage").setTitle(Activities.getString(2131887185));
        getPreferenceScreen().findPreference("t9Language").setTitle(Activities.getString(2131887089));
        getPreferenceScreen().findPreference("others").setTitle(Activities.getString(2131887368));
        getPreferenceScreen().findPreference("linkedAccount").setTitle(Activities.getString(2131887111));
        getPreferenceScreen().findPreference("callAppDualSim").setTitle(Activities.getString(2131887645));
        PreferenceCategory preferenceCategory = (PreferenceCategory) findPreference("others");
        Preference findPreference = getPreferenceScreen().findPreference("sendPurchases");
        if (BillingManager.isBillingAvailable()) {
            findPreference.setTitle(Activities.getString(2131887625));
        } else {
            preferenceCategory.removePreference(findPreference);
        }
        getPreferenceScreen().findPreference("callerid_settings").setTitle(Activities.getString(2131886482));
        getPreferenceScreen().findPreference("caller_id").setTitle(Activities.getString(2131886481));
        getPreferenceScreen().findPreference("showCallAppOnIncoming").setTitle(Activities.getString(2131886457));
        getPreferenceScreen().findPreference("showCallAppOnOutgoing").setTitle(Activities.getString(2131886458));
        getPreferenceScreen().findPreference("fullScreenModeEnabled").setTitle(Activities.getString(2131886456));
        getPreferenceScreen().findPreference("inCallDuration").setTitle(Activities.getString(2131887021));
        getPreferenceScreen().findPreference("speakNameEnabled").setTitle(Activities.getString(2131886242));
        getPreferenceScreen().findPreference("post_call_screen").setTitle(Activities.getString(2131887417));
        getPreferenceScreen().findPreference("postCallScreenEnabled").setTitle(Activities.getString(2131887419));
        getPreferenceScreen().findPreference("postCallDuration").setTitle(Activities.getString(2131887416));
        getPreferenceScreen().findPreference("defaultImApp").setTitle(Activities.getString(2131887635));
        getPreferenceScreen().findPreference("whoViewedMyProfileAdvanced").setTitle(Activities.getString(2131887640));
        getPreferenceScreen().findPreference("sms_id").setTitle(Activities.getString(2131887723));
        getPreferenceScreen().findPreference("incomingSmsEnabled").setTitle(Activities.getString(2131887643));
        getPreferenceScreen().findPreference("call_recorder_settings").setTitle(Activities.getString(2131886426));
        getPreferenceScreen().findPreference("recorder_title").setTitle(Activities.getString(2131887522));
        getPreferenceScreen().findPreference("recorder_format_title").setTitle(Activities.getString(2131887527));
        getPreferenceScreen().findPreference("recording_advanced_mode").setTitle(Activities.getString(2131887523));
        getPreferenceScreen().findPreference("recorder_storage_title").setTitle(Activities.getString(2131887498));
        getPreferenceScreen().findPreference("callRecorderManual").setTitle(Activities.getString(2131886418));
        getPreferenceScreen().findPreference("callRecorderAuto").setTitle(Activities.getString(2131886400));
        getPreferenceScreen().findPreference("callRecorderIncomingCallEnabled").setTitle(Activities.getString(2131886413));
        getPreferenceScreen().findPreference("callRecorderOutgoingCallEnabled").setTitle(Activities.getString(2131886422));
        getPreferenceScreen().findPreference("callRecorderIncreaseVolume").setTitle(Activities.getString(2131886414));
        getPreferenceScreen().findPreference("recorderTest").setTitle(Activities.getString(2131887886));
        getPreferenceScreen().findPreference("callRecorderNormalizeSpeed").setTitle(Activities.getString(2131886420));
        getPreferenceScreen().findPreference("accessibilityService").setTitle(Activities.getString(2131886395));
        getPreferenceScreen().findPreference("forceInCommunicationMode").setTitle(Activities.getString(2131886410));
        getPreferenceScreen().findPreference("maxRecordsToSave").setTitle(Activities.getString(2131887878));
        getPreferenceScreen().findPreference("customize_settings").setTitle(Activities.getString(2131886698));
        getPreferenceScreen().findPreference("backup_settings").setTitle(Activities.getString(2131886304));
        getPreferenceScreen().findPreference("appearance").setTitle(Activities.getString(2131886254));
        getPreferenceScreen().findPreference("themes").setTitle(Activities.getString(2131887902));
        getPreferenceScreen().findPreference("overlayCover").setTitle(Activities.getString(2131887378));
        getPreferenceScreen().findPreference("preferPhotosFromDevice").setTitle(Activities.getString(2131887423));
        getPreferenceScreen().findPreference("contactListPageSwipeEnabled").setTitle(Activities.getString(2131886650));
        getPreferenceScreen().findPreference("customization").setTitle(Activities.getString(2131886685));
        getPreferenceScreen().findPreference("SpeedDial").setTitle(Activities.getString(2131887744));
        getPreferenceScreen().findPreference("quickSms").setTitle(Activities.getString(2131887481));
        getPreferenceScreen().findPreference("quickSmsEnabled").setTitle(Activities.getString(2131886816));
        getPreferenceScreen().findPreference("quickSms1").setTitle(Activities.getString(2131886715));
        getPreferenceScreen().findPreference("quickSms2").setTitle(Activities.getString(2131886716));
        getPreferenceScreen().findPreference("quickSms3").setTitle(Activities.getString(2131886717));
        getPreferenceScreen().findPreference("quickSms4").setTitle(Activities.getString(2131886718));
        getPreferenceScreen().findPreference("dialTonesEnabled").setTitle(Activities.getString(2131887088));
        getPreferenceScreen().findPreference("vibrateOnClickEnabled").setTitle(Activities.getString(2131888142));
        getPreferenceScreen().findPreference("notifications_settings").setTitle(Activities.getString(2131887327));
        getPreferenceScreen().findPreference("showCallAppIMNotification").setTitle(Activities.getString(2131887683));
        getPreferenceScreen().findPreference("showCallAppSpamAndBlockNotification").setTitle(Activities.getString(2131887681));
        getPreferenceScreen().findPreference("birthday").setTitle(Activities.getString(2131886340));
        getPreferenceScreen().findPreference("birthdayReminderEnabled").setTitle(Activities.getString(2131886332));
        getPreferenceScreen().findPreference("birthdayReminderSoundEnabled").setTitle(Activities.getString(2131887738));
        getPreferenceScreen().findPreference("whoViewedMyProfile").setTitle(Activities.getString(2131887642));
        getPreferenceScreen().findPreference("whoViewedMyProfileEnabled").setTitle(Activities.getString(2131887641));
        getPreferenceScreen().findPreference("privateMode").setTitle(Activities.getString(2131887436));
        getPreferenceScreen().findPreference("privateModeEnabled").setTitle(Activities.getString(2131887435));
        getPreferenceScreen().findPreference("missedCallCardEnabled").setTitle(Activities.getString(2131887682));
        getPreferenceScreen().findPreference("notAnsweredCardEnabled").setTitle(Activities.getString(2131887690));
        getPreferenceScreen().findPreference("missedCallOverlayEnabled").setTitle(Activities.getString(2131887685));
        getPreferenceScreen().findPreference("notAnsweredOverlayEnabled").setTitle(Activities.getString(2131887691));
        getPreferenceScreen().findPreference("missedCallDailySummaryEnabled").setTitle(Activities.getString(2131887684));
        getPreferenceScreen().findPreference("notAnswerDailySummaryEnabled").setTitle(Activities.getString(2131887688));
        getPreferenceScreen().findPreference("notAnswerNotificationEnabled").setTitle(Activities.getString(2131887689));
        getPreferenceScreen().findPreference("missedCallNotificationEnabled").setTitle(Activities.getString(2131887686));
        getPreferenceScreen().findPreference("missed_call_title").setTitle(Activities.getString(2131887211));
        getPreferenceScreen().findPreference("shortcuts").setTitle(Activities.getString(2131887856));
        getPreferenceScreen().findPreference("addCallLogShortcut").setTitle(Activities.getString(2131887850));
        getPreferenceScreen().findPreference("addFavoritesShortcut").setTitle(Activities.getString(2131887852));
        getPreferenceScreen().findPreference("addDialerShortcut").setTitle(Activities.getString(2131887851));
        getPreferenceScreen().findPreference("isDefaultPhoneApp").setTitle(Activities.getString(2131886820));
        getPreferenceScreen().findPreference("inCallFloatingWidgetEnabled").setTitle(Activities.getString(2131886819));
        getPreferenceScreen().findPreference("callFabEnabled").setTitle(Activities.getString(2131886818));
        getPreferenceScreen().findPreference("forcePhoneToRing").setTitle(Activities.getString(2131886918));
        getPreferenceScreen().findPreference("hasPhoneRang").setTitle(Activities.getString(2131886958));
        getPreferenceScreen().findPreference("in_call_services").setTitle(Activities.getString(2131887026));
        getPreferenceScreen().findPreference("requestVerticalAnsweringOrientation").setTitle(Activities.getString(2131888140));
        getPreferenceScreen().findPreference("requestHorizontalAnsweringOrientation").setTitle(Activities.getString(2131886976));
        getPreferenceScreen().findPreference("call_answering_orientation").setTitle(Activities.getString(2131887025));
        getPreferenceScreen().findPreference("ads_settings").setTitle(Activities.getString(2131886221));
        getPreferenceScreen().findPreference("allow_tailored_ads").setTitle(Activities.getString(2131886219));
        getPreferenceScreen().findPreference("super_skin_settings").setTitle(Activities.getString(2131887137));
        getPreferenceScreen().findPreference("super_skin_contact_details").setTitle(Activities.getString(2131886645));
        getPreferenceScreen().findPreference("superSkinContactDetailsBackgroundImageEnabled").setTitle(Activities.getString(2131886291));
        getPreferenceScreen().findPreference("super_skin_main_screen").setTitle(Activities.getString(2131887127));
        getPreferenceScreen().findPreference("superSkinMainScreenBackgroundImageEnabled").setTitle(Activities.getString(2131886291));
        getPreferenceScreen().findPreference("superSkinMainScreenTopBarImageEnabled").setTitle(Activities.getString(2131887910));
        getPreferenceScreen().findPreference("superSkinMainScreenAnimatedWizardEnabled").setTitle(Activities.getString(2131886241));
        getPreferenceScreen().findPreference("super_skin_app_menu").setTitle(Activities.getString(2131886244));
        getPreferenceScreen().findPreference("superSkinAppMenuAnimatedWizardEnabled").setTitle(Activities.getString(2131886241));
        getPreferenceScreen().findPreference("isInDriveMode").setTitle(Activities.getString(2131886789));
        getPreferenceScreen().findPreference("isInDriveModeIncoming").setTitle(Activities.getString(2131886529));
        getPreferenceScreen().findPreference("isInDriveModeOutgoing").setTitle(Activities.getString(2131886530));
        getPreferenceScreen().findPreference("where_to_backup_title").setTitle(Activities.getString(2131888212));
        getPreferenceScreen().findPreference("backupByDropbox").setTitle(Activities.getString(2131886799));
        getPreferenceScreen().findPreference("backupByDrive").setTitle(Activities.getString(2131886940));
        getPreferenceScreen().findPreference("backup_files").setTitle(Activities.getString(2131886296));
        getPreferenceScreen().findPreference("backupCallHistory").setTitle(Activities.getString(2131886381));
        getPreferenceScreen().findPreference("backupContacts").setTitle(Activities.getString(2131886655));
        getPreferenceScreen().findPreference("backupVideoRingTones").setTitle(Activities.getString(2131887391));
        getPreferenceScreen().findPreference("backupRecordings").setTitle(Activities.getString(2131886432));
        getPreferenceScreen().findPreference("period").setTitle(Activities.getString(2131886303));
        getPreferenceScreen().findPreference("twoDays").setTitle(Activities.getString(2131886097));
        getPreferenceScreen().findPreference("twoWeeks").setTitle(Activities.getString(2131886096));
        getPreferenceScreen().findPreference("month").setTitle(Activities.getString(2131886098));
        getPreferenceScreen().findPreference("enableBackupTitle").setTitle(Activities.getString(2131886813));
        getPreferenceScreen().findPreference("enableBackup").setTitle(Activities.getString(2131886812));
        ((ListPreference) getPreferenceScreen().findPreference("menuLanguage")).setDialogTitle(Activities.getString(2131887187));
        ((ListPreference) getPreferenceScreen().findPreference("menuLanguage")).setNegativeButtonText(Activities.getString(2131886505));
        ((T9Preference) getPreferenceScreen().findPreference("t9Language")).setDialogTitle(2131887090);
        ((ListPreference) getPreferenceScreen().findPreference("t9Language")).setNegativeButtonText(Activities.getString(2131886505));
        String string = Activities.getString(2131886505);
        ListPreference listPreference = (ListPreference) getPreferenceScreen().findPreference("inCallDuration");
        listPreference.setEntries(new CharSequence[]{Activities.getString(2131887020), Activities.getString(2131886265), Activities.getString(2131886258), Activities.getString(2131886260), Activities.getString(2131886261), Activities.getString(2131886262), Activities.getString(2131886264)});
        listPreference.setEntryValues(getResources().getStringArray(2130903051));
        listPreference.setDialogTitle(Activities.getString(2131887024));
        listPreference.setNegativeButtonText(string);
        ListPreference listPreference2 = (ListPreference) getPreferenceScreen().findPreference("postCallDuration");
        listPreference2.setEntries(new CharSequence[]{Activities.getString(2131886263), Activities.getString(2131886265), Activities.getString(2131886258), Activities.getString(2131886261), Activities.getString(2131886264)});
        listPreference2.setEntryValues(getResources().getStringArray(2130903057));
        listPreference2.setDialogTitle(Activities.getString(2131887418));
        listPreference2.setNegativeButtonText(string);
        listPreference2.setEnabled(Prefs.f26653j.get().booleanValue());
        Preference findPreference2 = getPreferenceScreen().findPreference("t9Language");
        m29656a(findPreference2);
        findPreference2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.43
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                AndroidUtils.m27635a((Activity) preference.getContext());
                AnalyticsManager.get().m28449a(Constants.SETTINGS, "Changed t9 language", Constants.CLICK);
                SettingsFragment.m29655a(preference, obj);
                ContactUtils.m28341a();
                SettingsFragment.m29648a(SettingsFragment.this);
                return true;
            }
        });
        ListPreference listPreference3 = (ListPreference) findPreference("menuLanguage");
        String m27460b = LocaleUtils.m27460b(getActivity());
        if (!StringUtils.m26042b(listPreference3.getValue(), m27460b)) {
            listPreference3.setValue(m27460b);
        }
        listPreference3.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.45
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                preference.setSummary(obj.toString());
                AndroidUtils.m27635a(SettingsFragment.this.getActivity());
                String str = (String) obj;
                if (StringUtils.m26042b(LocaleUtils.m27460b(SettingsFragment.this.getActivity()), str)) {
                    return true;
                }
                LocaleUtils.m27458b(SettingsFragment.this.getActivity(), str, true);
                return true;
            }
        });
        getPreferenceScreen().findPreference("linkedAccount").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.41
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                Activities.m27656b(CallAppApplication.get(), new Intent(CallAppApplication.get(), LinkedAccountsActivity.class));
                return true;
            }
        });
        final SimManager.DualSim dualSimOperators = Singletons.get().getSimManager().getDualSimOperators();
        PreferenceCategory preferenceCategory2 = (PreferenceCategory) findPreference("others");
        Preference findPreference3 = getPreferenceScreen().findPreference("callAppDualSim");
        m29656a(findPreference3);
        if (dualSimOperators == null) {
            preferenceCategory2.removePreference(findPreference3);
        } else {
            findPreference3.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.39
                @Override // android.preference.Preference.OnPreferenceClickListener
                public boolean onPreferenceClick(final Preference preference) {
                    AnalyticsManager.get().m28449a(Constants.SETTINGS, "Choose Sim to call", Constants.CLICK);
                    AndroidUtils.m27635a((Activity) preference.getContext());
                    int simIdAsIndexForDialog = SimManager.getSimIdAsIndexForDialog();
                    final String[] strArr = {Activities.getString(2131886758), Activities.m27697a(2131886760, dualSimOperators.getOperator1()), Activities.m27697a(2131886761, dualSimOperators.getOperator2())};
                    AndroidUtils.m27635a(SettingsFragment.this.getActivity());
                    PopupManager.get().m28209a(SettingsFragment.this.getActivity(), new DialogSelectSingleChoice(Activities.getString(2131886762), strArr, simIdAsIndexForDialog, new DialogSelectSingleChoiceBase.SingleChoiceListenerImpel() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.39.1
                        @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
                        /* renamed from: b */
                        public final void mo26631b(int i) {
                            if (i == 1) {
                                Prefs.f26294bR.set(SimManager.SimId.SIM_1);
                            } else if (i != 2) {
                                Prefs.f26294bR.set(SimManager.SimId.ASK);
                            } else {
                                Prefs.f26294bR.set(SimManager.SimId.SIM_2);
                            }
                            preference.setSummary(strArr[i]);
                        }
                    }));
                    return true;
                }
            });
        }
        Preference findPreference4 = findPreference("sendPurchases");
        if (findPreference4 != null) {
            findPreference4.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.40
                @Override // android.preference.Preference.OnPreferenceClickListener
                public boolean onPreferenceClick(Preference preference) {
                    AnalyticsManager.get().m28449a(Constants.SETTINGS, "Send purchases", Constants.CLICK);
                    AndroidUtils.m27635a((Activity) preference.getContext());
                    PopupManager.get().m28209a(SettingsFragment.this.getActivity(), SettingsFragment.this.f24140a);
                    SettingsFragment.this.f24143d = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.40.1
                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        /* renamed from: a */
                        public final void mo26177a() {
                            if (SettingsFragment.this.f24143d != null) {
                                SettingsFragment.this.f24143d.m28298a();
                            }
                        }

                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        /* renamed from: a */
                        public final void mo26176a(C3341g c3341g, List<C3344i> list) {
                            Uri uri;
                            String string2 = Activities.getString(Prefs.f26339cJ.get().booleanValue() ? 2131886901 : 2131886900);
                            String m27697a = Activities.m27697a(2131886904, CallAppApplication.get().getVersion());
                            try {
                                File file = new File(IoUtils.getCacheFolder(), "callapp_device_info.txt");
                                FileWriter fileWriter = new FileWriter(file);
                                StringBuilder sb = new StringBuilder(Activities.getDeviceDataString());
                                sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
                                if (CollectionUtils.m26068b(list)) {
                                    for (C3344i c3344i : list) {
                                        sb.append(c3344i);
                                        sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
                                    }
                                } else {
                                    StringBuilder sb2 = new StringBuilder("No purchases. billingResult:");
                                    sb2.append(c3341g != null ? " response code: " + c3341g.f12609a + ", debug msg: " + c3341g.f12610b : null);
                                    sb2.append(org.apache.commons.lang3.StringUtils.f67179LF);
                                    sb.append(sb2.toString());
                                }
                                fileWriter.write(sb.toString());
                                fileWriter.close();
                                Activity activity = SettingsFragment.this.getActivity();
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append(CallAppApplication.get().getPackageName());
                                sb3.append(".fileprovider");
                                uri = IoUtils.m27518a(activity, file);
                            } catch (Exception e) {
                                CLog.m27595b(ContactsListActivity.class, e, "unable to write file: " + e.getMessage());
                                uri = null;
                            }
                            SimpleProgressDialog.m27939a(SettingsFragment.this.f24140a);
                            Activities.m27674a(SettingsFragment.this.getActivity(), new String[]{string2}, m27697a, (String) null, uri);
                        }

                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        /* renamed from: a */
                        public /* synthetic */ void mo26175a(List list) {
                            BillingManager.BillingUpdatesListener._CC.$default$a(this, list);
                        }

                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        /* renamed from: b */
                        public /* synthetic */ void mo26174b(List list) {
                            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                        }
                    });
                    return false;
                }
            });
        }
        SwitchPreference switchPreference = (SwitchPreference) findPreference("privateModeEnabled");
        this.f24148i = switchPreference;
        switchPreference.setChecked(Prefs.f26595hA.get().booleanValue());
        this.f24148i.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.56
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                PopupManager.get().m28209a(SettingsFragment.this.getActivity(), new PrivateModeDialog(SettingsFragment.this));
                return true;
            }
        });
        if (getActivity().getIntent().hasExtra("EXTRA_HIDE_CALL_RECORDER")) {
            getPreferenceScreen().removePreference(findPreference("call_recorder_settings"));
        } else {
            if (!CallRecorderManager.get().isTermsAccepted()) {
                findPreference("call_recorder_settings").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.28
                    @Override // android.preference.Preference.OnPreferenceClickListener
                    public boolean onPreferenceClick(Preference preference) {
                        if (!CallRecorderManager.get().isTermsAccepted()) {
                            CallRecordsActivity.m29759a(SettingsFragment.this.getActivity());
                            return false;
                        }
                        return false;
                    }
                });
            }
            Preference findPreference5 = getPreferenceScreen().findPreference("recorderTest");
            if (!PhoneManager.get().isDefaultPhoneApp() || (Prefs.f26554gM.isNotNull() && Prefs.f26554gM.get().booleanValue())) {
                ((PreferenceCategory) getPreferenceScreen().findPreference("recorder_format_title")).removePreference(findPreference5);
            } else {
                findPreference5.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.29
                    @Override // android.preference.Preference.OnPreferenceClickListener
                    public boolean onPreferenceClick(Preference preference) {
                        RecorderTestManager.m27808a("rec_settings");
                        return true;
                    }
                });
            }
            final Preference findPreference6 = getPreferenceScreen().findPreference("accessibilityService");
            if (Build.VERSION.SDK_INT < 29 || Activities.isCallAppAccessibilityServiceEnabled()) {
                ((PreferenceCategory) getPreferenceScreen().findPreference("recorder_format_title")).removePreference(findPreference6);
            } else {
                findPreference6.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.30
                    @Override // android.preference.Preference.OnPreferenceClickListener
                    public boolean onPreferenceClick(Preference preference) {
                        Activities.m27690a(SettingsFragment.this.getActivity(), new PopupDoneListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.30.1
                            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                            public void popupDone(boolean z) {
                                if (Activities.isCallAppAccessibilityServiceEnabled()) {
                                    Prefs.f26451eP.set(RecordConfiguration.AUDIO_SOURCE.VOICE_RECOGNITION);
                                    ((PreferenceCategory) SettingsFragment.this.getPreferenceScreen().findPreference("recorder_format_title")).removePreference(findPreference6);
                                }
                            }
                        });
                        return true;
                    }
                });
            }
            if (Build.VERSION.SDK_INT < 28) {
                ((PreferenceCategory) getPreferenceScreen().findPreference("recorder_format_title")).removePreference((CustomSwitchPreference) getPreferenceScreen().findPreference("forceInCommunicationMode"));
            }
            ((CustomSwitchPreference) getPreferenceScreen().findPreference("callRecorderNormalizeSpeed")).setSummary(Activities.getString(2131886421));
            CheckBoxPreference checkBoxPreference = (CheckBoxPreference) getPreferenceScreen().findPreference("callRecorderIncomingCallEnabled");
            CheckBoxPreference checkBoxPreference2 = (CheckBoxPreference) getPreferenceScreen().findPreference("callRecorderOutgoingCallEnabled");
            checkBoxPreference.setEnabled(Prefs.f26444eI.get().booleanValue());
            checkBoxPreference2.setEnabled(Prefs.f26444eI.get().booleanValue());
            checkBoxPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.31
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public boolean onPreferenceChange(Preference preference, Object obj) {
                    AnalyticsManager.get().m28450a(Constants.CALL_RECORDER, "User set incoming calls");
                    return true;
                }
            });
            checkBoxPreference2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.32
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public boolean onPreferenceChange(Preference preference, Object obj) {
                    AnalyticsManager.get().m28450a(Constants.CALL_RECORDER, "User set Outgoing calls");
                    return true;
                }
            });
            ((CustomSwitchPreference) getPreferenceScreen().findPreference("callRecorderManual")).setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.33
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public boolean onPreferenceChange(Preference preference, Object obj) {
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    SettingsFragment.m29643a(SettingsFragment.this, booleanValue);
                    if (booleanValue) {
                        FeedbackManager.get().m28669a(Activities.getString(2131886284), (Integer) 17);
                        return true;
                    }
                    return true;
                }
            });
            ((CustomSwitchPreference) getPreferenceScreen().findPreference("callRecorderAuto")).setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.34
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public boolean onPreferenceChange(Preference preference, Object obj) {
                    AnalyticsManager.get().m28450a(Constants.CALL_RECORDER, "Users set AutoCall");
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    SettingsFragment.m29630b(SettingsFragment.this, booleanValue);
                    if (booleanValue) {
                        FeedbackManager.get().m28669a(Activities.getString(2131887130), (Integer) 17);
                        return true;
                    }
                    return true;
                }
            });
            getPreferenceScreen().findPreference("recording_advanced_mode").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.35
                @Override // android.preference.Preference.OnPreferenceClickListener
                public boolean onPreferenceClick(Preference preference) {
                    AnalyticsManager.get().m28450a(Constants.CALL_RECORDER, "Configuration advanced mode selected");
                    PopupManager.get().m28209a(SettingsFragment.this.getActivity(), new CallRecorderAdvancedSettingsDialog());
                    return true;
                }
            });
            final Preference findPreference7 = getPreferenceScreen().findPreference("maxRecordsToSave");
            findPreference7.setSummary(Activities.m27697a(2131887868, Integer.valueOf(MaxRecordConfiguration.values()[Prefs.f26454eS.get().intValue()].getValue())));
            findPreference7.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.36
                @Override // android.preference.Preference.OnPreferenceClickListener
                public boolean onPreferenceClick(Preference preference) {
                    List m46612of;
                    AnalyticsManager.get().m28450a(Constants.CALL_RECORDER, "ClickMaxRecords");
                    m46612of = C$r8$backportedMethods$utility$List$1$ofArray.m46612of(new Object[]{MaxRecordConfiguration.CONF_50, MaxRecordConfiguration.CONF_100, MaxRecordConfiguration.CONF_200, MaxRecordConfiguration.CONF_1000});
                    ArrayList arrayList = new ArrayList(m46612of);
                    String[] strArr = new String[arrayList.size()];
                    for (int i = 0; i < arrayList.size(); i++) {
                        strArr[i] = Integer.toString(((MaxRecordConfiguration) arrayList.get(i)).getValue());
                    }
                    int intValue = Prefs.f26454eS.get().intValue();
                    int i2 = intValue;
                    if (!Prefs.f26339cJ.get().booleanValue()) {
                        i2 = intValue;
                        if (intValue >= MaxRecordConfiguration.CONF_1000.ordinal()) {
                            i2 = MaxRecordConfiguration.CONF_200.ordinal();
                        }
                    }
                    PopupManager.get().m28209a(SettingsFragment.this.getActivity(), new DialogMaxRecordsConfiguration(i2, new DialogMaxRecordsConfiguration.IRecordingToSave() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.36.1
                        @Override // com.callapp.contacts.popup.DialogMaxRecordsConfiguration.IRecordingToSave
                        public void openPlanPageViaRecordDialog() {
                            AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Open upgrade to professional from setting record dialog", Constants.CLICK);
                            Intent intent = new Intent(SettingsFragment.this.getActivity(), PlanPageActivity.class);
                            intent.putExtra("PLAN_PAGE_SOURCE", "MaxRecords");
                            Activities.m27656b(SettingsFragment.this.getActivity(), intent);
                        }

                        @Override // com.callapp.contacts.popup.DialogMaxRecordsConfiguration.IRecordingToSave
                        public void recordingToSave(String str, int i3) {
                            findPreference7.setSummary(str);
                            AnalyticsManager.get().m28449a(Constants.CALL_RECORDER, "SelectMaxRecords", String.valueOf(i3));
                        }
                    }));
                    return true;
                }
            });
            if (getActivity().getIntent().hasExtra("show_call_recorder_permission")) {
                PermissionManager.get();
                if (!PermissionManager.m28253a("android.permission.RECORD_AUDIO")) {
                    PermissionManager.get().m28254a((BaseActivity) getActivity(), _$$Lambda$SettingsFragment$wJPLTGWTAs9_GjiKSI82qrhalzU.INSTANCE, new Runnable() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$2c1I8aCEjhmxAmVqgHA4YbwbdBo
                        @Override // java.lang.Runnable
                        public final void run() {
                            SettingsFragment.this.m29613j();
                        }
                    }, PermissionManager.PermissionGroup.MICROPHONE);
                }
            }
        }
        final CustomSwitchPreference customSwitchPreference = (CustomSwitchPreference) getPreferenceScreen().findPreference("isInDriveMode");
        final CheckBoxPreference checkBoxPreference3 = (CheckBoxPreference) getPreferenceScreen().findPreference("isInDriveModeIncoming");
        final CheckBoxPreference checkBoxPreference4 = (CheckBoxPreference) getPreferenceScreen().findPreference("isInDriveModeOutgoing");
        final PreferenceCategory preferenceCategory3 = (PreferenceCategory) getPreferenceScreen().findPreference("call_answering_orientation");
        final BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null || Build.VERSION.SDK_INT < 23) {
            preferenceCategory3.removePreference(customSwitchPreference);
            preferenceCategory3.removePreference(checkBoxPreference3);
            preferenceCategory3.removePreference(checkBoxPreference4);
        } else {
            if (!(CollectionUtils.m26068b(PrefsUtils.m28175a(Prefs.f26561gT)) && defaultAdapter.isEnabled() && PhoneManager.get().isDefaultPhoneApp() && Activities.m27641e())) {
                customSwitchPreference.setChecked(false);
            }
            customSwitchPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.23
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public boolean onPreferenceChange(Preference preference, Object obj) {
                    if (!customSwitchPreference.isChecked()) {
                        SettingsFragment.m29647a(SettingsFragment.this, defaultAdapter, customSwitchPreference, checkBoxPreference3, checkBoxPreference4, preferenceCategory3);
                        return true;
                    }
                    checkBoxPreference3.setEnabled(false);
                    checkBoxPreference4.setEnabled(false);
                    return true;
                }
            });
        }
        Arrays.asList((CustomSwitchPreference) getPreferenceScreen().findPreference("superSkinContactDetailsBackgroundImageEnabled"), (CustomSwitchPreference) getPreferenceScreen().findPreference("superSkinMainScreenBackgroundImageEnabled"), (CustomSwitchPreference) getPreferenceScreen().findPreference("superSkinMainScreenTopBarImageEnabled"), (CustomSwitchPreference) getPreferenceScreen().findPreference("superSkinMainScreenAnimatedWizardEnabled"), (CustomSwitchPreference) getPreferenceScreen().findPreference("superSkinAppMenuAnimatedWizardEnabled"));
        getPreferenceScreen().findPreference("themes").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.49
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                AnalyticsManager.get().m28449a(Constants.SETTINGS, "setting theme", Constants.CLICK);
                AndroidUtils.m27635a((Activity) preference.getContext());
                Intent intent = new Intent(CallAppApplication.get(), ChooseThemeActivity.class);
                intent.addFlags(65536);
                Activities.m27685a(SettingsFragment.this.getActivity(), intent);
                return true;
            }
        });
        getPreferenceScreen().findPreference("overlayCover").setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.38
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                if (((Boolean) obj).booleanValue()) {
                    DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131232129, Activities.getString(2131886675), Activities.getString(2131886674), Activities.getString(2131887069), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.38.1
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                            SettingsFragment.this.startActivity(new Intent(CallAppApplication.get(), MarketPlaceActivity.class));
                        }
                    }, Activities.getString(2131886371), ThemeUtils.getColor(2131099890), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.38.2
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                        }
                    });
                    dialogMessageWithTopImage.setCancelable(false);
                    PopupManager.get().m28209a(SettingsFragment.this.getActivity(), dialogMessageWithTopImage);
                    return true;
                }
                return true;
            }
        });
        Preference findPreference8 = findPreference("preferPhotosFromDevice");
        m29640a(findPreference8.getKey(), "Prefer device photos");
        findPreference8.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.42
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                AnalyticsManager.get().m28449a(Constants.SETTINGS, "Prefer device photos", Boolean.TRUE.equals(obj) ? "On" : BucketVersioningConfiguration.OFF);
                ContactLoader.preferPhotosFromDevice = null;
                return true;
            }
        });
        getPreferenceScreen().findPreference("contactListPageSwipeEnabled").setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.48
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                AnalyticsManager.get().m28449a(Constants.SETTINGS, "changed contact list page swipe state to:".concat(String.valueOf(obj)), Constants.CLICK);
                Activity activity = (Activity) preference.getContext();
                AndroidUtils.m27635a(activity);
                AndroidUtils.m27633a(activity, (String) null);
                return true;
            }
        });
        findPreference("SpeedDial").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.50
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                AnalyticsManager.get().m28449a(Constants.SETTINGS, "Setting speed dial", Constants.CLICK);
                AndroidUtils.m27635a((Activity) preference.getContext());
                Intent intent = new Intent(CallAppApplication.get(), SpeedDialActivity.class);
                intent.addFlags(65536);
                Activities.m27685a(SettingsFragment.this.getActivity(), intent);
                return true;
            }
        });
        for (int i = 1; i <= Prefs.f26311bi.length; i++) {
            final int i2 = i - 1;
            Preference findPreference9 = findPreference("quickSms".concat(String.valueOf(i)));
            StringPref stringPref = Prefs.f26311bi[i2];
            if (Prefs.f26312bj[i2].get().booleanValue()) {
                findPreference9.setTitle(stringPref.get());
            } else {
                findPreference9.setTitle(Activities.getString(stringPref.getDefaultResId()));
            }
            findPreference9.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.67
                @Override // android.preference.Preference.OnPreferenceClickListener
                public boolean onPreferenceClick(final Preference preference) {
                    DialogEditText dialogEditText = new DialogEditText(2131887481, (String) preference.getTitle(), "", 1, new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.67.1
                        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
                        /* renamed from: a */
                        public final void mo27338a(int i3, String str, boolean z) {
                            Prefs.f26311bi[i2].set(str);
                            preference.setTitle(str);
                        }
                    });
                    dialogEditText.setNeutralBtnText(Activities.getString(2131887338));
                    PopupManager.get().m28209a(SettingsFragment.this.getActivity(), dialogEditText);
                    Prefs.f26312bj[i2].set(Boolean.TRUE);
                    return true;
                }
            });
        }
        m29629b("dialTonesEnabled", "Enable dial tones");
        Preference findPreference10 = getPreferenceScreen().findPreference("showCallAppIMNotification");
        if (Activities.isNotificationListenerServiceSupportedOnDevice()) {
            findPreference10.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.46
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public boolean onPreferenceChange(Preference preference, Object obj) {
                    if (!((Boolean) obj).booleanValue() || Activities.m27661b()) {
                        return true;
                    }
                    Activities.m27659b(SettingsFragment.this.getActivity());
                    return true;
                }
            });
        } else {
            PreferenceScreen preferenceScreen = (PreferenceScreen) findPreference("notifications_settings");
            if (preferenceScreen != null) {
                preferenceScreen.removePreference(findPreference10);
            }
        }
        getPreferenceScreen().findPreference("showCallAppSpamAndBlockNotification").setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.47
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                if (obj instanceof Boolean) {
                    Prefs.f26361cf.set((Boolean) obj);
                    return true;
                }
                return true;
            }
        });
        m29614i();
        SwitchPreference switchPreference2 = (SwitchPreference) findPreference("whoViewedMyProfileEnabled");
        this.f24147h = switchPreference2;
        m29634b(switchPreference2);
        this.f24147h.setChecked(Prefs.f26646hz.get().booleanValue());
        this.f24147h.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.54
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                Boolean bool = (Boolean) obj;
                Prefs.f26646hz.set(bool);
                AnalyticsManager.get().m28449a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ViewProfileNotificationChange", bool.booleanValue() ? "enable" : "disable");
                SettingsFragment.m29634b(SettingsFragment.this.f24147h);
                return true;
            }
        });
        getPreferenceScreen().findPreference("whoViewedMyProfileAdvanced").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.55
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                PopupManager.get().m28209a(SettingsFragment.this.getActivity(), new WhoViewedMyProfileAdvancedOptions(SettingsFragment.this));
                return true;
            }
        });
        SwitchPreference switchPreference3 = (SwitchPreference) findPreference("missedCallCardEnabled");
        SwitchPreference switchPreference4 = (SwitchPreference) findPreference("notAnsweredCardEnabled");
        SwitchPreference switchPreference5 = (SwitchPreference) findPreference("missedCallOverlayEnabled");
        SwitchPreference switchPreference6 = (SwitchPreference) findPreference("notAnsweredOverlayEnabled");
        SwitchPreference switchPreference7 = (SwitchPreference) findPreference("missedCallDailySummaryEnabled");
        SwitchPreference switchPreference8 = (SwitchPreference) findPreference("notAnswerDailySummaryEnabled");
        SwitchPreference switchPreference9 = (SwitchPreference) findPreference("notAnswerNotificationEnabled");
        SwitchPreference switchPreference10 = (SwitchPreference) findPreference("missedCallNotificationEnabled");
        switchPreference3.setChecked(Prefs.f26668y.get().booleanValue());
        switchPreference4.setChecked(Prefs.f26669z.get().booleanValue());
        switchPreference5.setChecked(Prefs.f26197A.get().booleanValue());
        switchPreference6.setChecked(Prefs.f26198B.get().booleanValue());
        switchPreference7.setChecked(Prefs.f26199C.get().booleanValue());
        switchPreference8.setChecked(Prefs.f26200D.get().booleanValue());
        switchPreference9.setChecked(Prefs.f26201E.get().booleanValue());
        switchPreference10.setChecked(Prefs.f26202F.get().booleanValue());
        switchPreference3.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.57
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                Prefs.f26668y.set((Boolean) obj);
                return true;
            }
        });
        switchPreference4.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.58
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                Prefs.f26669z.set((Boolean) obj);
                return true;
            }
        });
        switchPreference5.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.59
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                Prefs.f26197A.set((Boolean) obj);
                return true;
            }
        });
        switchPreference6.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.60
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                Prefs.f26198B.set((Boolean) obj);
                return true;
            }
        });
        switchPreference7.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.61
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                Prefs.f26199C.set((Boolean) obj);
                return true;
            }
        });
        switchPreference8.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.62
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                Prefs.f26200D.set((Boolean) obj);
                return true;
            }
        });
        switchPreference9.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.63
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                Prefs.f26201E.set((Boolean) obj);
                return true;
            }
        });
        switchPreference10.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.64
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                Prefs.f26202F.set((Boolean) obj);
                return true;
            }
        });
        if (Prefs.f26305bc.get() != AdUtils.ConsentStatus.NON_PERSONALIZED) {
            getPreferenceScreen().removePreference(findPreference("ads_settings"));
        } else {
            final CustomSwitchPreference customSwitchPreference2 = (CustomSwitchPreference) getPreferenceScreen().findPreference("allow_tailored_ads");
            customSwitchPreference2.setSummary(Activities.getString(2131886220));
            customSwitchPreference2.setChecked(Prefs.f26305bc.get() == AdUtils.ConsentStatus.PERSONALIZED);
            customSwitchPreference2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$kmkUIikSDFWynPCRFzu3eAofEno
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    boolean m29649a;
                    m29649a = SettingsFragment.this.m29649a(customSwitchPreference2, preference, obj);
                    return m29649a;
                }
            });
        }
        PreferenceScreen preferenceScreen2 = (PreferenceScreen) findPreference("myAccount");
        preferenceScreen2.setTitle(Activities.getString(2131887263));
        Preference findPreference11 = preferenceScreen2.findPreference("installDate");
        findPreference11.setTitle(Activities.getString(2131887059));
        findPreference11.setSummary(DateFormat.getDateFormat(getActivity()).format(Prefs.f26257ah.get()));
        Preference findPreference12 = preferenceScreen2.findPreference("appVersion");
        findPreference12.setTitle(Activities.getString(2131886251));
        findPreference12.setSummary(String.valueOf(Prefs.f26216T.get()));
        final Preference findPreference13 = preferenceScreen2.findPreference("premiumAccount");
        findPreference13.setTitle(Activities.getString(2131887424));
        if (Prefs.f26339cJ.get().booleanValue()) {
            this.f24143d = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.10
                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: a */
                public final void mo26177a() {
                    if (SettingsFragment.this.f24143d != null) {
                        SettingsFragment.this.f24143d.m28298a();
                    }
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: a */
                public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: a */
                public final void mo26175a(List<C3344i> list) {
                    for (C3344i c3344i : list) {
                        if (c3344i != null && CollectionUtils.m26073a(BillingManager.m28293a("subs"), c3344i.m38188b())) {
                            findPreference13.setSummary(c3344i.m38188b());
                            return;
                        }
                    }
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: b */
                public /* synthetic */ void mo26174b(List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                }
            });
        } else if (BillingManager.isBillingAvailable()) {
            findPreference13.setSummary(Activities.getString(2131886370));
            findPreference13.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$lKfXdV6dM4p_Pl681e2TZJthoBg
                @Override // android.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference) {
                    boolean m29626c;
                    m29626c = SettingsFragment.this.m29626c(preference);
                    return m29626c;
                }
            });
        } else {
            preferenceScreen2.removePreference(findPreference13);
        }
        Preference findPreference14 = preferenceScreen2.findPreference("deactivateAccount");
        findPreference14.setTitle(Activities.getString(2131886710));
        findPreference14.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$QYPF09GoaeIQ7tiiEwYweDKO_h8
            @Override // android.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                boolean m29636b;
                m29636b = SettingsFragment.this.m29636b(preference);
                return m29636b;
            }
        });
        m29629b("speakNameEnabled", "Announce Caller Name");
        m29629b("postCallScreenEnabled", "Prefer post call screen On/Off");
        if (23 <= Build.VERSION.SDK_INT) {
            SwitchPreference switchPreference11 = (SwitchPreference) getPreferenceScreen().findPreference("inCallFloatingWidgetEnabled");
            switchPreference11.setChecked(Prefs.f26541g.get().booleanValue());
            switchPreference11.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.14
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public boolean onPreferenceChange(Preference preference, Object obj) {
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    AnalyticsManager.get().mo28444a(Constants.SETTINGS, "Default call screen", "Widget ", (booleanValue ? 4607182418800017408 : null) == 1 ? 1.0d : 0.0d, new String[0]);
                    return true;
                }
            });
            SwitchPreference switchPreference12 = (SwitchPreference) getPreferenceScreen().findPreference("callFabEnabled");
            switchPreference12.setChecked(Prefs.f26654k.get().booleanValue());
            switchPreference12.setOnPreferenceChangeListener(_$$Lambda$SettingsFragment$RtN8CDiG9MXgfF8B8vn6_5O8V2M.INSTANCE);
            SwitchPreference switchPreference13 = (SwitchPreference) getPreferenceScreen().findPreference("forcePhoneToRing");
            switchPreference13.setChecked(Prefs.f26594h.get().booleanValue());
            switchPreference13.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.15
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public boolean onPreferenceChange(Preference preference, Object obj) {
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    AnalyticsManager.get().mo28444a(Constants.SETTINGS, "Default call screen", "forcePhoneToRing ", (booleanValue ? 4607182418800017408 : null) == 1 ? 1.0d : 0.0d, new String[0]);
                    return true;
                }
            });
            SwitchPreference switchPreference14 = (SwitchPreference) getPreferenceScreen().findPreference("hasPhoneRang");
            switchPreference14.setChecked(Prefs.f26489fA.get().booleanValue());
            switchPreference14.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.16
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public boolean onPreferenceChange(Preference preference, Object obj) {
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    AnalyticsManager.get().mo28444a(Constants.SETTINGS, "Default call screen", "hasPhoneRang", (booleanValue ? 4607182418800017408 : null) == 1 ? 1.0d : 0.0d, new String[0]);
                    if (booleanValue) {
                        Prefs.f26594h.set(Boolean.FALSE);
                        ((SwitchPreference) SettingsFragment.this.getPreferenceScreen().findPreference("forcePhoneToRing")).setChecked(!booleanValue);
                        return true;
                    }
                    return true;
                }
            });
            getPreferenceScreen().findPreference("isDefaultPhoneApp").setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$FZ0YqyheDXMihjxbUyhIz9rEXG8
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    boolean m29621d;
                    m29621d = SettingsFragment.this.m29621d(preference, obj);
                    return m29621d;
                }
            });
            getPreferenceScreen().findPreference("requestVerticalAnsweringOrientation").setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$zb1aVAkyRc4JZz6SWIY41RZ4uz0
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    boolean m29625c;
                    m29625c = SettingsFragment.this.m29625c(preference, obj);
                    return m29625c;
                }
            });
            getPreferenceScreen().findPreference("requestHorizontalAnsweringOrientation").setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings._$$Lambda$SettingsFragment$yz1X6LvvGPRSu5t2jqxr43lZWGU
                @Override // android.preference.Preference.OnPreferenceChangeListener
                public final boolean onPreferenceChange(Preference preference, Object obj) {
                    boolean m29635b;
                    m29635b = SettingsFragment.this.m29635b(preference, obj);
                    return m29635b;
                }
            });
            ((TwoStatePreference) getPreferenceScreen().findPreference("requestHorizontalAnsweringOrientation")).setChecked(Prefs.f26493fE.get().booleanValue());
            ((TwoStatePreference) getPreferenceScreen().findPreference("requestVerticalAnsweringOrientation")).setChecked(!Prefs.f26493fE.get().booleanValue());
        } else {
            PreferenceScreen preferenceScreen3 = (PreferenceScreen) getPreferenceScreen().findPreference("callerid_settings");
            preferenceScreen3.removePreference(getPreferenceScreen().findPreference("in_call_services"));
            preferenceScreen3.removePreference(getPreferenceScreen().findPreference("call_answering_orientation"));
        }
        setSummaryPreferenceById("inCallDuration");
        ListPreference listPreference4 = (ListPreference) getPreferenceScreen().findPreference("postCallDuration");
        if (listPreference4.getValue().equals("NEVER")) {
            listPreference4.setValue("AFTER_5_SEC");
        }
        setSummaryPreferenceById("postCallDuration");
        getPreferenceScreen().findPreference("defaultImApp").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.18
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                PopupManager.get().m28209a(SettingsFragment.this.getActivity(), new PostCallDefaultIMDialog());
                return true;
            }
        });
        getPreferenceScreen().findPreference("postCallScreenEnabled").setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.19
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                SettingsFragment.this.getPreferenceScreen().findPreference("postCallDuration").setEnabled(((Boolean) obj).booleanValue());
                return true;
            }
        });
        setupAppShortcuts(getActivity());
        if (!BackupUtils.isAllowToRunBackup() || !Prefs.f26613hS.get().booleanValue()) {
            getPreferenceScreen().removePreference((PreferenceScreen) getPreferenceScreen().findPreference("backup_settings"));
            return;
        }
        PreferenceScreen preferenceScreen4 = (PreferenceScreen) getPreferenceScreen().findPreference("backup_settings");
        Preference findPreference15 = preferenceScreen4.findPreference("lastBackup");
        Date date = Prefs.f26604hJ.get();
        if (date == null) {
            preferenceScreen4.removePreference(findPreference15);
        } else {
            findPreference15.setTitle(Activities.m27697a(2131887900, new SimpleDateFormat("dd/M/yyyy").format(date)));
        }
        final CustomSwitchPreference customSwitchPreference3 = (CustomSwitchPreference) getPreferenceScreen().findPreference("backupByDropbox");
        final CustomSwitchPreference customSwitchPreference4 = (CustomSwitchPreference) getPreferenceScreen().findPreference("backupByDrive");
        final CustomSwitchPreference customSwitchPreference5 = (CustomSwitchPreference) getPreferenceScreen().findPreference("enableBackup");
        customSwitchPreference5.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.1
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                if (Boolean.FALSE.equals(obj)) {
                    BackupUtils.m29290c();
                    customSwitchPreference4.setChecked(false);
                    customSwitchPreference3.setChecked(false);
                    return true;
                }
                return true;
            }
        });
        customSwitchPreference3.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.2
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                if (((Boolean) obj).booleanValue()) {
                    SettingsFragment.m29644a(SettingsFragment.this, customSwitchPreference3, customSwitchPreference4, customSwitchPreference5);
                    return true;
                } else if (Prefs.f26605hK.get() != BackupViaType.DROP_BOX) {
                    return true;
                } else {
                    Prefs.f26605hK.set(BackupViaType.UN_KNOWN);
                    return true;
                }
            }
        });
        customSwitchPreference4.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.3
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                if (((Boolean) obj).booleanValue()) {
                    SettingsFragment.m29631b(SettingsFragment.this, customSwitchPreference3, customSwitchPreference4, customSwitchPreference5);
                    return true;
                } else if (Prefs.f26605hK.get() != BackupViaType.GOOGLE_DRIVE) {
                    return true;
                } else {
                    Prefs.f26605hK.set(BackupViaType.UN_KNOWN);
                    return true;
                }
            }
        });
        m29628b("backupCallHistory", Prefs.f26608hN.get().booleanValue());
        m29628b("backupContacts", Prefs.f26607hM.get().booleanValue());
        m29628b("backupVideoRingTones", Prefs.f26609hO.get().booleanValue());
        m29628b("backupRecordings", Prefs.f26610hP.get().booleanValue());
        m29639a("backupByDropbox", Prefs.f26605hK.get() == BackupViaType.DROP_BOX);
        m29639a("backupByDrive", Prefs.f26605hK.get() == BackupViaType.GOOGLE_DRIVE);
        m29639a("twoDays", Prefs.f26606hL.get().intValue() == BackupIntervalPeriod.TWO_DAYS.getDaysInterval());
        m29639a("twoWeeks", Prefs.f26606hL.get().intValue() == BackupIntervalPeriod.HALF_MONTH.getDaysInterval());
        m29639a("month", Prefs.f26606hL.get().intValue() == BackupIntervalPeriod.MONTH.getDaysInterval());
        m29639a("enableBackup", !((BackupViaType) Prefs.f26605hK.get()).equals(BackupViaType.UN_KNOWN));
        final CustomSwitchPreference customSwitchPreference6 = (CustomSwitchPreference) getPreferenceScreen().findPreference("twoDays");
        final CustomSwitchPreference customSwitchPreference7 = (CustomSwitchPreference) getPreferenceScreen().findPreference("twoWeeks");
        final CustomSwitchPreference customSwitchPreference8 = (CustomSwitchPreference) getPreferenceScreen().findPreference("month");
        customSwitchPreference6.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.4
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                if (((Boolean) obj).booleanValue()) {
                    Prefs.f26606hL.set(Integer.valueOf(BackupIntervalPeriod.TWO_DAYS.getDaysInterval()));
                    customSwitchPreference7.setChecked(false);
                    customSwitchPreference8.setChecked(false);
                    return true;
                }
                return true;
            }
        });
        customSwitchPreference7.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.5
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                if (((Boolean) obj).booleanValue()) {
                    Prefs.f26606hL.set(Integer.valueOf(BackupIntervalPeriod.HALF_MONTH.getDaysInterval()));
                    customSwitchPreference8.setChecked(false);
                    customSwitchPreference6.setChecked(false);
                    return true;
                }
                return true;
            }
        });
        customSwitchPreference8.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.6
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                if (((Boolean) obj).booleanValue()) {
                    Prefs.f26606hL.set(Integer.valueOf(BackupIntervalPeriod.MONTH.getDaysInterval()));
                    customSwitchPreference7.setChecked(false);
                    customSwitchPreference6.setChecked(false);
                    return true;
                }
                return true;
            }
        });
        m29641a("backupCallHistory", Prefs.f26608hN);
        m29641a("backupContacts", Prefs.f26607hM);
        m29641a("backupVideoRingTones", Prefs.f26609hO);
        m29641a("backupRecordings", Prefs.f26610hP);
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f24144e = true;
        m29657a(getActivity().getIntent());
        if (onCreateView != null) {
            onCreateView.setBackgroundColor(-1);
            if (this.f24142c >= 0) {
                onCreateView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.activity.settings.SettingsFragment.13
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        View view = SettingsFragment.this.getView();
                        if (view != null) {
                            view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                            SettingsFragment.this.getPreferenceScreen().onItemClick(null, null, SettingsFragment.this.f24142c, 0L);
                            SettingsFragment.this.f24142c = -1;
                        }
                    }
                });
            }
        }
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        this.f24140a = simpleProgressDialog;
        simpleProgressDialog.setIndeterminate(true);
        this.f24140a.setCancelable(false);
        this.f24140a.setMessage(Activities.getString(2131887415));
        return onCreateView;
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onDestroy() {
        SimpleProgressDialog.m27939a(this.f24140a);
        BillingManager billingManager = this.f24143d;
        if (billingManager != null) {
            billingManager.m28290b();
        }
        super.onDestroy();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        Activity activity = getActivity();
        if (activity != null && Activities.m27696a(activity)) {
            activity.setTitle(Activities.getString(2131887646));
        }
        Preference preference = this.f24145f;
        if (preference != null && StringUtils.m26057a(preference.getTitle(), Activities.getString(2131887137))) {
            EventBusManager.f25138a.m29046a((EventType<L, EventType<ThemeChangedListener, EventBusManager.CallAppDataType>>) ThemeChangedListener.f23141i, (EventType<ThemeChangedListener, EventBusManager.CallAppDataType>) null, false);
        }
        this.f24141b = null;
        this.f24145f = null;
    }

    @Override // android.preference.PreferenceFragment
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (getActivity() != null) {
            AndroidUtils.m27635a(getActivity());
        }
        if (preference instanceof PreferenceScreen) {
            this.f24145f = preference;
            String str = (String) preference.getTitle();
            Dialog dialog = ((PreferenceScreen) preference).getDialog();
            this.f24141b = dialog;
            if (dialog == null) {
                return false;
            }
            dialog.setOnDismissListener(this);
            Dialog dialog2 = this.f24141b;
            View view = getView();
            if (view != null) {
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                Window window = dialog2.getWindow();
                if (window != null) {
                    window.clearFlags(2);
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    attributes.x = iArr[0];
                    attributes.y = iArr[1];
                    attributes.width = view.getWidth();
                    attributes.height = view.getHeight();
                    attributes.gravity = 48;
                    window.setAttributes(attributes);
                    window.setFlags(32, 32);
                }
            }
            getActivity().setTitle(str);
            return true;
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    @Override // android.app.Fragment
    public void onResume() {
        Preference findPreference;
        super.onResume();
        if (23 <= Build.VERSION.SDK_INT) {
            PhoneManager.get().m28226e();
            m29638a(PhoneManager.get().isDefaultPhoneApp());
        }
        m29614i();
        if (StoreItemAssetManager.isSuperSkinEnabled() || (findPreference = findPreference("super_skin_settings")) == null) {
            return;
        }
        getPreferenceScreen().removePreference(findPreference);
    }

    protected void setupPreferencesScreensIcons(PreferenceScreen preferenceScreen) {
        ListAdapter rootAdapter = preferenceScreen.getRootAdapter();
        if (rootAdapter != null) {
            int count = rootAdapter.getCount();
            for (int i = 0; i < count; i++) {
                Object item = rootAdapter.getItem(i);
                if (item instanceof PreferenceScreen) {
                    PreferenceScreen preferenceScreen2 = (PreferenceScreen) item;
                    int color = ThemeUtils.getColor(2131099784);
                    String key = preferenceScreen2.getKey();
                    key.hashCode();
                    boolean z = true;
                    switch (key.hashCode()) {
                        case -1645844070:
                            if (key.equals("general_settings")) {
                                z = false;
                                break;
                            }
                            break;
                        case -1232940544:
                            if (key.equals("backup_settings")) {
                                z = true;
                                break;
                            }
                            break;
                        case -674865766:
                            if (key.equals("notifications_settings")) {
                                z = true;
                                break;
                            }
                            break;
                        case -322895133:
                            if (key.equals("call_recorder_settings")) {
                                z = true;
                                break;
                            }
                            break;
                        case -145767281:
                            if (key.equals("debug_settings")) {
                                z = true;
                                break;
                            }
                            break;
                        case 410448609:
                            if (key.equals("super_skin_settings")) {
                                z = true;
                                break;
                            }
                            break;
                        case 730544850:
                            if (key.equals("ads_settings")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1011511900:
                            if (key.equals("callerid_settings")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1135574175:
                            if (key.equals("customize_settings")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                            m29654a(preferenceScreen2, color, 2131231877);
                            continue;
                        case true:
                            m29654a(preferenceScreen2, color, 2131231463);
                            continue;
                        case true:
                            m29654a(preferenceScreen2, color, 2131231863);
                            continue;
                        case true:
                            m29654a(preferenceScreen2, color, 2131231560);
                            continue;
                        case true:
                            m29654a(preferenceScreen2, color, 2131231631);
                            continue;
                        case true:
                            m29654a(preferenceScreen2, color, 2131231920);
                            continue;
                        case true:
                            m29654a(preferenceScreen2, color, 2131231868);
                            continue;
                        case true:
                            m29654a(preferenceScreen2, color, 2131231835);
                            continue;
                        case true:
                            m29654a(preferenceScreen2, color, 2131231455);
                            continue;
                    }
                }
            }
        }
    }
}
