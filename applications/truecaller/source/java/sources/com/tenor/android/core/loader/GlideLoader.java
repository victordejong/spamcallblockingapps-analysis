package com.tenor.android.core.loader;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.GlideDrawableImageViewTarget;
import com.tenor.android.core.model.impl.Media;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/loader/GlideLoader.class */
public class GlideLoader {
    public static GenericRequestBuilder applyDimens(GenericRequestBuilder genericRequestBuilder, GlideTaskParams glideTaskParams) {
        Media media = glideTaskParams.getMedia();
        if (media != null) {
            genericRequestBuilder.override(media.getWidth(), media.getHeight());
        }
        return genericRequestBuilder;
    }

    public static <T extends ImageView> void load(final GenericRequestBuilder genericRequestBuilder, final GlideTaskParams<T> glideTaskParams) {
        if (glideTaskParams.isThumbnail()) {
            genericRequestBuilder.thumbnail(glideTaskParams.getThumbnailMultiplier());
        }
        genericRequestBuilder.placeholder(glideTaskParams.getPlaceholder()).into(new GlideDrawableImageViewTarget(glideTaskParams.getTarget()) { // from class: com.tenor.android.core.loader.GlideLoader.1
            public void onLoadFailed(Exception exc, Drawable drawable) {
                if (glideTaskParams.getCurrentRetry() < glideTaskParams.getMaxRetry()) {
                    glideTaskParams.incrementCurrentRetry();
                    GlideLoader.load(genericRequestBuilder, glideTaskParams);
                    return;
                }
                GlideLoader.super.onLoadFailed(exc, drawable);
                glideTaskParams.getListener().failure(glideTaskParams.getTarget(), drawable);
            }

            public void onResourceReady(GlideDrawable glideDrawable, GlideAnimation<? super GlideDrawable> glideAnimation) {
                GlideLoader.super.onResourceReady(glideDrawable, glideAnimation);
                glideTaskParams.getListener().success(glideTaskParams.getTarget(), glideDrawable);
            }

            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, GlideAnimation glideAnimation) {
                onResourceReady((GlideDrawable) obj, (GlideAnimation<? super GlideDrawable>) glideAnimation);
            }
        });
    }
}
