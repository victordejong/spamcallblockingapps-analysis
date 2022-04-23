package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.app.b;
import android.support.v4.app.c;
import android.view.View;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/a.class */
public final class a extends android.support.v4.content.a {

    /* renamed from: android.support.v4.app.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/a$a.class */
    public interface AbstractC0002a {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/a$b.class */
    private static final class b extends b.a {

        /* renamed from: a  reason: collision with root package name */
        private ai f43a;

        public b(ai aiVar) {
            this.f43a = aiVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.app.b.a
        public final Parcelable a(View view, Matrix matrix, RectF rectF) {
            Bitmap bitmap;
            Bitmap a2;
            ai aiVar = this.f43a;
            if (view instanceof ImageView) {
                ImageView imageView = (ImageView) view;
                Drawable drawable = imageView.getDrawable();
                Drawable background = imageView.getBackground();
                if (!(drawable == null || background != null || (a2 = ai.a(drawable)) == null)) {
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("sharedElement:snapshot:bitmap", a2);
                    bundle.putString("sharedElement:snapshot:imageScaleType", imageView.getScaleType().toString());
                    bitmap = bundle;
                    if (imageView.getScaleType() == ImageView.ScaleType.MATRIX) {
                        Matrix imageMatrix = imageView.getImageMatrix();
                        float[] fArr = new float[9];
                        imageMatrix.getValues(fArr);
                        bundle.putFloatArray("sharedElement:snapshot:imageMatrix", fArr);
                        bitmap = bundle;
                    }
                    return bitmap;
                }
            }
            int round = Math.round(rectF.width());
            int round2 = Math.round(rectF.height());
            bitmap = null;
            if (round > 0) {
                bitmap = null;
                if (round2 > 0) {
                    float min = Math.min(1.0f, ai.f53b / (round * round2));
                    int i = (int) (round * min);
                    int i2 = (int) (round2 * min);
                    if (aiVar.f54a == null) {
                        aiVar.f54a = new Matrix();
                    }
                    aiVar.f54a.set(matrix);
                    aiVar.f54a.postTranslate(-rectF.left, -rectF.top);
                    aiVar.f54a.postScale(min, min);
                    Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    canvas.concat(aiVar.f54a);
                    view.draw(canvas);
                    bitmap = createBitmap;
                }
            }
            return bitmap;
        }

        @Override // android.support.v4.app.b.a
        public final View a(Context context, Parcelable parcelable) {
            return ai.a(context, parcelable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b.a a(ai aiVar) {
        b bVar = null;
        if (aiVar != null) {
            bVar = new b(aiVar);
        }
        return bVar;
    }

    public static void a(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    public static void a(final Activity activity, final String[] strArr, final int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof c.a) {
                ((c.a) activity).validateRequestPermissionsRequestCode(i);
            }
            activity.requestPermissions(strArr, i);
        } else if (activity instanceof AbstractC0002a) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: android.support.v4.app.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    int[] iArr = new int[strArr.length];
                    PackageManager packageManager = activity.getPackageManager();
                    String packageName = activity.getPackageName();
                    int length = strArr.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr[i2] = packageManager.checkPermission(strArr[i2], packageName);
                    }
                    ((AbstractC0002a) activity).onRequestPermissionsResult(i, strArr, iArr);
                }
            });
        }
    }
}
