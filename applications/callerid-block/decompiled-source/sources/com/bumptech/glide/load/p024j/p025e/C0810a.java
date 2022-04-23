package com.bumptech.glide.load.p024j.p025e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.core.content.C0265a;
import androidx.core.content.p003c.C0275f;
import d.a.k.a.a;
import d.a.o.d;
/* renamed from: com.bumptech.glide.load.j.e.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/e/a.class */
public final class C0810a {

    /* renamed from: a */
    private static volatile boolean f3694a = true;

    /* renamed from: a */
    public static Drawable m10959a(Context context, int i, Resources.Theme theme) {
        return m10957c(context, context, i, theme);
    }

    /* renamed from: b */
    public static Drawable m10958b(Context context, Context context2, int i) {
        return m10957c(context, context2, i, null);
    }

    /* renamed from: c */
    private static Drawable m10957c(Context context, Context context2, int i, Resources.Theme theme) {
        try {
            if (f3694a) {
                return m10955e(context2, i, theme);
            }
        } catch (Resources.NotFoundException e) {
        } catch (IllegalStateException e2) {
            if (!context.getPackageName().equals(context2.getPackageName())) {
                return C0265a.m13551f(context2, i);
            }
            throw e2;
        } catch (NoClassDefFoundError e3) {
            f3694a = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return m10956d(context2, i, theme);
    }

    /* renamed from: d */
    private static Drawable m10956d(Context context, int i, Resources.Theme theme) {
        return C0275f.m13503a(context.getResources(), i, theme);
    }

    /* renamed from: e */
    private static Drawable m10955e(Context context, int i, Resources.Theme theme) {
        Context context2 = context;
        if (theme != null) {
            context2 = new d(context, theme);
        }
        return a.d(context2, i);
    }
}
