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
import androidx.core.e.b;
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
import com.google.api.client.googleapis.extensions.android.a.a;
import com.mopub.mraid.MraidNativeCommandHandler;
import io.objectbox.model.PropertyFlags;
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

    /* renamed from: a  reason: collision with root package name */
    private static DisplayMetrics f15831a;

    /* renamed from: b  reason: collision with root package name */
    private static int f15832b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static int f15833c = -1;

    /* renamed from: d  reason: collision with root package name */
    private static Map<Intent, Boolean> f15834d = new HashMap();
    private static Boolean e = null;
    private static Boolean f = null;
    private static int g = -1;

    private Activities() {
    }

    public static float a(float f2) {
        return TypedValue.applyDimension(1, f2, getDisplayMetrics());
    }

    private static Intent a(String... strArr) {
        Intent intent = new Intent("android.intent.action.INSERT");
        intent.setData(ContactsContract.Contacts.CONTENT_URI);
        intent.putExtra("com.android.contacts.action.FORCE_CREATE", true);
        intent.addCategory("android.intent.category.DEFAULT");
        for (int i = 0; i < 2; i += 2) {
            intent.putExtra(strArr[0], StringUtils.a(strArr[1], new char[0]));
        }
        if (a(intent)) {
            return intent;
        }
        return null;
    }

    public static CharSequence a(int... iArr) {
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

    public static String a(int i, Object... objArr) {
        if (i == 0) {
            return "";
        }
        try {
            return CallAppApplication.get().getString(i, objArr);
        } catch (IllegalFormatConversionException e2) {
            CLog.d(Activities.class, "Locale: " + CallAppApplication.get().getResources().getConfiguration().locale.getLanguage());
            return "";
        }
    }

    public static void a() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
        a(CallAppApplication.get(), intent, (Bundle) null);
    }

    public static void a(int i, Window window) {
        ThemeUtils.a(window, i);
    }

    public static void a(Activity activity, int i) {
        Intent putExtra = getVoiceSearchIntent().putExtra("android.speech.extra.PROMPT", getString(2131887084));
        if (a(putExtra)) {
            activity.startActivityForResult(putExtra, i);
        }
    }

    public static void a(Activity activity, Intent intent, int i) {
        if (!PhoneStateManager.get().isIncomingCallRingingState()) {
            activity.startActivityForResult(intent, i);
        }
    }

    public static void a(Activity activity, Intent intent, int i, b<View, String>[] bVarArr) {
        activity.startActivityForResult(intent, i, androidx.core.app.b.a(activity, bVarArr).a());
    }

    public static void a(Activity activity, Intent intent, b<View, String>[] bVarArr) {
        activity.startActivity(intent, androidx.core.app.b.a(activity, bVarArr).a());
    }

    public static void a(Activity activity, ActivityResult activityResult) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + CallAppApplication.get().getPackageName()));
        if (a(intent)) {
            a(activity, intent, activityResult);
            return;
        }
        Intent intent2 = new Intent("android.settings.SETTINGS");
        if (a(intent2)) {
            a(activity, intent2, activityResult);
        }
    }

    public static void a(Activity activity, PopupDoneListener popupDoneListener) {
        Intent intent = new Intent("android.settings.ACCESSIBILITY_SETTINGS");
        final ReturnToAppTasker returnToAppTasker = new ReturnToAppTasker(activity.getIntent(), popupDoneListener, 3);
        returnToAppTasker.a();
        a(activity, intent, new ActivityResult() { // from class: com.callapp.contacts.util.Activities.2
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public final void onActivityResult(Activity activity2, int i, int i2, Intent intent2) {
                ReturnToAppTasker.this.b();
            }
        });
    }

    public static void a(Activity activity, final Runnable runnable) {
        if (activity instanceof BaseActivity) {
            final BaseActivity baseActivity = (BaseActivity) activity;
            baseActivity.registerActivityLifecycleListener(new ActivityLifecycleListener() { // from class: com.callapp.contacts.util.Activities.3
                @Override // com.callapp.contacts.activity.base.ActivityLifecycleListener
                public final void a(Activity activity2) {
                    if (BaseActivity.this.equals(activity2)) {
                        BaseActivity.this.unregisterActivityLifecycleListener(this);
                        runnable.run();
                    }
                }
            });
        }
    }

    public static void a(final Activity activity, String str, String str2) {
        if (getNotificationListenersSettingsScreenIntent() != null && !b()) {
            PopupManager.get().a(activity, new DialogSimpleMessage(str, str2, getString(2131888248), getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.util.Activities.6
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity2) {
                    Activities.b(activity);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.util.Activities.7
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity2) {
                }
            }));
        }
    }

    public static void a(Activity activity, boolean z, ActivityResult activityResult) {
        if (Build.VERSION.SDK_INT < 23) {
            activityResult.onActivityResult(activity, -1, -1, null);
            return;
        }
        Intent createRequestRoleIntent = Build.VERSION.SDK_INT >= 29 ? ((RoleManager) CallAppApplication.get().getSystemService("role")).createRequestRoleIntent("android.app.role.DIALER") : new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER");
        if (!z || !a(createRequestRoleIntent)) {
            for (int i = 0; i < 2; i++) {
                Intent intent = new Intent(new String[]{"android.settings.MANAGE_DEFAULT_APPS_SETTINGS", "android.settings.SETTINGS"}[i]);
                if (a(intent)) {
                    a(activity, intent, activityResult);
                    return;
                }
            }
            activityResult.onActivityResult(activity, -1, 0, null);
            return;
        }
        createRequestRoleIntent.putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", CallAppApplication.get().getPackageName());
        a(activity, createRequestRoleIntent, activityResult);
    }

    public static void a(Context context) {
        Intent intent = new Intent("android.settings.DATA_ROAMING_SETTINGS");
        intent.addCategory("android.intent.category.DEFAULT");
        if (a(intent)) {
            c(context, intent);
        }
    }

    public static void a(Context context, Intent intent, Bundle bundle) {
        boolean z = context instanceof Activity;
        if (!z) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
        if (z && intent.getBooleanExtra(Constants.EXTRA_IS_USING_DEFAULT_TRANSITION, true)) {
            ((Activity) context).overridePendingTransition(2130772000, 2130772008);
        }
    }

    public static void a(Context context, final Intent intent, final ActivityResult activityResult) {
        PopupManager.get().a(context, new ResultPopup() { // from class: com.callapp.contacts.util.Activities.1
            @Override // com.callapp.contacts.manager.popup.ResultPopup
            public final void a(Activity activity) {
                a(activity, intent);
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

    public static void a(Context context, ActivityResult activityResult) {
        Intent openProtectedAppsIntent = getOpenProtectedAppsIntent();
        if (openProtectedAppsIntent != null) {
            a(context, openProtectedAppsIntent, activityResult);
            new Task() { // from class: com.callapp.contacts.util.Activities.11
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    FeedbackManager.get().a(Activities.getString(2131887470), (Integer) 48, 3);
                }
            }.schedule(2000);
        }
    }

    public static void a(Context context, CharSequence charSequence) {
        if (StringUtils.b(charSequence)) {
            Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
            intent.setType("vnd.android.cursor.item/contact");
            intent.putExtra(Constants.EXTRA_PHONE_NUMBER, charSequence);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            if (a(intent)) {
                c(context, intent);
            }
        }
    }

    public static void a(Context context, Class<?> cls, ActivityResult activityResult) {
        a(context, new Intent(CallAppApplication.get(), cls), activityResult);
    }

    public static void a(Context context, String str) {
        String str2 = str;
        if (!str.startsWith("http://")) {
            str2 = str;
            if (!str.startsWith("https://")) {
                str2 = "http://".concat(String.valueOf(str));
            }
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
        intent.addFlags(getIntentFlagForNewDocument());
        if (a(intent)) {
            c(context, intent);
        }
    }

    public static void a(Context context, String str, CharSequence charSequence) {
        Intent a2 = a(str, charSequence.toString());
        if (a2 != null) {
            if (!(context instanceof Activity)) {
                a2.addFlags(268435456);
            }
            c(context, a2);
        }
    }

    public static void a(Context context, String str, final Runnable runnable) {
        String str2 = str;
        if (!str.startsWith("http://")) {
            str2 = str;
            if (!str.startsWith("https://")) {
                str2 = "http://".concat(String.valueOf(str));
            }
        }
        PopupManager.get().a(context, new WebViewDialog(context, str2, null, new DialogInterface.OnCancelListener() { // from class: com.callapp.contacts.util.Activities.8
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        }));
    }

    public static void a(Context context, String[] strArr, String str) {
        a(context, strArr, str, (String) null, getString(2131887628));
    }

    public static void a(Context context, String[] strArr, String str, String str2, Uri uri) {
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
        String concat = StringUtils.b((CharSequence) str2) ? str2 + string : org.apache.commons.lang3.StringUtils.LF.concat(String.valueOf(string));
        if (uri != null) {
            intent.putExtra("android.intent.extra.STREAM", uri);
        }
        intent.putExtra("android.intent.extra.TEXT", concat);
        intent.addFlags(getIntentFlagForNewDocument());
        if (a(intent)) {
            c(context, intent);
        }
    }

    public static void a(Context context, String[] strArr, String str, String str2, String str3) {
        String str4;
        String str5 = (strArr == null || strArr.length <= 0 || strArr[0] == null) ? "" : strArr[0];
        if (StringUtils.b((CharSequence) str2)) {
            str4 = str2 + str3;
        } else {
            str4 = org.apache.commons.lang3.StringUtils.LF.concat(String.valueOf(str3));
        }
        Uri parse = Uri.parse("mailto:" + str5 + "?subject=" + Uri.encode(str) + "&body=" + Uri.encode(str4));
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(parse);
        if (a(intent)) {
            c(context, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(IBinder iBinder) {
        ((InputMethodManager) Singletons.a("input_method")).hideSoftInputFromWindow(iBinder, 0);
    }

    public static void a(View view) {
        a(view, 0);
    }

    public static void a(final View view, int i) {
        view.postDelayed(new Runnable() { // from class: com.callapp.contacts.util.Activities.9
            @Override // java.lang.Runnable
            public final void run() {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
            }
        }, i);
    }

    public static void a(Window window, int i) {
        window.addFlags(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        ThemeUtils.a(window, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void a(ArrayAdapter<T> arrayAdapter, Collection<T> collection) {
        arrayAdapter.setNotifyOnChange(false);
        arrayAdapter.clear();
        if (CollectionUtils.b(collection)) {
            arrayAdapter.addAll(collection);
        }
        arrayAdapter.notifyDataSetChanged();
    }

    public static void a(ContactData contactData, Intent intent) {
        intent.putExtra(ChooseSocialProfileActivity.CONTACT_ID_EXTRA, contactData.getDeviceId());
        intent.putExtra(ChooseSocialProfileActivity.CONTACT_NAME_EXTRA, contactData.getNameOrNumber());
        intent.putExtra(ChooseSocialProfileActivity.CONTACT_PHONE_EXTRA, contactData.getPhone().a());
    }

    public static boolean a(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        try {
            return !activity.isDestroyed();
        } catch (Exception e2) {
            return true;
        }
    }

    public static boolean a(Context context, Intent intent) {
        return c(context, intent);
    }

    public static boolean a(Context context, String str, String str2, DateRange dateRange, String str3) {
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE).putExtra("title", str).putExtra(MRAIDNativeFeatureProvider.EXTRA_EVENT_BEGIN_TIME, dateRange.getStartDate()).putExtra(MRAIDNativeFeatureProvider.EXTRA_EVENT_END_TIME, dateRange.getEndDate()).putExtra(MRAIDNativeFeatureProvider.EVENT_LOCATION, str2).putExtra(MRAIDNativeFeatureProvider.STATUS, 1).putExtra("hasAlarm", 1).putExtra("description", a(2131887629, a(2131886719, HttpUtils.getCallAppDomain())));
        if (StringUtils.b((CharSequence) str3)) {
            intent.putExtra("android.intent.extra.EMAIL", str3);
        }
        if (!a(intent)) {
            return false;
        }
        a(context, intent, (Bundle) null);
        return true;
    }

    public static boolean a(Intent intent) {
        Boolean bool = f15834d.get(intent);
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = Boolean.valueOf(!CallAppApplication.get().getPackageManager().queryIntentActivities(intent, 65536).isEmpty());
            f15834d.put(intent, bool2);
        }
        return bool2.booleanValue();
    }

    public static boolean a(String str) {
        if (StringUtils.a((CharSequence) str)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(ComponentName.unflattenFromString(str));
        return a(intent);
    }

    public static boolean a(String str, String str2) {
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
        } catch (PackageManager.NameNotFoundException e2) {
            z = false;
        }
        return z;
    }

    public static float b(float f2) {
        return f2 / (getDisplayMetrics().densityDpi / 160.0f);
    }

    public static void b(Activity activity) {
        b(activity, (PopupDoneListener) null);
    }

    public static void b(Activity activity, final PopupDoneListener popupDoneListener) {
        Intent notificationListenersSettingsScreenIntent = getNotificationListenersSettingsScreenIntent();
        if (notificationListenersSettingsScreenIntent == null) {
            CLog.a(Constants.MISSED_CALL_ACTIONS);
            return;
        }
        final ReturnToAppTasker returnToAppTasker = new ReturnToAppTasker(activity.getIntent(), popupDoneListener, 2);
        returnToAppTasker.a();
        a(activity, notificationListenersSettingsScreenIntent, new ActivityResult() { // from class: com.callapp.contacts.util.Activities.4
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public final void onActivityResult(Activity activity2, int i, int i2, Intent intent) {
                if (PopupDoneListener.this != null) {
                    returnToAppTasker.b();
                }
            }
        });
        new Task() { // from class: com.callapp.contacts.util.Activities.5
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                FeedbackManager.get().a(Activities.a(2131887108, Activities.getString(2131886245)), (Integer) 48, 3);
            }
        }.schedule(2000);
    }

    public static void b(Context context) {
        a(context, "name", "");
    }

    public static void b(Context context, Intent intent) {
        a(context, intent, (Bundle) null);
    }

    public static void b(Context context, String[] strArr, String str) {
        a(context, strArr, str, (String) null, (Uri) null);
    }

    public static void b(View view) {
        final IBinder windowToken = view.getWindowToken();
        view.post(new Runnable() { // from class: com.callapp.contacts.util._$$Lambda$Activities$qkFgkuKlgU24PIwwaOHCuMW_vOo
            @Override // java.lang.Runnable
            public final void run() {
                Activities.a(windowToken);
            }
        });
    }

    public static boolean b() {
        if (!isNotificationListenerServiceSupportedOnDevice()) {
            return false;
        }
        String string = Settings.Secure.getString(CallAppApplication.get().getContentResolver(), "enabled_notification_listeners");
        return string != null && string.contains(CallAppApplication.get().getPackageName());
    }

    public static boolean b(Context context, String str) {
        if (!StringUtils.b((CharSequence) str)) {
            return false;
        }
        if (HttpUtils.a()) {
            a(context, str, (Runnable) null);
            return true;
        }
        FeedbackManager.a(context);
        return false;
    }

    public static boolean b(String str) {
        try {
            return CallAppApplication.get().getPackageManager().getApplicationInfo(str, 0) != null;
        } catch (Exception e2) {
            return false;
        }
    }

    public static Intent c(String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse("https://callapp.com/applink?command=".concat(String.valueOf(str))));
        return intent;
    }

    public static void c() {
        InputMethodManager inputMethodManager = (InputMethodManager) Singletons.a("input_method");
        try {
            ReflectionUtils.a(inputMethodManager, "mNextServedView", (Object) null);
        } catch (Throwable th) {
        }
        try {
            ReflectionUtils.a(inputMethodManager, "mServedView", (Object) null);
        } catch (Throwable th2) {
        }
        try {
            ReflectionUtils.a(inputMethodManager, "finishInputLocked", (Class<?>[]) null, new Object[0]);
        } catch (Throwable th3) {
        }
    }

    public static void c(Activity activity, PopupDoneListener popupDoneListener) {
        Intent b2 = RomHelper.b(CallAppApplication.get());
        if (b2 != null) {
            final ReturnToAppTasker returnToAppTasker = new ReturnToAppTasker(activity.getIntent(), popupDoneListener, 1);
            returnToAppTasker.a();
            a(activity, b2, new ActivityResult() { // from class: com.callapp.contacts.util.Activities.13
                @Override // com.callapp.contacts.manager.popup.ActivityResult
                public final void onActivityResult(Activity activity2, int i, int i2, Intent intent) {
                    ReturnToAppTasker.this.b();
                }
            });
            new Task() { // from class: com.callapp.contacts.util.Activities.14
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    FeedbackManager.get().a(Activities.getString(2131886814), Integer.valueOf(RomDetector.isMIUI() ? 16 : 48), 3);
                }
            }.schedule(2000);
        }
    }

    public static void c(Context context) {
        Intent openProtectedAppsIntent = getOpenProtectedAppsIntent();
        if (openProtectedAppsIntent != null) {
            a(context, openProtectedAppsIntent, (Bundle) null);
            new Task() { // from class: com.callapp.contacts.util.Activities.12
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    FeedbackManager.get().a(Activities.getString(2131887470), (Integer) 48, 3);
                }
            }.schedule(2000);
        }
    }

    public static void c(Context context, String str) {
        a(context, str, (Runnable) null);
    }

    public static boolean c(Activity activity) {
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
            if (StringUtils.d(next.activityInfo.packageName, new String[]{"com.android", "com.google.android"})) {
                intent.setComponent(new ComponentName(next.activityInfo.packageName, next.activityInfo.name));
                break;
            }
        }
        boolean a2 = a(intent);
        boolean z = a2;
        if (!a2) {
            intent = new Intent();
            intent.setType("vnd.android.cursor.dir/calls");
            Iterator<ResolveInfo> it3 = packageManager.queryIntentActivities(intent, 64).iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                ResolveInfo next2 = it3.next();
                if (StringUtils.d(next2.activityInfo.packageName, new String[]{"com.android", "com.google.android"})) {
                    intent.setComponent(new ComponentName(next2.activityInfo.packageName, next2.activityInfo.name));
                    break;
                }
            }
            z = a(intent);
        }
        if (z) {
            intent.setFlags(1350631424);
            try {
                c(activity, intent);
                return true;
            } catch (SecurityException e2) {
                CLog.a(Activities.class, e2);
                return false;
            }
        } else {
            AnalyticsManager.get().a(Constants.CONTACT_LIST, "Show stock call log failed");
            return false;
        }
    }

    private static boolean c(Context context, Intent intent) {
        if (PhoneStateManager.get().isIncomingCallRingingState()) {
            return false;
        }
        a(context, intent, (Bundle) null);
        return true;
    }

    private static String d(String str) {
        Throwable th;
        BufferedReader bufferedReader = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str))).getInputStream()), 1024);
        } catch (IOException e2) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            try {
                bufferedReader.close();
            } catch (IOException e3) {
            }
            return readLine;
        } catch (IOException e4) {
            if (bufferedReader == null) {
                return null;
            }
            try {
                bufferedReader.close();
                return null;
            } catch (IOException e5) {
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e6) {
                }
            }
            throw th;
        }
    }

    public static void d() {
        f15832b = -1;
        f15833c = -1;
    }

    public static void d(Activity activity) {
        a(activity, new Intent(CallAppApplication.get(), SettingsActivity.class).addFlags(262144), 15000);
    }

    public static boolean e() {
        return RomHelper.a(CallAppApplication.get());
    }

    public static boolean f() {
        return !Prefs.cd.get().booleanValue() && getOpenProtectedAppsIntent() != null;
    }

    public static boolean g() {
        return !Prefs.cc.get().booleanValue() && AutoStartPermissionHelper.getInstance().isAutoStartPermissionAvailable();
    }

    private static String getBackupString() {
        String[] strArr;
        StringBuilder sb = new StringBuilder();
        sb.append("completeBackupSettings: ");
        sb.append(Prefs.hS.get());
        sb.append(", BackupVia: ");
        sb.append(Prefs.hK.get());
        sb.append(", backupIntervalInDays: ");
        sb.append(Prefs.hL.get());
        sb.append(", backupVideoRingTones: ");
        sb.append(Prefs.hO.get());
        sb.append(", backupContacts: ");
        sb.append(Prefs.hM.get());
        sb.append(", backupCallLog: ");
        sb.append(Prefs.hN.get());
        sb.append(", backupRecording: ");
        sb.append(Prefs.hP.get());
        sb.append(", backupRetriesCount: ");
        sb.append(Prefs.hT.get());
        sb.append(", hasScheduleBackupJob: ");
        sb.append(Prefs.hV.get());
        if (Prefs.hX.get() != null) {
            sb.append(", lastBackupWorkerStartedDate: ");
            sb.append(BackupUtils.a(Prefs.hX.get(), "dd/MM/yyyy hh:mm:ss"));
        }
        if (Prefs.hJ.get() != null) {
            sb.append(", lastBackupDate: ");
            sb.append(BackupUtils.a(Prefs.hJ.get(), "dd/MM/yyyy hh:mm:ss"));
        }
        if (Prefs.hW.get() != null) {
            for (String str : Prefs.hW.get()) {
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
        Account[] a2 = new a(CallAppApplication.get()).a();
        Locale locale = Locale.ENGLISH;
        String str = Prefs.aR.get();
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
        String str6 = Prefs.aP.get();
        String simCountryIso = PhoneManager.get().getSimCountryIso();
        long totalInternalStorageSizeMB = IoUtils.getTotalInternalStorageSizeMB();
        long freeInternalStorageSizeMB = IoUtils.getFreeInternalStorageSizeMB();
        long totalExternalStorageSizeMB = IoUtils.getTotalExternalStorageSizeMB();
        long freeExternalStorageSizeMB = IoUtils.getFreeExternalStorageSizeMB();
        Boolean bool = Prefs.cJ.get();
        Boolean bool2 = Prefs.cK.get();
        Integer num2 = Prefs.df.get();
        String str7 = Prefs.dh.get();
        String str8 = Prefs.dN.get();
        String str9 = "true";
        String str10 = h() ? "true" : "false";
        if (!PhoneManager.get().isDefaultSystemPhoneApp()) {
            str9 = "false";
        }
        String str11 = Prefs.eI.get().booleanValue() ? "auto" : Prefs.eH.get().booleanValue() ? "manual" : "off";
        String recordConfiguration = new RecordConfiguration().toString();
        String permissionsString = PermissionManager.get().getPermissionsString();
        boolean f2 = f();
        boolean g2 = g();
        boolean b2 = b();
        boolean a3 = RomHelper.a(CallAppApplication.get());
        boolean isIgnoringBatteryOptimizations = PowerUtils.isIgnoringBatteryOptimizations();
        String installerPackageName = getInstallerPackageName();
        SimManager.DualSim dualSimOperators = SimManager.get().getDualSimOperators();
        Integer num3 = Prefs.R.get();
        Date date = Prefs.ai.get();
        String str12 = Prefs.aX.get();
        String encryptedToken = getEncryptedToken();
        if (a2 != null) {
            i = a2.length;
        }
        return String.format(locale, "\n\nCallApp Id: %s\nCallApp Version: %s (%d)\nManufacturer: %s\nModel: %s\nDevice: %s\nSDK Version: %s\nMOD: %s\nBOOTLOADER: %s\nOrigin: %s\nCountry code: %s\nSim country:%s\nInternal Disk Size: %smb\nInternal Free: %smb\nExternal Disk Size: %smb\nExternal Free: %smb\nIs premium: %s\nHas free store: %s\nCatalog version: %d\nChosen theme: %s\nChosen cover: %s\nLP: %s\nDefault phone app: %s\nCall recorder: %s (conf %s)\nGiven Permissions:\n%sNeeds Huawei protected apps permission: %s\nNeeds auto start permission: %s\nNotification access granted: %s\nCan draw overlays: %s\nIs Ignoring Battery optimizations: %s\nInstaller package name: %s\nDual sim: %s\nInstalled version %s\nLast update: %s\nRegistration method %s\nTK %s\nGmail Accounts: %s\nRecord Test Files: %s\nBackup: %s\n", str, version, Integer.valueOf(versionCode), str2, str3, str4, num, readableModVersion, str5, string, str6, simCountryIso, Long.valueOf(totalInternalStorageSizeMB), Long.valueOf(freeInternalStorageSizeMB), Long.valueOf(totalExternalStorageSizeMB), Long.valueOf(freeExternalStorageSizeMB), bool, bool2, num2, str7, str8, str10, str9, str11, recordConfiguration, permissionsString, Boolean.valueOf(f2), Boolean.valueOf(g2), Boolean.valueOf(b2), Boolean.valueOf(a3), Boolean.valueOf(isIgnoringBatteryOptimizations), installerPackageName, dualSimOperators, num3, date, str12, encryptedToken, Integer.valueOf(i), Long.valueOf(RecorderTestDataManager.getAllDoneRecorderTests()), getBackupString());
    }

    public static DisplayMetrics getDisplayMetrics() {
        if (f15831a == null) {
            f15831a = CallAppApplication.get().getResources().getDisplayMetrics();
        }
        return f15831a;
    }

    public static String getEncodedDeviceId() {
        String deviceId = PhoneManager.get().getDeviceId();
        if (StringUtils.a((CharSequence) deviceId)) {
            return null;
        }
        Base64Utils.getInstance();
        return Base64.a(deviceId.getBytes(StandardCharsets.UTF_8));
    }

    private static String getEncryptedToken() {
        int length;
        String str = Prefs.aV.get();
        String str2 = str;
        if (StringUtils.b((CharSequence) str)) {
            str2 = str;
            if (str.length() > 3) {
                str2 = StringUtils.a(str, 2, 3) + StringUtils.a(str, length - 1, length);
            }
        }
        return str2;
    }

    public static String getInstallerPackageName() {
        String installerPackageName = CallAppApplication.get().getPackageManager().getInstallerPackageName(CallAppApplication.get().getPackageName());
        return StringUtils.b((CharSequence) installerPackageName) ? installerPackageName : "";
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
                i = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
            }
        }
        return i;
    }

    public static Intent getNotificationListenersSettingsScreenIntent() {
        Intent intent = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
        if (a(intent)) {
            return intent;
        }
        Intent intent2 = new Intent("android.settings.SOUND_SETTINGS");
        if (a(intent2)) {
            return intent2;
        }
        Intent intent3 = new Intent("android.settings.SETTINGS");
        if (a(intent3)) {
            return intent3;
        }
        return null;
    }

    private static Intent getOpenProtectedAppsIntent() {
        if (Build.VERSION.SDK_INT >= 24 || !Payload.SOURCE_HUAWEI.equalsIgnoreCase(Build.MANUFACTURER)) {
            return null;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.systemmanager.optimize.process.ProtectActivity"));
        if (a(intent)) {
            return intent;
        }
        return null;
    }

    public static String getReadableModVersion() {
        String d2 = d("ro.modversion");
        String str = d2;
        if (StringUtils.a((CharSequence) d2)) {
            str = "Unknown";
        }
        return str;
    }

    public static int getScreenHeight(int i) {
        return i != 1 ? i != 2 ? 0 : getScreenShorterAxis() : getScreenLongerAxis();
    }

    private static int getScreenLongerAxis() {
        if (f15833c <= 0) {
            f15833c = Math.max(getDisplayMetrics().heightPixels, getDisplayMetrics().widthPixels);
        }
        return f15833c;
    }

    public static int getScreenOrientation() {
        return CallAppApplication.get().getResources().getConfiguration().orientation;
    }

    private static int getScreenShorterAxis() {
        if (f15832b <= 0) {
            f15832b = Math.min(getDisplayMetrics().heightPixels, getDisplayMetrics().widthPixels);
        }
        return f15832b;
    }

    public static int getScreenWidth(int i) {
        return i != 1 ? i != 2 ? 0 : getScreenLongerAxis() : getScreenShorterAxis();
    }

    public static int getStatusBarHeight() {
        int i = g;
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
        g = i4;
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

    private static boolean h() {
        boolean z;
        try {
            if (Prefs.n.get().booleanValue()) {
                return false;
            }
            CallAppApplication callAppApplication = CallAppApplication.get();
            Boolean bool = e;
            if (bool == null) {
                List asList = Arrays.asList(getString(2131886246), getString(2131886247), getString(2131886248), getString(2131886249), getString(2131886250));
                Signature[] signatureArr = callAppApplication.getPackageManager().getPackageInfo(callAppApplication.getPackageName(), 64).signatures;
                int length = signatureArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        e = Boolean.FALSE;
                        z = false;
                        break;
                    }
                    Signature signature = signatureArr[i];
                    MessageDigest instance = MessageDigest.getInstance("SHA");
                    instance.update(signature.toByteArray());
                    if (CollectionUtils.a(asList, android.util.Base64.encodeToString(instance.digest(), 0).trim())) {
                        e = Boolean.TRUE;
                        z = true;
                        break;
                    }
                    i++;
                }
            } else {
                z = bool.booleanValue();
            }
            if (z) {
                return isLuckyPatcherPackageExist();
            }
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0067, code lost:
        if (r8 != false) goto L_0x006a;
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
            if (r0 != 0) goto L_0x006a
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
        L_0x0022:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0062
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
            if (r0 == 0) goto L_0x0022
            r0 = r7
            java.lang.String r0 = r0.name
            java.lang.Class<com.callapp.contacts.service.CallAppAccessibilityService> r1 = com.callapp.contacts.service.CallAppAccessibilityService.class
            java.lang.String r1 = r1.getName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0022
            r0 = 1
            r8 = r0
            goto L_0x0065
        L_0x0062:
            r0 = 0
            r8 = r0
        L_0x0065:
            r0 = r8
            if (r0 == 0) goto L_0x006c
        L_0x006a:
            r0 = 1
            r4 = r0
        L_0x006c:
            r0 = r4
            if (r0 == 0) goto L_0x0079
            com.callapp.contacts.manager.preferences.prefs.BooleanPref r0 = com.callapp.contacts.manager.preferences.Prefs.eZ
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.set(r1)
        L_0x0079:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.Activities.isCallAppAccessibilityServiceEnabled():boolean");
    }

    public static boolean isDataEnabled() {
        boolean z = true;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) Singletons.a("connectivity");
            Method declaredMethod = Class.forName(connectivityManager.getClass().getName()).getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            z = ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
        } catch (Exception e2) {
        }
        return z;
    }

    private static boolean isLuckyPatcherPackageExist() throws UnsupportedEncodingException {
        for (String str : CallAppApplication.get().getResources().getStringArray(2130903055)) {
            if (b(new String(android.util.Base64.decode(str, 0), StandardCharsets.UTF_8))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNotificationListenerServiceSupportedOnDevice() {
        if (f == null) {
            f = Boolean.valueOf(!((ActivityManager) CallAppApplication.get().getSystemService("activity")).isLowRamDevice());
        }
        return f.booleanValue();
    }

    public static boolean isOrientationLandscape() {
        return getScreenOrientation() == 2;
    }

    public static boolean isStoreNameGooglePlay() {
        return Constants.GOOGLE_PLAY_STORE_NAME.equalsIgnoreCase(getString(2131887752));
    }

    public static void setKeyguardDismissAndScreenWindowFlags(Activity activity) {
        if (activity != null) {
            activity.getWindow().addFlags(6848512);
            if (Build.VERSION.SDK_INT >= 26 && Build.VERSION.SDK_INT >= 27) {
                activity.setShowWhenLocked(true);
                activity.setTurnScreenOn(true);
            }
        }
    }
}
