package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.widget.ap */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ap.class */
public class C0308ap extends ContextWrapper {

    /* renamed from: a */
    private static final Object f1272a = new Object();

    /* renamed from: b */
    private static ArrayList<WeakReference<C0308ap>> f1273b;

    /* renamed from: c */
    private final Resources f1274c;

    /* renamed from: d */
    private final Resources.Theme f1275d;

    private C0308ap(Context context) {
        super(context);
        if (!C0320ax.m7118a()) {
            this.f1274c = new C0310ar(this, context.getResources());
            this.f1275d = null;
            return;
        }
        this.f1274c = new C0320ax(this, context.getResources());
        this.f1275d = this.f1274c.newTheme();
        this.f1275d.setTo(context.getTheme());
    }

    /* renamed from: a */
    public static Context m7167a(Context context) {
        if (m7166b(context)) {
            synchronized (f1272a) {
                if (f1273b == null) {
                    f1273b = new ArrayList<>();
                } else {
                    for (int size = f1273b.size() - 1; size >= 0; size--) {
                        WeakReference<C0308ap> weakReference = f1273b.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            f1273b.remove(size);
                        }
                    }
                    for (int size2 = f1273b.size() - 1; size2 >= 0; size2--) {
                        WeakReference<C0308ap> weakReference2 = f1273b.get(size2);
                        C0308ap c0308ap = weakReference2 != null ? weakReference2.get() : null;
                        if (c0308ap != null && c0308ap.getBaseContext() == context) {
                            return c0308ap;
                        }
                    }
                }
                C0308ap c0308ap2 = new C0308ap(context);
                f1273b.add(new WeakReference<>(c0308ap2));
                return c0308ap2;
            }
        }
        return context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (androidx.appcompat.widget.C0320ax.m7118a() != false) goto L13;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m7166b(android.content.Context r3) {
        /*
            r0 = r3
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0308ap
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
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0310ar
            if (r0 != 0) goto L3a
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0320ax
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
            boolean r0 = androidx.appcompat.widget.C0320ax.m7118a()
            if (r0 == 0) goto L3a
        L38:
            r0 = 1
            r6 = r0
        L3a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0308ap.m7166b(android.content.Context):boolean");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f1274c.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f1274c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f1275d;
        Resources.Theme theme2 = theme;
        if (theme == null) {
            theme2 = super.getTheme();
        }
        return theme2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.f1275d;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
