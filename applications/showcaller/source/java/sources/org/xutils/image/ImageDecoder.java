package org.xutils.image;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Movie;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.media.ExifInterface;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.xutils.C9682x;
import org.xutils.cache.DiskCacheEntity;
import org.xutils.cache.DiskCacheFile;
import org.xutils.cache.LruDiskCache;
import org.xutils.common.Callback;
import org.xutils.common.task.PriorityExecutor;
import org.xutils.common.util.IOUtil;
import org.xutils.common.util.LogUtil;
/* loaded from: classes2-dex2jar.jar:org/xutils/image/ImageDecoder.class */
public final class ImageDecoder {

    /* renamed from: a */
    private static final int f40800a;

    /* renamed from: b */
    private static final AtomicInteger f40801b = new AtomicInteger(0);

    /* renamed from: c */
    private static final Object f40802c = new Object();

    /* renamed from: d */
    private static final Object f40803d = new Object();

    /* renamed from: e */
    private static final byte[] f40804e = {71, 73, 70};

    /* renamed from: f */
    private static final Executor f40805f = new PriorityExecutor(1, true);

    /* renamed from: g */
    private static final LruDiskCache f40806g = LruDiskCache.getDiskCache("xUtils_img_thumb");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.xutils.image.ImageDecoder$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/image/ImageDecoder$a.class */
    public static final class RunnableC9667a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ File f40807d;

        /* renamed from: e */
        final /* synthetic */ ImageOptions f40808e;

        /* renamed from: f */
        final /* synthetic */ Bitmap f40809f;

        RunnableC9667a(File file, ImageOptions imageOptions, Bitmap bitmap) {
            this.f40807d = file;
            this.f40808e = imageOptions;
            this.f40809f = bitmap;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageDecoder.m172e(this.f40807d, this.f40808e, this.f40809f);
        }
    }

    static {
        int i = 1;
        if (Runtime.getRuntime().availableProcessors() > 4) {
            i = 2;
        }
        f40800a = i;
    }

    private ImageDecoder() {
    }

    /* renamed from: b */
    public static void m175b() {
        f40806g.clearCacheFiles();
    }

    /* renamed from: c */
    public static Drawable m174c(File file, ImageOptions imageOptions, Callback.Cancelable cancelable) {
        GifDrawable gifDrawable;
        AtomicInteger atomicInteger;
        Movie decodeGif;
        if (file == null || !file.exists() || file.length() < 1) {
            return null;
        }
        if (cancelable != null && cancelable.isCancelled()) {
            throw new Callback.CancelledException("cancelled during decode image");
        }
        if (imageOptions.isIgnoreGif() || !isGif(file)) {
            try {
                synchronized (f40802c) {
                    while (true) {
                        atomicInteger = f40801b;
                        if (atomicInteger.get() < f40800a || (cancelable != null && cancelable.isCancelled())) {
                            break;
                        }
                        try {
                            f40802c.wait();
                        } catch (InterruptedException e) {
                            throw new Callback.CancelledException("cancelled during decode image");
                        } catch (Throwable th) {
                        }
                    }
                }
                if (cancelable != null && cancelable.isCancelled()) {
                    throw new Callback.CancelledException("cancelled during decode image");
                }
                atomicInteger.incrementAndGet();
                Bitmap m173d = imageOptions.isCompress() ? m173d(file, imageOptions) : null;
                Bitmap bitmap = m173d;
                if (m173d == null) {
                    Bitmap decodeBitmap = decodeBitmap(file, imageOptions, cancelable);
                    bitmap = decodeBitmap;
                    if (decodeBitmap != null) {
                        bitmap = decodeBitmap;
                        if (imageOptions.isCompress()) {
                            f40805f.execute(new RunnableC9667a(file, imageOptions, decodeBitmap));
                            bitmap = decodeBitmap;
                        }
                    }
                }
                atomicInteger.decrementAndGet();
                Object obj = f40802c;
                synchronized (obj) {
                    obj.notifyAll();
                }
                gifDrawable = null;
                if (bitmap != null) {
                    gifDrawable = new C9678c(C9682x.app().getResources(), bitmap);
                }
            } catch (Throwable th2) {
                if (0 != 0) {
                    f40801b.decrementAndGet();
                }
                Object obj2 = f40802c;
                synchronized (obj2) {
                    obj2.notifyAll();
                    throw th2;
                }
            }
        } else {
            synchronized (f40803d) {
                decodeGif = decodeGif(file, imageOptions, cancelable);
            }
            gifDrawable = null;
            if (decodeGif != null) {
                gifDrawable = new GifDrawable(decodeGif, (int) file.length());
            }
        }
        return gifDrawable;
    }

    public static int calculateSampleSize(int i, int i2, int i3, int i4) {
        int i5 = 1;
        if (i > i3 || i2 > i4) {
            int round = i > i2 ? Math.round(i2 / i4) : Math.round(i / i3);
            if (round < 1) {
                round = 1;
            }
            while (true) {
                i5 = round;
                if ((i * i2) / (round * round) <= i3 * i4 * 2) {
                    break;
                }
                round++;
            }
        }
        return i5;
    }

    public static Bitmap cut2Circular(Bitmap bitmap, boolean z) {
        int width;
        int height;
        int min = Math.min(bitmap.getWidth(), bitmap.getHeight());
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Bitmap bitmap2 = bitmap;
        if (createBitmap != null) {
            Canvas canvas = new Canvas(createBitmap);
            float f = min / 2;
            canvas.drawCircle(f, f, f, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(bitmap, (min - width) / 2, (min - height) / 2, paint);
            if (z) {
                bitmap.recycle();
            }
            bitmap2 = createBitmap;
        }
        return bitmap2;
    }

    public static Bitmap cut2RoundCorner(Bitmap bitmap, int i, boolean z, boolean z2) {
        int i2;
        int i3;
        if (i <= 0) {
            return bitmap;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (z) {
            int min = Math.min(width, height);
            i3 = min;
            i2 = min;
        } else {
            i2 = width;
            i3 = height;
        }
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Bitmap createBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        Bitmap bitmap2 = bitmap;
        if (createBitmap != null) {
            Canvas canvas = new Canvas(createBitmap);
            float f = i;
            canvas.drawRoundRect(new RectF(0.0f, 0.0f, i2, i3), f, f, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(bitmap, (i2 - width) / 2, (i3 - height) / 2, paint);
            if (z2) {
                bitmap.recycle();
            }
            bitmap2 = createBitmap;
        }
        return bitmap2;
    }

    public static Bitmap cut2ScaleSize(Bitmap bitmap, int i, int i2, boolean z) {
        int i3;
        int i4;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width == i && height == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f = i;
        float f2 = width;
        float f3 = f / f2;
        float f4 = i2;
        float f5 = height;
        float f6 = f4 / f5;
        if (f3 > f6) {
            float f7 = f4 / f3;
            i4 = (int) ((f5 - f7) / 2.0f);
            height = (int) ((f5 + f7) / 2.0f);
            i3 = 0;
        } else {
            float f8 = f / f6;
            i3 = (int) ((f2 - f8) / 2.0f);
            width = (int) ((f2 + f8) / 2.0f);
            f3 = f6;
            i4 = 0;
        }
        matrix.setScale(f3, f3);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, i3, i4, width - i3, height - i4, matrix, true);
        Bitmap bitmap2 = bitmap;
        if (createBitmap != null) {
            if (z && createBitmap != bitmap) {
                bitmap.recycle();
            }
            bitmap2 = createBitmap;
        }
        return bitmap2;
    }

    public static Bitmap cut2Square(Bitmap bitmap, boolean z) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width == height) {
            return bitmap;
        }
        int min = Math.min(width, height);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, (width - min) / 2, (height - min) / 2, min, min);
        Bitmap bitmap2 = bitmap;
        if (createBitmap != null) {
            if (z && createBitmap != bitmap) {
                bitmap.recycle();
            }
            bitmap2 = createBitmap;
        }
        return bitmap2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    private static Bitmap m173d(File file, ImageOptions imageOptions) {
        Throwable th;
        DiskCacheFile diskCacheFile;
        DiskCacheFile diskCacheFile2;
        try {
            diskCacheFile = f40806g.getDiskCacheFile(file.getAbsolutePath() + "@" + file.lastModified() + imageOptions.toString());
            diskCacheFile2 = diskCacheFile;
            if (diskCacheFile != null) {
                diskCacheFile2 = diskCacheFile;
                try {
                    if (diskCacheFile.exists()) {
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inJustDecodeBounds = false;
                        options.inPurgeable = true;
                        options.inInputShareable = true;
                        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                        Bitmap decodeFile = BitmapFactory.decodeFile(diskCacheFile.getAbsolutePath(), options);
                        IOUtil.closeQuietly(diskCacheFile);
                        return decodeFile;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        LogUtil.m252w(th.getMessage(), th);
                        diskCacheFile2 = diskCacheFile;
                        IOUtil.closeQuietly(diskCacheFile2);
                        return null;
                    } catch (Throwable th3) {
                        IOUtil.closeQuietly(diskCacheFile);
                        throw th3;
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            diskCacheFile = null;
        }
        IOUtil.closeQuietly(diskCacheFile2);
        return null;
    }

    public static Bitmap decodeBitmap(File file, ImageOptions imageOptions, Callback.Cancelable cancelable) {
        Bitmap bitmap;
        if (file == null || !file.exists() || file.length() < 1) {
            return null;
        }
        ImageOptions imageOptions2 = imageOptions;
        if (imageOptions == null) {
            imageOptions2 = ImageOptions.DEFAULT;
        }
        if (imageOptions2.getMaxWidth() <= 0 || imageOptions2.getMaxHeight() <= 0) {
            imageOptions2.m151u(null);
        }
        if (cancelable != null) {
            try {
                if (cancelable.isCancelled()) {
                    throw new Callback.CancelledException("cancelled during decode image");
                }
            } catch (IOException e) {
                throw e;
            } catch (Callback.CancelledException e2) {
                throw e2;
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
                bitmap = null;
            }
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.inPurgeable = true;
        options.inInputShareable = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        int i = 0;
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = imageOptions2.getConfig();
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        int width = imageOptions2.getWidth();
        int height = imageOptions2.getHeight();
        int i4 = i2;
        int i5 = i3;
        if (imageOptions2.isAutoRotate()) {
            int rotateAngle = getRotateAngle(file.getAbsolutePath());
            i = rotateAngle;
            i4 = i2;
            i5 = i3;
            if ((rotateAngle / 90) % 2 == 1) {
                i4 = options.outHeight;
                i5 = options.outWidth;
                i = rotateAngle;
            }
        }
        if (!imageOptions2.isCrop() && width > 0 && height > 0) {
            if ((i / 90) % 2 == 1) {
                options.outWidth = height;
                options.outHeight = width;
            } else {
                options.outWidth = width;
                options.outHeight = height;
            }
        }
        options.inSampleSize = calculateSampleSize(i4, i5, imageOptions2.getMaxWidth(), imageOptions2.getMaxHeight());
        if (cancelable != null && cancelable.isCancelled()) {
            throw new Callback.CancelledException("cancelled during decode image");
        }
        Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        if (decodeFile == null) {
            throw new IOException("decode image error");
        }
        if (cancelable != null && cancelable.isCancelled()) {
            throw new Callback.CancelledException("cancelled during decode image");
        }
        Bitmap bitmap2 = decodeFile;
        if (i != 0) {
            bitmap2 = rotate(decodeFile, i, true);
        }
        if (cancelable != null && cancelable.isCancelled()) {
            throw new Callback.CancelledException("cancelled during decode image");
        }
        Bitmap bitmap3 = bitmap2;
        if (imageOptions2.isCrop()) {
            bitmap3 = bitmap2;
            if (width > 0) {
                bitmap3 = bitmap2;
                if (height > 0) {
                    bitmap3 = cut2ScaleSize(bitmap2, width, height, true);
                }
            }
        }
        if (bitmap3 == null) {
            throw new IOException("decode image error");
        }
        if (cancelable != null && cancelable.isCancelled()) {
            throw new Callback.CancelledException("cancelled during decode image");
        }
        if (imageOptions2.isCircular()) {
            bitmap = cut2Circular(bitmap3, true);
        } else if (imageOptions2.getRadius() > 0) {
            bitmap = cut2RoundCorner(bitmap3, imageOptions2.getRadius(), imageOptions2.isSquare(), true);
        } else {
            bitmap = bitmap3;
            if (imageOptions2.isSquare()) {
                bitmap = cut2Square(bitmap3, true);
            }
        }
        if (bitmap == null) {
            throw new IOException("decode image error");
        }
        return bitmap;
    }

    public static Movie decodeGif(File file, ImageOptions imageOptions, Callback.Cancelable cancelable) {
        if (file == null || !file.exists() || file.length() < 1) {
            return null;
        }
        if (cancelable != null) {
            try {
                if (cancelable.isCancelled()) {
                    throw new Callback.CancelledException("cancelled during decode image");
                }
            } catch (IOException e) {
                throw e;
            } catch (Callback.CancelledException e2) {
                throw e2;
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
                return null;
            }
        }
        Movie decodeFile = Movie.decodeFile(file.getAbsolutePath());
        if (decodeFile == null) {
            throw new IOException("decode image error");
        }
        return decodeFile;
    }

    /* renamed from: e */
    public static void m172e(File file, ImageOptions imageOptions, Bitmap bitmap) {
        DiskCacheFile diskCacheFile;
        Throwable th;
        DiskCacheEntity diskCacheEntity = new DiskCacheEntity();
        diskCacheEntity.setKey(file.getAbsolutePath() + "@" + file.lastModified() + imageOptions.toString());
        FileOutputStream fileOutputStream = null;
        try {
            diskCacheFile = f40806g.createDiskCacheFile(diskCacheEntity);
            DiskCacheFile diskCacheFile2 = diskCacheFile;
            if (diskCacheFile != null) {
                try {
                    fileOutputStream = new FileOutputStream(diskCacheFile);
                    try {
                        bitmap.compress(Bitmap.CompressFormat.PNG, 80, fileOutputStream);
                        fileOutputStream.flush();
                        diskCacheFile2 = diskCacheFile.commit();
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            IOUtil.deleteFileOrDir(diskCacheFile);
                            LogUtil.m252w(th.getMessage(), th);
                            IOUtil.closeQuietly(diskCacheFile);
                            IOUtil.closeQuietly(fileOutputStream);
                        } finally {
                            IOUtil.closeQuietly(diskCacheFile);
                            IOUtil.closeQuietly(fileOutputStream);
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
            diskCacheFile = null;
        }
    }

    @SuppressLint({"ExifInterface"})
    public static int getRotateAngle(String str) {
        int i = 0;
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 0);
            if (attributeInt == 3) {
                i = 180;
            } else if (attributeInt == 6) {
                i = 90;
            } else if (attributeInt == 8) {
                i = 270;
            }
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
        return i;
    }

    public static boolean isGif(File file) {
        Throwable th;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                boolean equals = Arrays.equals(f40804e, IOUtil.readBytes(fileInputStream2, 0L, 3));
                IOUtil.closeQuietly(fileInputStream2);
                return equals;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                try {
                    LogUtil.m258e(th.getMessage(), th);
                    IOUtil.closeQuietly(fileInputStream);
                    return false;
                } catch (Throwable th3) {
                    IOUtil.closeQuietly(fileInputStream);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap rotate(android.graphics.Bitmap r8, int r9, boolean r10) {
        /*
            r0 = r9
            if (r0 == 0) goto L2f
            android.graphics.Matrix r0 = new android.graphics.Matrix
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r9
            float r1 = (float) r1
            r0.setRotate(r1)
            r0 = r8
            r1 = 0
            r2 = 0
            r3 = r8
            int r3 = r3.getWidth()     // Catch: java.lang.Throwable -> L26
            r4 = r8
            int r4 = r4.getHeight()     // Catch: java.lang.Throwable -> L26
            r5 = r11
            r6 = 1
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r0, r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L26
            r11 = r0
            goto L31
        L26:
            r11 = move-exception
            r0 = r11
            java.lang.String r0 = r0.getMessage()
            r1 = r11
            org.xutils.common.util.LogUtil.m258e(r0, r1)
        L2f:
            r0 = 0
            r11 = r0
        L31:
            r0 = r8
            r12 = r0
            r0 = r11
            if (r0 == 0) goto L48
            r0 = r10
            if (r0 == 0) goto L45
            r0 = r11
            r1 = r8
            if (r0 == r1) goto L45
            r0 = r8
            r0.recycle()
        L45:
            r0 = r11
            r12 = r0
        L48:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xutils.image.ImageDecoder.rotate(android.graphics.Bitmap, int, boolean):android.graphics.Bitmap");
    }
}
