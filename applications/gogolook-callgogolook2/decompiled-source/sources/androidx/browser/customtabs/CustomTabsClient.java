package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.List;
import p065f.p066a.p067a.AbstractC4232a;
import p065f.p066a.p067a.AbstractC4235b;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsClient.class */
public class CustomTabsClient {
    public final AbstractC4235b mService;
    public final ComponentName mServiceComponentName;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public CustomTabsClient(AbstractC4235b bVar, ComponentName componentName) {
        this.mService = bVar;
        this.mServiceComponentName = componentName;
    }

    public static boolean bindCustomTabsService(Context context, String str, CustomTabsServiceConnection customTabsServiceConnection) {
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, customTabsServiceConnection, 33);
    }

    public static boolean connectAndInitialize(Context context, String str) {
        if (str == null) {
            return false;
        }
        final Context applicationContext = context.getApplicationContext();
        try {
            return bindCustomTabsService(applicationContext, str, new CustomTabsServiceConnection() { // from class: androidx.browser.customtabs.CustomTabsClient.1
                @Override // androidx.browser.customtabs.CustomTabsServiceConnection
                public final void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
                    customTabsClient.warmup(0L);
                    applicationContext.unbindService(this);
                }

                @Override // android.content.ServiceConnection
                public final void onServiceDisconnected(ComponentName componentName) {
                }
            });
        } catch (SecurityException e) {
            return false;
        }
    }

    public static String getPackageName(Context context, @Nullable List<String> list) {
        return getPackageName(context, list, false);
    }

    public static String getPackageName(Context context, @Nullable List<String> list, boolean z) {
        PackageManager packageManager = context.getPackageManager();
        List<String> arrayList = list == null ? new ArrayList<>() : list;
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://"));
        List<String> list2 = arrayList;
        if (!z) {
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            list2 = arrayList;
            if (resolveActivity != null) {
                String str = resolveActivity.activityInfo.packageName;
                list2 = new ArrayList<>(arrayList.size() + 1);
                list2.add(str);
                if (list != null) {
                    list2.addAll(list);
                }
            }
        }
        Intent intent2 = new Intent("android.support.customtabs.action.CustomTabsService");
        for (String str2 : list2) {
            intent2.setPackage(str2);
            if (packageManager.resolveService(intent2, 0) != null) {
                return str2;
            }
        }
        return null;
    }

    public Bundle extraCommand(String str, Bundle bundle) {
        try {
            return this.mService.extraCommand(str, bundle);
        } catch (RemoteException e) {
            return null;
        }
    }

    public CustomTabsSession newSession(final CustomTabsCallback customTabsCallback) {
        AbstractC4232a.AbstractBinderC4233a aVar = new AbstractC4232a.AbstractBinderC4233a() { // from class: androidx.browser.customtabs.CustomTabsClient.2
            public Handler mHandler = new Handler(Looper.getMainLooper());

            @Override // p065f.p066a.p067a.AbstractC4232a
            public void extraCallback(final String str, final Bundle bundle) throws RemoteException {
                if (customTabsCallback != null) {
                    this.mHandler.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            customTabsCallback.extraCallback(str, bundle);
                        }
                    });
                }
            }

            @Override // p065f.p066a.p067a.AbstractC4232a
            public void onMessageChannelReady(final Bundle bundle) throws RemoteException {
                if (customTabsCallback != null) {
                    this.mHandler.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.2.3
                        @Override // java.lang.Runnable
                        public void run() {
                            customTabsCallback.onMessageChannelReady(bundle);
                        }
                    });
                }
            }

            @Override // p065f.p066a.p067a.AbstractC4232a
            public void onNavigationEvent(final int i, final Bundle bundle) {
                if (customTabsCallback != null) {
                    this.mHandler.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            customTabsCallback.onNavigationEvent(i, bundle);
                        }
                    });
                }
            }

            @Override // p065f.p066a.p067a.AbstractC4232a
            public void onPostMessage(final String str, final Bundle bundle) throws RemoteException {
                if (customTabsCallback != null) {
                    this.mHandler.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.2.4
                        @Override // java.lang.Runnable
                        public void run() {
                            customTabsCallback.onPostMessage(str, bundle);
                        }
                    });
                }
            }

            @Override // p065f.p066a.p067a.AbstractC4232a
            public void onRelationshipValidationResult(final int i, final Uri uri, final boolean z, @Nullable final Bundle bundle) throws RemoteException {
                if (customTabsCallback != null) {
                    this.mHandler.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.2.5
                        @Override // java.lang.Runnable
                        public void run() {
                            customTabsCallback.onRelationshipValidationResult(i, uri, z, bundle);
                        }
                    });
                }
            }
        };
        CustomTabsSession customTabsSession = null;
        if (!this.mService.newSession(aVar)) {
            return null;
        }
        customTabsSession = new CustomTabsSession(this.mService, aVar, this.mServiceComponentName);
        return customTabsSession;
    }

    public boolean warmup(long j) {
        try {
            return this.mService.warmup(j);
        } catch (RemoteException e) {
            return false;
        }
    }
}
