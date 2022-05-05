package com.android.contacts.util;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.os.Vibrator;
import android.provider.Settings;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/HapticFeedback.class */
public class HapticFeedback {
    private static final long DURATION = 10;
    private static final int NO_REPEAT = -1;
    private static final String TAG = "HapticFeedback";
    private ContentResolver mContentResolver;
    private Context mContext;
    private boolean mEnabled;
    private long[] mHapticPattern;
    private boolean mSettingEnabled;
    private Settings.System mSystemSettings;
    private Vibrator mVibrator;

    public void checkSystemSetting() {
        if (this.mEnabled) {
            try {
                this.mSettingEnabled = Settings.System.getInt(this.mContentResolver, "haptic_feedback_enabled", 0) != 0;
            } catch (Resources.NotFoundException e) {
                Log.e(TAG, "Could not retrieve system setting.", e);
                this.mSettingEnabled = false;
            }
        }
    }

    public void init(Context context, boolean z) {
        this.mEnabled = z;
        if (z) {
            this.mVibrator = (Vibrator) context.getSystemService("vibrator");
            this.mHapticPattern = new long[]{0, DURATION, 20, 30};
            this.mSystemSettings = new Settings.System();
            this.mContentResolver = context.getContentResolver();
        }
    }

    public void vibrate() {
        if (this.mEnabled && this.mSettingEnabled) {
            if (this.mHapticPattern == null || this.mHapticPattern.length != 1) {
                this.mVibrator.vibrate(this.mHapticPattern, -1);
            } else {
                this.mVibrator.vibrate(this.mHapticPattern[0]);
            }
        }
    }
}
