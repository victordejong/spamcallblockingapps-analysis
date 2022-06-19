package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.internal.Validate;
/* loaded from: classes-dex2jar.jar:com/facebook/ProfileTracker.class */
public abstract class ProfileTracker {
    private boolean isTracking = false;
    private final BroadcastReceiver receiver = new ProfileBroadcastReceiver();
    private final LocalBroadcastManager broadcastManager = LocalBroadcastManager.getInstance(FacebookSdk.getApplicationContext());

    /* loaded from: classes-dex2jar.jar:com/facebook/ProfileTracker$ProfileBroadcastReceiver.class */
    private class ProfileBroadcastReceiver extends BroadcastReceiver {
        private ProfileBroadcastReceiver() {
            ProfileTracker.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (ProfileManager.ACTION_CURRENT_PROFILE_CHANGED.equals(intent.getAction())) {
                ProfileTracker.this.onCurrentProfileChanged((Profile) intent.getParcelableExtra(ProfileManager.EXTRA_OLD_PROFILE), (Profile) intent.getParcelableExtra(ProfileManager.EXTRA_NEW_PROFILE));
            }
        }
    }

    public ProfileTracker() {
        Validate.sdkInitialized();
        startTracking();
    }

    private void addBroadcastReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ProfileManager.ACTION_CURRENT_PROFILE_CHANGED);
        this.broadcastManager.registerReceiver(this.receiver, intentFilter);
    }

    public boolean isTracking() {
        return this.isTracking;
    }

    protected abstract void onCurrentProfileChanged(Profile profile, Profile profile2);

    public void startTracking() {
        if (this.isTracking) {
            return;
        }
        addBroadcastReceiver();
        this.isTracking = true;
    }

    public void stopTracking() {
        if (!this.isTracking) {
            return;
        }
        this.broadcastManager.unregisterReceiver(this.receiver);
        this.isTracking = false;
    }
}
