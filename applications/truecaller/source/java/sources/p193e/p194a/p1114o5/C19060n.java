package p193e.p194a.p1114o5;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.util.DisplayMetrics;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.MediaFormat;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.ImageEntity;
import com.truecaller.utils.extensions.Scheme;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import p1727n3.p1857q.p1858a.C26901a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1406z3.p1408h.C21868b;
import p193e.p194a.p682e.C12864a2;
import s1.f0.r;
import s1.y.h;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.o5.n */
/* loaded from: classes15-dex2jar.jar:e/a/o5/n.class */
public final class C19060n implements AbstractC19057m {

    /* renamed from: a */
    public final DisplayMetrics f53231a;

    /* renamed from: b */
    public final Context f53232b;

    /* renamed from: e.a.o5.n$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/n$a.class */
    public static final class C19061a extends m implements l<Bitmap, byte[]> {

        /* renamed from: b */
        public static final C19061a f53233b = new C19061a();

        public C19061a() {
            super(1);
        }

        /* renamed from: d */
        public Object m14159d(Object obj) {
            Bitmap bitmap = (Bitmap) obj;
            s1.z.c.l.e(bitmap, "bitmap");
            int height = bitmap.getHeight() * bitmap.getWidth();
            int[] iArr = new int[height];
            bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
            int i = 1;
            byte[] bArr = new byte[(bitmap.getHeight() * bitmap.getWidth() * 2) + 1];
            bArr[0] = (byte) 24;
            for (int i2 = 0; i2 < height; i2++) {
                int i3 = iArr[i2];
                int i4 = ((i3 & 248) >> 3) | ((16252928 & i3) >> 8) | ((64512 & i3) >> 5);
                int i5 = i + 1;
                bArr[i] = (byte) ((i4 >> 8) & 255);
                i = i5 + 1;
                bArr[i5] = (byte) (i4 & 255);
            }
            return bArr;
        }
    }

    public C19060n(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f53232b = context;
        Resources resources = context.getResources();
        s1.z.c.l.d(resources, "context.resources");
        this.f53231a = resources.getDisplayMetrics();
    }

    /* renamed from: q */
    public static /* synthetic */ ImageEntity m14161q(C19060n c19060n, File file, BitmapFactory.Options options, int i, int i2, int i3) {
        if ((i3 & 2) != 0) {
            i = options.outWidth;
        }
        if ((i3 & 4) != 0) {
            i2 = options.outHeight;
        }
        return c19060n.m14162p(file, options, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    @Override // p193e.p194a.p1114o5.AbstractC19057m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo14177a(android.net.Uri r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L73
            r0 = r5
            android.content.Context r0 = r0.f53232b
            r9 = r0
            r0 = r6
            java.lang.String r1 = "$this$delete"
            s1.z.c.l.e(r0, r1)
            r0 = r9
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            com.truecaller.utils.extensions.Scheme r0 = p193e.p194a.p1129p5.p1132s0.C19286f.m13692L(r0)
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L29
            goto L53
        L29:
            r0 = r10
            int r0 = r0.ordinal()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L59
            r0 = r11
            r1 = 1
            if (r0 == r1) goto L3e
            goto L53
        L3e:
            r0 = r9
            android.content.ContentResolver r0 = r0.getContentResolver()
            r1 = r6
            r2 = 0
            r3 = 0
            int r0 = r0.delete(r1, r2, r3)
            r1 = 1
            if (r0 != r1) goto L53
            r0 = 1
            r12 = r0
            goto L69
        L53:
            r0 = 0
            r12 = r0
            goto L69
        L59:
            java.io.File r0 = new java.io.File
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.getPath()
            r1.<init>(r2)
            boolean r0 = r0.delete()
            r12 = r0
        L69:
            r0 = r7
            r8 = r0
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L73
            r0 = 1
            r8 = r0
        L73:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19060n.mo14177a(android.net.Uri):boolean");
    }

    @Override // p193e.p194a.p1114o5.AbstractC19057m
    /* renamed from: b */
    public int mo14176b() {
        DisplayMetrics displayMetrics = this.f53231a;
        return (int) (Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) * 0.667f);
    }

    /* JADX WARN: Type inference failed for: r1v18, types: [e.f.a.n.m, e.a.z3.h.b] */
    @Override // p193e.p194a.p1114o5.AbstractC19057m
    /* renamed from: c */
    public Bitmap mo14175c(byte[] bArr, int i, int i2) {
        s1.z.c.l.e(bArr, "thumbnail");
        if (bArr.length == 0) {
            return null;
        }
        float max = Math.max(i, i2) / bArr[0];
        int i3 = (int) (i / max);
        int i4 = (int) (i2 / max);
        int i5 = i3 * i4;
        if (bArr.length < (i5 * 2) + 1) {
            return null;
        }
        int[] iArr = new int[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = i6 * 2;
            int i8 = (bArr[i7 + 2] & 255) | ((bArr[i7 + 1] & 255) << 8);
            iArr[i6] = ((i8 << 3) & 248) | ((int) 4278190080L) | ((i8 << 8) & 16252928) | ((i8 << 5) & 64512);
        }
        Bitmap createBitmap = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
        createBitmap.setPixels(iArr, 0, i3, 0, 0, i3, i4);
        s1.z.c.l.d(createBitmap, "bitmap");
        Bitmap m22563c = C12864a2.m22563c(createBitmap, i3 * 4, i4 * 4);
        Bitmap bitmap = (Bitmap) ComponentCallbacks2C22222c.m8446e(this.f53232b).mo8415f().mo8425Q(m22563c).mo8112B(new C21868b(this.f53232b, 2.0f)).m8418X().get();
        if (!s1.z.c.l.a(m22563c, bitmap)) {
            m22563c.recycle();
        }
        return bitmap;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00d2  */
    @Override // p193e.p194a.p1114o5.AbstractC19057m
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] mo14174d(android.net.Uri r8) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19060n.mo14174d(android.net.Uri):byte[]");
    }

    @Override // p193e.p194a.p1114o5.AbstractC19057m
    /* renamed from: e */
    public Uri mo14173e(Uri uri, int i, int i2) {
        Uri uri2;
        s1.z.c.l.e(uri, "uri");
        try {
            BitmapFactory.Options m14165m = m14165m(uri);
            File m13677b = C19286f.m13677b(uri, this.f53232b, ".jpg");
            uri2 = null;
            if (m13677b != null) {
                String path = m13677b.getPath();
                s1.z.c.l.d(path, "file.path");
                if (!m14164n(m14165m, i, i)) {
                    m14165m.inJustDecodeBounds = false;
                    m14165m.inSampleSize = 1;
                    Bitmap decodeFile = BitmapFactory.decodeFile(path, m14165m);
                    FileOutputStream fileOutputStream = new FileOutputStream(path);
                    try {
                        decodeFile.compress(m14169i(m14165m), i2, fileOutputStream);
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        uri2 = Uri.fromFile(new File(path));
                    } catch (IOException e) {
                        uri2 = null;
                    } catch (Throwable th) {
                        decodeFile.recycle();
                        fileOutputStream.close();
                        throw th;
                    }
                    decodeFile.recycle();
                    fileOutputStream.close();
                } else {
                    uri2 = m14168j(path, m14165m, i, i2);
                }
            }
        } catch (Exception e2) {
            uri2 = null;
        }
        return uri2;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19057m
    /* renamed from: f */
    public ImageEntity mo14172f(Uri uri) {
        ImageEntity imageEntity;
        File m13677b;
        File m13677b2;
        s1.z.c.l.e(uri, "uri");
        try {
            BitmapFactory.Options m14165m = m14165m(uri);
            m13677b = C19286f.m13677b(uri, this.f53232b, null);
            imageEntity = null;
            if (m13677b != null) {
                String path = m13677b.getPath();
                s1.z.c.l.d(path, "file.path");
                int m14166l = m14166l(path);
                if (m14164n(m14165m, 1280, 720)) {
                    String path2 = m13677b.getPath();
                    s1.z.c.l.d(path2, "file.path");
                    Bitmap m22568Z = C12864a2.m22568Z(m14163o(path2, m14165m, 1280, 720), m14166l);
                    if (m14160r(m22568Z, m13677b, m14169i(m14165m), 70)) {
                        return m14162p(m13677b, m14165m, m22568Z.getWidth(), m22568Z.getHeight());
                    }
                    return null;
                }
                Bitmap decodeFile = BitmapFactory.decodeFile(m13677b.getPath());
                imageEntity = null;
                if (decodeFile != null) {
                    Bitmap m22568Z2 = C12864a2.m22568Z(decodeFile, m14166l);
                    if (m14166l != 0) {
                        if (m14160r(m22568Z2, m13677b, m14169i(m14165m), 70)) {
                            return m14161q(this, m13677b, m14165m, 0, 0, 6);
                        }
                        return null;
                    }
                    long m13537k1 = C19291g.m13537k1(m13677b);
                    if (!m14160r(m22568Z2, m13677b, m14169i(m14165m), 70)) {
                        return null;
                    }
                    if (C19291g.m13537k1(m13677b) >= m13537k1) {
                        C19291g.m13543i1(m13677b);
                        m13677b2 = C19286f.m13677b(uri, this.f53232b, null);
                        imageEntity = null;
                        if (m13677b2 != null) {
                            imageEntity = m14161q(this, m13677b2, m14165m, 0, 0, 6);
                        }
                    } else {
                        imageEntity = m14161q(this, m13677b, m14165m, 0, 0, 6);
                    }
                }
            }
        } catch (Exception e) {
            imageEntity = null;
        }
        return imageEntity;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19057m
    /* renamed from: g */
    public Uri mo14171g(Uri uri, int i) {
        Bitmap bitmap;
        Throwable th;
        s1.z.c.l.e(uri, "uri");
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(this.f53232b, uri);
            bitmap = mediaMetadataRetriever.getFrameAtTime();
            if (bitmap == null) {
                mediaMetadataRetriever.release();
                return null;
            }
            try {
                Uri m14170h = m14170h(bitmap, i);
                mediaMetadataRetriever.release();
                bitmap.recycle();
                return m14170h;
            } catch (IllegalArgumentException e) {
                mediaMetadataRetriever.release();
                if (bitmap == null) {
                    return null;
                }
                bitmap.recycle();
                return null;
            } catch (SecurityException e2) {
                mediaMetadataRetriever.release();
                if (bitmap == null) {
                    return null;
                }
                bitmap.recycle();
                return null;
            } catch (Throwable th2) {
                th = th2;
                mediaMetadataRetriever.release();
                if (bitmap != null) {
                    bitmap.recycle();
                }
                throw th;
            }
        } catch (IllegalArgumentException e3) {
            bitmap = null;
        } catch (SecurityException e4) {
            bitmap = null;
        } catch (Throwable th3) {
            th = th3;
            bitmap = null;
        }
    }

    /* renamed from: h */
    public final Uri m14170h(Bitmap bitmap, int i) {
        if (!(Math.max(bitmap.getWidth(), bitmap.getHeight()) > i || Math.min(bitmap.getWidth(), bitmap.getHeight()) > i)) {
            File m14167k = m14167k(bitmap);
            if (m14167k == null) {
                return null;
            }
            return Uri.fromFile(m14167k);
        }
        File m14167k2 = m14167k(bitmap);
        if (m14167k2 == null) {
            return null;
        }
        try {
            Uri fromFile = Uri.fromFile(m14167k2);
            s1.z.c.l.d(fromFile, "Uri.fromFile(file)");
            BitmapFactory.Options m14165m = m14165m(fromFile);
            String path = m14167k2.getPath();
            s1.z.c.l.d(path, "file.path");
            return m14168j(path, m14165m, i, 80);
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: i */
    public final Bitmap.CompressFormat m14169i(BitmapFactory.Options options) {
        String str = options.outMimeType;
        if (str == null) {
            return Bitmap.CompressFormat.JPEG;
        }
        s1.z.c.l.d(str, "outMimeType");
        return r.m(str, MediaFormat.PNG, false, 2) ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    /* renamed from: j */
    public final Uri m14168j(String str, BitmapFactory.Options options, int i, int i2) {
        Uri uri;
        Bitmap m22568Z = C12864a2.m22568Z(m14163o(str, options, i, i), m14166l(str));
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        try {
            m22568Z.compress(m14169i(options), i2, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            uri = Uri.fromFile(new File(str));
        } catch (IOException e) {
            uri = null;
        } catch (Throwable th) {
            m22568Z.recycle();
            fileOutputStream.close();
            throw th;
        }
        m22568Z.recycle();
        fileOutputStream.close();
        return uri;
    }

    /* renamed from: k */
    public final File m14167k(Bitmap bitmap) {
        File a = h.a("image", ".jpg", this.f53232b.getCacheDir());
        return C12864a2.m22546l(bitmap, a, Bitmap.CompressFormat.PNG, 100) ? a : null;
    }

    /* renamed from: l */
    public final int m14166l(String str) {
        int m1217e = new C26901a(str).m1217e("Orientation", 1);
        return m1217e != 3 ? m1217e != 6 ? m1217e != 8 ? 0 : 270 : 90 : 180;
    }

    /* renamed from: m */
    public final BitmapFactory.Options m14165m(Uri uri) {
        InputStream openInputStream;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Scheme m13692L = C19286f.m13692L(uri);
        if (m13692L != null) {
            int ordinal = m13692L.ordinal();
            if (ordinal == 0) {
                BitmapFactory.decodeFile(uri.getPath(), options);
            } else if (ordinal == 1) {
                try {
                    BitmapFactory.decodeStream(this.f53232b.getContentResolver().openInputStream(uri), null, options);
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            return options;
        }
        StringBuilder m8728C = C22128a.m8728C("Uri scheme: ");
        m8728C.append(uri.getScheme());
        m8728C.append(" is not supported");
        throw new IllegalArgumentException(m8728C.toString());
    }

    /* renamed from: n */
    public final boolean m14164n(BitmapFactory.Options options, int i, int i2) {
        return Math.max(options.outWidth, options.outHeight) > i || Math.min(options.outWidth, options.outHeight) > i2;
    }

    /* renamed from: o */
    public final Bitmap m14163o(String str, BitmapFactory.Options options, int i, int i2) {
        int i3;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        float f = options.outWidth;
        float f2 = options.outHeight;
        float max = Math.max(Math.max(f, f2) / i, Math.min(f, f2) / i2);
        int max2 = Math.max(1, (int) (f / max));
        int max3 = Math.max(1, (int) (f2 / max));
        options.inJustDecodeBounds = false;
        int i4 = options.outHeight;
        int i5 = options.outWidth;
        if (i4 > max3 || i5 > max2) {
            int i6 = i4 / 2;
            int i7 = i5 / 2;
            int i8 = 1;
            while (true) {
                int i9 = i8;
                i3 = i9;
                if (i6 / i9 <= max3) {
                    break;
                }
                i3 = i9;
                if (i7 / i9 <= max2) {
                    break;
                }
                i8 = i9 * 2;
            }
        } else {
            i3 = 1;
        }
        options.inSampleSize = i3;
        Bitmap decodeFile = BitmapFactory.decodeFile(str, options);
        s1.z.c.l.d(decodeFile, "BitmapFactory.decodeFile(path, options)");
        if (decodeFile.getWidth() == max2 && decodeFile.getHeight() == max3) {
            return decodeFile;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeFile, max2, max3, true);
        s1.z.c.l.d(createScaledBitmap, "Bitmap.createScaledBitma…idth, targetHeight, true)");
        decodeFile.recycle();
        return createScaledBitmap;
    }

    /* renamed from: p */
    public final ImageEntity m14162p(File file, BitmapFactory.Options options, int i, int i2) {
        Entity.C4195a c4195a = Entity.f13305h;
        String str = options.outMimeType;
        s1.z.c.l.d(str, "options.outMimeType");
        Uri fromFile = Uri.fromFile(file);
        s1.z.c.l.d(fromFile, "Uri.fromFile(this)");
        BinaryEntity m35041b = Entity.C4195a.m35041b(c4195a, 0L, str, 0, fromFile, i, i2, 0, C19291g.m13537k1(file), true, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 261701);
        BinaryEntity binaryEntity = m35041b;
        if (!(m35041b instanceof ImageEntity)) {
            binaryEntity = null;
        }
        return (ImageEntity) binaryEntity;
    }

    /* renamed from: r */
    public final boolean m14160r(Bitmap bitmap, File file, Bitmap.CompressFormat compressFormat, int i) {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            try {
                bitmap.compress(compressFormat, i, fileOutputStream);
                fileOutputStream.flush();
                try {
                    fileOutputStream.close();
                } catch (IOException e) {
                }
                bitmap.recycle();
                return true;
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (IOException e2) {
                }
                bitmap.recycle();
                throw th;
            }
        } catch (IOException e3) {
            AssertionUtil.reportThrowableButNeverCrash(e3);
            try {
                fileOutputStream.close();
            } catch (IOException e4) {
            }
            bitmap.recycle();
            return false;
        }
    }
}
