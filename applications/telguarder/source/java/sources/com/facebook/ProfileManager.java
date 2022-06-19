package com.facebook;

import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
/* loaded from: classes-dex2jar.jar:com/facebook/ProfileManager.class */
public final class ProfileManager {
    public static final String ACTION_CURRENT_PROFILE_CHANGED = "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED";
    public static final String EXTRA_NEW_PROFILE = "com.facebook.sdk.EXTRA_NEW_PROFILE";
    public static final String EXTRA_OLD_PROFILE = "com.facebook.sdk.EXTRA_OLD_PROFILE";
    private static volatile ProfileManager instance;
    private Profile currentProfile;
    private final LocalBroadcastManager localBroadcastManager;
    private final ProfileCache profileCache;

    ProfileManager(LocalBroadcastManager localBroadcastManager, ProfileCache profileCache) {
        Validate.notNull(localBroadcastManager, "localBroadcastManager");
        Validate.notNull(profileCache, "profileCache");
        this.localBroadcastManager = localBroadcastManager;
        this.profileCache = profileCache;
    }

    public static ProfileManager getInstance() {
        if (instance == null) {
            synchronized (ProfileManager.class) {
                try {
                    if (instance == null) {
                        instance = new ProfileManager(LocalBroadcastManager.getInstance(FacebookSdk.getApplicationContext()), new ProfileCache());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private void sendCurrentProfileChangedBroadcast(Profile profile, Profile profile2) {
        Intent intent = new Intent(ACTION_CURRENT_PROFILE_CHANGED);
        intent.putExtra(EXTRA_OLD_PROFILE, profile);
        intent.putExtra(EXTRA_NEW_PROFILE, profile2);
        this.localBroadcastManager.sendBroadcast(intent);
    }

    private void setCurrentProfile(Profile profile, boolean z) {
        Profile profile2 = this.currentProfile;
        this.currentProfile = profile;
        if (z) {
            if (profile != null) {
                this.profileCache.save(profile);
            } else {
                this.profileCache.clear();
            }
        }
        if (!Utility.areObjectsEqual(profile2, profile)) {
            sendCurrentProfileChangedBroadcast(profile2, profile);
        }
    }

    public Profile getCurrentProfile() {
        return this.currentProfile;
    }

    public boolean loadCurrentProfile() {
        Profile load = this.profileCache.load();
        if (load != null) {
            setCurrentProfile(load, false);
            return true;
        }
        return false;
    }

    public void setCurrentProfile(Profile profile) {
        setCurrentProfile(profile, true);
    }
}
