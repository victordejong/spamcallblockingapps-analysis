package com.google.android.material.transition.platform;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.transition.Transition;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import com.google.android.material.C1027R;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback.class */
public class MaterialContainerTransformSharedElementCallback extends SharedElementCallback {
    @Nullable

    /* renamed from: f */
    private static WeakReference<View> f11883f;
    @Nullable

    /* renamed from: d */
    private Rect f11887d;

    /* renamed from: a */
    private boolean f11884a = true;

    /* renamed from: b */
    private boolean f11885b = true;

    /* renamed from: c */
    private boolean f11886c = false;
    @Nullable

    /* renamed from: e */
    private ShapeProvider f11888e = new ShapeableViewShapeProvider();

    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider.class */
    public interface ShapeProvider {
        @Nullable
        /* renamed from: a */
        ShapeAppearanceModel mo8489a(@NonNull View view);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider.class */
    public static class ShapeableViewShapeProvider implements ShapeProvider {
        @Override // com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback.ShapeProvider
        @Nullable
        /* renamed from: a */
        public ShapeAppearanceModel mo8489a(@NonNull View view) {
            return view instanceof Shapeable ? ((Shapeable) view).getShapeAppearanceModel() : null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static void m8494e(Window window) {
        window.getDecorView().getBackground().mutate().setColorFilter(BlendModeColorFilterCompat.m19590a(0, BlendModeCompat.CLEAR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static void m8493f(Window window) {
        window.getDecorView().getBackground().mutate().clearColorFilter();
    }

    /* renamed from: g */
    private void m8492g(final Window window) {
        Transition sharedElementEnterTransition = window.getSharedElementEnterTransition();
        if (sharedElementEnterTransition instanceof MaterialContainerTransform) {
            MaterialContainerTransform materialContainerTransform = (MaterialContainerTransform) sharedElementEnterTransition;
            if (!this.f11886c) {
                window.setSharedElementReenterTransition(null);
            }
            if (this.f11885b) {
                m8490i(window, materialContainerTransform);
                materialContainerTransform.addListener(new TransitionListenerAdapter(this) { // from class: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback.1
                    @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionEnd(Transition transition) {
                        MaterialContainerTransformSharedElementCallback.m8493f(window);
                    }

                    @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionStart(Transition transition) {
                        MaterialContainerTransformSharedElementCallback.m8494e(window);
                    }
                });
            }
        }
    }

    /* renamed from: h */
    private void m8491h(final Activity activity, final Window window) {
        Transition sharedElementReturnTransition = window.getSharedElementReturnTransition();
        if (sharedElementReturnTransition instanceof MaterialContainerTransform) {
            MaterialContainerTransform materialContainerTransform = (MaterialContainerTransform) sharedElementReturnTransition;
            materialContainerTransform.m8523n(true);
            materialContainerTransform.addListener(new TransitionListenerAdapter(this) { // from class: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback.2
                @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition) {
                    View view;
                    if (!(MaterialContainerTransformSharedElementCallback.f11883f == null || (view = (View) MaterialContainerTransformSharedElementCallback.f11883f.get()) == null)) {
                        view.setAlpha(1.0f);
                        WeakReference unused = MaterialContainerTransformSharedElementCallback.f11883f = null;
                    }
                    activity.finish();
                    activity.overridePendingTransition(0, 0);
                }
            });
            if (this.f11885b) {
                m8490i(window, materialContainerTransform);
                materialContainerTransform.addListener(new TransitionListenerAdapter(this) { // from class: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback.3
                    @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionStart(Transition transition) {
                        MaterialContainerTransformSharedElementCallback.m8494e(window);
                    }
                });
            }
        }
    }

    /* renamed from: i */
    private static void m8490i(Window window, MaterialContainerTransform materialContainerTransform) {
        window.setTransitionBackgroundFadeDuration(materialContainerTransform.getDuration());
    }

    @Override // android.app.SharedElementCallback
    @Nullable
    public Parcelable onCaptureSharedElementSnapshot(@NonNull View view, @NonNull Matrix matrix, @NonNull RectF rectF) {
        f11883f = new WeakReference<>(view);
        return super.onCaptureSharedElementSnapshot(view, matrix, rectF);
    }

    @Override // android.app.SharedElementCallback
    @Nullable
    public View onCreateSnapshotView(@NonNull Context context, @Nullable Parcelable parcelable) {
        WeakReference<View> weakReference;
        View view;
        ShapeAppearanceModel a;
        View onCreateSnapshotView = super.onCreateSnapshotView(context, parcelable);
        if (!(onCreateSnapshotView == null || (weakReference = f11883f) == null || this.f11888e == null || (view = weakReference.get()) == null || (a = this.f11888e.mo8489a(view)) == null)) {
            onCreateSnapshotView.setTag(C1027R.C1030id.mtrl_motion_snapshot_view, a);
        }
        return onCreateSnapshotView;
    }

    @Override // android.app.SharedElementCallback
    public void onMapSharedElements(@NonNull List<String> list, @NonNull Map<String, View> map) {
        View view;
        Activity a;
        if (!list.isEmpty() && !map.isEmpty() && (view = map.get(list.get(0))) != null && (a = ContextUtils.m9555a(view.getContext())) != null) {
            Window window = a.getWindow();
            if (this.f11884a) {
                m8492g(window);
            } else {
                m8491h(a, window);
            }
        }
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementEnd(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty() && (list2.get(0).getTag(C1027R.C1030id.mtrl_motion_snapshot_view) instanceof View)) {
            list2.get(0).setTag(C1027R.C1030id.mtrl_motion_snapshot_view, null);
        }
        if (!this.f11884a && !list2.isEmpty()) {
            this.f11887d = TransitionUtils.m8466i(list2.get(0));
        }
        this.f11884a = false;
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementStart(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty() && !list3.isEmpty()) {
            list2.get(0).setTag(C1027R.C1030id.mtrl_motion_snapshot_view, list3.get(0));
        }
        if (!this.f11884a && !list2.isEmpty() && this.f11887d != null) {
            View view = list2.get(0);
            view.measure(View.MeasureSpec.makeMeasureSpec(this.f11887d.width(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f11887d.height(), 1073741824));
            Rect rect = this.f11887d;
            view.layout(rect.left, rect.top, rect.right, rect.bottom);
        }
    }
}
