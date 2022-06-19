package com.bumptech.glide.load.p214j.p216e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.core.content.C0586a;
import androidx.core.content.p007d.C0605f;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p021a.p028o.C1458d;
/* renamed from: com.bumptech.glide.load.j.e.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/e/a.class */
public final class C4244a {

    /* renamed from: a */
    private static volatile boolean f13140a = true;

    /* renamed from: a */
    public static Drawable m23067a(Context context, int i, Resources.Theme theme) {
        return m23065c(context, context, i, theme);
    }

    /* renamed from: b */
    public static Drawable m23066b(Context context, Context context2, int i) {
        return m23065c(context, context2, i, null);
    }

    /* renamed from: c */
    private static Drawable m23065c(Context context, Context context2, int i, Resources.Theme theme) {
        try {
            if (f13140a) {
                return m23063e(context2, i, theme);
            }
        } catch (Resources.NotFoundException e) {
        } catch (IllegalStateException e2) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e2;
            }
            return C0586a.m33348f(context2, i);
        } catch (NoClassDefFoundError e3) {
            f13140a = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return m23064d(context2, i, theme);
    }

    /* renamed from: d */
    private static Drawable m23064d(Context context, int i, Resources.Theme theme) {
        return C0605f.m33274d(context.getResources(), i, theme);
    }

    /* renamed from: e */
    private static Drawable m23063e(Context context, int i, Resources.Theme theme) {
        C1458d c1458d = context;
        if (theme != null) {
            c1458d = new C1458d(context, theme);
        }
        return C1433a.m30126d(c1458d, i);
    }
}
