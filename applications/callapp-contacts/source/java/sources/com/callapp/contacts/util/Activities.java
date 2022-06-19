package com.callapp.contacts.util;

import android.accounts.Account;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.role.RoleManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.text.SpannableStringBuilder;
import android.text.style.BulletSpan;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import androidx.core.app.C0734b;
import androidx.core.p036e.C0828b;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.ActivityLifecycleListener;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity;
import com.callapp.contacts.activity.settings.SettingsActivity;
import com.callapp.contacts.api.helper.backup.BackupUtils;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.popup.ResultPopup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.recordertest.RecorderTestDataManager;
import com.callapp.contacts.util.callappRomHelper.AutoStartPermissionHelper;
import com.callapp.contacts.util.callappRomHelper.romHelper.base.RomHelper;
import com.callapp.contacts.util.callappRomHelper.romHelper.base.detector.RomDetector;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.webview.WebViewDialog;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.callapp.repackaged.org.apache.commons.codec.binary.Base64;
import com.google.api.client.googleapis.extensions.android.p382a.C15287a;
import com.mopub.mraid.MraidNativeCommandHandler;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.IllegalFormatConversionException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import net.pubnative.lite.sdk.mraid.nativefeature.MRAIDNativeFeatureProvider;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/Activities.class */
public final class Activities {

    /* renamed from: a */
    private static DisplayMetrics f27665a;

    /* renamed from: b */
    private static int f27666b = -1;

    /* renamed from: c */
    private static int f27667c = -1;

    /* renamed from: d */
    private static Map<Intent, Boolean> f27668d = new HashMap();

    /* renamed from: e */
    private static Boolean f27669e = null;

    /* renamed from: f */
    private static Boolean f27670f = null;

    /* renamed from: g */
    private static int f27671g = -1;

    private Activities() {
    }

    /* renamed from: a */
    public static float m27699a(float f) {
        return TypedValue.applyDimension(1, f, getDisplayMetrics());
    }

    /* renamed from: a */
    private static Intent m27662a(String... strArr) {
        Intent intent = new Intent("android.intent.action.INSERT");
        intent.setData(ContactsContract.Contacts.CONTENT_URI);
        intent.putExtra("com.android.contacts.action.FORCE_CREATE", true);
        intent.addCategory("android.intent.category.DEFAULT");
        for (int i = 0; i < 2; i += 2) {
            intent.putExtra(strArr[0], StringUtils.m26049a(strArr[1], new char[0]));
        }
        if (m27672a(intent)) {
            return intent;
        }
        return null;
    }

    /* renamed from: a */
    public static CharSequence m27663a(int... iArr) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i = 0;
        for (int i2 : iArr) {
            String string = getString(i2);
            spannableStringBuilder.append((CharSequence) string);
            spannableStringBuilder.setSpan(new BulletSpan(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165572), ThemeUtils.getColor(2131100140)), i, string.length() + i, 33);
            i += string.length();
        }
        return spannableStringBuilder;
    }

    /* renamed from: a */
    public static String m27697a(int i, Object... objArr) {
        if (i != 0) {
            try {
                return CallAppApplication.get().getString(i, objArr);
            } catch (IllegalFormatConversionException e) {
                CLog.m27585d(Activities.class, "Locale: " + CallAppApplication.get().getResources().getConfiguration().locale.getLanguage());
                return "";
            }
        }
        return "";
    }

    /* renamed from: a */
    public static void m27700a() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
        m27684a(CallAppApplication.get(), intent, (Bundle) null);
    }

    /* renamed from: a */
    public static void m27698a(int i, Window window) {
        ThemeUtils.m27384a(window, i);
    }

    /* renamed from: a */
    public static void m27695a(Activity activity, int i) {
        Intent putExtra = getVoiceSearchIntent().putExtra("android.speech.extra.PROMPT", getString(2131887084));
        if (m27672a(putExtra)) {
            activity.startActivityForResult(putExtra, i);
        }
    }

    /* renamed from: a */
    public static void m27694a(Activity activity, Intent intent, int i) {
        if (!PhoneStateManager.get().isIncomingCallRingingState()) {
            activity.startActivityForResult(intent, i);
        }
    }

    /* renamed from: a */
    public static void m27693a(Activity activity, Intent intent, int i, C0828b<View, String>[] c0828bArr) {
        activity.startActivityForResult(intent, i, C0734b.m44606a(activity, c0828bArr).mo44605a());
    }

    /* renamed from: a */
    public static void m27692a(Activity activity, Intent intent, C0828b<View, String>[] c0828bArr) {
        activity.startActivity(intent, C0734b.m44606a(activity, c0828bArr).mo44605a());
    }

    /* renamed from: a */
    public static void m27691a(Activity activity, ActivityResult activityResult) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + CallAppApplication.get().getPackageName()));
        if (m27672a(intent)) {
            m27683a(activity, intent, activityResult);
            return;
        }
        Intent intent2 = new Intent("android.settings.SETTINGS");
        if (!m27672a(intent2)) {
            return;
        }
        m27683a(activity, intent2, activityResult);
    }

    /* renamed from: a */
    public static void m27690a(Activity activity, PopupDoneListener popupDoneListener) {
        Intent intent = new Intent("android.settings.ACCESSIBILITY_SETTINGS");
        final ReturnToAppTasker returnToAppTasker = new ReturnToAppTasker(activity.getIntent(), popupDoneListener, 3);
        returnToAppTasker.m27413a();
        m27683a(activity, intent, new ActivityResult() { // from class: com.callapp.contacts.util.Activities.2
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public final void onActivityResult(Activity activity2, int i, int i2, Intent intent2) {
                returnToAppTasker.m27411b();
            }
        });
    }

    /* renamed from: a */
    public static void m27689a(Activity activity, final Runnable runnable) {
        if (activity instanceof BaseActivity) {
            final BaseActivity baseActivity = (BaseActivity) activity;
            baseActivity.registerActivityLifecycleListener(new ActivityLifecycleListener() { // from class: com.callapp.contacts.util.Activities.3
                @Override // com.callapp.contacts.activity.base.ActivityLifecycleListener
                /* renamed from: a */
                public final void mo27636a(Activity activity2) {
                    if (baseActivity.equals(activity2)) {
                        baseActivity.unregisterActivityLifecycleListener(this);
                        runnable.run();
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public static void m27688a(final Activity activity, String str, String str2) {
        if (getNotificationListenersSettingsScreenIntent() == null || m27661b()) {
            return;
        }
        PopupManager.get().m28209a(activity, new DialogSimpleMessage(str, str2, getString(2131888248), getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.util.Activities.6
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity2) {
                Activities.m27659b(activity);
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.util.Activities.7
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity2) {
            }
        }));
    }

    /* renamed from: a */
    public static void m27687a(Activity activity, boolean z, ActivityResult activityResult) {
        if (Build.VERSION.SDK_INT < 23) {
            activityResult.onActivityResult(activity, -1, -1, null);
            return;
        }
        Intent createRequestRoleIntent = Build.VERSION.SDK_INT >= 29 ? ((RoleManager) CallAppApplication.get().getSystemService("role")).createRequestRoleIntent("android.app.role.DIALER") : new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER");
        if (z && m27672a(createRequestRoleIntent)) {
            createRequestRoleIntent.putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", CallAppApplication.get().getPackageName());
            m27683a(activity, createRequestRoleIntent, activityResult);
            return;
        }
        for (int i = 0; i < 2; i++) {
            Intent intent = new Intent(new String[]{"android.settings.MANAGE_DEFAULT_APPS_SETTINGS", "android.settings.SETTINGS"}[i]);
            if (m27672a(intent)) {
                m27683a(activity, intent, activityResult);
                return;
            }
        }
        activityResult.onActivityResult(activity, -1, 0, null);
    }

    /* renamed from: a */
    public static void m27686a(Context context) {
        Intent intent = new Intent("android.settings.DATA_ROAMING_SETTINGS");
        intent.addCategory("android.intent.category.DEFAULT");
        if (m27672a(intent)) {
            m27647c(context, intent);
        }
    }

    /* renamed from: a */
    public static void m27684a(Context context, Intent intent, Bundle bundle) {
        boolean z = context instanceof Activity;
        if (!z) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
        if (!z || !intent.getBooleanExtra(Constants.EXTRA_IS_USING_DEFAULT_TRANSITION, true)) {
            return;
        }
        ((Activity) context).overridePendingTransition(2130772000, 2130772008);
    }

    /* renamed from: a */
    public static void m27683a(Context context, final Intent intent, final ActivityResult activityResult) {
        PopupManager.get().m28207a(context, new ResultPopup() { // from class: com.callapp.contacts.util.Activities.1
            @Override // com.callapp.contacts.manager.popup.ResultPopup
            /* renamed from: a */
            public final void mo27637a(Activity activity) {
                m28185a(activity, intent);
            }

            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public final void onActivityResult(Activity activity, int i, int i2, Intent intent2) {
                activity.finish();
                ActivityResult activityResult2 = activityResult;
                if (activityResult2 != null) {
                    activityResult2.onActivityResult(activity, i, i2, intent2);
                }
            }
        });
    }

    /* renamed from: a */
    public static void m27682a(Context context, ActivityResult activityResult) {
        Intent openProtectedAppsIntent = getOpenProtectedAppsIntent();
        if (openProtectedAppsIntent != null) {
            m27683a(context, openProtectedAppsIntent, activityResult);
            new Task() { // from class: com.callapp.contacts.util.Activities.11
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    FeedbackManager.get().m28668a(Activities.getString(2131887470), (Integer) 48, 3);
                }
            }.schedule(2000);
        }
    }

    /* renamed from: a */
    public static void m27681a(Context context, CharSequence charSequence) {
        if (StringUtils.m26045b(charSequence)) {
            Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
            intent.setType("vnd.android.cursor.item/contact");
            intent.putExtra(Constants.EXTRA_PHONE_NUMBER, charSequence);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            if (!m27672a(intent)) {
                return;
            }
            m27647c(context, intent);
        }
    }

    /* renamed from: a */
    public static void m27680a(Context context, Class<?> cls, ActivityResult activityResult) {
        m27683a(context, new Intent(CallAppApplication.get(), cls), activityResult);
    }

    /* renamed from: a */
    public static void m27679a(Context context, String str) {
        String str2 = str;
        if (!str.startsWith("http://")) {
            str2 = str;
            if (!str.startsWith("https://")) {
                str2 = "http://".concat(String.valueOf(str));
            }
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
        intent.addFlags(getIntentFlagForNewDocument());
        if (m27672a(intent)) {
            m27647c(context, intent);
        }
    }

    /* renamed from: a */
    public static void m27678a(Context context, String str, CharSequence charSequence) {
        Intent m27662a = m27662a(str, charSequence.toString());
        if (m27662a != null) {
            if (!(context instanceof Activity)) {
                m27662a.addFlags(268435456);
            }
            m27647c(context, m27662a);
        }
    }

    /* renamed from: a */
    public static void m27677a(Context context, String str, final Runnable runnable) {
        String str2 = str;
        if (!str.startsWith("http://")) {
            str2 = str;
            if (!str.startsWith("https://")) {
                str2 = "http://".concat(String.valueOf(str));
            }
        }
        PopupManager.get().m28209a(context, new WebViewDialog(context, str2, null, new DialogInterface.OnCancelListener() { // from class: com.callapp.contacts.util.Activities.8
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        }));
    }

    /* renamed from: a */
    public static void m27675a(Context context, String[] strArr, String str) {
        m27673a(context, strArr, str, (String) null, getString(2131887628));
    }

    /* renamed from: a */
    public static void m27674a(Context context, String[] strArr, String str, String str2, Uri uri) {
        String string = getString(2131887628);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        ResolveInfo resolveInfo = null;
        for (ResolveInfo resolveInfo2 : CallAppApplication.get().getPackageManager().queryIntentActivities(intent, 0)) {
            if (resolveInfo2.activityInfo.packageName.endsWith(".gm") || resolveInfo2.activityInfo.name.toLowerCase().contains("gmail")) {
                resolveInfo = resolveInfo2;
            }
        }
        if (resolveInfo != null) {
            intent.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        }
        intent.putExtra("android.intent.extra.SUBJECT", str);
        if (strArr != null && strArr.length > 0) {
            intent.putExtra("android.intent.extra.EMAIL", strArr);
        }
        String concat = StringUtils.m26045b((CharSequence) str2) ? str2 + string : org.apache.commons.lang3.StringUtils.f67179LF.concat(String.valueOf(string));
        if (uri != null) {
            intent.putExtra("android.intent.extra.STREAM", uri);
        }
        intent.putExtra("android.intent.extra.TEXT", concat);
        intent.addFlags(getIntentFlagForNewDocument());
        if (m27672a(intent)) {
            m27647c(context, intent);
        }
    }

    /* renamed from: a */
    public static void m27673a(Context context, String[] strArr, String str, String str2, String str3) {
        String str4;
        String str5 = (strArr == null || strArr.length <= 0 || strArr[0] == null) ? "" : strArr[0];
        if (StringUtils.m26045b((CharSequence) str2)) {
            str4 = str2 + str3;
        } else {
            str4 = org.apache.commons.lang3.StringUtils.f67179LF.concat(String.valueOf(str3));
        }
        Uri parse = Uri.parse("mailto:" + str5 + "?subject=" + Uri.encode(str) + "&body=" + Uri.encode(str4));
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(parse);
        if (m27672a(intent)) {
            m27647c(context, intent);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m27671a(IBinder iBinder) {
        ((InputMethodManager) Singletons.m28493a("input_method")).hideSoftInputFromWindow(iBinder, 0);
    }

    /* renamed from: a */
    public static void m27670a(View view) {
        m27669a(view, 0);
    }

    /* renamed from: a */
    public static void m27669a(final View view, int i) {
        view.postDelayed(new Runnable() { // from class: com.callapp.contacts.util.Activities.9
            @Override // java.lang.Runnable
            public final void run() {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
            }
        }, i);
    }

    /* renamed from: a */
    public static void m27668a(Window window, int i) {
        window.addFlags(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        ThemeUtils.m27384a(window, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T> void m27667a(ArrayAdapter<T> arrayAdapter, Collection<T> collection) {
        arrayAdapter.setNotifyOnChange(false);
        arrayAdapter.clear();
        if (CollectionUtils.m26068b(collection)) {
            arrayAdapter.addAll(collection);
        }
        arrayAdapter.notifyDataSetChanged();
    }

    /* renamed from: a */
    public static void m27666a(ContactData contactData, Intent intent) {
        intent.putExtra(ChooseSocialProfileActivity.CONTACT_ID_EXTRA, contactData.getDeviceId());
        intent.putExtra(ChooseSocialProfileActivity.CONTACT_NAME_EXTRA, contactData.getNameOrNumber());
        intent.putExtra(ChooseSocialProfileActivity.CONTACT_PHONE_EXTRA, contactData.getPhone().m26101a());
    }

    /* renamed from: a */
    public static boolean m27696a(Activity activity) {
        if (activity != null && !activity.isFinishing()) {
            try {
                return !activity.isDestroyed();
            } catch (Exception e) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m27685a(Context context, Intent intent) {
        return m27647c(context, intent);
    }

    /* renamed from: a */
    public static boolean m27676a(Context context, String str, String str2, DateRange dateRange, String str3) {
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE).putExtra("title", str).putExtra(MRAIDNativeFeatureProvider.EXTRA_EVENT_BEGIN_TIME, dateRange.getStartDate()).putExtra(MRAIDNativeFeatureProvider.EXTRA_EVENT_END_TIME, dateRange.getEndDate()).putExtra(MRAIDNativeFeatureProvider.EVENT_LOCATION, str2).putExtra(MRAIDNativeFeatureProvider.STATUS, 1).putExtra("hasAlarm", 1).putExtra("description", m27697a(2131887629, m27697a(2131886719, HttpUtils.getCallAppDomain())));
        if (StringUtils.m26045b((CharSequence) str3)) {
            intent.putExtra("android.intent.extra.EMAIL", str3);
        }
        if (m27672a(intent)) {
            m27684a(context, intent, (Bundle) null);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m27672a(Intent intent) {
        Boolean bool = f27668d.get(intent);
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = Boolean.valueOf(!CallAppApplication.get().getPackageManager().queryIntentActivities(intent, 65536).isEmpty());
            f27668d.put(intent, bool2);
        }
        return bool2.booleanValue();
    }

    /* renamed from: a */
    public static boolean m27665a(String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(ComponentName.unflattenFromString(str));
        return m27672a(intent);
    }

    /* renamed from: a */
    public static boolean m27664a(String str, String str2) {
        boolean z;
        try {
            ApplicationInfo applicationInfo = CallAppApplication.get().getPackageManager().getApplicationInfo(str, 0);
            z = false;
            if (applicationInfo != null) {
                z = false;
                if (applicationInfo.className != null) {
                    z = false;
                    if (applicationInfo.className.equals(str2)) {
                        z = true;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static float m27660b(float f) {
        return f / (getDisplayMetrics().densityDpi / 160.0f);
    }

    /* renamed from: b */
    public static void m27659b(Activity activity) {
        m27658b(activity, (PopupDoneListener) null);
    }

    /* renamed from: b */
    public static void m27658b(Activity activity, final PopupDoneListener popupDoneListener) {
        Intent notificationListenersSettingsScreenIntent = getNotificationListenersSettingsScreenIntent();
        if (notificationListenersSettingsScreenIntent == null) {
            CLog.m27606a(Constants.MISSED_CALL_ACTIONS);
            return;
        }
        final ReturnToAppTasker returnToAppTasker = new ReturnToAppTasker(activity.getIntent(), popupDoneListener, 2);
        returnToAppTasker.m27413a();
        m27683a(activity, notificationListenersSettingsScreenIntent, new ActivityResult() { // from class: com.callapp.contacts.util.Activities.4
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public final void onActivityResult(Activity activity2, int i, int i2, Intent intent) {
                if (popupDoneListener != null) {
                    returnToAppTasker.m27411b();
                }
            }
        });
        new Task() { // from class: com.callapp.contacts.util.Activities.5
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                FeedbackManager.get().m28668a(Activities.m27697a(2131887108, Activities.getString(2131886245)), (Integer) 48, 3);
            }
        }.schedule(2000);
    }

    /* renamed from: b */
    public static void m27657b(Context context) {
        m27678a(context, "name", "");
    }

    /* renamed from: b */
    public static void m27656b(Context context, Intent intent) {
        m27684a(context, intent, (Bundle) null);
    }

    /* renamed from: b */
    public static void m27654b(Context context, String[] strArr, String str) {
        m27674a(context, strArr, str, (String) null, (Uri) null);
    }

    /* renamed from: b */
    public static void m27653b(View view) {
        final IBinder windowToken = view.getWindowToken();
        view.post(new Runnable() { // from class: com.callapp.contacts.util._$$Lambda$Activities$qkFgkuKlgU24PIwwaOHCuMW_vOo
            @Override // java.lang.Runnable
            public final void run() {
                Activities.m27671a(windowToken);
            }
        });
    }

    /* renamed from: b */
    public static boolean m27661b() {
        if (!isNotificationListenerServiceSupportedOnDevice()) {
            return false;
        }
        String string = Settings.Secure.getString(CallAppApplication.get().getContentResolver(), "enabled_notification_listeners");
        return string != null && string.contains(CallAppApplication.get().getPackageName());
    }

    /* renamed from: b */
    public static boolean m27655b(Context context, String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            if (HttpUtils.m26985a()) {
                m27677a(context, str, (Runnable) null);
                return true;
            }
            FeedbackManager.m28675a(context);
            return false;
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m27652b(String str) {
        try {
            return CallAppApplication.get().getPackageManager().getApplicationInfo(str, 0) != null;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: c */
    public static Intent m27645c(String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse("https://callapp.com/applink?command=".concat(String.valueOf(str))));
        return intent;
    }

    /* renamed from: c */
    public static void m27651c() {
        InputMethodManager inputMethodManager = (InputMethodManager) Singletons.m28493a("input_method");
        try {
            ReflectionUtils.m27422a(inputMethodManager, "mNextServedView", (Object) null);
        } catch (Throwable th) {
        }
        try {
            ReflectionUtils.m27422a(inputMethodManager, "mServedView", (Object) null);
        } catch (Throwable th2) {
        }
        try {
            ReflectionUtils.m27419a(inputMethodManager, "finishInputLocked", (Class<?>[]) null, new Object[0]);
        } catch (Throwable th3) {
        }
    }

    /* renamed from: c */
    public static void m27649c(Activity activity, PopupDoneListener popupDoneListener) {
        Intent m27145b = RomHelper.m27145b(CallAppApplication.get());
        if (m27145b != null) {
            final ReturnToAppTasker returnToAppTasker = new ReturnToAppTasker(activity.getIntent(), popupDoneListener, 1);
            returnToAppTasker.m27413a();
            m27683a(activity, m27145b, new ActivityResult() { // from class: com.callapp.contacts.util.Activities.13
                @Override // com.callapp.contacts.manager.popup.ActivityResult
                public final void onActivityResult(Activity activity2, int i, int i2, Intent intent) {
                    returnToAppTasker.m27411b();
                }
            });
            new Task() { // from class: com.callapp.contacts.util.Activities.14
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    FeedbackManager.get().m28668a(Activities.getString(2131886814), Integer.valueOf(RomDetector.isMIUI() ? 16 : 48), 3);
                }
            }.schedule(2000);
        }
    }

    /* renamed from: c */
    public static void m27648c(Context context) {
        Intent openProtectedAppsIntent = getOpenProtectedAppsIntent();
        if (openProtectedAppsIntent != null) {
            m27684a(context, openProtectedAppsIntent, (Bundle) null);
            new Task() { // from class: com.callapp.contacts.util.Activities.12
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    FeedbackManager.get().m28668a(Activities.getString(2131887470), (Integer) 48, 3);
                }
            }.schedule(2000);
        }
    }

    /* renamed from: c */
    public static void m27646c(Context context, String str) {
        m27677a(context, str, (Runnable) null);
    }

    /* renamed from: c */
    public static boolean m27650c(Activity activity) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setType("vnd.android.cursor.dir/calls");
        PackageManager packageManager = activity.getPackageManager();
        Iterator<ResolveInfo> it2 = packageManager.queryIntentActivities(intent, 64).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            ResolveInfo next = it2.next();
            if (StringUtils.m26032d(next.activityInfo.packageName, new String[]{"com.android", "com.google.android"})) {
                intent.setComponent(new ComponentName(next.activityInfo.packageName, next.activityInfo.name));
                break;
            }
        }
        boolean m27672a = m27672a(intent);
        boolean z = m27672a;
        if (!m27672a) {
            intent = new Intent();
            intent.setType("vnd.android.cursor.dir/calls");
            Iterator<ResolveInfo> it3 = packageManager.queryIntentActivities(intent, 64).iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                ResolveInfo next2 = it3.next();
                if (StringUtils.m26032d(next2.activityInfo.packageName, new String[]{"com.android", "com.google.android"})) {
                    intent.setComponent(new ComponentName(next2.activityInfo.packageName, next2.activityInfo.name));
                    break;
                }
            }
            z = m27672a(intent);
        }
        if (!z) {
            AnalyticsManager.get().m28450a(Constants.CONTACT_LIST, "Show stock call log failed");
            return false;
        }
        intent.setFlags(1350631424);
        try {
            m27647c(activity, intent);
            return true;
        } catch (SecurityException e) {
            CLog.m27609a(Activities.class, e);
            return false;
        }
    }

    /* renamed from: c */
    private static boolean m27647c(Context context, Intent intent) {
        if (!PhoneStateManager.get().isIncomingCallRingingState()) {
            m27684a(context, intent, (Bundle) null);
            return true;
        }
        return false;
    }

    /* renamed from: d */
    private static String m27642d(String str) {
        BufferedReader bufferedReader;
        Throwable th;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str))).getInputStream()), 1024);
        } catch (IOException e) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
        try {
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            try {
                bufferedReader.close();
            } catch (IOException e2) {
            }
            return readLine;
        } catch (IOException e3) {
            if (bufferedReader == null) {
                return null;
            }
            try {
                bufferedReader.close();
                return null;
            } catch (IOException e4) {
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
    }

    /* renamed from: d */
    public static void m27644d() {
        f27666b = -1;
        f27667c = -1;
    }

    /* renamed from: d */
    public static void m27643d(Activity activity) {
        m27694a(activity, new Intent(CallAppApplication.get(), SettingsActivity.class).addFlags(262144), 15000);
    }

    /* renamed from: e */
    public static boolean m27641e() {
        return RomHelper.m27146a(CallAppApplication.get());
    }

    /* renamed from: f */
    public static boolean m27640f() {
        return !Prefs.f26359cd.get().booleanValue() && getOpenProtectedAppsIntent() != null;
    }

    /* renamed from: g */
    public static boolean m27639g() {
        return !Prefs.f26358cc.get().booleanValue() && AutoStartPermissionHelper.getInstance().isAutoStartPermissionAvailable();
    }

    private static String getBackupString() {
        String[] strArr;
        StringBuilder sb = new StringBuilder();
        sb.append("completeBackupSettings: ");
        sb.append(Prefs.f26613hS.get());
        sb.append(", BackupVia: ");
        sb.append(Prefs.f26605hK.get());
        sb.append(", backupIntervalInDays: ");
        sb.append(Prefs.f26606hL.get());
        sb.append(", backupVideoRingTones: ");
        sb.append(Prefs.f26609hO.get());
        sb.append(", backupContacts: ");
        sb.append(Prefs.f26607hM.get());
        sb.append(", backupCallLog: ");
        sb.append(Prefs.f26608hN.get());
        sb.append(", backupRecording: ");
        sb.append(Prefs.f26610hP.get());
        sb.append(", backupRetriesCount: ");
        sb.append(Prefs.f26614hT.get());
        sb.append(", hasScheduleBackupJob: ");
        sb.append(Prefs.f26616hV.get());
        if (Prefs.f26618hX.get() != null) {
            sb.append(", lastBackupWorkerStartedDate: ");
            sb.append(BackupUtils.m29295a(Prefs.f26618hX.get(), "dd/MM/yyyy hh:mm:ss"));
        }
        if (Prefs.f26604hJ.get() != null) {
            sb.append(", lastBackupDate: ");
            sb.append(BackupUtils.m29295a(Prefs.f26604hJ.get(), "dd/MM/yyyy hh:mm:ss"));
        }
        if (Prefs.f26617hW.get() != null) {
            for (String str : Prefs.f26617hW.get()) {
                sb.append(", completeBackup: ");
                sb.append(str);
            }
        }
        return sb.toString();
    }

    public static String getClientVersion() {
        CallAppApplication callAppApplication = CallAppApplication.get();
        return String.format(Locale.ENGLISH, "%s (%d)", callAppApplication.getVersion(), Integer.valueOf(callAppApplication.getVersionCode()));
    }

    public static String getDeviceDataString() {
        Account[] m9165a = new C15287a(CallAppApplication.get()).m9165a();
        Locale locale = Locale.ENGLISH;
        String str = Prefs.f26241aR.get();
        int i = 0;
        String version = CallAppApplication.get().getVersion();
        int versionCode = CallAppApplication.get().getVersionCode();
        String str2 = Build.MANUFACTURER;
        String str3 = Build.MODEL;
        String str4 = Build.DEVICE;
        String num = Integer.toString(Build.VERSION.SDK_INT);
        String readableModVersion = getReadableModVersion();
        String str5 = Build.BOOTLOADER;
        String string = getString(2131887752);
        String str6 = Prefs.f26239aP.get();
        String simCountryIso = PhoneManager.get().getSimCountryIso();
        long totalInternalStorageSizeMB = IoUtils.getTotalInternalStorageSizeMB();
        long freeInternalStorageSizeMB = IoUtils.getFreeInternalStorageSizeMB();
        long totalExternalStorageSizeMB = IoUtils.getTotalExternalStorageSizeMB();
        long freeExternalStorageSizeMB = IoUtils.getFreeExternalStorageSizeMB();
        Boolean bool = Prefs.f26339cJ.get();
        Boolean bool2 = Prefs.f26340cK.get();
        Integer num2 = Prefs.f26414df.get();
        String str7 = Prefs.f26416dh.get();
        String str8 = Prefs.f26396dN.get();
        Object obj = "true";
        String str9 = m27638h() ? "true" : "false";
        if (!PhoneManager.get().isDefaultSystemPhoneApp()) {
            obj = "false";
        }
        String str10 = Prefs.f26444eI.get().booleanValue() ? "auto" : Prefs.f26443eH.get().booleanValue() ? "manual" : "off";
        String recordConfiguration = new RecordConfiguration().toString();
        String permissionsString = PermissionManager.get().getPermissionsString();
        boolean m27640f = m27640f();
        boolean m27639g = m27639g();
        boolean m27661b = m27661b();
        boolean m27146a = RomHelper.m27146a(CallAppApplication.get());
        boolean isIgnoringBatteryOptimizations = PowerUtils.isIgnoringBatteryOptimizations();
        String installerPackageName = getInstallerPackageName();
        SimManager.DualSim dualSimOperators = SimManager.get().getDualSimOperators();
        Integer num3 = Prefs.f26214R.get();
        Date date = Prefs.f26258ai.get();
        String str11 = Prefs.f26247aX.get();
        String encryptedToken = getEncryptedToken();
        if (m9165a != null) {
            i = m9165a.length;
        }
        return String.format(locale, "\n\nCallApp Id: %s\nCallApp Version: %s (%d)\nManufacturer: %s\nModel: %s\nDevice: %s\nSDK Version: %s\nMOD: %s\nBOOTLOADER: %s\nOrigin: %s\nCountry code: %s\nSim country:%s\nInternal Disk Size: %smb\nInternal Free: %smb\nExternal Disk Size: %smb\nExternal Free: %smb\nIs premium: %s\nHas free store: %s\nCatalog version: %d\nChosen theme: %s\nChosen cover: %s\nLP: %s\nDefault phone app: %s\nCall recorder: %s (conf %s)\nGiven Permissions:\n%sNeeds Huawei protected apps permission: %s\nNeeds auto start permission: %s\nNotification access granted: %s\nCan draw overlays: %s\nIs Ignoring Battery optimizations: %s\nInstaller package name: %s\nDual sim: %s\nInstalled version %s\nLast update: %s\nRegistration method %s\nTK %s\nGmail Accounts: %s\nRecord Test Files: %s\nBackup: %s\n", str, version, Integer.valueOf(versionCode), str2, str3, str4, num, readableModVersion, str5, string, str6, simCountryIso, Long.valueOf(totalInternalStorageSizeMB), Long.valueOf(freeInternalStorageSizeMB), Long.valueOf(totalExternalStorageSizeMB), Long.valueOf(freeExternalStorageSizeMB), bool, bool2, num2, str7, str8, str9, obj, str10, recordConfiguration, permissionsString, Boolean.valueOf(m27640f), Boolean.valueOf(m27639g), Boolean.valueOf(m27661b), Boolean.valueOf(m27146a), Boolean.valueOf(isIgnoringBatteryOptimizations), installerPackageName, dualSimOperators, num3, date, str11, encryptedToken, Integer.valueOf(i), Long.valueOf(RecorderTestDataManager.getAllDoneRecorderTests()), getBackupString());
    }

    public static DisplayMetrics getDisplayMetrics() {
        if (f27665a == null) {
            f27665a = CallAppApplication.get().getResources().getDisplayMetrics();
        }
        return f27665a;
    }

    public static String getEncodedDeviceId() {
        String deviceId = PhoneManager.get().getDeviceId();
        if (StringUtils.m26059a((CharSequence) deviceId)) {
            return null;
        }
        Base64Utils.getInstance();
        return Base64.m26005a(deviceId.getBytes(StandardCharsets.UTF_8));
    }

    private static String getEncryptedToken() {
        int length;
        String str = Prefs.f26245aV.get();
        String str2 = str;
        if (StringUtils.m26045b((CharSequence) str)) {
            str2 = str;
            if (str.length() > 3) {
                str2 = StringUtils.m26054a(str, 2, 3) + StringUtils.m26054a(str, length - 1, length);
            }
        }
        return str2;
    }

    public static String getInstallerPackageName() {
        String installerPackageName = CallAppApplication.get().getPackageManager().getInstallerPackageName(CallAppApplication.get().getPackageName());
        return StringUtils.m26045b((CharSequence) installerPackageName) ? installerPackageName : "";
    }

    public static int getIntentFlagForNewDocument() {
        return 524288;
    }

    public static int getNotificationLargeIconHeight() {
        int i;
        int identifier = CallAppApplication.get().getResources().getIdentifier("notification_large_icon_width", "dimen", com.mopub.common.Constants.ANDROID_PLATFORM);
        int dimensionPixelSize = identifier > 0 ? CallAppApplication.get().getResources().getDimensionPixelSize(identifier) : 0;
        int i2 = dimensionPixelSize;
        if (dimensionPixelSize <= 0) {
            i2 = Math.round(TypedValue.applyDimension(1, 64.0f, getDisplayMetrics()));
        }
        if (i2 <= 0) {
            i = 128;
        } else {
            i = i2;
            if (i2 > 256) {
                i = 256;
            }
        }
        return i;
    }

    public static Intent getNotificationListenersSettingsScreenIntent() {
        Intent intent = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
        if (m27672a(intent)) {
            return intent;
        }
        Intent intent2 = new Intent("android.settings.SOUND_SETTINGS");
        if (m27672a(intent2)) {
            return intent2;
        }
        Intent intent3 = new Intent("android.settings.SETTINGS");
        if (!m27672a(intent3)) {
            return null;
        }
        return intent3;
    }

    private static Intent getOpenProtectedAppsIntent() {
        if (Build.VERSION.SDK_INT >= 24 || !Payload.SOURCE_HUAWEI.equalsIgnoreCase(Build.MANUFACTURER)) {
            return null;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.systemmanager.optimize.process.ProtectActivity"));
        if (!m27672a(intent)) {
            return null;
        }
        return intent;
    }

    public static String getReadableModVersion() {
        String m27642d = m27642d("ro.modversion");
        String str = m27642d;
        if (StringUtils.m26059a((CharSequence) m27642d)) {
            str = "Unknown";
        }
        return str;
    }

    public static int getScreenHeight(int i) {
        return i != 1 ? i != 2 ? 0 : getScreenShorterAxis() : getScreenLongerAxis();
    }

    private static int getScreenLongerAxis() {
        if (f27667c <= 0) {
            f27667c = Math.max(getDisplayMetrics().heightPixels, getDisplayMetrics().widthPixels);
        }
        return f27667c;
    }

    public static int getScreenOrientation() {
        return CallAppApplication.get().getResources().getConfiguration().orientation;
    }

    private static int getScreenShorterAxis() {
        if (f27666b <= 0) {
            f27666b = Math.min(getDisplayMetrics().heightPixels, getDisplayMetrics().widthPixels);
        }
        return f27666b;
    }

    public static int getScreenWidth(int i) {
        return i != 1 ? i != 2 ? 0 : getScreenLongerAxis() : getScreenShorterAxis();
    }

    public static int getStatusBarHeight() {
        int i = f27671g;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        int identifier = CallAppApplication.get().getResources().getIdentifier("status_bar_height", "dimen", com.mopub.common.Constants.ANDROID_PLATFORM);
        if (identifier > 0) {
            i2 = CallAppApplication.get().getResources().getDimensionPixelSize(identifier);
        }
        int i3 = i2;
        if (i2 <= 0) {
            i3 = Math.round(TypedValue.applyDimension(1, 25.0f, getDisplayMetrics()));
        }
        int i4 = i3;
        if (i3 <= 0) {
            i4 = 50;
        }
        f27671g = i4;
        return i4;
    }

    public static String getString(int i) {
        return i != 0 ? CallAppApplication.get().getString(i) : "";
    }

    public static CharSequence getText(int i) {
        return i != 0 ? CallAppApplication.get().getText(i) : "";
    }

    public static Intent getVoiceSearchIntent() {
        return new Intent("android.speech.action.RECOGNIZE_SPEECH").putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form").putExtra("android.speech.extra.MAX_RESULTS", 1);
    }

    /* renamed from: h */
    private static boolean m27638h() {
        boolean z;
        try {
            if (Prefs.f26657n.get().booleanValue()) {
                return false;
            }
            CallAppApplication callAppApplication = CallAppApplication.get();
            Boolean bool = f27669e;
            if (bool == null) {
                List asList = Arrays.asList(getString(2131886246), getString(2131886247), getString(2131886248), getString(2131886249), getString(2131886250));
                Signature[] signatureArr = callAppApplication.getPackageManager().getPackageInfo(callAppApplication.getPackageName(), 64).signatures;
                int length = signatureArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        f27669e = Boolean.FALSE;
                        z = false;
                        break;
                    }
                    Signature signature = signatureArr[i];
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                    messageDigest.update(signature.toByteArray());
                    if (CollectionUtils.m26073a(asList, android.util.Base64.encodeToString(messageDigest.digest(), 0).trim())) {
                        f27669e = Boolean.TRUE;
                        z = true;
                        break;
                    }
                    i++;
                }
            } else {
                z = bool.booleanValue();
            }
            if (!z) {
                return true;
            }
            return isLuckyPatcherPackageExist();
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0067, code lost:
        if (r8 != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isCallAppAccessibilityServiceEnabled() {
        /*
            boolean r0 = com.callapp.contacts.service.CallAppAccessibilityService.isConnected()
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L6a
            com.callapp.contacts.CallAppApplication r0 = com.callapp.contacts.CallAppApplication.get()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "accessibility"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.view.accessibility.AccessibilityManager r0 = (android.view.accessibility.AccessibilityManager) r0
            r1 = -1
            java.util.List r0 = r0.getEnabledAccessibilityServiceList(r1)
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L22:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L62
            r0 = r6
            java.lang.Object r0 = r0.next()
            android.accessibilityservice.AccessibilityServiceInfo r0 = (android.accessibilityservice.AccessibilityServiceInfo) r0
            android.content.pm.ResolveInfo r0 = r0.getResolveInfo()
            android.content.pm.ServiceInfo r0 = r0.serviceInfo
            r7 = r0
            r0 = r7
            java.lang.String r0 = r0.packageName
            r1 = r5
            java.lang.String r1 = r1.getPackageName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L22
            r0 = r7
            java.lang.String r0 = r0.name
            java.lang.Class<com.callapp.contacts.service.CallAppAccessibilityService> r1 = com.callapp.contacts.service.CallAppAccessibilityService.class
            java.lang.String r1 = r1.getName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L22
            r0 = 1
            r8 = r0
            goto L65
        L62:
            r0 = 0
            r8 = r0
        L65:
            r0 = r8
            if (r0 == 0) goto L6c
        L6a:
            r0 = 1
            r4 = r0
        L6c:
            r0 = r4
            if (r0 == 0) goto L79
            com.callapp.contacts.manager.preferences.prefs.BooleanPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26461eZ
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.set(r1)
        L79:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.Activities.isCallAppAccessibilityServiceEnabled():boolean");
    }

    public static boolean isDataEnabled() {
        boolean z;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) Singletons.m28493a("connectivity");
            Method declaredMethod = Class.forName(connectivityManager.getClass().getName()).getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            z = ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
        } catch (Exception e) {
            z = true;
        }
        return z;
    }

    private static boolean isLuckyPatcherPackageExist() throws UnsupportedEncodingException {
        for (String str : CallAppApplication.get().getResources().getStringArray(2130903055)) {
            if (m27652b(new String(android.util.Base64.decode(str, 0), StandardCharsets.UTF_8))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNotificationListenerServiceSupportedOnDevice() {
        if (f27670f == null) {
            f27670f = Boolean.valueOf(!((ActivityManager) CallAppApplication.get().getSystemService("activity")).isLowRamDevice());
        }
        return f27670f.booleanValue();
    }

    public static boolean isOrientationLandscape() {
        return getScreenOrientation() == 2;
    }

    public static boolean isStoreNameGooglePlay() {
        return Constants.GOOGLE_PLAY_STORE_NAME.equalsIgnoreCase(getString(2131887752));
    }

    public static void setKeyguardDismissAndScreenWindowFlags(Activity activity) {
        if (activity == null) {
            return;
        }
        activity.getWindow().addFlags(6848512);
        if (Build.VERSION.SDK_INT < 26 || Build.VERSION.SDK_INT < 27) {
            return;
        }
        activity.setShowWhenLocked(true);
        activity.setTurnScreenOn(true);
    }
}
