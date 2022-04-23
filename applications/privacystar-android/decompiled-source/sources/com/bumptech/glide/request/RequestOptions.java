package com.bumptech.glide.request;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.CheckResult;
import android.support.annotation.DrawableRes;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.MultiTransformation;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.model.stream.HttpGlideUrlLoader;
import com.bumptech.glide.load.resource.bitmap.BitmapEncoder;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.bumptech.glide.load.resource.bitmap.CircleCrop;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.DrawableTransformation;
import com.bumptech.glide.load.resource.bitmap.FitCenter;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableTransformation;
import com.bumptech.glide.load.resource.gif.GifOptions;
import com.bumptech.glide.signature.EmptySignature;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/RequestOptions.class */
public class RequestOptions implements Cloneable {
    private static final int DISK_CACHE_STRATEGY = 4;
    private static final int ERROR_ID = 32;
    private static final int ERROR_PLACEHOLDER = 16;
    private static final int FALLBACK = 8192;
    private static final int FALLBACK_ID = 16384;
    private static final int IS_CACHEABLE = 256;
    private static final int ONLY_RETRIEVE_FROM_CACHE = 524288;
    private static final int OVERRIDE = 512;
    private static final int PLACEHOLDER = 64;
    private static final int PLACEHOLDER_ID = 128;
    private static final int PRIORITY = 8;
    private static final int RESOURCE_CLASS = 4096;
    private static final int SIGNATURE = 1024;
    private static final int SIZE_MULTIPLIER = 2;
    private static final int THEME = 32768;
    private static final int TRANSFORMATION = 2048;
    private static final int TRANSFORMATION_ALLOWED = 65536;
    private static final int TRANSFORMATION_REQUIRED = 131072;
    private static final int UNSET = -1;
    private static final int USE_ANIMATION_POOL = 1048576;
    private static final int USE_UNLIMITED_SOURCE_GENERATORS_POOL = 262144;
    @Nullable
    private static RequestOptions centerCropOptions;
    @Nullable
    private static RequestOptions centerInsideOptions;
    @Nullable
    private static RequestOptions circleCropOptions;
    @Nullable
    private static RequestOptions fitCenterOptions;
    @Nullable
    private static RequestOptions noAnimationOptions;
    @Nullable
    private static RequestOptions noTransformOptions;
    @Nullable
    private static RequestOptions skipMemoryCacheFalseOptions;
    @Nullable
    private static RequestOptions skipMemoryCacheTrueOptions;
    private int errorId;
    @Nullable
    private Drawable errorPlaceholder;
    @Nullable
    private Drawable fallbackDrawable;
    private int fallbackId;
    private int fields;
    private boolean isAutoCloneEnabled;
    private boolean isLocked;
    private boolean isTransformationRequired;
    private boolean onlyRetrieveFromCache;
    @Nullable
    private Drawable placeholderDrawable;
    private int placeholderId;
    @Nullable
    private Resources.Theme theme;
    private boolean useAnimationPool;
    private boolean useUnlimitedSourceGeneratorsPool;
    private float sizeMultiplier = 1.0f;
    @NonNull
    private DiskCacheStrategy diskCacheStrategy = DiskCacheStrategy.AUTOMATIC;
    @NonNull
    private Priority priority = Priority.NORMAL;
    private boolean isCacheable = true;
    private int overrideHeight = -1;
    private int overrideWidth = -1;
    @NonNull
    private Key signature = EmptySignature.obtain();
    private boolean isTransformationAllowed = true;
    @NonNull
    private Options options = new Options();
    @NonNull
    private Map<Class<?>, Transformation<?>> transformations = new CachedHashCodeArrayMap();
    @NonNull
    private Class<?> resourceClass = Object.class;
    private boolean isScaleOnlyOrNoTransform = true;

    @CheckResult
    @NonNull
    public static RequestOptions bitmapTransform(@NonNull Transformation<Bitmap> transformation) {
        return new RequestOptions().transform(transformation);
    }

    @CheckResult
    @NonNull
    public static RequestOptions centerCropTransform() {
        if (centerCropOptions == null) {
            centerCropOptions = new RequestOptions().centerCrop().autoClone();
        }
        return centerCropOptions;
    }

    @CheckResult
    @NonNull
    public static RequestOptions centerInsideTransform() {
        if (centerInsideOptions == null) {
            centerInsideOptions = new RequestOptions().centerInside().autoClone();
        }
        return centerInsideOptions;
    }

    @CheckResult
    @NonNull
    public static RequestOptions circleCropTransform() {
        if (circleCropOptions == null) {
            circleCropOptions = new RequestOptions().circleCrop().autoClone();
        }
        return circleCropOptions;
    }

    @CheckResult
    @NonNull
    public static RequestOptions decodeTypeOf(@NonNull Class<?> cls) {
        return new RequestOptions().decode(cls);
    }

    @CheckResult
    @NonNull
    public static RequestOptions diskCacheStrategyOf(@NonNull DiskCacheStrategy diskCacheStrategy) {
        return new RequestOptions().diskCacheStrategy(diskCacheStrategy);
    }

    @CheckResult
    @NonNull
    public static RequestOptions downsampleOf(@NonNull DownsampleStrategy downsampleStrategy) {
        return new RequestOptions().downsample(downsampleStrategy);
    }

    @CheckResult
    @NonNull
    public static RequestOptions encodeFormatOf(@NonNull Bitmap.CompressFormat compressFormat) {
        return new RequestOptions().encodeFormat(compressFormat);
    }

    @CheckResult
    @NonNull
    public static RequestOptions encodeQualityOf(@IntRange(from = 0, m428to = 100) int i) {
        return new RequestOptions().encodeQuality(i);
    }

    @CheckResult
    @NonNull
    public static RequestOptions errorOf(@DrawableRes int i) {
        return new RequestOptions().error(i);
    }

    @CheckResult
    @NonNull
    public static RequestOptions errorOf(@Nullable Drawable drawable) {
        return new RequestOptions().error(drawable);
    }

    @CheckResult
    @NonNull
    public static RequestOptions fitCenterTransform() {
        if (fitCenterOptions == null) {
            fitCenterOptions = new RequestOptions().fitCenter().autoClone();
        }
        return fitCenterOptions;
    }

    @CheckResult
    @NonNull
    public static RequestOptions formatOf(@NonNull DecodeFormat decodeFormat) {
        return new RequestOptions().format(decodeFormat);
    }

    @CheckResult
    @NonNull
    public static RequestOptions frameOf(@IntRange(from = 0) long j) {
        return new RequestOptions().frame(j);
    }

    private boolean isSet(int i) {
        return isSet(this.fields, i);
    }

    private static boolean isSet(int i, int i2) {
        return (i & i2) != 0;
    }

    @CheckResult
    @NonNull
    public static RequestOptions noAnimation() {
        if (noAnimationOptions == null) {
            noAnimationOptions = new RequestOptions().dontAnimate().autoClone();
        }
        return noAnimationOptions;
    }

    @CheckResult
    @NonNull
    public static RequestOptions noTransformation() {
        if (noTransformOptions == null) {
            noTransformOptions = new RequestOptions().dontTransform().autoClone();
        }
        return noTransformOptions;
    }

    @CheckResult
    @NonNull
    public static <T> RequestOptions option(@NonNull Option<T> option, @NonNull T t) {
        return new RequestOptions().set(option, t);
    }

    @NonNull
    private RequestOptions optionalScaleOnlyTransform(@NonNull DownsampleStrategy downsampleStrategy, @NonNull Transformation<Bitmap> transformation) {
        return scaleOnlyTransform(downsampleStrategy, transformation, false);
    }

    @CheckResult
    @NonNull
    public static RequestOptions overrideOf(@IntRange(from = 0) int i) {
        return overrideOf(i, i);
    }

    @CheckResult
    @NonNull
    public static RequestOptions overrideOf(@IntRange(from = 0) int i, @IntRange(from = 0) int i2) {
        return new RequestOptions().override(i, i2);
    }

    @CheckResult
    @NonNull
    public static RequestOptions placeholderOf(@DrawableRes int i) {
        return new RequestOptions().placeholder(i);
    }

    @CheckResult
    @NonNull
    public static RequestOptions placeholderOf(@Nullable Drawable drawable) {
        return new RequestOptions().placeholder(drawable);
    }

    @CheckResult
    @NonNull
    public static RequestOptions priorityOf(@NonNull Priority priority) {
        return new RequestOptions().priority(priority);
    }

    @NonNull
    private RequestOptions scaleOnlyTransform(@NonNull DownsampleStrategy downsampleStrategy, @NonNull Transformation<Bitmap> transformation) {
        return scaleOnlyTransform(downsampleStrategy, transformation, true);
    }

    @NonNull
    private RequestOptions scaleOnlyTransform(@NonNull DownsampleStrategy downsampleStrategy, @NonNull Transformation<Bitmap> transformation, boolean z) {
        RequestOptions transform = z ? transform(downsampleStrategy, transformation) : optionalTransform(downsampleStrategy, transformation);
        transform.isScaleOnlyOrNoTransform = true;
        return transform;
    }

    @NonNull
    private RequestOptions selfOrThrowIfLocked() {
        if (!this.isLocked) {
            return this;
        }
        throw new IllegalStateException("You cannot modify locked RequestOptions, consider clone()");
    }

    @CheckResult
    @NonNull
    public static RequestOptions signatureOf(@NonNull Key key) {
        return new RequestOptions().signature(key);
    }

    @CheckResult
    @NonNull
    public static RequestOptions sizeMultiplierOf(@FloatRange(from = 0.0d, m429to = 1.0d) float f) {
        return new RequestOptions().sizeMultiplier(f);
    }

    @CheckResult
    @NonNull
    public static RequestOptions skipMemoryCacheOf(boolean z) {
        if (z) {
            if (skipMemoryCacheTrueOptions == null) {
                skipMemoryCacheTrueOptions = new RequestOptions().skipMemoryCache(true).autoClone();
            }
            return skipMemoryCacheTrueOptions;
        }
        if (skipMemoryCacheFalseOptions == null) {
            skipMemoryCacheFalseOptions = new RequestOptions().skipMemoryCache(false).autoClone();
        }
        return skipMemoryCacheFalseOptions;
    }

    @CheckResult
    @NonNull
    public static RequestOptions timeoutOf(@IntRange(from = 0) int i) {
        return new RequestOptions().timeout(i);
    }

    @NonNull
    private RequestOptions transform(@NonNull Transformation<Bitmap> transformation, boolean z) {
        if (this.isAutoCloneEnabled) {
            return clone().transform(transformation, z);
        }
        DrawableTransformation drawableTransformation = new DrawableTransformation(transformation, z);
        transform(Bitmap.class, transformation, z);
        transform(Drawable.class, drawableTransformation, z);
        transform(BitmapDrawable.class, drawableTransformation.asBitmapDrawable(), z);
        transform(GifDrawable.class, new GifDrawableTransformation(transformation), z);
        return selfOrThrowIfLocked();
    }

    @NonNull
    private <T> RequestOptions transform(@NonNull Class<T> cls, @NonNull Transformation<T> transformation, boolean z) {
        if (this.isAutoCloneEnabled) {
            return clone().transform(cls, transformation, z);
        }
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(transformation);
        this.transformations.put(cls, transformation);
        this.fields |= 2048;
        this.isTransformationAllowed = true;
        this.fields |= 65536;
        this.isScaleOnlyOrNoTransform = false;
        if (z) {
            this.fields |= 131072;
            this.isTransformationRequired = true;
        }
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions apply(@NonNull RequestOptions requestOptions) {
        if (this.isAutoCloneEnabled) {
            return clone().apply(requestOptions);
        }
        if (isSet(requestOptions.fields, 2)) {
            this.sizeMultiplier = requestOptions.sizeMultiplier;
        }
        if (isSet(requestOptions.fields, 262144)) {
            this.useUnlimitedSourceGeneratorsPool = requestOptions.useUnlimitedSourceGeneratorsPool;
        }
        if (isSet(requestOptions.fields, 1048576)) {
            this.useAnimationPool = requestOptions.useAnimationPool;
        }
        if (isSet(requestOptions.fields, 4)) {
            this.diskCacheStrategy = requestOptions.diskCacheStrategy;
        }
        if (isSet(requestOptions.fields, 8)) {
            this.priority = requestOptions.priority;
        }
        if (isSet(requestOptions.fields, 16)) {
            this.errorPlaceholder = requestOptions.errorPlaceholder;
            this.errorId = 0;
            this.fields &= -33;
        }
        if (isSet(requestOptions.fields, 32)) {
            this.errorId = requestOptions.errorId;
            this.errorPlaceholder = null;
            this.fields &= -17;
        }
        if (isSet(requestOptions.fields, 64)) {
            this.placeholderDrawable = requestOptions.placeholderDrawable;
            this.placeholderId = 0;
            this.fields &= -129;
        }
        if (isSet(requestOptions.fields, 128)) {
            this.placeholderId = requestOptions.placeholderId;
            this.placeholderDrawable = null;
            this.fields &= -65;
        }
        if (isSet(requestOptions.fields, 256)) {
            this.isCacheable = requestOptions.isCacheable;
        }
        if (isSet(requestOptions.fields, 512)) {
            this.overrideWidth = requestOptions.overrideWidth;
            this.overrideHeight = requestOptions.overrideHeight;
        }
        if (isSet(requestOptions.fields, 1024)) {
            this.signature = requestOptions.signature;
        }
        if (isSet(requestOptions.fields, 4096)) {
            this.resourceClass = requestOptions.resourceClass;
        }
        if (isSet(requestOptions.fields, 8192)) {
            this.fallbackDrawable = requestOptions.fallbackDrawable;
            this.fallbackId = 0;
            this.fields &= -16385;
        }
        if (isSet(requestOptions.fields, 16384)) {
            this.fallbackId = requestOptions.fallbackId;
            this.fallbackDrawable = null;
            this.fields &= -8193;
        }
        if (isSet(requestOptions.fields, 32768)) {
            this.theme = requestOptions.theme;
        }
        if (isSet(requestOptions.fields, 65536)) {
            this.isTransformationAllowed = requestOptions.isTransformationAllowed;
        }
        if (isSet(requestOptions.fields, 131072)) {
            this.isTransformationRequired = requestOptions.isTransformationRequired;
        }
        if (isSet(requestOptions.fields, 2048)) {
            this.transformations.putAll(requestOptions.transformations);
            this.isScaleOnlyOrNoTransform = requestOptions.isScaleOnlyOrNoTransform;
        }
        if (isSet(requestOptions.fields, 524288)) {
            this.onlyRetrieveFromCache = requestOptions.onlyRetrieveFromCache;
        }
        if (!this.isTransformationAllowed) {
            this.transformations.clear();
            this.fields &= -2049;
            this.isTransformationRequired = false;
            this.fields &= -131073;
            this.isScaleOnlyOrNoTransform = true;
        }
        this.fields |= requestOptions.fields;
        this.options.putAll(requestOptions.options);
        return selfOrThrowIfLocked();
    }

    @NonNull
    public RequestOptions autoClone() {
        if (!this.isLocked || this.isAutoCloneEnabled) {
            this.isAutoCloneEnabled = true;
            return lock();
        }
        throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }

    @CheckResult
    @NonNull
    public RequestOptions centerCrop() {
        return transform(DownsampleStrategy.CENTER_OUTSIDE, new CenterCrop());
    }

    @CheckResult
    @NonNull
    public RequestOptions centerInside() {
        return scaleOnlyTransform(DownsampleStrategy.CENTER_INSIDE, new CenterInside());
    }

    @CheckResult
    @NonNull
    public RequestOptions circleCrop() {
        return transform(DownsampleStrategy.CENTER_INSIDE, new CircleCrop());
    }

    @CheckResult
    public RequestOptions clone() {
        try {
            RequestOptions requestOptions = (RequestOptions) super.clone();
            requestOptions.options = new Options();
            requestOptions.options.putAll(this.options);
            requestOptions.transformations = new CachedHashCodeArrayMap();
            requestOptions.transformations.putAll(this.transformations);
            requestOptions.isLocked = false;
            requestOptions.isAutoCloneEnabled = false;
            return requestOptions;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @CheckResult
    @NonNull
    public RequestOptions decode(@NonNull Class<?> cls) {
        if (this.isAutoCloneEnabled) {
            return clone().decode(cls);
        }
        this.resourceClass = (Class) Preconditions.checkNotNull(cls);
        this.fields |= 4096;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions disallowHardwareConfig() {
        return set(Downsampler.ALLOW_HARDWARE_CONFIG, false);
    }

    @CheckResult
    @NonNull
    public RequestOptions diskCacheStrategy(@NonNull DiskCacheStrategy diskCacheStrategy) {
        if (this.isAutoCloneEnabled) {
            return clone().diskCacheStrategy(diskCacheStrategy);
        }
        this.diskCacheStrategy = (DiskCacheStrategy) Preconditions.checkNotNull(diskCacheStrategy);
        this.fields |= 4;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions dontAnimate() {
        return set(GifOptions.DISABLE_ANIMATION, true);
    }

    @CheckResult
    @NonNull
    public RequestOptions dontTransform() {
        if (this.isAutoCloneEnabled) {
            return clone().dontTransform();
        }
        this.transformations.clear();
        this.fields &= -2049;
        this.isTransformationRequired = false;
        this.fields &= -131073;
        this.isTransformationAllowed = false;
        this.fields |= 65536;
        this.isScaleOnlyOrNoTransform = true;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions downsample(@NonNull DownsampleStrategy downsampleStrategy) {
        return set(DownsampleStrategy.OPTION, Preconditions.checkNotNull(downsampleStrategy));
    }

    @CheckResult
    @NonNull
    public RequestOptions encodeFormat(@NonNull Bitmap.CompressFormat compressFormat) {
        return set(BitmapEncoder.COMPRESSION_FORMAT, Preconditions.checkNotNull(compressFormat));
    }

    @CheckResult
    @NonNull
    public RequestOptions encodeQuality(@IntRange(from = 0, m428to = 100) int i) {
        return set(BitmapEncoder.COMPRESSION_QUALITY, Integer.valueOf(i));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RequestOptions)) {
            return false;
        }
        RequestOptions requestOptions = (RequestOptions) obj;
        boolean z = false;
        if (Float.compare(requestOptions.sizeMultiplier, this.sizeMultiplier) == 0) {
            z = false;
            if (this.errorId == requestOptions.errorId) {
                z = false;
                if (Util.bothNullOrEqual(this.errorPlaceholder, requestOptions.errorPlaceholder)) {
                    z = false;
                    if (this.placeholderId == requestOptions.placeholderId) {
                        z = false;
                        if (Util.bothNullOrEqual(this.placeholderDrawable, requestOptions.placeholderDrawable)) {
                            z = false;
                            if (this.fallbackId == requestOptions.fallbackId) {
                                z = false;
                                if (Util.bothNullOrEqual(this.fallbackDrawable, requestOptions.fallbackDrawable)) {
                                    z = false;
                                    if (this.isCacheable == requestOptions.isCacheable) {
                                        z = false;
                                        if (this.overrideHeight == requestOptions.overrideHeight) {
                                            z = false;
                                            if (this.overrideWidth == requestOptions.overrideWidth) {
                                                z = false;
                                                if (this.isTransformationRequired == requestOptions.isTransformationRequired) {
                                                    z = false;
                                                    if (this.isTransformationAllowed == requestOptions.isTransformationAllowed) {
                                                        z = false;
                                                        if (this.useUnlimitedSourceGeneratorsPool == requestOptions.useUnlimitedSourceGeneratorsPool) {
                                                            z = false;
                                                            if (this.onlyRetrieveFromCache == requestOptions.onlyRetrieveFromCache) {
                                                                z = false;
                                                                if (this.diskCacheStrategy.equals(requestOptions.diskCacheStrategy)) {
                                                                    z = false;
                                                                    if (this.priority == requestOptions.priority) {
                                                                        z = false;
                                                                        if (this.options.equals(requestOptions.options)) {
                                                                            z = false;
                                                                            if (this.transformations.equals(requestOptions.transformations)) {
                                                                                z = false;
                                                                                if (this.resourceClass.equals(requestOptions.resourceClass)) {
                                                                                    z = false;
                                                                                    if (Util.bothNullOrEqual(this.signature, requestOptions.signature)) {
                                                                                        z = false;
                                                                                        if (Util.bothNullOrEqual(this.theme, requestOptions.theme)) {
                                                                                            z = true;
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    @CheckResult
    @NonNull
    public RequestOptions error(@DrawableRes int i) {
        if (this.isAutoCloneEnabled) {
            return clone().error(i);
        }
        this.errorId = i;
        this.fields |= 32;
        this.errorPlaceholder = null;
        this.fields &= -17;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions error(@Nullable Drawable drawable) {
        if (this.isAutoCloneEnabled) {
            return clone().error(drawable);
        }
        this.errorPlaceholder = drawable;
        this.fields |= 16;
        this.errorId = 0;
        this.fields &= -33;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions fallback(@DrawableRes int i) {
        if (this.isAutoCloneEnabled) {
            return clone().fallback(i);
        }
        this.fallbackId = i;
        this.fields |= 16384;
        this.fallbackDrawable = null;
        this.fields &= -8193;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions fallback(@Nullable Drawable drawable) {
        if (this.isAutoCloneEnabled) {
            return clone().fallback(drawable);
        }
        this.fallbackDrawable = drawable;
        this.fields |= 8192;
        this.fallbackId = 0;
        this.fields &= -16385;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions fitCenter() {
        return scaleOnlyTransform(DownsampleStrategy.FIT_CENTER, new FitCenter());
    }

    @CheckResult
    @NonNull
    public RequestOptions format(@NonNull DecodeFormat decodeFormat) {
        Preconditions.checkNotNull(decodeFormat);
        return set(Downsampler.DECODE_FORMAT, decodeFormat).set(GifOptions.DECODE_FORMAT, decodeFormat);
    }

    @CheckResult
    @NonNull
    public RequestOptions frame(@IntRange(from = 0) long j) {
        return set(VideoDecoder.TARGET_FRAME, Long.valueOf(j));
    }

    @NonNull
    public final DiskCacheStrategy getDiskCacheStrategy() {
        return this.diskCacheStrategy;
    }

    public final int getErrorId() {
        return this.errorId;
    }

    @Nullable
    public final Drawable getErrorPlaceholder() {
        return this.errorPlaceholder;
    }

    @Nullable
    public final Drawable getFallbackDrawable() {
        return this.fallbackDrawable;
    }

    public final int getFallbackId() {
        return this.fallbackId;
    }

    public final boolean getOnlyRetrieveFromCache() {
        return this.onlyRetrieveFromCache;
    }

    @NonNull
    public final Options getOptions() {
        return this.options;
    }

    public final int getOverrideHeight() {
        return this.overrideHeight;
    }

    public final int getOverrideWidth() {
        return this.overrideWidth;
    }

    @Nullable
    public final Drawable getPlaceholderDrawable() {
        return this.placeholderDrawable;
    }

    public final int getPlaceholderId() {
        return this.placeholderId;
    }

    @NonNull
    public final Priority getPriority() {
        return this.priority;
    }

    @NonNull
    public final Class<?> getResourceClass() {
        return this.resourceClass;
    }

    @NonNull
    public final Key getSignature() {
        return this.signature;
    }

    public final float getSizeMultiplier() {
        return this.sizeMultiplier;
    }

    @Nullable
    public final Resources.Theme getTheme() {
        return this.theme;
    }

    @NonNull
    public final Map<Class<?>, Transformation<?>> getTransformations() {
        return this.transformations;
    }

    public final boolean getUseAnimationPool() {
        return this.useAnimationPool;
    }

    public final boolean getUseUnlimitedSourceGeneratorsPool() {
        return this.useUnlimitedSourceGeneratorsPool;
    }

    public int hashCode() {
        return Util.hashCode(this.theme, Util.hashCode(this.signature, Util.hashCode(this.resourceClass, Util.hashCode(this.transformations, Util.hashCode(this.options, Util.hashCode(this.priority, Util.hashCode(this.diskCacheStrategy, Util.hashCode(this.onlyRetrieveFromCache, Util.hashCode(this.useUnlimitedSourceGeneratorsPool, Util.hashCode(this.isTransformationAllowed, Util.hashCode(this.isTransformationRequired, Util.hashCode(this.overrideWidth, Util.hashCode(this.overrideHeight, Util.hashCode(this.isCacheable, Util.hashCode(this.fallbackDrawable, Util.hashCode(this.fallbackId, Util.hashCode(this.placeholderDrawable, Util.hashCode(this.placeholderId, Util.hashCode(this.errorPlaceholder, Util.hashCode(this.errorId, Util.hashCode(this.sizeMultiplier)))))))))))))))))))));
    }

    protected boolean isAutoCloneEnabled() {
        return this.isAutoCloneEnabled;
    }

    public final boolean isDiskCacheStrategySet() {
        return isSet(4);
    }

    public final boolean isLocked() {
        return this.isLocked;
    }

    public final boolean isMemoryCacheable() {
        return this.isCacheable;
    }

    public final boolean isPrioritySet() {
        return isSet(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isScaleOnlyOrNoTransform() {
        return this.isScaleOnlyOrNoTransform;
    }

    public final boolean isSkipMemoryCacheSet() {
        return isSet(256);
    }

    public final boolean isTransformationAllowed() {
        return this.isTransformationAllowed;
    }

    public final boolean isTransformationRequired() {
        return this.isTransformationRequired;
    }

    public final boolean isTransformationSet() {
        return isSet(2048);
    }

    public final boolean isValidOverride() {
        return Util.isValidDimensions(this.overrideWidth, this.overrideHeight);
    }

    @NonNull
    public RequestOptions lock() {
        this.isLocked = true;
        return this;
    }

    @CheckResult
    @NonNull
    public RequestOptions onlyRetrieveFromCache(boolean z) {
        if (this.isAutoCloneEnabled) {
            return clone().onlyRetrieveFromCache(z);
        }
        this.onlyRetrieveFromCache = z;
        this.fields |= 524288;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions optionalCenterCrop() {
        return optionalTransform(DownsampleStrategy.CENTER_OUTSIDE, new CenterCrop());
    }

    @CheckResult
    @NonNull
    public RequestOptions optionalCenterInside() {
        return optionalScaleOnlyTransform(DownsampleStrategy.CENTER_INSIDE, new CenterInside());
    }

    @CheckResult
    @NonNull
    public RequestOptions optionalCircleCrop() {
        return optionalTransform(DownsampleStrategy.CENTER_OUTSIDE, new CircleCrop());
    }

    @CheckResult
    @NonNull
    public RequestOptions optionalFitCenter() {
        return optionalScaleOnlyTransform(DownsampleStrategy.FIT_CENTER, new FitCenter());
    }

    @CheckResult
    @NonNull
    public RequestOptions optionalTransform(@NonNull Transformation<Bitmap> transformation) {
        return transform(transformation, false);
    }

    @NonNull
    final RequestOptions optionalTransform(@NonNull DownsampleStrategy downsampleStrategy, @NonNull Transformation<Bitmap> transformation) {
        if (this.isAutoCloneEnabled) {
            return clone().optionalTransform(downsampleStrategy, transformation);
        }
        downsample(downsampleStrategy);
        return transform(transformation, false);
    }

    @CheckResult
    @NonNull
    public <T> RequestOptions optionalTransform(@NonNull Class<T> cls, @NonNull Transformation<T> transformation) {
        return transform(cls, transformation, false);
    }

    @CheckResult
    @NonNull
    public RequestOptions override(int i) {
        return override(i, i);
    }

    @CheckResult
    @NonNull
    public RequestOptions override(int i, int i2) {
        if (this.isAutoCloneEnabled) {
            return clone().override(i, i2);
        }
        this.overrideWidth = i;
        this.overrideHeight = i2;
        this.fields |= 512;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions placeholder(@DrawableRes int i) {
        if (this.isAutoCloneEnabled) {
            return clone().placeholder(i);
        }
        this.placeholderId = i;
        this.fields |= 128;
        this.placeholderDrawable = null;
        this.fields &= -65;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions placeholder(@Nullable Drawable drawable) {
        if (this.isAutoCloneEnabled) {
            return clone().placeholder(drawable);
        }
        this.placeholderDrawable = drawable;
        this.fields |= 64;
        this.placeholderId = 0;
        this.fields &= -129;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions priority(@NonNull Priority priority) {
        if (this.isAutoCloneEnabled) {
            return clone().priority(priority);
        }
        this.priority = (Priority) Preconditions.checkNotNull(priority);
        this.fields |= 8;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public <T> RequestOptions set(@NonNull Option<T> option, @NonNull T t) {
        if (this.isAutoCloneEnabled) {
            return clone().set(option, t);
        }
        Preconditions.checkNotNull(option);
        Preconditions.checkNotNull(t);
        this.options.set(option, t);
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions signature(@NonNull Key key) {
        if (this.isAutoCloneEnabled) {
            return clone().signature(key);
        }
        this.signature = (Key) Preconditions.checkNotNull(key);
        this.fields |= 1024;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions sizeMultiplier(@FloatRange(from = 0.0d, m429to = 1.0d) float f) {
        if (this.isAutoCloneEnabled) {
            return clone().sizeMultiplier(f);
        }
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.sizeMultiplier = f;
        this.fields |= 2;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions skipMemoryCache(boolean z) {
        if (this.isAutoCloneEnabled) {
            return clone().skipMemoryCache(true);
        }
        this.isCacheable = !z;
        this.fields |= 256;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions theme(@Nullable Resources.Theme theme) {
        if (this.isAutoCloneEnabled) {
            return clone().theme(theme);
        }
        this.theme = theme;
        this.fields |= 32768;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions timeout(@IntRange(from = 0) int i) {
        return set(HttpGlideUrlLoader.TIMEOUT, Integer.valueOf(i));
    }

    @CheckResult
    @NonNull
    public RequestOptions transform(@NonNull Transformation<Bitmap> transformation) {
        return transform(transformation, true);
    }

    @CheckResult
    @NonNull
    final RequestOptions transform(@NonNull DownsampleStrategy downsampleStrategy, @NonNull Transformation<Bitmap> transformation) {
        if (this.isAutoCloneEnabled) {
            return clone().transform(downsampleStrategy, transformation);
        }
        downsample(downsampleStrategy);
        return transform(transformation);
    }

    @CheckResult
    @NonNull
    public <T> RequestOptions transform(@NonNull Class<T> cls, @NonNull Transformation<T> transformation) {
        return transform(cls, transformation, true);
    }

    @CheckResult
    @NonNull
    public RequestOptions transforms(@NonNull Transformation<Bitmap>... transformationArr) {
        return transform((Transformation<Bitmap>) new MultiTransformation(transformationArr), true);
    }

    @CheckResult
    @NonNull
    public RequestOptions useAnimationPool(boolean z) {
        if (this.isAutoCloneEnabled) {
            return clone().useAnimationPool(z);
        }
        this.useAnimationPool = z;
        this.fields |= 1048576;
        return selfOrThrowIfLocked();
    }

    @CheckResult
    @NonNull
    public RequestOptions useUnlimitedSourceGeneratorsPool(boolean z) {
        if (this.isAutoCloneEnabled) {
            return clone().useUnlimitedSourceGeneratorsPool(z);
        }
        this.useUnlimitedSourceGeneratorsPool = z;
        this.fields |= 262144;
        return selfOrThrowIfLocked();
    }
}
