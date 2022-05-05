package com.rey.material.app;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import android.util.AttributeSet;
import android.util.SparseArray;
import com.rey.material.C1686R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/rey/material/app/ThemeManager.class */
public class ThemeManager {
    private static final String KEY_THEME = "theme";
    private static final String PREF = "theme.pref";
    public static final int THEME_UNDEFINED = Integer.MIN_VALUE;
    private static volatile ThemeManager mInstance;
    private Context mContext;
    private int mCurrentTheme;
    private EventDispatcher mDispatcher;
    private SparseArray<int[]> mStyles = new SparseArray<>();
    private int mThemeCount;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ThemeManager$EventDispatcher.class */
    public interface EventDispatcher {
        void dispatchThemeChanged(int i);

        void registerListener(OnThemeChangedListener onThemeChangedListener);

        void unregisterListener(OnThemeChangedListener onThemeChangedListener);
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ThemeManager$OnThemeChangedEvent.class */
    public static class OnThemeChangedEvent {
        public final int theme;

        public OnThemeChangedEvent(int i) {
            this.theme = i;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ThemeManager$OnThemeChangedListener.class */
    public interface OnThemeChangedListener {
        void onThemeChanged(@Nullable OnThemeChangedEvent onThemeChangedEvent);
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/ThemeManager$SimpleDispatcher.class */
    public static class SimpleDispatcher implements EventDispatcher {
        ArrayList<WeakReference<OnThemeChangedListener>> mListeners = new ArrayList<>();

        @Override // com.rey.material.app.ThemeManager.EventDispatcher
        public void dispatchThemeChanged(int i) {
            OnThemeChangedEvent onThemeChangedEvent = new OnThemeChangedEvent(i);
            for (int size = this.mListeners.size() - 1; size >= 0; size--) {
                WeakReference<OnThemeChangedListener> weakReference = this.mListeners.get(size);
                if (weakReference.get() == null) {
                    this.mListeners.remove(size);
                } else {
                    weakReference.get().onThemeChanged(onThemeChangedEvent);
                }
            }
        }

        @Override // com.rey.material.app.ThemeManager.EventDispatcher
        public void registerListener(OnThemeChangedListener onThemeChangedListener) {
            boolean z = false;
            for (int size = this.mListeners.size() - 1; size >= 0; size--) {
                WeakReference<OnThemeChangedListener> weakReference = this.mListeners.get(size);
                if (weakReference.get() == null) {
                    this.mListeners.remove(size);
                } else if (weakReference.get() == onThemeChangedListener) {
                    z = true;
                }
            }
            if (!z) {
                this.mListeners.add(new WeakReference<>(onThemeChangedListener));
            }
        }

        @Override // com.rey.material.app.ThemeManager.EventDispatcher
        public void unregisterListener(OnThemeChangedListener onThemeChangedListener) {
            for (int size = this.mListeners.size() - 1; size >= 0; size--) {
                WeakReference<OnThemeChangedListener> weakReference = this.mListeners.get(size);
                if (weakReference.get() == null || weakReference.get() == onThemeChangedListener) {
                    this.mListeners.remove(size);
                }
            }
        }
    }

    private void dispatchThemeChanged(int i) {
        if (this.mDispatcher != null) {
            this.mDispatcher.dispatchThemeChanged(i);
        }
    }

    public static ThemeManager getInstance() {
        if (mInstance == null) {
            synchronized (ThemeManager.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new ThemeManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return mInstance;
    }

    private SharedPreferences getSharedPreferences(Context context) {
        return context == null ? null : context.getSharedPreferences(PREF, 0);
    }

    public static int getStyleId(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.ThemableView, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(C1686R.styleable.ThemableView_v_styleId, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    private int[] getStyleList(int i) {
        if (this.mStyles == null) {
            return null;
        }
        int[] iArr = this.mStyles.get(i);
        int[] iArr2 = iArr;
        if (iArr == null) {
            iArr2 = loadStyleList(this.mContext, i);
            this.mStyles.put(i, iArr2);
        }
        return iArr2;
    }

    public static void init(Context context, int i, int i2, @Nullable EventDispatcher eventDispatcher) {
        getInstance().setup(context, i, i2, eventDispatcher);
    }

    private int[] loadStyleList(Context context, int i) {
        if (context == null) {
            return null;
        }
        TypedArray obtainTypedArray = context.getResources().obtainTypedArray(i);
        int[] iArr = new int[obtainTypedArray.length()];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = obtainTypedArray.getResourceId(i2, 0);
        }
        obtainTypedArray.recycle();
        return iArr;
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getCurrentStyle(int i) {
        return getStyle(i, this.mCurrentTheme);
    }

    @UiThread
    public int getCurrentTheme() {
        return this.mCurrentTheme;
    }

    public int getStyle(int i, int i2) {
        int[] styleList = getStyleList(i);
        return styleList == null ? 0 : styleList[i2];
    }

    public int getThemeCount() {
        return this.mThemeCount;
    }

    public void registerOnThemeChangedListener(@NonNull OnThemeChangedListener onThemeChangedListener) {
        if (this.mDispatcher != null) {
            this.mDispatcher.registerListener(onThemeChangedListener);
        }
    }

    public boolean setCurrentTheme(int i) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread() || this.mCurrentTheme == i) {
            return false;
        }
        this.mCurrentTheme = i;
        SharedPreferences sharedPreferences = getSharedPreferences(this.mContext);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putInt(KEY_THEME, this.mCurrentTheme).apply();
        }
        dispatchThemeChanged(this.mCurrentTheme);
        return true;
    }

    protected void setup(Context context, int i, int i2, @Nullable EventDispatcher eventDispatcher) {
        this.mContext = context;
        if (eventDispatcher == null) {
            eventDispatcher = new SimpleDispatcher();
        }
        this.mDispatcher = eventDispatcher;
        this.mThemeCount = i;
        SharedPreferences sharedPreferences = getSharedPreferences(this.mContext);
        if (sharedPreferences != null) {
            this.mCurrentTheme = sharedPreferences.getInt(KEY_THEME, i2);
        } else {
            this.mCurrentTheme = i2;
        }
        if (this.mCurrentTheme >= this.mThemeCount) {
            setCurrentTheme(i2);
        }
    }

    public void unregisterOnThemeChangedListener(@NonNull OnThemeChangedListener onThemeChangedListener) {
        if (this.mDispatcher != null) {
            this.mDispatcher.unregisterListener(onThemeChangedListener);
        }
    }
}
