package com.tenor.android.core.service;

import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/service/AaidInfo.class */
public final class AaidInfo {
    public static final int AAID_DENIED = -1;
    public static final int AAID_FAILURE = -4;
    public static final int AAID_FAILURE_NO_AAID_LIBRARY = -3;
    public static final int AAID_FAILURE_NO_GOOGLE_PLAY = -2;
    public static final int AAID_GRANTED = 0;
    private final String mAdvertisingId;
    private final boolean mLimitAdTrackingEnabled;
    private final int mState;

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3-dex2jar.jar:com/tenor/android/core/service/AaidInfo$State.class */
    public @interface State {
    }

    public AaidInfo(@State int i) {
        this("", false, i);
    }

    public AaidInfo(String str, boolean z) {
        this(str, z, (TextUtils.isEmpty(str) || z) ? -1 : 0);
    }

    private AaidInfo(String str, boolean z, int i) {
        this.mAdvertisingId = StringConstant.getOrEmpty(str);
        this.mLimitAdTrackingEnabled = z;
        this.mState = i;
    }

    public String getId() {
        return this.mAdvertisingId;
    }

    @State
    public int getState() {
        return this.mState;
    }

    public boolean isLimitAdTrackingEnabled() {
        return this.mLimitAdTrackingEnabled;
    }
}
