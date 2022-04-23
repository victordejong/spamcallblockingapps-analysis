package p459j.p460a.p474c0.p499h;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.media2.exoplayer.external.C0463C;
import gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider;
import gogolook.callgogolook2.messaging.util.GifTranscoder;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import p081h.p203i.p316b.p320d.C9372h;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.p500x0.C12227c;
import p626l.p640y.C15101l;
/* renamed from: j.a.c0.h.z */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/z.class */
public class C12242z {

    /* renamed from: c */
    public static volatile C12242z f27592c;

    /* renamed from: a */
    public static final byte[] f27590a = "GIF87a".getBytes(Charset.forName(C0463C.ASCII_NAME));

    /* renamed from: b */
    public static final byte[] f27591b = "GIF89a".getBytes(Charset.forName(C0463C.ASCII_NAME));

    /* renamed from: d */
    public static final String[] f27593d = {"mime_type"};

    /* renamed from: j.a.c0.h.z$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/z$a.class */
    public static class C12243a {

        /* renamed from: a */
        public int f27594a;

        /* renamed from: b */
        public Bitmap f27595b;

        /* renamed from: c */
        public Bitmap f27596c;

        /* renamed from: g */
        public int f27600g;

        /* renamed from: h */
        public int f27601h;

        /* renamed from: i */
        public final C12227c.C12228a f27602i;

        /* renamed from: k */
        public final int f27604k;

        /* renamed from: l */
        public final int f27605l;

        /* renamed from: m */
        public final int f27606m;

        /* renamed from: n */
        public final Uri f27607n;

        /* renamed from: o */
        public final Context f27608o;

        /* renamed from: q */
        public final String f27610q;

        /* renamed from: r */
        public final int f27611r;

        /* renamed from: j */
        public final Matrix f27603j = new Matrix();

        /* renamed from: d */
        public int f27597d = 95;

        /* renamed from: e */
        public float f27598e = 1.0f;

        /* renamed from: f */
        public boolean f27599f = false;

        /* renamed from: p */
        public final BitmapFactory.Options f27609p = new BitmapFactory.Options();

        public C12243a(int i, int i2, int i3, int i4, int i5, int i6, Uri uri, Context context, String str) {
            this.f27600g = i;
            this.f27601h = i2;
            this.f27602i = C12227c.m6665g(i3);
            this.f27604k = i4;
            this.f27605l = i5;
            this.f27606m = i6;
            this.f27607n = uri;
            this.f27600g = i;
            this.f27608o = context;
            BitmapFactory.Options options = this.f27609p;
            options.inScaled = false;
            options.inDensity = 0;
            options.inTargetDensity = 0;
            options.inSampleSize = 1;
            options.inJustDecodeBounds = false;
            options.inMutable = false;
            this.f27611r = Math.max(16, ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getMemoryClass());
            this.f27610q = str;
        }

        /* renamed from: a */
        public static byte[] m6549a(int i, int i2, int i3, int i4, int i5, int i6, Uri uri, Context context, String str) {
            return new C12243a(i, i2, i3, i4, i5, i6, uri, context, str).m6546c();
        }

        /* renamed from: a */
        public final boolean m6551a() {
            boolean a = C12153d0.m6992a("MessagingAppImage", 2);
            int i = this.f27601h;
            int i2 = this.f27600g;
            int i3 = ((this.f27611r * 1024) * 1024) / 8;
            int i4 = this.f27606m;
            int i5 = (int) (this.f27605l * 1.5f);
            int i6 = (int) (this.f27604k * 1.5f);
            int min = Math.min((int) (i4 * 8 * 1.5f * 1.5f), i3);
            boolean z = i < i5 && i2 < i6 && i * i2 < min;
            int i7 = 1;
            while (!z) {
                i7 *= 2;
                if (i7 >= 536870911) {
                    C12153d0.m6981e("MessagingAppImage", String.format("Cannot resize image: widthLimit=%d heightLimit=%d byteLimit=%d imageWidth=%d imageHeight=%d", Integer.valueOf(this.f27604k), Integer.valueOf(this.f27605l), Integer.valueOf(this.f27606m), Integer.valueOf(this.f27600g), Integer.valueOf(this.f27601h)));
                    C12151d.m7005a("Image cannot be resized");
                    return false;
                }
                if (a) {
                    C12153d0.m6983d("MessagingAppImage", "computeInitialSampleSize: Increasing sampleSize to " + i7 + " as h=" + i + " vs " + i5 + " w=" + i2 + " vs " + i6 + " p=" + (i * i2) + " vs " + min);
                }
                i = this.f27601h / i7;
                i2 = this.f27600g / i7;
                z = i < i5 && i2 < i6 && i * i2 < min;
            }
            if (a) {
                C12153d0.m6983d("MessagingAppImage", "computeInitialSampleSize: Initial sampleSize " + i7 + " for h=" + i + " vs " + i5 + " w=" + i2 + " vs " + i6 + " p=" + (i * i2) + " vs " + min);
            }
            this.f27594a = i7;
            return true;
        }

        /* renamed from: a */
        public final byte[] m6550a(int i) throws FileNotFoundException {
            byte[] bArr = null;
            try {
                ContentResolver contentResolver = this.f27608o.getContentResolver();
                boolean a = C12153d0.m6992a("MessagingAppImage", 2);
                if (a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("getResizedImageData: attempt=");
                    sb.append(i);
                    sb.append(" limit (w=");
                    sb.append(this.f27604k);
                    sb.append(" h=");
                    sb.append(this.f27605l);
                    sb.append(") quality=");
                    sb.append(this.f27597d);
                    sb.append(" scale=");
                    sb.append(this.f27598e);
                    sb.append(" sampleSize=");
                    sb.append(this.f27594a);
                    C12153d0.m6983d("MessagingAppImage", sb.toString());
                }
                if (this.f27596c == null) {
                    if (this.f27595b == null) {
                        this.f27609p.inSampleSize = this.f27594a;
                        this.f27595b = BitmapFactory.decodeStream(contentResolver.openInputStream(this.f27607n), null, this.f27609p);
                        if (this.f27595b == null) {
                            if (!a) {
                                return null;
                            }
                            C12153d0.m6983d("MessagingAppImage", "getResizedImageData: got empty decoded bitmap");
                            return null;
                        }
                    }
                    if (a) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("getResizedImageData: decoded w,h=");
                        sb2.append(this.f27595b.getWidth());
                        sb2.append(",");
                        sb2.append(this.f27595b.getHeight());
                        C12153d0.m6983d("MessagingAppImage", sb2.toString());
                    }
                    int width = this.f27595b.getWidth();
                    int height = this.f27595b.getHeight();
                    if (width > this.f27604k || height > this.f27605l) {
                        float f = 1.0f;
                        float f2 = this.f27604k == 0 ? 1.0f : width / this.f27604k;
                        if (this.f27605l != 0) {
                            f = height / this.f27605l;
                        }
                        float max = Math.max(f2, f);
                        if (this.f27598e < max) {
                            this.f27598e = max;
                        }
                    }
                    if (this.f27598e <= 1.0d && this.f27602i.f27531a == 0) {
                        this.f27596c = this.f27595b;
                    }
                    this.f27603j.reset();
                    this.f27603j.postRotate(this.f27602i.f27531a);
                    this.f27603j.postScale(this.f27602i.f27532b / this.f27598e, this.f27602i.f27533c / this.f27598e);
                    this.f27596c = Bitmap.createBitmap(this.f27595b, 0, 0, width, height, this.f27603j, false);
                    if (this.f27596c == null) {
                        if (!a) {
                            return null;
                        }
                        C12153d0.m6983d("MessagingAppImage", "getResizedImageData: got empty scaled bitmap");
                        return null;
                    } else if (a) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("getResizedImageData: scaled w,h=");
                        sb3.append(this.f27596c.getWidth());
                        sb3.append(",");
                        sb3.append(this.f27596c.getHeight());
                        C12153d0.m6983d("MessagingAppImage", sb3.toString());
                    }
                }
                byte[] a2 = C12242z.m6560a(this.f27596c, this.f27597d);
                bArr = a2;
                if (a2 != null) {
                    bArr = a2;
                    if (a) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("getResizedImageData: Encoded down to ");
                        sb4.append(a2.length);
                        sb4.append("@");
                        sb4.append(this.f27596c.getWidth());
                        sb4.append("/");
                        sb4.append(this.f27596c.getHeight());
                        sb4.append("~");
                        sb4.append(this.f27597d);
                        C12153d0.m6983d("MessagingAppImage", sb4.toString());
                        bArr = a2;
                    }
                }
            } catch (OutOfMemoryError e) {
                C12153d0.m6981e("MessagingAppImage", "getResizedImageData - image too big (OutOfMemoryError), will try  with smaller scale factor");
            }
            return bArr;
        }

        /* renamed from: b */
        public final void m6547b(int i) {
            int i2;
            boolean a = C12153d0.m6992a("MessagingAppImage", 2);
            if (i <= 0 || (i2 = this.f27597d) <= 50) {
                if (i > 0) {
                    float f = this.f27598e;
                    if (f < 1.125d) {
                        this.f27597d = 95;
                        this.f27598e = f / 0.75f;
                        if (a) {
                            C12153d0.m6983d("MessagingAppImage", "getResizedImageData: Retrying at scale " + this.f27598e);
                        }
                        Bitmap bitmap = this.f27596c;
                        if (!(bitmap == null || bitmap == this.f27595b)) {
                            bitmap.recycle();
                        }
                        this.f27596c = null;
                        return;
                    }
                }
                if (i > 0 || this.f27599f) {
                    this.f27594a *= 2;
                    this.f27597d = 95;
                    this.f27598e = 1.0f;
                    if (a) {
                        C12153d0.m6983d("MessagingAppImage", "getResizedImageData: Retrying at sampleSize " + this.f27594a);
                    }
                    Bitmap bitmap2 = this.f27596c;
                    if (!(bitmap2 == null || bitmap2 == this.f27595b)) {
                        bitmap2.recycle();
                    }
                    this.f27596c = null;
                    Bitmap bitmap3 = this.f27595b;
                    if (bitmap3 != null) {
                        bitmap3.recycle();
                        this.f27595b = null;
                        return;
                    }
                    return;
                }
                AbstractC11516a.m9413n().mo9396m();
                this.f27599f = true;
                if (a) {
                    C12153d0.m6983d("MessagingAppImage", "getResizedImageData: Retrying after reclaiming memory ");
                    return;
                }
                return;
            }
            this.f27597d = Math.max(50, Math.min((int) (i2 * Math.sqrt((this.f27606m * 1.0d) / i)), (int) (this.f27597d * 0.8500000238418579d)));
            if (a) {
                C12153d0.m6983d("MessagingAppImage", "getResizedImageData: Retrying at quality " + this.f27597d);
            }
        }

        /* renamed from: b */
        public final boolean m6548b() {
            Throwable th;
            FileNotFoundException e;
            NullPointerException e2;
            if (this.f27600g != -1 && this.f27601h != -1) {
                return true;
            }
            ContentResolver contentResolver = this.f27608o.getContentResolver();
            r8 = null;
            InputStream inputStream = null;
            InputStream inputStream2 = null;
            try {
                try {
                    this.f27609p.inJustDecodeBounds = true;
                    inputStream = contentResolver.openInputStream(this.f27607n);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (FileNotFoundException e3) {
                e = e3;
            } catch (NullPointerException e4) {
                e2 = e4;
            }
            try {
                BitmapFactory.decodeStream(inputStream, null, this.f27609p);
                this.f27600g = this.f27609p.outWidth;
                this.f27601h = this.f27609p.outHeight;
                this.f27609p.inJustDecodeBounds = false;
                if (inputStream == null) {
                    return true;
                }
                try {
                    inputStream.close();
                    return true;
                } catch (IOException e5) {
                    return true;
                }
            } catch (FileNotFoundException e6) {
                e = e6;
                StringBuilder sb = new StringBuilder();
                sb.append("Could not open file corresponding to uri ");
                sb.append(this.f27607n);
                C12153d0.m6986b("MessagingApp", sb.toString(), e);
                if (inputStream == null) {
                    return false;
                }
                try {
                    inputStream.close();
                    return false;
                } catch (IOException e7) {
                    return false;
                }
            } catch (NullPointerException e8) {
                e2 = e8;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("NPE trying to open the uri ");
                sb2.append(this.f27607n);
                C12153d0.m6986b("MessagingApp", sb2.toString(), e2);
                if (inputStream == null) {
                    return false;
                }
                inputStream.close();
                return false;
            } catch (Throwable th3) {
                th = th3;
                inputStream2 = inputStream;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException e9) {
                    }
                }
                throw th;
            }
        }

        /* renamed from: c */
        public final byte[] m6546c() {
            return C12242z.m6554a(this.f27610q, this.f27607n) ? m6545d() : m6544e();
        }

        /* renamed from: d */
        public final byte[] m6545d() {
            String str;
            if (MediaScratchFileProvider.m27782c(this.f27607n)) {
                str = MediaScratchFileProvider.m27784b(this.f27607n).getAbsolutePath();
            } else {
                if (!TextUtils.equals(this.f27607n.getScheme(), "file")) {
                    C12151d.m7005a("Expected a GIF file uri, but actual uri = " + this.f27607n.toString());
                }
                str = this.f27607n.getPath();
            }
            byte[] bArr = null;
            if (GifTranscoder.m26923a(this.f27600g, this.f27601h)) {
                Uri b = MediaScratchFileProvider.m27783b("gif");
                File b2 = MediaScratchFileProvider.m27784b(b);
                String absolutePath = b2.getAbsolutePath();
                if (GifTranscoder.m26921a(this.f27608o, str, absolutePath)) {
                    try {
                        bArr = C9372h.m15349b(b2);
                    } catch (IOException e) {
                        C12153d0.m6986b("MessagingApp", "Could not create FileInputStream with path of " + absolutePath, e);
                    }
                    this.f27608o.getContentResolver().delete(b, null, null);
                }
                bArr = null;
                this.f27608o.getContentResolver().delete(b, null, null);
            } else {
                try {
                    bArr = C15101l.m432a(new File(str));
                } catch (Exception e2) {
                    C12153d0.m6986b("MessagingApp", "Could not create FileInputStream with path of " + str, e2);
                }
            }
            return bArr;
        }

        /* renamed from: e */
        public final byte[] m6544e() {
            Bitmap bitmap;
            if (!(m6548b() && m6551a())) {
                return null;
            }
            for (int i = 0; i < 6; i++) {
                try {
                    try {
                        byte[] a = m6550a(i);
                        if (a != null && a.length <= this.f27606m) {
                            return a;
                        }
                        m6547b(a == null ? 0 : a.length);
                    } catch (FileNotFoundException e) {
                        C12153d0.m6987b("MessagingApp", "File disappeared during resizing");
                        Bitmap bitmap2 = this.f27596c;
                        if (!(bitmap2 == null || bitmap2 == this.f27595b)) {
                            bitmap2.recycle();
                        }
                        bitmap = this.f27595b;
                        if (bitmap == null) {
                            return null;
                        }
                    }
                } finally {
                    Bitmap bitmap3 = this.f27596c;
                    if (!(bitmap3 == null || bitmap3 == this.f27595b)) {
                        bitmap3.recycle();
                    }
                    Bitmap bitmap4 = this.f27595b;
                    if (bitmap4 != null) {
                        bitmap4.recycle();
                    }
                }
            }
            Bitmap bitmap5 = this.f27596c;
            if (!(bitmap5 == null || bitmap5 == this.f27595b)) {
                bitmap5.recycle();
            }
            bitmap = this.f27595b;
            if (bitmap == null) {
                return null;
            }
            bitmap.recycle();
            return null;
        }
    }

    /* renamed from: a */
    public static int m6555a(InputStream inputStream) {
        int i = 0;
        int i2 = 0;
        try {
            if (inputStream != null) {
                try {
                    C12227c cVar = new C12227c();
                    cVar.m6681a(inputStream);
                    Integer d = cVar.m6669d(C12227c.f27491m);
                    if (d != null) {
                        i = d.intValue();
                    }
                    i2 = i;
                    if (inputStream != null) {
                        inputStream.close();
                        i2 = i;
                    }
                } catch (IOException e) {
                    i2 = 0;
                    if (inputStream != null) {
                        inputStream.close();
                        i2 = 0;
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e2) {
                            C12153d0.m6986b("MessagingApp", "getOrientation error closing input stream", e2);
                        }
                    }
                    throw th;
                }
            }
        } catch (IOException e3) {
            C12153d0.m6986b("MessagingApp", "getOrientation error closing input stream", e3);
        }
        return i2;
    }

    /* renamed from: a */
    public static Bitmap m6559a(Bitmap bitmap, int i, int i2) {
        float f = i;
        float width = bitmap.getWidth();
        float f2 = f / width;
        float f3 = i2;
        float height = bitmap.getHeight();
        float max = Math.max(f2, f3 / height);
        float f4 = width * max;
        float f5 = max * height;
        float f6 = (f - f4) / 2.0f;
        float f7 = (f3 - f5) / 2.0f;
        RectF rectF = new RectF(f6, f7, f4 + f6, f5 + f7);
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, bitmap.getConfig());
        new Canvas(createBitmap).drawBitmap(bitmap, (Rect) null, rectF, (Paint) null);
        return createBitmap;
    }

    /* renamed from: a */
    public static Rect m6561a(Context context, Uri uri) {
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(openInputStream, null, options);
                Rect rect = new Rect(0, 0, options.outWidth, options.outHeight);
                try {
                    openInputStream.close();
                } catch (IOException e) {
                }
                return rect;
            }
        } catch (FileNotFoundException e2) {
            C12153d0.m6987b("MessagingApp", "Couldn't open input stream for uri = " + uri);
        }
        return new Rect(0, 0, -1, -1);
    }

    /* renamed from: a */
    public static Drawable m6562a(Context context, Drawable drawable, int i) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            drawable = constantState.newDrawable(context.getResources()).mutate();
        }
        drawable.setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
        return drawable;
    }

    /* renamed from: a */
    public static C12242z m6564a() {
        if (f27592c == null) {
            synchronized (C12242z.class) {
                try {
                    if (f27592c == null) {
                        f27592c = new C12242z();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f27592c;
    }

    /* renamed from: a */
    public static String m6563a(ContentResolver contentResolver, Uri uri) {
        Throwable th;
        Cursor cursor;
        String str = null;
        if (C12216t0.m6754i(uri)) {
            try {
                Cursor query = contentResolver.query(uri, f27593d, null, null, null);
                String str2 = null;
                if (query != null) {
                    str2 = null;
                    try {
                        if (query.moveToFirst()) {
                            str2 = query.getString(0);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                str = str2;
                if (query != null) {
                    query.close();
                    str = str2;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }
        String str3 = str;
        if (str == null) {
            str3 = C12205r.m6812a(uri.toString(), "image/*");
        }
        return str3;
    }

    /* renamed from: a */
    public static void m6558a(Bitmap bitmap, Canvas canvas, RectF rectF, RectF rectF2, @Nullable Paint paint, boolean z, int i, int i2) {
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        bitmapShader.setLocalMatrix(matrix);
        Paint paint2 = paint;
        if (paint == null) {
            paint2 = new Paint();
        }
        paint2.setAntiAlias(true);
        if (z) {
            paint2.setColor(i);
            canvas.drawCircle(rectF2.centerX(), rectF2.centerX(), rectF2.width() / 2.0f, paint2);
        }
        paint2.setShader(bitmapShader);
        canvas.drawCircle(rectF2.centerX(), rectF2.centerX(), rectF2.width() / 2.0f, paint2);
        paint2.setShader(null);
        if (i2 != 0) {
            Paint paint3 = new Paint();
            paint3.setAntiAlias(true);
            paint3.setColor(i2);
            paint3.setStyle(Paint.Style.STROKE);
            paint3.setStrokeWidth(6.0f);
            canvas.drawCircle(rectF2.centerX(), rectF2.centerX(), (rectF2.width() / 2.0f) - (paint3.getStrokeWidth() / 2.0f), paint3);
        }
    }

    /* renamed from: a */
    public static void m6556a(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    /* renamed from: a */
    public static boolean m6554a(String str, Uri uri) {
        if (TextUtils.equals(str, "image/gif")) {
            return true;
        }
        if (!C12205r.m6809d(str)) {
            return false;
        }
        try {
            return m6552b(AbstractC11516a.m9413n().mo9412a().getContentResolver().openInputStream(uri));
        } catch (Exception e) {
            C12153d0.m6982d("MessagingApp", "Could not open GIF input stream", e);
            return false;
        }
    }

    /* renamed from: a */
    public static byte[] m6560a(Bitmap bitmap, int i) throws OutOfMemoryError {
        boolean z = false;
        byte[] bArr = null;
        while (!z) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
                bArr = byteArrayOutputStream.toByteArray();
                z = true;
            } catch (OutOfMemoryError e) {
                C12153d0.m6981e("MessagingApp", "OutOfMemory converting bitmap to bytes.");
                AbstractC11516a.m9413n().mo9396m();
                throw e;
            }
        }
        return bArr;
    }

    /* renamed from: b */
    public static int m6553b(Context context, Uri uri) {
        try {
            return m6555a(context.getContentResolver().openInputStream(uri));
        } catch (FileNotFoundException e) {
            C12153d0.m6986b("MessagingApp", "getOrientation couldn't open: " + uri, e);
            return 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if (java.util.Arrays.equals(r0, p459j.p460a.p474c0.p499h.C12242z.f27591b) != false) goto L_0x002e;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m6552b(java.io.InputStream r5) {
        /*
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0049
            r0 = 6
            byte[] r0 = new byte[r0]     // Catch: all -> 0x003d, IOException -> 0x0044
            r7 = r0
            r0 = r5
            r1 = r7
            r2 = 0
            r3 = 6
            int r0 = r0.read(r1, r2, r3)     // Catch: all -> 0x003d, IOException -> 0x0044
            r1 = 6
            if (r0 != r1) goto L_0x0036
            r0 = r7
            byte[] r1 = p459j.p460a.p474c0.p499h.C12242z.f27590a     // Catch: all -> 0x003d, IOException -> 0x0044
            boolean r0 = java.util.Arrays.equals(r0, r1)     // Catch: all -> 0x003d, IOException -> 0x0044
            if (r0 != 0) goto L_0x002e
            r0 = r7
            byte[] r1 = p459j.p460a.p474c0.p499h.C12242z.f27591b     // Catch: all -> 0x003d, IOException -> 0x0044
            boolean r0 = java.util.Arrays.equals(r0, r1)     // Catch: all -> 0x003d, IOException -> 0x0044
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0030
        L_0x002e:
            r0 = 1
            r6 = r0
        L_0x0030:
            r0 = r5
            r0.close()     // Catch: IOException -> 0x004b
        L_0x0034:
            r0 = r6
            return r0
        L_0x0036:
            r0 = r5
            r0.close()     // Catch: IOException -> 0x004f
            goto L_0x0049
        L_0x003d:
            r7 = move-exception
            r0 = r5
            r0.close()     // Catch: IOException -> 0x0053
        L_0x0042:
            r0 = r7
            throw r0
        L_0x0044:
            r7 = move-exception
            r0 = r5
            r0.close()     // Catch: IOException -> 0x004f
        L_0x0049:
            r0 = 0
            return r0
        L_0x004b:
            r5 = move-exception
            goto L_0x0034
        L_0x004f:
            r5 = move-exception
            goto L_0x0049
        L_0x0053:
            r5 = move-exception
            goto L_0x0042
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p499h.C12242z.m6552b(java.io.InputStream):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
        if (r0 > r5) goto L_0x0049;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m6557a(android.graphics.BitmapFactory.Options r4, int r5, int r6) {
        /*
            r3 = this;
            r0 = r4
            int r0 = r0.outHeight
            r7 = r0
            r0 = r4
            int r0 = r0.outWidth
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = 1
            r11 = r0
            r0 = r6
            r1 = -1
            if (r0 == r1) goto L_0x0020
            r0 = 1
            r12 = r0
            goto L_0x0023
        L_0x0020:
            r0 = 0
            r12 = r0
        L_0x0023:
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L_0x002b
            r0 = 1
            r9 = r0
        L_0x002b:
            r0 = r12
            if (r0 == 0) goto L_0x0036
            r0 = r7
            r1 = r6
            if (r0 > r1) goto L_0x0049
        L_0x0036:
            r0 = r10
            r13 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0082
            r0 = r10
            r13 = r0
            r0 = r8
            r1 = r5
            if (r0 <= r1) goto L_0x0082
        L_0x0049:
            r0 = r7
            r1 = 2
            int r0 = r0 / r1
            r10 = r0
            r0 = r8
            r1 = 2
            int r0 = r0 / r1
            r8 = r0
        L_0x0055:
            r0 = r12
            if (r0 == 0) goto L_0x0067
            r0 = r11
            r13 = r0
            r0 = r10
            r1 = r11
            int r0 = r0 / r1
            r1 = r6
            if (r0 <= r1) goto L_0x0082
        L_0x0067:
            r0 = r9
            if (r0 == 0) goto L_0x0079
            r0 = r11
            r13 = r0
            r0 = r8
            r1 = r11
            int r0 = r0 / r1
            r1 = r5
            if (r0 <= r1) goto L_0x0082
        L_0x0079:
            r0 = r11
            r1 = 2
            int r0 = r0 * r1
            r11 = r0
            goto L_0x0055
        L_0x0082:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p499h.C12242z.m6557a(android.graphics.BitmapFactory$Options, int, int):int");
    }
}
