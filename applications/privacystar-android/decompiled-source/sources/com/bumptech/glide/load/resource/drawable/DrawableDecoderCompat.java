package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.content.res.ResourcesCompat;
import android.support.p004v7.content.res.AppCompatResources;
import android.support.p004v7.view.ContextThemeWrapper;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/drawable/DrawableDecoderCompat.class */
public final class DrawableDecoderCompat {
    private static volatile boolean shouldCallAppCompatResources = true;

    private DrawableDecoderCompat() {
    }

    public static Drawable getDrawable(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        return getDrawable(context, context, i, theme);
    }

    public static Drawable getDrawable(Context context, Context context2, @DrawableRes int i) {
        return getDrawable(context, context2, i, null);
    }

    private static Drawable getDrawable(Context context, Context context2, @DrawableRes int i, @Nullable Resources.Theme theme) {
        try {
            if (shouldCallAppCompatResources) {
                return loadDrawableV7(context2, i, theme);
            }
        } catch (Resources.NotFoundException e) {
        } catch (IllegalStateException e2) {
            if (!context.getPackageName().equals(context2.getPackageName())) {
                return ContextCompat.getDrawable(context2, i);
            }
            throw e2;
        } catch (NoClassDefFoundError e3) {
            shouldCallAppCompatResources = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return loadDrawableV4(context2, i, theme);
    }

    private static Drawable loadDrawableV4(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        return ResourcesCompat.getDrawable(context.getResources(), i, theme);
    }

    private static Drawable loadDrawableV7(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        Context context2 = context;
        if (theme != null) {
            context2 = new ContextThemeWrapper(context, theme);
        }
        return AppCompatResources.getDrawable(context2, i);
    }
}
