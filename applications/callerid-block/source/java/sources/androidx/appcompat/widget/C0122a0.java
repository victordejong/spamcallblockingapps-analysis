package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.widget.a0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a0.class */
public class C0122a0 extends ContextWrapper {

    /* renamed from: c */
    private static final Object f578c = new Object();

    /* renamed from: d */
    private static ArrayList<WeakReference<C0122a0>> f579d;

    /* renamed from: a */
    private final Resources f580a;

    /* renamed from: b */
    private final Resources.Theme f581b;

    private C0122a0(Context context) {
        super(context);
        if (!C0138i0.m14568b()) {
            this.f580a = new c0(this, context.getResources());
            this.f581b = null;
            return;
        }
        C0138i0 c0138i0 = new C0138i0(this, context.getResources());
        this.f580a = c0138i0;
        Resources.Theme newTheme = c0138i0.newTheme();
        this.f581b = newTheme;
        newTheme.setTo(context.getTheme());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (androidx.appcompat.widget.C0138i0.m14568b() != false) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m14658a(android.content.Context r3) {
        /*
            r0 = r3
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0122a0
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
            boolean r0 = r0 instanceof androidx.appcompat.widget.c0
            if (r0 != 0) goto L3a
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0138i0
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
            boolean r0 = androidx.appcompat.widget.C0138i0.m14568b()
            if (r0 == 0) goto L3a
        L38:
            r0 = 1
            r6 = r0
        L3a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0122a0.m14658a(android.content.Context):boolean");
    }

    /* renamed from: b */
    public static Context m14657b(Context context) {
        if (m14658a(context)) {
            synchronized (f578c) {
                ArrayList<WeakReference<C0122a0>> arrayList = f579d;
                if (arrayList == null) {
                    f579d = new ArrayList<>();
                } else {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        WeakReference<C0122a0> weakReference = f579d.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            f579d.remove(size);
                        }
                    }
                    for (int size2 = f579d.size() - 1; size2 >= 0; size2--) {
                        WeakReference<C0122a0> weakReference2 = f579d.get(size2);
                        C0122a0 c0122a0 = weakReference2 != null ? weakReference2.get() : null;
                        if (c0122a0 != null && c0122a0.getBaseContext() == context) {
                            return c0122a0;
                        }
                    }
                }
                C0122a0 c0122a02 = new C0122a0(context);
                f579d.add(new WeakReference<>(c0122a02));
                return c0122a02;
            }
        }
        return context;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f580a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f580a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f581b;
        Resources.Theme theme2 = theme;
        if (theme == null) {
            theme2 = super.getTheme();
        }
        return theme2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.f581b;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
