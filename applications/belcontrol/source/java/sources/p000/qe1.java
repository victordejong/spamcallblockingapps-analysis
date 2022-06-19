package p000;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.support.p001v4.media.session.PlaybackStateCompat;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.File;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: qe1 */
/* loaded from: classes3-dex2jar.jar:qe1.class */
public class qe1 {

    /* renamed from: a */
    public String f7823a;

    /* renamed from: c */
    public boolean f7825c;

    /* renamed from: b */
    public ConcurrentHashMap<String, SoftReference<Bitmap>> f7824b = new ConcurrentHashMap<>(((int) (Runtime.getRuntime().maxMemory() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)) / 4);

    /* renamed from: d */
    public ExecutorService f7826d = Executors.newSingleThreadExecutor();

    /* renamed from: qe1$a */
    /* loaded from: classes3-dex2jar.jar:qe1$a.class */
    public class RunnableC1627a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f7827a;

        /* renamed from: b */
        public final /* synthetic */ Bitmap f7828b;

        public RunnableC1627a(String str, Bitmap bitmap) {
            qe1.this = r4;
            this.f7827a = str;
            this.f7828b = bitmap;
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r5 = this;
                r0 = r5
                qe1 r0 = p000.qe1.this
                boolean r0 = p000.qe1.m819a(r0)
                if (r0 == 0) goto L7d
                java.io.BufferedOutputStream r0 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L58 java.io.FileNotFoundException -> L5e
                r6 = r0
                java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L58 java.io.FileNotFoundException -> L5e
                r7 = r0
                java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L58 java.io.FileNotFoundException -> L5e
                r8 = r0
                r0 = r8
                r1 = r5
                qe1 r1 = p000.qe1.this     // Catch: java.lang.Throwable -> L58 java.io.FileNotFoundException -> L5e
                java.lang.String r1 = p000.qe1.m818b(r1)     // Catch: java.lang.Throwable -> L58 java.io.FileNotFoundException -> L5e
                r2 = r5
                qe1 r2 = p000.qe1.this     // Catch: java.lang.Throwable -> L58 java.io.FileNotFoundException -> L5e
                r3 = r5
                java.lang.String r3 = r3.f7827a     // Catch: java.lang.Throwable -> L58 java.io.FileNotFoundException -> L5e
                java.lang.String r2 = p000.qe1.m817c(r2, r3)     // Catch: java.lang.Throwable -> L58 java.io.FileNotFoundException -> L5e
                r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L58 java.io.FileNotFoundException -> L5e
                r0 = r7
                r1 = r8
                r0.<init>(r1)     // Catch: java.lang.Throwable -> L58 java.io.FileNotFoundException -> L5e
                r0 = r6
                r1 = r7
                r2 = 2048(0x800, float:2.87E-42)
                r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L58 java.io.FileNotFoundException -> L5e
                r0 = r6
                r8 = r0
                r0 = r5
                android.graphics.Bitmap r0 = r0.f7828b     // Catch: java.io.FileNotFoundException -> L54 java.lang.Throwable -> L6e
                android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.io.FileNotFoundException -> L54 java.lang.Throwable -> L6e
                r2 = 100
                r3 = r6
                boolean r0 = r0.compress(r1, r2, r3)     // Catch: java.io.FileNotFoundException -> L54 java.lang.Throwable -> L6e
            L49:
                r0 = r6
                r0.flush()     // Catch: java.io.IOException -> L7e
                r0 = r6
                r0.close()     // Catch: java.io.IOException -> L7e
                goto L7d
            L54:
                r7 = move-exception
                goto L61
            L58:
                r6 = move-exception
                r0 = 0
                r8 = r0
                goto L6f
            L5e:
                r7 = move-exception
                r0 = 0
                r6 = r0
            L61:
                r0 = r6
                r8 = r0
                r0 = r7
                r0.printStackTrace()     // Catch: java.lang.Throwable -> L6e
                r0 = r6
                if (r0 == 0) goto L7d
                goto L49
            L6e:
                r6 = move-exception
            L6f:
                r0 = r8
                if (r0 == 0) goto L7b
                r0 = r8
                r0.flush()     // Catch: java.io.IOException -> L82
                r0 = r8
                r0.close()     // Catch: java.io.IOException -> L82
            L7b:
                r0 = r6
                throw r0
            L7d:
                return
            L7e:
                r6 = move-exception
                goto L7d
            L82:
                r8 = move-exception
                goto L7b
            */
            throw new UnsupportedOperationException("Method not decompiled: p000.qe1.RunnableC1627a.run():void");
        }
    }

    public qe1() {
        this.f7825c = false;
        File m809k = m809k("/image_cache/");
        m809k.mkdirs();
        this.f7825c = m809k.exists();
        this.f7823a = m809k.getPath();
    }

    /* renamed from: d */
    public final void m816d(String str, Bitmap bitmap) {
        this.f7826d.execute(new RunnableC1627a(str, bitmap));
    }

    /* renamed from: e */
    public final void m815e(String str, Bitmap bitmap) {
        this.f7824b.put(m810j(str), new SoftReference<>(bitmap));
    }

    /* renamed from: f */
    public Drawable m814f(String str) {
        Bitmap m812h = m812h(str);
        Bitmap bitmap = m812h;
        if (m812h == null) {
            Bitmap m813g = m813g(str);
            bitmap = m813g;
            if (m813g != null) {
                m815e(str, m813g);
                bitmap = m813g;
            }
        }
        if (bitmap == null) {
            return null;
        }
        String str2 = "Bitmap found in cache for url : " + str;
        return new BitmapDrawable(fa1.m1840j().getResources(), bitmap);
    }

    /* renamed from: g */
    public final Bitmap m813g(String str) {
        Bitmap bitmap;
        if (this.f7825c) {
            String m808l = m808l(str);
            if (new File(m808l).exists()) {
                bitmap = BitmapFactory.decodeFile(m808l);
                return bitmap;
            }
        }
        bitmap = null;
        return bitmap;
    }

    /* renamed from: h */
    public final Bitmap m812h(String str) {
        SoftReference<Bitmap> softReference = this.f7824b.get(m810j(str));
        return softReference != null ? softReference.get() : null;
    }

    /* renamed from: i */
    public final Bitmap m811i(String str) {
        Bitmap bitmap;
        try {
            URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection());
            uRLConnection.setConnectTimeout(5000);
            uRLConnection.setReadTimeout(10000);
            bitmap = BitmapFactory.decodeStream((InputStream) uRLConnection.getContent());
        } catch (Exception e) {
            j91.m1504l(this, "", e);
            bitmap = null;
            return bitmap;
        } catch (OutOfMemoryError e2) {
            bitmap = null;
            return bitmap;
        }
        return bitmap;
    }

    /* renamed from: j */
    public final String m810j(String str) {
        if (str != null) {
            return str.replaceAll("[.:/,%?&=]", "+").replaceAll("[+]+", "+");
        }
        throw new RuntimeException("Null url passed in");
    }

    /* renamed from: k */
    public final File m809k(String str) {
        String str2;
        if ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) {
            str2 = Environment.getExternalStorageDirectory().getPath() + "//image_cache/";
        } else {
            str2 = this.f7823a;
        }
        return new File(str2 + File.separator + str);
    }

    /* renamed from: l */
    public final String m808l(String str) {
        return this.f7823a + m810j(str);
    }

    /* renamed from: m */
    public void m807m(String str, Bitmap bitmap) {
        m806n(str, bitmap, false);
    }

    /* renamed from: n */
    public void m806n(String str, Bitmap bitmap, boolean z) {
        Bitmap bitmap2 = bitmap;
        if (bitmap == null) {
            bitmap2 = m811i(str);
        }
        if (bitmap2 == null) {
            return;
        }
        m815e(str, bitmap2);
        if (z) {
            return;
        }
        m816d(str, bitmap2);
    }
}
