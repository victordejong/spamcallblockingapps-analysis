package com.squareup.picasso;

import android.app.Notification;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.TypedValue;
import android.widget.ImageView;
import android.widget.RemoteViews;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RemoteViewsAction;
import com.squareup.picasso.Request;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/RequestCreator.class */
public class RequestCreator {
    private static final AtomicInteger nextId = new AtomicInteger();
    private final Request.Builder data;
    private boolean deferred;
    private Drawable errorDrawable;
    private int errorResId;
    private int memoryPolicy;
    private int networkPolicy;
    private boolean noFade;
    private final Picasso picasso;
    private Drawable placeholderDrawable;
    private int placeholderResId;
    private boolean setPlaceholder;
    private Object tag;

    RequestCreator() {
        this.setPlaceholder = true;
        this.picasso = null;
        this.data = new Request.Builder(null, 0, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestCreator(Picasso picasso, Uri uri, int i) {
        this.setPlaceholder = true;
        if (!picasso.shutdown) {
            this.picasso = picasso;
            this.data = new Request.Builder(uri, i, picasso.defaultBitmapConfig);
            return;
        }
        throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
    }

    private Request createRequest(long j) {
        int andIncrement = nextId.getAndIncrement();
        Request build = this.data.build();
        build.id = andIncrement;
        build.started = j;
        boolean z = this.picasso.loggingEnabled;
        if (z) {
            Utils.log("Main", "created", build.plainId(), build.toString());
        }
        Request transformRequest = this.picasso.transformRequest(build);
        if (transformRequest != build) {
            transformRequest.id = andIncrement;
            transformRequest.started = j;
            if (z) {
                Utils.log("Main", "changed", transformRequest.logId(), "into ".concat(String.valueOf(transformRequest)));
            }
        }
        return transformRequest;
    }

    private Drawable getPlaceholderDrawable() {
        if (this.placeholderResId == 0) {
            return this.placeholderDrawable;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return this.picasso.context.getDrawable(this.placeholderResId);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return this.picasso.context.getResources().getDrawable(this.placeholderResId);
        }
        TypedValue typedValue = new TypedValue();
        this.picasso.context.getResources().getValue(this.placeholderResId, typedValue, true);
        return this.picasso.context.getResources().getDrawable(typedValue.resourceId);
    }

    private void performRemoteViewInto(RemoteViewsAction remoteViewsAction) {
        Bitmap quickMemoryCacheCheck;
        if (!MemoryPolicy.shouldReadFromMemoryCache(this.memoryPolicy) || (quickMemoryCacheCheck = this.picasso.quickMemoryCacheCheck(remoteViewsAction.getKey())) == null) {
            int i = this.placeholderResId;
            if (i != 0) {
                remoteViewsAction.setImageResource(i);
            }
            this.picasso.enqueueAndSubmit(remoteViewsAction);
            return;
        }
        remoteViewsAction.complete(quickMemoryCacheCheck, Picasso.LoadedFrom.MEMORY);
    }

    public RequestCreator centerCrop() {
        this.data.centerCrop(17);
        return this;
    }

    public RequestCreator centerCrop(int i) {
        this.data.centerCrop(i);
        return this;
    }

    public RequestCreator centerInside() {
        this.data.centerInside();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestCreator clearTag() {
        this.tag = null;
        return this;
    }

    public RequestCreator config(Bitmap.Config config) {
        this.data.config(config);
        return this;
    }

    public RequestCreator error(int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Error image resource invalid.");
        } else if (this.errorDrawable == null) {
            this.errorResId = i;
            return this;
        } else {
            throw new IllegalStateException("Error image already set.");
        }
    }

    public RequestCreator error(Drawable drawable) {
        if (drawable == null) {
            throw new IllegalArgumentException("Error image may not be null.");
        } else if (this.errorResId == 0) {
            this.errorDrawable = drawable;
            return this;
        } else {
            throw new IllegalStateException("Error image already set.");
        }
    }

    public void fetch() {
        fetch(null);
    }

    public void fetch(Callback callback) {
        long nanoTime = System.nanoTime();
        if (this.deferred) {
            throw new IllegalStateException("Fit cannot be used with fetch.");
        } else if (this.data.hasImage()) {
            if (!this.data.hasPriority()) {
                this.data.priority(Picasso.Priority.LOW);
            }
            Request createRequest = createRequest(nanoTime);
            String createKey = Utils.createKey(createRequest, new StringBuilder());
            if (!MemoryPolicy.shouldReadFromMemoryCache(this.memoryPolicy) || this.picasso.quickMemoryCacheCheck(createKey) == null) {
                this.picasso.submit(new FetchAction(this.picasso, createRequest, this.memoryPolicy, this.networkPolicy, this.tag, createKey, callback));
                return;
            }
            if (this.picasso.loggingEnabled) {
                String plainId = createRequest.plainId();
                Utils.log("Main", "completed", plainId, "from " + Picasso.LoadedFrom.MEMORY);
            }
            if (callback != null) {
                callback.onSuccess();
            }
        }
    }

    public RequestCreator fit() {
        this.deferred = true;
        return this;
    }

    public Bitmap get() throws IOException {
        long nanoTime = System.nanoTime();
        Utils.checkNotMain();
        if (this.deferred) {
            throw new IllegalStateException("Fit cannot be used with get.");
        } else if (!this.data.hasImage()) {
            return null;
        } else {
            Request createRequest = createRequest(nanoTime);
            GetAction getAction = new GetAction(this.picasso, createRequest, this.memoryPolicy, this.networkPolicy, this.tag, Utils.createKey(createRequest, new StringBuilder()));
            Picasso picasso = this.picasso;
            return BitmapHunter.forRequest(picasso, picasso.dispatcher, this.picasso.cache, this.picasso.stats, getAction).hunt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object getTag() {
        return this.tag;
    }

    public void into(ImageView imageView) {
        into(imageView, null);
    }

    public void into(ImageView imageView, Callback callback) {
        Bitmap quickMemoryCacheCheck;
        long nanoTime = System.nanoTime();
        Utils.checkMain();
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        } else if (!this.data.hasImage()) {
            this.picasso.cancelRequest(imageView);
            if (this.setPlaceholder) {
                PicassoDrawable.setPlaceholder(imageView, getPlaceholderDrawable());
            }
        } else {
            if (this.deferred) {
                if (!this.data.hasSize()) {
                    int width = imageView.getWidth();
                    int height = imageView.getHeight();
                    if (width == 0 || height == 0) {
                        if (this.setPlaceholder) {
                            PicassoDrawable.setPlaceholder(imageView, getPlaceholderDrawable());
                        }
                        this.picasso.defer(imageView, new DeferredRequestCreator(this, imageView, callback));
                        return;
                    }
                    this.data.resize(width, height);
                } else {
                    throw new IllegalStateException("Fit cannot be used with resize.");
                }
            }
            Request createRequest = createRequest(nanoTime);
            String createKey = Utils.createKey(createRequest);
            if (!MemoryPolicy.shouldReadFromMemoryCache(this.memoryPolicy) || (quickMemoryCacheCheck = this.picasso.quickMemoryCacheCheck(createKey)) == null) {
                if (this.setPlaceholder) {
                    PicassoDrawable.setPlaceholder(imageView, getPlaceholderDrawable());
                }
                this.picasso.enqueueAndSubmit(new ImageViewAction(this.picasso, imageView, createRequest, this.memoryPolicy, this.networkPolicy, this.errorResId, this.errorDrawable, createKey, this.tag, callback, this.noFade));
                return;
            }
            this.picasso.cancelRequest(imageView);
            PicassoDrawable.setBitmap(imageView, this.picasso.context, quickMemoryCacheCheck, Picasso.LoadedFrom.MEMORY, this.noFade, this.picasso.indicatorsEnabled);
            if (this.picasso.loggingEnabled) {
                String plainId = createRequest.plainId();
                Utils.log("Main", "completed", plainId, "from " + Picasso.LoadedFrom.MEMORY);
            }
            if (callback != null) {
                callback.onSuccess();
            }
        }
    }

    public void into(RemoteViews remoteViews, int i, int i2, Notification notification) {
        into(remoteViews, i, i2, notification, null);
    }

    public void into(RemoteViews remoteViews, int i, int i2, Notification notification, String str) {
        into(remoteViews, i, i2, notification, str, null);
    }

    public void into(RemoteViews remoteViews, int i, int i2, Notification notification, String str, Callback callback) {
        long nanoTime = System.nanoTime();
        if (remoteViews == null) {
            throw new IllegalArgumentException("RemoteViews must not be null.");
        } else if (notification == null) {
            throw new IllegalArgumentException("Notification must not be null.");
        } else if (this.deferred) {
            throw new IllegalStateException("Fit cannot be used with RemoteViews.");
        } else if (this.placeholderDrawable == null && this.placeholderResId == 0 && this.errorDrawable == null) {
            Request createRequest = createRequest(nanoTime);
            performRemoteViewInto(new RemoteViewsAction.NotificationAction(this.picasso, createRequest, remoteViews, i, i2, notification, str, this.memoryPolicy, this.networkPolicy, Utils.createKey(createRequest, new StringBuilder()), this.tag, this.errorResId, callback));
        } else {
            throw new IllegalArgumentException("Cannot use placeholder or error drawables with remote views.");
        }
    }

    public void into(RemoteViews remoteViews, int i, int[] iArr) {
        into(remoteViews, i, iArr, (Callback) null);
    }

    public void into(RemoteViews remoteViews, int i, int[] iArr, Callback callback) {
        long nanoTime = System.nanoTime();
        if (remoteViews == null) {
            throw new IllegalArgumentException("remoteViews must not be null.");
        } else if (iArr == null) {
            throw new IllegalArgumentException("appWidgetIds must not be null.");
        } else if (this.deferred) {
            throw new IllegalStateException("Fit cannot be used with remote views.");
        } else if (this.placeholderDrawable == null && this.placeholderResId == 0 && this.errorDrawable == null) {
            Request createRequest = createRequest(nanoTime);
            performRemoteViewInto(new RemoteViewsAction.AppWidgetAction(this.picasso, createRequest, remoteViews, i, iArr, this.memoryPolicy, this.networkPolicy, Utils.createKey(createRequest, new StringBuilder()), this.tag, this.errorResId, callback));
        } else {
            throw new IllegalArgumentException("Cannot use placeholder or error drawables with remote views.");
        }
    }

    public void into(Target target) {
        Bitmap quickMemoryCacheCheck;
        long nanoTime = System.nanoTime();
        Utils.checkMain();
        if (target == null) {
            throw new IllegalArgumentException("Target must not be null.");
        } else if (!this.deferred) {
            Drawable drawable = null;
            Drawable drawable2 = null;
            if (!this.data.hasImage()) {
                this.picasso.cancelRequest(target);
                if (this.setPlaceholder) {
                    drawable2 = getPlaceholderDrawable();
                }
                target.onPrepareLoad(drawable2);
                return;
            }
            Request createRequest = createRequest(nanoTime);
            String createKey = Utils.createKey(createRequest);
            if (!MemoryPolicy.shouldReadFromMemoryCache(this.memoryPolicy) || (quickMemoryCacheCheck = this.picasso.quickMemoryCacheCheck(createKey)) == null) {
                if (this.setPlaceholder) {
                    drawable = getPlaceholderDrawable();
                }
                target.onPrepareLoad(drawable);
                this.picasso.enqueueAndSubmit(new TargetAction(this.picasso, target, createRequest, this.memoryPolicy, this.networkPolicy, this.errorDrawable, createKey, this.tag, this.errorResId));
                return;
            }
            this.picasso.cancelRequest(target);
            target.onBitmapLoaded(quickMemoryCacheCheck, Picasso.LoadedFrom.MEMORY);
        } else {
            throw new IllegalStateException("Fit cannot be used with a Target.");
        }
    }

    public RequestCreator memoryPolicy(MemoryPolicy memoryPolicy, MemoryPolicy... memoryPolicyArr) {
        if (memoryPolicy != null) {
            this.memoryPolicy = memoryPolicy.index | this.memoryPolicy;
            if (memoryPolicyArr != null) {
                if (memoryPolicyArr.length > 0) {
                    for (MemoryPolicy memoryPolicy2 : memoryPolicyArr) {
                        if (memoryPolicy2 != null) {
                            this.memoryPolicy = memoryPolicy2.index | this.memoryPolicy;
                        } else {
                            throw new IllegalArgumentException("Memory policy cannot be null.");
                        }
                    }
                }
                return this;
            }
            throw new IllegalArgumentException("Memory policy cannot be null.");
        }
        throw new IllegalArgumentException("Memory policy cannot be null.");
    }

    public RequestCreator networkPolicy(NetworkPolicy networkPolicy, NetworkPolicy... networkPolicyArr) {
        if (networkPolicy != null) {
            this.networkPolicy = networkPolicy.index | this.networkPolicy;
            if (networkPolicyArr != null) {
                if (networkPolicyArr.length > 0) {
                    for (NetworkPolicy networkPolicy2 : networkPolicyArr) {
                        if (networkPolicy2 != null) {
                            this.networkPolicy = networkPolicy2.index | this.networkPolicy;
                        } else {
                            throw new IllegalArgumentException("Network policy cannot be null.");
                        }
                    }
                }
                return this;
            }
            throw new IllegalArgumentException("Network policy cannot be null.");
        }
        throw new IllegalArgumentException("Network policy cannot be null.");
    }

    public RequestCreator noFade() {
        this.noFade = true;
        return this;
    }

    public RequestCreator noPlaceholder() {
        if (this.placeholderResId != 0) {
            throw new IllegalStateException("Placeholder resource already set.");
        } else if (this.placeholderDrawable == null) {
            this.setPlaceholder = false;
            return this;
        } else {
            throw new IllegalStateException("Placeholder image already set.");
        }
    }

    public RequestCreator onlyScaleDown() {
        this.data.onlyScaleDown();
        return this;
    }

    public RequestCreator placeholder(int i) {
        if (!this.setPlaceholder) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        } else if (i == 0) {
            throw new IllegalArgumentException("Placeholder image resource invalid.");
        } else if (this.placeholderDrawable == null) {
            this.placeholderResId = i;
            return this;
        } else {
            throw new IllegalStateException("Placeholder image already set.");
        }
    }

    public RequestCreator placeholder(Drawable drawable) {
        if (!this.setPlaceholder) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        } else if (this.placeholderResId == 0) {
            this.placeholderDrawable = drawable;
            return this;
        } else {
            throw new IllegalStateException("Placeholder image already set.");
        }
    }

    public RequestCreator priority(Picasso.Priority priority) {
        this.data.priority(priority);
        return this;
    }

    public RequestCreator purgeable() {
        this.data.purgeable();
        return this;
    }

    public RequestCreator resize(int i, int i2) {
        this.data.resize(i, i2);
        return this;
    }

    public RequestCreator resizeDimen(int i, int i2) {
        Resources resources = this.picasso.context.getResources();
        return resize(resources.getDimensionPixelSize(i), resources.getDimensionPixelSize(i2));
    }

    public RequestCreator rotate(float f) {
        this.data.rotate(f);
        return this;
    }

    public RequestCreator rotate(float f, float f2, float f3) {
        this.data.rotate(f, f2, f3);
        return this;
    }

    public RequestCreator stableKey(String str) {
        this.data.stableKey(str);
        return this;
    }

    public RequestCreator tag(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Tag invalid.");
        } else if (this.tag == null) {
            this.tag = obj;
            return this;
        } else {
            throw new IllegalStateException("Tag already set.");
        }
    }

    public RequestCreator transform(Transformation transformation) {
        this.data.transform(transformation);
        return this;
    }

    public RequestCreator transform(List<? extends Transformation> list) {
        this.data.transform(list);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestCreator unfit() {
        this.deferred = false;
        return this;
    }
}
