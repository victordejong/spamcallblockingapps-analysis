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
import androidx.core.app.n;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/core/app/a.class */
public final class a extends androidx.core.content.b {

    /* renamed from: a  reason: collision with root package name */
    private static b f1697a;

    /* renamed from: androidx.core.app.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$a.class */
    public interface AbstractC0041a {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$b.class */
    public interface b {
        boolean a();
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$c.class */
    public interface c {
        void validateRequestPermissionsRequestCode(int i);
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$d.class */
    static final class d extends SharedElementCallback {

        /* renamed from: a  reason: collision with root package name */
        private final n f1702a;

        d(n nVar) {
            this.f1702a = nVar;
        }

        @Override // android.app.SharedElementCallback
        public final Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            Bitmap bitmap;
            Bitmap bitmap2;
            n nVar = this.f1702a;
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
                if (nVar.f1782a == null) {
                    nVar.f1782a = new Matrix();
                }
                nVar.f1782a.set(matrix);
                nVar.f1782a.postTranslate(-rectF.left, -rectF.top);
                nVar.f1782a.postScale(min2, min2);
                Bitmap createBitmap = Bitmap.createBitmap(i7, i8, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap);
                canvas2.concat(nVar.f1782a);
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
            new n.a() { // from class: androidx.core.app.a.d.1
                @Override // androidx.core.app.n.a
                public final void a() {
                    onSharedElementsReadyListener.onSharedElementsReady();
                }
            }.a();
        }
    }

    protected a() {
    }

    public static void a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    public static void a(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    public static void a(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
        }
    }

    public static void a(Activity activity, n nVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setEnterSharedElementCallback(nVar != null ? new d(nVar) : null);
        }
    }

    public static void a(final Activity activity, final String[] strArr, final int i) {
        b bVar = f1697a;
        if (bVar != null && bVar.a()) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof c) {
                ((c) activity).validateRequestPermissionsRequestCode(i);
            }
            activity.requestPermissions(strArr, i);
        } else if (activity instanceof AbstractC0041a) {
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
                    ((AbstractC0041a) activity).onRequestPermissionsResult(i, strArr, iArr);
                }
            });
        }
    }

    public static boolean a(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    public static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.finishAfterTransition();
        } else {
            activity.finish();
        }
    }

    public static void b(Activity activity, n nVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setExitSharedElementCallback(nVar != null ? new d(nVar) : null);
        }
    }

    public static void c(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.postponeEnterTransition();
        }
    }

    public static void d(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.startPostponedEnterTransition();
        }
    }

    public static void e(final Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (Build.VERSION.SDK_INT <= 23) {
            new Handler(activity.getMainLooper()).post(new Runnable() { // from class: androidx.core.app.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (!activity.isFinishing() && !androidx.core.app.c.a(activity)) {
                        activity.recreate();
                    }
                }
            });
        } else if (!androidx.core.app.c.a(activity)) {
            activity.recreate();
        }
    }
}
