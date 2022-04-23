package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y.class */
public final class y extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f1148a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static ArrayList<WeakReference<y>> f1149b;

    /* renamed from: c  reason: collision with root package name */
    private final Resources f1150c;

    /* renamed from: d  reason: collision with root package name */
    private final Resources.Theme f1151d;

    private y(Context context) {
        super(context);
        if (ag.a()) {
            ag agVar = new ag(this, context.getResources());
            this.f1150c = agVar;
            Resources.Theme newTheme = agVar.newTheme();
            this.f1151d = newTheme;
            newTheme.setTo(context.getTheme());
            return;
        }
        this.f1150c = new aa(this, context.getResources());
        this.f1151d = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (androidx.appcompat.widget.ag.a() != false) goto L_0x0038;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Context a(android.content.Context r3) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.y.a(android.content.Context):android.content.Context");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return this.f1150c.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        return this.f1150c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f1151d;
        Resources.Theme theme2 = theme;
        if (theme == null) {
            theme2 = super.getTheme();
        }
        return theme2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        Resources.Theme theme = this.f1151d;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
