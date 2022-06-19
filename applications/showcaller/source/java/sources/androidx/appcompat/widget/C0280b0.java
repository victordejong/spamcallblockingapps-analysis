package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.widget.b0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/b0.class */
public class C0280b0 extends ContextWrapper {

    /* renamed from: a */
    private static final Object f1232a = new Object();

    /* renamed from: b */
    private static ArrayList<WeakReference<C0280b0>> f1233b;

    /* renamed from: c */
    private final Resources f1234c;

    /* renamed from: d */
    private final Resources.Theme f1235d;

    private C0280b0(Context context) {
        super(context);
        if (!C0303j0.m34878b()) {
            this.f1234c = new C0284d0(this, context.getResources());
            this.f1235d = null;
            return;
        }
        C0303j0 c0303j0 = new C0303j0(this, context.getResources());
        this.f1234c = c0303j0;
        Resources.Theme newTheme = c0303j0.newTheme();
        this.f1235d = newTheme;
        newTheme.setTo(context.getTheme());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (androidx.appcompat.widget.C0303j0.m34878b() != false) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m34989a(android.content.Context r3) {
        /*
            r0 = r3
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0280b0
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
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0284d0
            if (r0 != 0) goto L3a
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0303j0
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
            boolean r0 = androidx.appcompat.widget.C0303j0.m34878b()
            if (r0 == 0) goto L3a
        L38:
            r0 = 1
            r6 = r0
        L3a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0280b0.m34989a(android.content.Context):boolean");
    }

    /* renamed from: b */
    public static Context m34988b(Context context) {
        if (m34989a(context)) {
            synchronized (f1232a) {
                ArrayList<WeakReference<C0280b0>> arrayList = f1233b;
                if (arrayList == null) {
                    f1233b = new ArrayList<>();
                } else {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        WeakReference<C0280b0> weakReference = f1233b.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            f1233b.remove(size);
                        }
                    }
                    for (int size2 = f1233b.size() - 1; size2 >= 0; size2--) {
                        WeakReference<C0280b0> weakReference2 = f1233b.get(size2);
                        C0280b0 c0280b0 = weakReference2 != null ? weakReference2.get() : null;
                        if (c0280b0 != null && c0280b0.getBaseContext() == context) {
                            return c0280b0;
                        }
                    }
                }
                C0280b0 c0280b02 = new C0280b0(context);
                f1233b.add(new WeakReference<>(c0280b02));
                return c0280b02;
            }
        }
        return context;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f1234c.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f1234c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f1235d;
        Resources.Theme theme2 = theme;
        if (theme == null) {
            theme2 = super.getTheme();
        }
        return theme2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.f1235d;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
