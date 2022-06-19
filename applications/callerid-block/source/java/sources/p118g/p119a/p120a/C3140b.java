package p118g.p119a.p120a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import java.io.File;
import java.io.FileOutputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: g.a.a.b */
/* loaded from: classes2-dex2jar.jar:g/a/a/b.class */
public class C3140b {
    /* renamed from: a */
    private static int m57a(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        int i6 = 1;
        if (i3 > i2 || i4 > i) {
            int i7 = i3 / 2;
            int i8 = i4 / 2;
            while (true) {
                i5 = i6;
                if (i7 / i6 < i2) {
                    break;
                }
                i5 = i6;
                if (i8 / i6 < i) {
                    break;
                }
                i6 *= 2;
            }
        }
        return i5;
    }

    /* renamed from: b */
    public static File m56b(File file, int i, int i2, Bitmap.CompressFormat compressFormat, int i3, String str) {
        FileOutputStream fileOutputStream;
        Throwable th;
        FileOutputStream fileOutputStream2;
        File parentFile = new File(str).getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            fileOutputStream2 = new FileOutputStream(str);
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
        try {
            m55c(file, i, i2).compress(compressFormat, i3, fileOutputStream2);
            fileOutputStream2.flush();
            fileOutputStream2.close();
            return new File(str);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = fileOutputStream2;
            if (fileOutputStream != null) {
                fileOutputStream.flush();
                fileOutputStream.close();
            }
            throw th;
        }
    }

    /* renamed from: c */
    public static Bitmap m55c(File file, int i, int i2) {
        float f;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        options.inSampleSize = m57a(options, i, i2);
        options.inJustDecodeBounds = false;
        Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        int attributeInt = new ExifInterface(file.getAbsolutePath()).getAttributeInt("Orientation", 0);
        Matrix matrix = new Matrix();
        if (attributeInt == 6) {
            f = 90.0f;
        } else if (attributeInt != 3) {
            if (attributeInt == 8) {
                f = 270.0f;
            }
            return Bitmap.createBitmap(decodeFile, 0, 0, decodeFile.getWidth(), decodeFile.getHeight(), matrix, true);
        } else {
            f = 180.0f;
        }
        matrix.postRotate(f);
        return Bitmap.createBitmap(decodeFile, 0, 0, decodeFile.getWidth(), decodeFile.getHeight(), matrix, true);
    }
}
