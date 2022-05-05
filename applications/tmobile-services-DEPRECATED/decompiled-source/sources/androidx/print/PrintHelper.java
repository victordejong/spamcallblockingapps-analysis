package androidx.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.pdf.PdfDocument;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentInfo;
import android.print.pdf.PrintedPdfDocument;
import android.util.Log;
import androidx.annotation.RequiresApi;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:androidx/print/PrintHelper.class */
public final class PrintHelper {

    /* renamed from: e */
    static final boolean f4352e;

    /* renamed from: f */
    static final boolean f4353f;

    /* renamed from: a */
    final Context f4354a;

    /* renamed from: b */
    BitmapFactory.Options f4355b;

    /* renamed from: c */
    final Object f4356c;

    /* renamed from: d */
    int f4357d;

    /* loaded from: classes-dex2jar.jar:androidx/print/PrintHelper$OnPrintFinishCallback.class */
    public interface OnPrintFinishCallback {
        /* renamed from: a */
        void m17896a();
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/print/PrintHelper$PrintBitmapAdapter.class */
    private class PrintBitmapAdapter extends PrintDocumentAdapter {

        /* renamed from: a */
        private final String f4366a;

        /* renamed from: b */
        private final int f4367b;

        /* renamed from: c */
        private final Bitmap f4368c;

        /* renamed from: d */
        private final OnPrintFinishCallback f4369d;

        /* renamed from: e */
        private PrintAttributes f4370e;

        /* renamed from: f */
        final /* synthetic */ PrintHelper f4371f;

        @Override // android.print.PrintDocumentAdapter
        public void onFinish() {
            OnPrintFinishCallback onPrintFinishCallback = this.f4369d;
            if (onPrintFinishCallback != null) {
                onPrintFinishCallback.m17896a();
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
            this.f4370e = printAttributes2;
            layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(this.f4366a).setContentType(1).setPageCount(1).build(), !printAttributes2.equals(printAttributes));
        }

        @Override // android.print.PrintDocumentAdapter
        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            this.f4371f.m17899g(this.f4370e, this.f4367b, this.f4368c, parcelFileDescriptor, cancellationSignal, writeResultCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/print/PrintHelper$PrintUriAdapter.class */
    public class PrintUriAdapter extends PrintDocumentAdapter {

        /* renamed from: a */
        final String f4372a;

        /* renamed from: b */
        final Uri f4373b;

        /* renamed from: c */
        final OnPrintFinishCallback f4374c;

        /* renamed from: d */
        final int f4375d;

        /* renamed from: e */
        PrintAttributes f4376e;

        /* renamed from: f */
        AsyncTask<Uri, Boolean, Bitmap> f4377f;

        /* renamed from: g */
        Bitmap f4378g;

        /* renamed from: h */
        final /* synthetic */ PrintHelper f4379h;

        /* renamed from: a */
        void m17895a() {
            synchronized (this.f4379h.f4356c) {
                if (this.f4379h.f4355b != null) {
                    if (Build.VERSION.SDK_INT < 24) {
                        this.f4379h.f4355b.requestCancelDecode();
                    }
                    this.f4379h.f4355b = null;
                }
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onFinish() {
            super.onFinish();
            m17895a();
            AsyncTask<Uri, Boolean, Bitmap> asyncTask = this.f4377f;
            if (asyncTask != null) {
                asyncTask.cancel(true);
            }
            OnPrintFinishCallback onPrintFinishCallback = this.f4374c;
            if (onPrintFinishCallback != null) {
                onPrintFinishCallback.m17896a();
            }
            Bitmap bitmap = this.f4378g;
            if (bitmap != null) {
                bitmap.recycle();
                this.f4378g = null;
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onLayout(final PrintAttributes printAttributes, final PrintAttributes printAttributes2, final CancellationSignal cancellationSignal, final PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
            synchronized (this) {
                this.f4376e = printAttributes2;
            }
            if (cancellationSignal.isCanceled()) {
                layoutResultCallback.onLayoutCancelled();
            } else if (this.f4378g != null) {
                layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(this.f4372a).setContentType(1).setPageCount(1).build(), !printAttributes2.equals(printAttributes));
            } else {
                this.f4377f = new AsyncTask<Uri, Boolean, Bitmap>() { // from class: androidx.print.PrintHelper.PrintUriAdapter.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    /* renamed from: a */
                    public Bitmap doInBackground(Uri... uriArr) {
                        try {
                            return PrintUriAdapter.this.f4379h.m17900f(PrintUriAdapter.this.f4373b);
                        } catch (FileNotFoundException e) {
                            return null;
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    /* renamed from: b */
                    public void onCancelled(Bitmap bitmap) {
                        layoutResultCallback.onLayoutCancelled();
                        PrintUriAdapter.this.f4377f = null;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
                        if (r8.f4384e.f4379h.f4357d == 0) goto L_0x0020;
                     */
                    /* renamed from: c */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public void onPostExecute(android.graphics.Bitmap r9) {
                        /*
                            Method dump skipped, instructions count: 189
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.print.PrintHelper.PrintUriAdapter.AsyncTaskC04421.onPostExecute(android.graphics.Bitmap):void");
                    }

                    @Override // android.os.AsyncTask
                    protected void onPreExecute() {
                        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.print.PrintHelper.PrintUriAdapter.1.1
                            @Override // android.os.CancellationSignal.OnCancelListener
                            public void onCancel() {
                                PrintUriAdapter.this.m17895a();
                                cancel(false);
                            }
                        });
                    }
                }.execute(new Uri[0]);
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            this.f4379h.m17899g(this.f4376e, this.f4375d, this.f4378g, parcelFileDescriptor, cancellationSignal, writeResultCallback);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        boolean z = false;
        f4352e = i < 20 || i > 23;
        if (Build.VERSION.SDK_INT != 23) {
            z = true;
        }
        f4353f = z;
    }

    /* renamed from: a */
    static Bitmap m17905a(Bitmap bitmap, int i) {
        if (i != 1) {
            return bitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    @RequiresApi
    /* renamed from: b */
    private static PrintAttributes.Builder m17904b(PrintAttributes printAttributes) {
        PrintAttributes.Builder minMargins = new PrintAttributes.Builder().setMediaSize(printAttributes.getMediaSize()).setResolution(printAttributes.getResolution()).setMinMargins(printAttributes.getMinMargins());
        if (printAttributes.getColorMode() != 0) {
            minMargins.setColorMode(printAttributes.getColorMode());
        }
        if (Build.VERSION.SDK_INT >= 23 && printAttributes.getDuplexMode() != 0) {
            minMargins.setDuplexMode(printAttributes.getDuplexMode());
        }
        return minMargins;
    }

    /* renamed from: c */
    static Matrix m17903c(int i, int i2, RectF rectF, int i3) {
        Matrix matrix = new Matrix();
        float f = i;
        float width = rectF.width() / f;
        float max = i3 == 2 ? Math.max(width, rectF.height() / i2) : Math.min(width, rectF.height() / i2);
        matrix.postScale(max, max);
        matrix.postTranslate((rectF.width() - (f * max)) / 2.0f, (rectF.height() - (i2 * max)) / 2.0f);
        return matrix;
    }

    /* renamed from: d */
    static boolean m17902d(Bitmap bitmap) {
        return bitmap.getWidth() <= bitmap.getHeight();
    }

    /* renamed from: e */
    private Bitmap m17901e(Uri uri, BitmapFactory.Options options) throws FileNotFoundException {
        Context context;
        Throwable th;
        if (uri == null || (context = this.f4354a) == null) {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
        InputStream inputStream = null;
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream, null, options);
                if (openInputStream != null) {
                    try {
                        openInputStream.close();
                    } catch (IOException e) {
                        Log.w("PrintHelper", "close fail ", e);
                    }
                }
                return decodeStream;
            } catch (Throwable th2) {
                th = th2;
                inputStream = openInputStream;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        Log.w("PrintHelper", "close fail ", e2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: f */
    Bitmap m17900f(Uri uri) throws FileNotFoundException {
        BitmapFactory.Options options;
        if (uri == null || this.f4354a == null) {
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inJustDecodeBounds = true;
        m17901e(uri, options2);
        int i = options2.outWidth;
        int i2 = options2.outHeight;
        if (i <= 0 || i2 <= 0) {
            return null;
        }
        int max = Math.max(i, i2);
        int i3 = 1;
        while (max > 3500) {
            max >>>= 1;
            i3 <<= 1;
        }
        if (i3 <= 0 || Math.min(i, i2) / i3 <= 0) {
            return null;
        }
        synchronized (this.f4356c) {
            options = new BitmapFactory.Options();
            this.f4355b = options;
            options.inMutable = true;
            options.inSampleSize = i3;
        }
        try {
            Bitmap e = m17901e(uri, options);
            synchronized (this.f4356c) {
                this.f4355b = null;
            }
            return e;
        } catch (Throwable th) {
            synchronized (this.f4356c) {
                this.f4355b = null;
                throw th;
            }
        }
    }

    @RequiresApi
    /* renamed from: g */
    void m17899g(final PrintAttributes printAttributes, final int i, final Bitmap bitmap, final ParcelFileDescriptor parcelFileDescriptor, final CancellationSignal cancellationSignal, final PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
        final PrintAttributes build = f4353f ? printAttributes : m17904b(printAttributes).setMinMargins(new PrintAttributes.Margins(0, 0, 0, 0)).build();
        new AsyncTask<Void, Void, Throwable>() { // from class: androidx.print.PrintHelper.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* renamed from: a */
            public Throwable doInBackground(Void... voidArr) {
                RectF rectF;
                try {
                    if (cancellationSignal.isCanceled()) {
                        return null;
                    }
                    PrintedPdfDocument printedPdfDocument = new PrintedPdfDocument(PrintHelper.this.f4354a, build);
                    Bitmap a = PrintHelper.m17905a(bitmap, build.getColorMode());
                    if (cancellationSignal.isCanceled()) {
                        return null;
                    }
                    PdfDocument.Page startPage = printedPdfDocument.startPage(1);
                    if (PrintHelper.f4353f) {
                        rectF = new RectF(startPage.getInfo().getContentRect());
                    } else {
                        PrintedPdfDocument printedPdfDocument2 = new PrintedPdfDocument(PrintHelper.this.f4354a, printAttributes);
                        PdfDocument.Page startPage2 = printedPdfDocument2.startPage(1);
                        rectF = new RectF(startPage2.getInfo().getContentRect());
                        printedPdfDocument2.finishPage(startPage2);
                        printedPdfDocument2.close();
                    }
                    Matrix c = PrintHelper.m17903c(a.getWidth(), a.getHeight(), rectF, i);
                    if (!PrintHelper.f4353f) {
                        c.postTranslate(rectF.left, rectF.top);
                        startPage.getCanvas().clipRect(rectF);
                    }
                    startPage.getCanvas().drawBitmap(a, c, null);
                    printedPdfDocument.finishPage(startPage);
                    if (cancellationSignal.isCanceled()) {
                        printedPdfDocument.close();
                        if (parcelFileDescriptor != null) {
                            try {
                                parcelFileDescriptor.close();
                            } catch (IOException e) {
                            }
                        }
                        if (a == bitmap) {
                            return null;
                        }
                        a.recycle();
                        return null;
                    }
                    printedPdfDocument.writeTo(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                    printedPdfDocument.close();
                    if (parcelFileDescriptor != null) {
                        try {
                            parcelFileDescriptor.close();
                        } catch (IOException e2) {
                        }
                    }
                    if (a == bitmap) {
                        return null;
                    }
                    a.recycle();
                    return null;
                } catch (Throwable th) {
                    return th;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* renamed from: b */
            public void onPostExecute(Throwable th) {
                if (cancellationSignal.isCanceled()) {
                    writeResultCallback.onWriteCancelled();
                } else if (th == null) {
                    writeResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                } else {
                    Log.e("PrintHelper", "Error writing printed content", th);
                    writeResultCallback.onWriteFailed(null);
                }
            }
        }.execute(new Void[0]);
    }
}
