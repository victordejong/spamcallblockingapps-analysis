package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsSessionToken;
import java.util.List;
import p065f.p066a.p067a.AbstractC4232a;
import p065f.p066a.p067a.AbstractC4235b;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsSession.class */
public final class CustomTabsSession {
    public static final String TAG = "CustomTabsSession";
    public final AbstractC4232a mCallback;
    public final ComponentName mComponentName;
    public final Object mLock = new Object();
    public final AbstractC4235b mService;

    public CustomTabsSession(AbstractC4235b bVar, AbstractC4232a aVar, ComponentName componentName) {
        this.mService = bVar;
        this.mCallback = aVar;
        this.mComponentName = componentName;
    }

    @NonNull
    @VisibleForTesting
    public static CustomTabsSession createMockSessionForTesting(@NonNull ComponentName componentName) {
        return new CustomTabsSession(null, new CustomTabsSessionToken.MockCallback(), componentName);
    }

    public IBinder getBinder() {
        return this.mCallback.asBinder();
    }

    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    public boolean mayLaunchUrl(Uri uri, Bundle bundle, List<Bundle> list) {
        try {
            return this.mService.mayLaunchUrl(this.mCallback, uri, bundle, list);
        } catch (RemoteException e) {
            return false;
        }
    }

    public int postMessage(String str, Bundle bundle) {
        int postMessage;
        synchronized (this.mLock) {
            try {
                postMessage = this.mService.postMessage(this.mCallback, str, bundle);
            } catch (RemoteException e) {
                return -2;
            }
        }
        return postMessage;
    }

    public boolean requestPostMessageChannel(Uri uri) {
        try {
            return this.mService.requestPostMessageChannel(this.mCallback, uri);
        } catch (RemoteException e) {
            return false;
        }
    }

    public boolean setActionButton(@NonNull Bitmap bitmap, @NonNull String str) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.support.customtabs.customaction.ICON", bitmap);
        bundle.putString("android.support.customtabs.customaction.DESCRIPTION", str);
        Bundle bundle2 = new Bundle();
        bundle2.putBundle("android.support.customtabs.extra.ACTION_BUTTON_BUNDLE", bundle);
        try {
            return this.mService.updateVisuals(this.mCallback, bundle2);
        } catch (RemoteException e) {
            return false;
        }
    }

    public boolean setSecondaryToolbarViews(@Nullable RemoteViews remoteViews, @Nullable int[] iArr, @Nullable PendingIntent pendingIntent) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.support.customtabs.extra.EXTRA_REMOTEVIEWS", remoteViews);
        bundle.putIntArray("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS", iArr);
        bundle.putParcelable("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT", pendingIntent);
        try {
            return this.mService.updateVisuals(this.mCallback, bundle);
        } catch (RemoteException e) {
            return false;
        }
    }

    @Deprecated
    public boolean setToolbarItem(int i, @NonNull Bitmap bitmap, @NonNull String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("android.support.customtabs.customaction.ID", i);
        bundle.putParcelable("android.support.customtabs.customaction.ICON", bitmap);
        bundle.putString("android.support.customtabs.customaction.DESCRIPTION", str);
        Bundle bundle2 = new Bundle();
        bundle2.putBundle("android.support.customtabs.extra.ACTION_BUTTON_BUNDLE", bundle);
        try {
            return this.mService.updateVisuals(this.mCallback, bundle2);
        } catch (RemoteException e) {
            return false;
        }
    }

    public boolean validateRelationship(int i, @NonNull Uri uri, @Nullable Bundle bundle) {
        if (i < 1 || i > 2) {
            return false;
        }
        try {
            return this.mService.validateRelationship(this.mCallback, i, uri, bundle);
        } catch (RemoteException e) {
            return false;
        }
    }
}
