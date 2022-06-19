package com.android.mms.layout;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/mms/layout/LayoutManager.class */
public class LayoutManager {
    private static final boolean DEBUG = false;
    private static final boolean LOCAL_LOGV = false;
    private static final String TAG = "LayoutManager";
    private static LayoutManager sInstance;
    private final Context mContext;
    private LayoutParameters mLayoutParams;

    private LayoutManager(Context context) {
        this.mContext = context;
        initLayoutParameters(context.getResources().getConfiguration());
    }

    public static LayoutManager getInstance() {
        LayoutManager layoutManager = sInstance;
        if (layoutManager != null) {
            return layoutManager;
        }
        throw new IllegalStateException("Uninitialized.");
    }

    private LayoutParameters getLayoutParameters(int i) {
        if (i != 10) {
            if (i == 11) {
                return new HVGALayoutParameters(this.mContext, 11);
            }
            throw new IllegalArgumentException("Unsupported display type: " + i);
        }
        return new HVGALayoutParameters(this.mContext, 10);
    }

    public static void init(Context context) {
        if (sInstance != null) {
            Log.w(TAG, "Already initialized.");
        }
        sInstance = new LayoutManager(context);
    }

    private void initLayoutParameters(Configuration configuration) {
        this.mLayoutParams = getLayoutParameters(configuration.orientation == 1 ? 11 : 10);
    }

    public int getLayoutHeight() {
        return this.mLayoutParams.getHeight();
    }

    public LayoutParameters getLayoutParameters() {
        return this.mLayoutParams;
    }

    public int getLayoutType() {
        return this.mLayoutParams.getType();
    }

    public int getLayoutWidth() {
        return this.mLayoutParams.getWidth();
    }

    public void onConfigurationChanged(Configuration configuration) {
        initLayoutParameters(configuration);
    }
}
