package android.support.p004v7.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.TintContextWrapper */
/* loaded from: classes-dex2jar.jar:android/support/v7/widget/TintContextWrapper.class */
public class TintContextWrapper extends ContextWrapper {
    private static final Object CACHE_LOCK = new Object();
    private static ArrayList<WeakReference<TintContextWrapper>> sCache;
    private final Resources mResources;
    private final Resources.Theme mTheme;

    private TintContextWrapper(@NonNull Context context) {
        super(context);
        if (VectorEnabledTintResources.shouldBeUsed()) {
            this.mResources = new VectorEnabledTintResources(this, context.getResources());
            this.mTheme = this.mResources.newTheme();
            this.mTheme.setTo(context.getTheme());
            return;
        }
        this.mResources = new TintResources(this, context.getResources());
        this.mTheme = null;
    }

    private static boolean shouldWrap(@NonNull Context context) {
        boolean z = false;
        if ((context instanceof TintContextWrapper) || (context.getResources() instanceof TintResources) || (context.getResources() instanceof VectorEnabledTintResources)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 21 || VectorEnabledTintResources.shouldBeUsed()) {
            z = true;
        }
        return z;
    }

    public static Context wrap(@NonNull Context context) {
        if (!shouldWrap(context)) {
            return context;
        }
        synchronized (CACHE_LOCK) {
            if (sCache == null) {
                sCache = new ArrayList<>();
            } else {
                for (int size = sCache.size() - 1; size >= 0; size--) {
                    WeakReference<TintContextWrapper> weakReference = sCache.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        sCache.remove(size);
                    }
                }
                for (int size2 = sCache.size() - 1; size2 >= 0; size2--) {
                    WeakReference<TintContextWrapper> weakReference2 = sCache.get(size2);
                    TintContextWrapper tintContextWrapper = weakReference2 != null ? weakReference2.get() : null;
                    if (tintContextWrapper != null && tintContextWrapper.getBaseContext() == context) {
                        return tintContextWrapper;
                    }
                }
            }
            TintContextWrapper tintContextWrapper2 = new TintContextWrapper(context);
            sCache.add(new WeakReference<>(tintContextWrapper2));
            return tintContextWrapper2;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.mResources.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.mResources;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        return this.mTheme == null ? super.getTheme() : this.mTheme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.mTheme == null) {
            super.setTheme(i);
        } else {
            this.mTheme.applyStyle(i, true);
        }
    }
}
