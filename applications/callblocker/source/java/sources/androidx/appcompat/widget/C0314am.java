package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.widget.am */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/am.class */
public class C0314am extends ContextWrapper {

    /* renamed from: a */
    private static final Object f1329a = new Object();

    /* renamed from: b */
    private static ArrayList<WeakReference<C0314am>> f1330b;

    /* renamed from: c */
    private final Resources f1331c;

    /* renamed from: d */
    private final Resources.Theme f1332d;

    private C0314am(Context context) {
        super(context);
        if (!C0326au.m21392a()) {
            this.f1331c = new C0316ao(this, context.getResources());
            this.f1332d = null;
            return;
        }
        this.f1331c = new C0326au(this, context.getResources());
        this.f1332d = this.f1331c.newTheme();
        this.f1332d.setTo(context.getTheme());
    }

    /* renamed from: a */
    public static Context m21444a(Context context) {
        C0314am c0314am = context;
        if (m21443b(context)) {
            synchronized (f1329a) {
                if (f1330b != null) {
                    for (int size = f1330b.size() - 1; size >= 0; size--) {
                        WeakReference<C0314am> weakReference = f1330b.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            f1330b.remove(size);
                        }
                    }
                    for (int size2 = f1330b.size() - 1; size2 >= 0; size2--) {
                        WeakReference<C0314am> weakReference2 = f1330b.get(size2);
                        c0314am = weakReference2 != null ? weakReference2.get() : null;
                        if (c0314am != null && c0314am.getBaseContext() == context) {
                            break;
                        }
                    }
                } else {
                    f1330b = new ArrayList<>();
                }
                c0314am = new C0314am(context);
                f1330b.add(new WeakReference<>(c0314am));
            }
        }
        return c0314am;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0032, code lost:
        if (androidx.appcompat.widget.C0326au.m21392a() != false) goto L15;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m21443b(android.content.Context r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0314am
            if (r0 != 0) goto L23
            r0 = r4
            r5 = r0
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0316ao
            if (r0 != 0) goto L23
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0326au
            if (r0 == 0) goto L25
            r0 = r4
            r5 = r0
        L23:
            r0 = r5
            return r0
        L25:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L35
            r0 = r4
            r5 = r0
            boolean r0 = androidx.appcompat.widget.C0326au.m21392a()
            if (r0 == 0) goto L23
        L35:
            r0 = 1
            r5 = r0
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0314am.m21443b(android.content.Context):boolean");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f1331c.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f1331c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        return this.f1332d == null ? super.getTheme() : this.f1332d;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f1332d == null) {
            super.setTheme(i);
        } else {
            this.f1332d.applyStyle(i, true);
        }
    }
}
