package androidx.browser.customtabs;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.app.BundleCompat;
import p065f.p066a.p067a.AbstractC4232a;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsSessionToken.class */
public class CustomTabsSessionToken {
    public static final String TAG = "CustomTabsSessionToken";
    public final CustomTabsCallback mCallback = new CustomTabsCallback() { // from class: androidx.browser.customtabs.CustomTabsSessionToken.1
        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void extraCallback(String str, Bundle bundle) {
            try {
                CustomTabsSessionToken.this.mCallbackBinder.extraCallback(str, bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onMessageChannelReady(Bundle bundle) {
            try {
                CustomTabsSessionToken.this.mCallbackBinder.onMessageChannelReady(bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onNavigationEvent(int i, Bundle bundle) {
            try {
                CustomTabsSessionToken.this.mCallbackBinder.onNavigationEvent(i, bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onPostMessage(String str, Bundle bundle) {
            try {
                CustomTabsSessionToken.this.mCallbackBinder.onPostMessage(str, bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
            try {
                CustomTabsSessionToken.this.mCallbackBinder.onRelationshipValidationResult(i, uri, z, bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }
    };
    public final AbstractC4232a mCallbackBinder;

    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsSessionToken$MockCallback.class */
    public static class MockCallback extends AbstractC4232a.AbstractBinderC4233a {
        @Override // p065f.p066a.p067a.AbstractC4232a.AbstractBinderC4233a, android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // p065f.p066a.p067a.AbstractC4232a
        public void extraCallback(String str, Bundle bundle) {
        }

        @Override // p065f.p066a.p067a.AbstractC4232a
        public void onMessageChannelReady(Bundle bundle) {
        }

        @Override // p065f.p066a.p067a.AbstractC4232a
        public void onNavigationEvent(int i, Bundle bundle) {
        }

        @Override // p065f.p066a.p067a.AbstractC4232a
        public void onPostMessage(String str, Bundle bundle) {
        }

        @Override // p065f.p066a.p067a.AbstractC4232a
        public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
        }
    }

    public CustomTabsSessionToken(AbstractC4232a aVar) {
        this.mCallbackBinder = aVar;
    }

    @NonNull
    public static CustomTabsSessionToken createMockSessionTokenForTesting() {
        return new CustomTabsSessionToken(new MockCallback());
    }

    public static CustomTabsSessionToken getSessionTokenFromIntent(Intent intent) {
        IBinder binder = BundleCompat.getBinder(intent.getExtras(), "android.support.customtabs.extra.SESSION");
        if (binder == null) {
            return null;
        }
        return new CustomTabsSessionToken(AbstractC4232a.AbstractBinderC4233a.asInterface(binder));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CustomTabsSessionToken)) {
            return false;
        }
        return ((CustomTabsSessionToken) obj).getCallbackBinder().equals(this.mCallbackBinder.asBinder());
    }

    public CustomTabsCallback getCallback() {
        return this.mCallback;
    }

    public IBinder getCallbackBinder() {
        return this.mCallbackBinder.asBinder();
    }

    public int hashCode() {
        return getCallbackBinder().hashCode();
    }

    public boolean isAssociatedWith(CustomTabsSession customTabsSession) {
        return customTabsSession.getBinder().equals(this.mCallbackBinder);
    }
}
