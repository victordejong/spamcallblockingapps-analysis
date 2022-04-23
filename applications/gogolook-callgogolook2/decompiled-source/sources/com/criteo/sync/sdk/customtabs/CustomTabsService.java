package com.criteo.sync.sdk.customtabs;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.collection.ArrayMap;
import com.criteo.sync.sdk.customtabs.ICustomTabsService;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/customtabs/CustomTabsService.class */
public abstract class CustomTabsService extends Service {
    public static final String ACTION_CUSTOM_TABS_CONNECTION = "android.support.customtabs.action.CustomTabsService";
    public static final String KEY_URL = "android.support.customtabs.otherurls.URL";
    public static final int RELATION_HANDLE_ALL_URLS = 2;
    public static final int RELATION_USE_AS_ORIGIN = 1;
    public static final int RESULT_FAILURE_DISALLOWED = -1;
    public static final int RESULT_FAILURE_MESSAGING_ERROR = -3;
    public static final int RESULT_FAILURE_REMOTE_ERROR = -2;
    public static final int RESULT_SUCCESS = 0;
    public final Map<IBinder, IBinder.DeathRecipient> mDeathRecipientMap = new ArrayMap();
    public ICustomTabsService.Stub mBinder = new ICustomTabsService.Stub() { // from class: com.criteo.sync.sdk.customtabs.CustomTabsService.1
        @Override // com.criteo.sync.sdk.customtabs.ICustomTabsService
        public Bundle extraCommand(String str, Bundle bundle) {
            return CustomTabsService.this.extraCommand(str, bundle);
        }

        @Override // com.criteo.sync.sdk.customtabs.ICustomTabsService
        public boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List<Bundle> list) {
            return CustomTabsService.this.mayLaunchUrl(new CustomTabsSessionToken(iCustomTabsCallback), uri, bundle, list);
        }

        @Override // com.criteo.sync.sdk.customtabs.ICustomTabsService
        public boolean newSession(ICustomTabsCallback iCustomTabsCallback) {
            final CustomTabsSessionToken customTabsSessionToken = new CustomTabsSessionToken(iCustomTabsCallback);
            try {
                IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: com.criteo.sync.sdk.customtabs.CustomTabsService.1.1
                    @Override // android.os.IBinder.DeathRecipient
                    public void binderDied() {
                        CustomTabsService.this.cleanUpSession(customTabsSessionToken);
                    }
                };
                synchronized (CustomTabsService.this.mDeathRecipientMap) {
                    iCustomTabsCallback.asBinder().linkToDeath(deathRecipient, 0);
                    CustomTabsService.this.mDeathRecipientMap.put(iCustomTabsCallback.asBinder(), deathRecipient);
                }
                return CustomTabsService.this.newSession(customTabsSessionToken);
            } catch (RemoteException e) {
                return false;
            }
        }

        @Override // com.criteo.sync.sdk.customtabs.ICustomTabsService
        public int postMessage(ICustomTabsCallback iCustomTabsCallback, String str, Bundle bundle) {
            return CustomTabsService.this.postMessage(new CustomTabsSessionToken(iCustomTabsCallback), str, bundle);
        }

        @Override // com.criteo.sync.sdk.customtabs.ICustomTabsService
        public boolean requestPostMessageChannel(ICustomTabsCallback iCustomTabsCallback, Uri uri) {
            return CustomTabsService.this.requestPostMessageChannel(new CustomTabsSessionToken(iCustomTabsCallback), uri);
        }

        @Override // com.criteo.sync.sdk.customtabs.ICustomTabsService
        public boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
            return CustomTabsService.this.updateVisuals(new CustomTabsSessionToken(iCustomTabsCallback), bundle);
        }

        @Override // com.criteo.sync.sdk.customtabs.ICustomTabsService
        public boolean validateRelationship(ICustomTabsCallback iCustomTabsCallback, int i, Uri uri, Bundle bundle) {
            return CustomTabsService.this.validateRelationship(new CustomTabsSessionToken(iCustomTabsCallback), i, uri, bundle);
        }

        @Override // com.criteo.sync.sdk.customtabs.ICustomTabsService
        public boolean warmup(long j) {
            return CustomTabsService.this.warmup(j);
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/customtabs/CustomTabsService$Relation.class */
    public @interface Relation {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/customtabs/CustomTabsService$Result.class */
    public @interface Result {
    }

    public boolean cleanUpSession(CustomTabsSessionToken customTabsSessionToken) {
        try {
            synchronized (this.mDeathRecipientMap) {
                IBinder callbackBinder = customTabsSessionToken.getCallbackBinder();
                callbackBinder.unlinkToDeath(this.mDeathRecipientMap.get(callbackBinder), 0);
                this.mDeathRecipientMap.remove(callbackBinder);
            }
            return true;
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    public abstract Bundle extraCommand(String str, Bundle bundle);

    public abstract boolean mayLaunchUrl(CustomTabsSessionToken customTabsSessionToken, Uri uri, Bundle bundle, List<Bundle> list);

    public abstract boolean newSession(CustomTabsSessionToken customTabsSessionToken);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    public abstract int postMessage(CustomTabsSessionToken customTabsSessionToken, String str, Bundle bundle);

    public abstract boolean requestPostMessageChannel(CustomTabsSessionToken customTabsSessionToken, Uri uri);

    public abstract boolean updateVisuals(CustomTabsSessionToken customTabsSessionToken, Bundle bundle);

    public abstract boolean validateRelationship(CustomTabsSessionToken customTabsSessionToken, int i, Uri uri, Bundle bundle);

    public abstract boolean warmup(long j);
}
