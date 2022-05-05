package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.Log;
import com.bumptech.glide.load.b.a.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/i.class */
public final class i extends d {
    public i(c cVar) {
        super(cVar);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.d
    protected final Bitmap a(c cVar, Bitmap bitmap, int i, int i2) {
        Bitmap bitmap2;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            bitmap2 = bitmap;
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size matches input, returning input");
                bitmap2 = bitmap;
            }
        } else {
            float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
            int width = (int) (bitmap.getWidth() * min);
            int height = (int) (bitmap.getHeight() * min);
            if (bitmap.getWidth() == width && bitmap.getHeight() == height) {
                bitmap2 = bitmap;
                if (Log.isLoggable("TransformationUtils", 2)) {
                    Log.v("TransformationUtils", "adjusted target size matches input, returning input");
                    bitmap2 = bitmap;
                }
            } else {
                Bitmap.Config a2 = q.a(bitmap);
                Bitmap a3 = cVar.a(width, height, a2);
                bitmap2 = a3;
                if (a3 == null) {
                    bitmap2 = Bitmap.createBitmap(width, height, a2);
                }
                q.a(bitmap, bitmap2);
                if (Log.isLoggable("TransformationUtils", 2)) {
                    Log.v("TransformationUtils", "request: " + i + "x" + i2);
                    Log.v("TransformationUtils", "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight());
                    Log.v("TransformationUtils", "toReuse: " + bitmap2.getWidth() + "x" + bitmap2.getHeight());
                    Log.v("TransformationUtils", "minPct:   " + min);
                }
                Canvas canvas = new Canvas(bitmap2);
                Matrix matrix = new Matrix();
                matrix.setScale(min, min);
                canvas.drawBitmap(bitmap, matrix, new Paint(6));
            }
        }
        return bitmap2;
    }

    @Override // com.bumptech.glide.load.g
    public final String a() {
        return "FitCenter.com.bumptech.glide.load.resource.bitmap";
    }
}
