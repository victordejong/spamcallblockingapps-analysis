package com.bumptech.glide.load.p083c.p086c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.appcompat.view.C0175d;
import androidx.core.p017a.C0438a;
import androidx.core.p017a.p018a.C0449f;
/* renamed from: com.bumptech.glide.load.c.c.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/c/a.class */
public final class C1632a {

    /* renamed from: a */
    private static volatile boolean f5031a = true;

    /* renamed from: a */
    public static Drawable m16691a(Context context, int i, Resources.Theme theme) {
        return m16689a(context, context, i, theme);
    }

    /* renamed from: a */
    public static Drawable m16690a(Context context, Context context2, int i) {
        return m16689a(context, context2, i, null);
    }

    /* renamed from: a */
    private static Drawable m16689a(Context context, Context context2, int i, Resources.Theme theme) {
        Drawable m20900a;
        try {
        } catch (Resources.NotFoundException e) {
        } catch (IllegalStateException e2) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e2;
            }
            m20900a = C0438a.m20900a(context2, i);
        } catch (NoClassDefFoundError e3) {
            f5031a = false;
        }
        if (f5031a) {
            m20900a = m16688b(context2, i, theme);
            return m20900a;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        m20900a = m16687c(context2, i, theme);
        return m20900a;
    }

    /* renamed from: b */
    private static Drawable m16688b(Context context, int i, Resources.Theme theme) {
        C0175d c0175d = context;
        if (theme != null) {
            c0175d = new C0175d(context, theme);
        }
        return C0094a.m22275b(c0175d, i);
    }

    /* renamed from: c */
    private static Drawable m16687c(Context context, int i, Resources.Theme theme) {
        return C0449f.m20843a(context.getResources(), i, theme);
    }
}
