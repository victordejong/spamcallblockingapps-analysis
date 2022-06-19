package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/TintContextWrapper.class */
public class TintContextWrapper extends ContextWrapper {
    private static final Object CACHE_LOCK = new Object();
    private static ArrayList<WeakReference<TintContextWrapper>> sCache;
    private final Resources mResources;
    private final Resources.Theme mTheme;

    private TintContextWrapper(Context context) {
        super(context);
        if (!VectorEnabledTintResources.shouldBeUsed()) {
            this.mResources = new TintResources(this, context.getResources());
            this.mTheme = null;
            return;
        }
        VectorEnabledTintResources vectorEnabledTintResources = new VectorEnabledTintResources(this, context.getResources());
        this.mResources = vectorEnabledTintResources;
        Resources.Theme newTheme = vectorEnabledTintResources.newTheme();
        this.mTheme = newTheme;
        newTheme.setTo(context.getTheme());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (androidx.appcompat.widget.VectorEnabledTintResources.shouldBeUsed() != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean shouldWrap(android.content.Context r3) {
        /*
            r0 = r3
            boolean r0 = r0 instanceof androidx.appcompat.widget.TintContextWrapper
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L3a
            r0 = r5
            r6 = r0
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            boolean r0 = r0 instanceof androidx.appcompat.widget.TintResources
            if (r0 != 0) goto L3a
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            boolean r0 = r0 instanceof androidx.appcompat.widget.VectorEnabledTintResources
            if (r0 == 0) goto L28
            r0 = r5
            r6 = r0
            goto L3a
        L28:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L38
            r0 = r5
            r6 = r0
            boolean r0 = androidx.appcompat.widget.VectorEnabledTintResources.shouldBeUsed()
            if (r0 == 0) goto L3a
        L38:
            r0 = 1
            r6 = r0
        L3a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.TintContextWrapper.shouldWrap(android.content.Context):boolean");
    }

    public static Context wrap(Context context) {
        if (shouldWrap(context)) {
            synchronized (CACHE_LOCK) {
                ArrayList<WeakReference<TintContextWrapper>> arrayList = sCache;
                if (arrayList == null) {
                    sCache = new ArrayList<>();
                } else {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
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
        return context;
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
        Resources.Theme theme = this.mTheme;
        Resources.Theme theme2 = theme;
        if (theme == null) {
            theme2 = super.getTheme();
        }
        return theme2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.mTheme;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
