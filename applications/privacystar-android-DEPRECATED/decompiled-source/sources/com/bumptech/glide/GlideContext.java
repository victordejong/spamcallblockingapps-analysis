package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.request.target.ViewTarget;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/GlideContext.class */
public class GlideContext extends ContextWrapper {
    @VisibleForTesting
    static final TransitionOptions<?, ?> DEFAULT_TRANSITION_OPTIONS = new GenericTransitionOptions();
    private final ArrayPool arrayPool;
    private final RequestOptions defaultRequestOptions;
    private final Map<Class<?>, TransitionOptions<?, ?>> defaultTransitionOptions;
    private final Engine engine;
    private final ImageViewTargetFactory imageViewTargetFactory;
    private final int logLevel;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Registry registry;

    public GlideContext(@NonNull Context context, @NonNull ArrayPool arrayPool, @NonNull Registry registry, @NonNull ImageViewTargetFactory imageViewTargetFactory, @NonNull RequestOptions requestOptions, @NonNull Map<Class<?>, TransitionOptions<?, ?>> map, @NonNull Engine engine, int i) {
        super(context.getApplicationContext());
        this.arrayPool = arrayPool;
        this.registry = registry;
        this.imageViewTargetFactory = imageViewTargetFactory;
        this.defaultRequestOptions = requestOptions;
        this.defaultTransitionOptions = map;
        this.engine = engine;
        this.logLevel = i;
    }

    @NonNull
    public <X> ViewTarget<ImageView, X> buildImageViewTarget(@NonNull ImageView imageView, @NonNull Class<X> cls) {
        return this.imageViewTargetFactory.buildTarget(imageView, cls);
    }

    @NonNull
    public ArrayPool getArrayPool() {
        return this.arrayPool;
    }

    public RequestOptions getDefaultRequestOptions() {
        return this.defaultRequestOptions;
    }

    @NonNull
    public <T> TransitionOptions<?, T> getDefaultTransitionOptions(@NonNull Class<T> cls) {
        TransitionOptions<?, ?> transitionOptions = this.defaultTransitionOptions.get(cls);
        TransitionOptions<?, ?> transitionOptions2 = transitionOptions;
        if (transitionOptions == null) {
            Iterator<Map.Entry<Class<?>, TransitionOptions<?, ?>>> it = this.defaultTransitionOptions.entrySet().iterator();
            while (true) {
                transitionOptions2 = transitionOptions;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, TransitionOptions<?, ?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    transitionOptions = next.getValue();
                }
            }
        }
        TransitionOptions<?, T> transitionOptions3 = (TransitionOptions<?, T>) transitionOptions2;
        if (transitionOptions2 == null) {
            transitionOptions3 = (TransitionOptions<?, T>) DEFAULT_TRANSITION_OPTIONS;
        }
        return transitionOptions3;
    }

    @NonNull
    public Engine getEngine() {
        return this.engine;
    }

    public int getLogLevel() {
        return this.logLevel;
    }

    @NonNull
    public Handler getMainHandler() {
        return this.mainHandler;
    }

    @NonNull
    public Registry getRegistry() {
        return this.registry;
    }
}
