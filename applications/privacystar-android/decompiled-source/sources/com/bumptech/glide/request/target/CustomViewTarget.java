package com.bumptech.glide.request.target;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.bumptech.glide.C0943R;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/target/CustomViewTarget.class */
public abstract class CustomViewTarget<T extends View, Z> implements Target<Z> {
    private static final String TAG = "CustomViewTarget";
    @IdRes
    private static final int VIEW_TAG_ID = C0943R.C0946id.glide_custom_view_target_tag;
    @Nullable
    private View.OnAttachStateChangeListener attachStateListener;
    private boolean isAttachStateListenerAdded;
    private boolean isClearedByUs;
    @IdRes
    private int overrideTag;
    private final SizeDeterminer sizeDeterminer;
    protected final T view;

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer.class */
    static final class SizeDeterminer {
        private static final int PENDING_SIZE = 0;
        @VisibleForTesting
        @Nullable
        static Integer maxDisplayLength;
        private final List<SizeReadyCallback> cbs = new ArrayList();
        @Nullable
        private SizeDeterminerLayoutListener layoutListener;
        private final View view;
        boolean waitForLayout;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer$SizeDeterminerLayoutListener.class */
        public static final class SizeDeterminerLayoutListener implements ViewTreeObserver.OnPreDrawListener {
            private final WeakReference<SizeDeterminer> sizeDeterminerRef;

            SizeDeterminerLayoutListener(@NonNull SizeDeterminer sizeDeterminer) {
                this.sizeDeterminerRef = new WeakReference<>(sizeDeterminer);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable(CustomViewTarget.TAG, 2)) {
                    Log.v(CustomViewTarget.TAG, "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                SizeDeterminer sizeDeterminer = this.sizeDeterminerRef.get();
                if (sizeDeterminer == null) {
                    return true;
                }
                sizeDeterminer.checkCurrentDimens();
                return true;
            }
        }

        SizeDeterminer(@NonNull View view) {
            this.view = view;
        }

        private static int getMaxDisplayLength(@NonNull Context context) {
            if (maxDisplayLength == null) {
                Display defaultDisplay = ((WindowManager) Preconditions.checkNotNull((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                maxDisplayLength = Integer.valueOf(Math.max(point.x, point.y));
            }
            return maxDisplayLength.intValue();
        }

        private int getTargetDimen(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.waitForLayout && this.view.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.view.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            if (Log.isLoggable(CustomViewTarget.TAG, 4)) {
                Log.i(CustomViewTarget.TAG, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return getMaxDisplayLength(this.view.getContext());
        }

        private int getTargetHeight() {
            int paddingTop = this.view.getPaddingTop();
            int paddingBottom = this.view.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
            return getTargetDimen(this.view.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop + paddingBottom);
        }

        private int getTargetWidth() {
            int paddingLeft = this.view.getPaddingLeft();
            int paddingRight = this.view.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
            return getTargetDimen(this.view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft + paddingRight);
        }

        private boolean isDimensionValid(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        private boolean isViewStateAndSizeValid(int i, int i2) {
            return isDimensionValid(i) && isDimensionValid(i2);
        }

        private void notifyCbs(int i, int i2) {
            Iterator it = new ArrayList(this.cbs).iterator();
            while (it.hasNext()) {
                ((SizeReadyCallback) it.next()).onSizeReady(i, i2);
            }
        }

        void checkCurrentDimens() {
            if (!this.cbs.isEmpty()) {
                int targetWidth = getTargetWidth();
                int targetHeight = getTargetHeight();
                if (isViewStateAndSizeValid(targetWidth, targetHeight)) {
                    notifyCbs(targetWidth, targetHeight);
                    clearCallbacksAndListener();
                }
            }
        }

        void clearCallbacksAndListener() {
            ViewTreeObserver viewTreeObserver = this.view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.layoutListener);
            }
            this.layoutListener = null;
            this.cbs.clear();
        }

        void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
            int targetWidth = getTargetWidth();
            int targetHeight = getTargetHeight();
            if (isViewStateAndSizeValid(targetWidth, targetHeight)) {
                sizeReadyCallback.onSizeReady(targetWidth, targetHeight);
                return;
            }
            if (!this.cbs.contains(sizeReadyCallback)) {
                this.cbs.add(sizeReadyCallback);
            }
            if (this.layoutListener == null) {
                ViewTreeObserver viewTreeObserver = this.view.getViewTreeObserver();
                this.layoutListener = new SizeDeterminerLayoutListener(this);
                viewTreeObserver.addOnPreDrawListener(this.layoutListener);
            }
        }

        void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
            this.cbs.remove(sizeReadyCallback);
        }
    }

    public CustomViewTarget(@NonNull T t) {
        this.view = (T) ((View) Preconditions.checkNotNull(t));
        this.sizeDeterminer = new SizeDeterminer(t);
    }

    @Nullable
    private Object getTag() {
        return this.view.getTag(this.overrideTag == 0 ? VIEW_TAG_ID : this.overrideTag);
    }

    private void maybeAddAttachStateListener() {
        if (this.attachStateListener != null && !this.isAttachStateListenerAdded) {
            this.view.addOnAttachStateChangeListener(this.attachStateListener);
            this.isAttachStateListenerAdded = true;
        }
    }

    private void maybeRemoveAttachStateListener() {
        if (this.attachStateListener != null && this.isAttachStateListenerAdded) {
            this.view.removeOnAttachStateChangeListener(this.attachStateListener);
            this.isAttachStateListenerAdded = false;
        }
    }

    private void setTag(@Nullable Object obj) {
        this.view.setTag(this.overrideTag == 0 ? VIEW_TAG_ID : this.overrideTag, obj);
    }

    @NonNull
    public final CustomViewTarget<T, Z> clearOnDetach() {
        if (this.attachStateListener != null) {
            return this;
        }
        this.attachStateListener = new View.OnAttachStateChangeListener() { // from class: com.bumptech.glide.request.target.CustomViewTarget.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                CustomViewTarget.this.resumeMyRequest();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                CustomViewTarget.this.pauseMyRequest();
            }
        };
        maybeAddAttachStateListener();
        return this;
    }

    @Override // com.bumptech.glide.request.target.Target
    @Nullable
    public final Request getRequest() {
        Object tag = getTag();
        if (tag == null) {
            return null;
        }
        if (tag instanceof Request) {
            return (Request) tag;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.sizeDeterminer.getSize(sizeReadyCallback);
    }

    @NonNull
    public final T getView() {
        return this.view;
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void onLoadCleared(@Nullable Drawable drawable) {
        this.sizeDeterminer.clearCallbacksAndListener();
        onResourceCleared(drawable);
        if (!this.isClearedByUs) {
            maybeRemoveAttachStateListener();
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void onLoadStarted(@Nullable Drawable drawable) {
        maybeAddAttachStateListener();
        onResourceLoading(drawable);
    }

    protected abstract void onResourceCleared(@Nullable Drawable drawable);

    protected void onResourceLoading(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
    }

    final void pauseMyRequest() {
        Request request = getRequest();
        if (request != null) {
            this.isClearedByUs = true;
            request.clear();
            this.isClearedByUs = false;
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.sizeDeterminer.removeCallback(sizeReadyCallback);
    }

    final void resumeMyRequest() {
        Request request = getRequest();
        if (request != null && request.isCleared()) {
            request.begin();
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void setRequest(@Nullable Request request) {
        setTag(request);
    }

    public String toString() {
        return "Target for: " + this.view;
    }

    public final CustomViewTarget<T, Z> useTagId(@IdRes int i) {
        if (this.overrideTag != 0) {
            throw new IllegalArgumentException("You cannot change the tag id once it has been set.");
        }
        this.overrideTag = i;
        return this;
    }

    @NonNull
    public final CustomViewTarget<T, Z> waitForLayout() {
        this.sizeDeterminer.waitForLayout = true;
        return this;
    }
}
