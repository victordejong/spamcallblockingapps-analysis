package com.bumptech.glide.load.resource.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.appcompat.view.d;
import androidx.core.content.b;
import androidx.core.content.res.f;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f7634a = true;

    private a() {
    }

    public static Drawable a(Context context, int i, Resources.Theme theme) {
        return a(context, context, i, theme);
    }

    public static Drawable a(Context context, Context context2, int i) {
        return a(context, context2, i, null);
    }

    private static Drawable a(Context context, Context context2, int i, Resources.Theme theme) {
        try {
            if (f7634a) {
                return androidx.appcompat.a.a.a.b(theme != null ? new d(context2, theme) : context2, i);
            }
        } catch (Resources.NotFoundException e) {
        } catch (IllegalStateException e2) {
            if (!context.getPackageName().equals(context2.getPackageName())) {
                return b.a(context2, i);
            }
            throw e2;
        } catch (NoClassDefFoundError e3) {
            f7634a = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return f.a(context2.getResources(), i, theme);
    }
}
