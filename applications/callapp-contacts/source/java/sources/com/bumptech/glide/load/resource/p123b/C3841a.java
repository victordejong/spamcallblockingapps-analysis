package com.bumptech.glide.load.resource.p123b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.view.C0244d;
import androidx.core.content.C0790b;
import androidx.core.content.res.C0804f;
/* renamed from: com.bumptech.glide.load.resource.b.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/a.class */
public final class C3841a {

    /* renamed from: a */
    private static volatile boolean f14195a = true;

    private C3841a() {
    }

    /* renamed from: a */
    public static Drawable m37314a(Context context, int i, Resources.Theme theme) {
        return m37312a(context, context, i, theme);
    }

    /* renamed from: a */
    public static Drawable m37313a(Context context, Context context2, int i) {
        return m37312a(context, context2, i, null);
    }

    /* renamed from: a */
    private static Drawable m37312a(Context context, Context context2, int i, Resources.Theme theme) {
        try {
            if (f14195a) {
                return C0153a.m46374b(theme != null ? new C0244d(context2, theme) : context2, i);
            }
        } catch (Resources.NotFoundException e) {
        } catch (IllegalStateException e2) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e2;
            }
            return C0790b.m44502a(context2, i);
        } catch (NoClassDefFoundError e3) {
            f14195a = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return C0804f.m44463a(context2.getResources(), i, theme);
    }
}
