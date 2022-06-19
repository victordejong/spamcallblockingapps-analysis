package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.widget.y */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y.class */
public final class C0426y extends ContextWrapper {

    /* renamed from: a */
    private static final Object f1693a = new Object();

    /* renamed from: b */
    private static ArrayList<WeakReference<C0426y>> f1694b;

    /* renamed from: c */
    private final Resources f1695c;

    /* renamed from: d */
    private final Resources.Theme f1696d;

    private C0426y(Context context) {
        super(context);
        if (!C0379ag.m45772a()) {
            this.f1695c = new C0369aa(this, context.getResources());
            this.f1696d = null;
            return;
        }
        C0379ag c0379ag = new C0379ag(this, context.getResources());
        this.f1695c = c0379ag;
        Resources.Theme newTheme = c0379ag.newTheme();
        this.f1696d = newTheme;
        newTheme.setTo(context.getTheme());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (androidx.appcompat.widget.C0379ag.m45772a() != false) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Context m45569a(android.content.Context r3) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0426y.m45569a(android.content.Context):android.content.Context");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return this.f1695c.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        return this.f1695c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f1696d;
        Resources.Theme theme2 = theme;
        if (theme == null) {
            theme2 = super.getTheme();
        }
        return theme2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        Resources.Theme theme = this.f1696d;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
