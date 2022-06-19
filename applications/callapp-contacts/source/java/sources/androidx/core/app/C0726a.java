package androidx.core.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.widget.ImageView;
import androidx.core.app.AbstractC0766n;
import androidx.core.content.C0790b;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.core.app.a */
/* loaded from: classes-dex2jar.jar:androidx/core/app/a.class */
public final class C0726a extends C0790b {

    /* renamed from: a */
    private static AbstractC0730b f3259a;

    /* renamed from: androidx.core.app.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$a.class */
    public interface AbstractC0729a {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* renamed from: androidx.core.app.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$b.class */
    public interface AbstractC0730b {
        /* renamed from: a */
        boolean m44607a();
    }

    /* renamed from: androidx.core.app.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$c.class */
    public interface AbstractC0731c {
        void validateRequestPermissionsRequestCode(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$d.class */
    public static final class SharedElementCallbackC0732d extends SharedElementCallback {

        /* renamed from: a */
        private final AbstractC0766n f3264a;

        SharedElementCallbackC0732d(AbstractC0766n abstractC0766n) {
            this.f3264a = abstractC0766n;
        }

        @Override // android.app.SharedElementCallback
        public final Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            Bitmap bitmap;
            Bitmap bitmap2;
            AbstractC0766n abstractC0766n = this.f3264a;
            if (view instanceof ImageView) {
                ImageView imageView = (ImageView) view;
                Drawable drawable = imageView.getDrawable();
                Drawable background = imageView.getBackground();
                if (drawable != null && background == null) {
                    int intrinsicWidth = drawable.getIntrinsicWidth();
                    int intrinsicHeight = drawable.getIntrinsicHeight();
                    if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                        bitmap2 = null;
                    } else {
                        float min = Math.min(1.0f, 1048576.0f / (intrinsicWidth * intrinsicHeight));
                        if (!(drawable instanceof BitmapDrawable) || min != 1.0f) {
                            int i = (int) (intrinsicWidth * min);
                            int i2 = (int) (intrinsicHeight * min);
                            bitmap2 = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                            Canvas canvas = new Canvas(bitmap2);
                            Rect bounds = drawable.getBounds();
                            int i3 = bounds.left;
                            int i4 = bounds.top;
                            int i5 = bounds.right;
                            int i6 = bounds.bottom;
                            drawable.setBounds(0, 0, i, i2);
                            drawable.draw(canvas);
                            drawable.setBounds(i3, i4, i5, i6);
                        } else {
                            bitmap2 = ((BitmapDrawable) drawable).getBitmap();
                        }
                    }
                    if (bitmap2 != null) {
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("sharedElement:snapshot:bitmap", bitmap2);
                        bundle.putString("sharedElement:snapshot:imageScaleType", imageView.getScaleType().toString());
                        if (imageView.getScaleType() == ImageView.ScaleType.MATRIX) {
                            Matrix imageMatrix = imageView.getImageMatrix();
                            float[] fArr = new float[9];
                            imageMatrix.getValues(fArr);
                            bundle.putFloatArray("sharedElement:snapshot:imageMatrix", fArr);
                        }
                        return bundle;
                    }
                }
            }
            int round = Math.round(rectF.width());
            int round2 = Math.round(rectF.height());
            if (round <= 0 || round2 <= 0) {
                bitmap = null;
            } else {
                float min2 = Math.min(1.0f, 1048576.0f / (round * round2));
                int i7 = (int) (round * min2);
                int i8 = (int) (round2 * min2);
                if (abstractC0766n.f3426a == null) {
                    abstractC0766n.f3426a = new Matrix();
                }
                abstractC0766n.f3426a.set(matrix);
                abstractC0766n.f3426a.postTranslate(-rectF.left, -rectF.top);
                abstractC0766n.f3426a.postScale(min2, min2);
                Bitmap createBitmap = Bitmap.createBitmap(i7, i8, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap);
                canvas2.concat(abstractC0766n.f3426a);
                view.draw(canvas2);
                bitmap = createBitmap;
            }
            return bitmap;
        }

        @Override // android.app.SharedElementCallback
        public final View onCreateSnapshotView(Context context, Parcelable parcelable) {
            ImageView imageView = null;
            if (parcelable instanceof Bundle) {
                Bundle bundle = (Bundle) parcelable;
                Bitmap bitmap = (Bitmap) bundle.getParcelable("sharedElement:snapshot:bitmap");
                if (bitmap == null) {
                    return null;
                }
                ImageView imageView2 = new ImageView(context);
                imageView2.setImageBitmap(bitmap);
                imageView2.setScaleType(ImageView.ScaleType.valueOf(bundle.getString("sharedElement:snapshot:imageScaleType")));
                imageView = imageView2;
                if (imageView2.getScaleType() == ImageView.ScaleType.MATRIX) {
                    float[] floatArray = bundle.getFloatArray("sharedElement:snapshot:imageMatrix");
                    Matrix matrix = new Matrix();
                    matrix.setValues(floatArray);
                    imageView2.setImageMatrix(matrix);
                    imageView = imageView2;
                }
            } else if (parcelable instanceof Bitmap) {
                imageView = new ImageView(context);
                imageView.setImageBitmap((Bitmap) parcelable);
            }
            return imageView;
        }

        @Override // android.app.SharedElementCallback
        public final void onMapSharedElements(List<String> list, Map<String, View> map) {
        }

        @Override // android.app.SharedElementCallback
        public final void onRejectSharedElements(List<View> list) {
        }

        @Override // android.app.SharedElementCallback
        public final void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
        }

        @Override // android.app.SharedElementCallback
        public final void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
        }

        @Override // android.app.SharedElementCallback
        public final void onSharedElementsArrived(List<String> list, List<View> list2, final SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            new AbstractC0766n.AbstractC0767a() { // from class: androidx.core.app.a.d.1
                @Override // androidx.core.app.AbstractC0766n.AbstractC0767a
                /* renamed from: a */
                public final void mo44529a() {
                    onSharedElementsReadyListener.onSharedElementsReady();
                }
            }.mo44529a();
        }
    }

    protected C0726a() {
    }

    /* renamed from: a */
    public static void m44618a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    /* renamed from: a */
    public static void m44617a(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    /* renamed from: a */
    public static void m44616a(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public static void m44615a(Activity activity, AbstractC0766n abstractC0766n) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setEnterSharedElementCallback(abstractC0766n != null ? new SharedElementCallbackC0732d(abstractC0766n) : null);
        }
    }

    /* renamed from: a */
    public static void m44613a(final Activity activity, final String[] strArr, final int i) {
        AbstractC0730b abstractC0730b = f3259a;
        if (abstractC0730b == null || !abstractC0730b.m44607a()) {
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof AbstractC0731c) {
                    ((AbstractC0731c) activity).validateRequestPermissionsRequestCode(i);
                }
                activity.requestPermissions(strArr, i);
            } else if (!(activity instanceof AbstractC0729a)) {
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.core.app.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int[] iArr = new int[strArr.length];
                        PackageManager packageManager = activity.getPackageManager();
                        String packageName = activity.getPackageName();
                        int length = strArr.length;
                        for (int i2 = 0; i2 < length; i2++) {
                            iArr[i2] = packageManager.checkPermission(strArr[i2], packageName);
                        }
                        ((AbstractC0729a) activity).onRequestPermissionsResult(i, strArr, iArr);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public static boolean m44614a(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    /* renamed from: b */
    public static void m44612b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.finishAfterTransition();
        } else {
            activity.finish();
        }
    }

    /* renamed from: b */
    public static void m44611b(Activity activity, AbstractC0766n abstractC0766n) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setExitSharedElementCallback(abstractC0766n != null ? new SharedElementCallbackC0732d(abstractC0766n) : null);
        }
    }

    /* renamed from: c */
    public static void m44610c(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.postponeEnterTransition();
        }
    }

    /* renamed from: d */
    public static void m44609d(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.startPostponedEnterTransition();
        }
    }

    /* renamed from: e */
    public static void m44608e(final Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (Build.VERSION.SDK_INT <= 23) {
            new Handler(activity.getMainLooper()).post(new Runnable() { // from class: androidx.core.app.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (activity.isFinishing() || C0736c.m44603a(activity)) {
                        return;
                    }
                    activity.recreate();
                }
            });
        } else if (C0736c.m44603a(activity)) {
        } else {
            activity.recreate();
        }
    }
}
