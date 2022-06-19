package com.clevertap.android.sdk.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import p193e.p1485h.p1486a.p1493c.p1500p0.C22779a;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/gif/GifImageView.class */
public class GifImageView extends AppCompatImageView implements Runnable {

    /* renamed from: c */
    public boolean f2300c;

    /* renamed from: f */
    public Thread f2303f;

    /* renamed from: i */
    public C22779a f2306i;

    /* renamed from: k */
    public boolean f2308k;

    /* renamed from: l */
    public boolean f2309l;

    /* renamed from: m */
    public Bitmap f2310m;

    /* renamed from: d */
    public AbstractC0877c f2301d = null;

    /* renamed from: e */
    public AbstractC0878d f2302e = null;

    /* renamed from: g */
    public AbstractC0879e f2304g = null;

    /* renamed from: h */
    public long f2305h = -1;

    /* renamed from: j */
    public final Handler f2307j = new Handler(Looper.getMainLooper());

    /* renamed from: n */
    public final Runnable f2311n = new RunnableC0875a();

    /* renamed from: o */
    public final Runnable f2312o = new RunnableC0876b();

    /* renamed from: com.clevertap.android.sdk.gif.GifImageView$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/gif/GifImageView$a.class */
    public class RunnableC0875a implements Runnable {
        public RunnableC0875a() {
            GifImageView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            GifImageView gifImageView = GifImageView.this;
            gifImageView.f2310m = null;
            gifImageView.f2306i = null;
            gifImageView.f2303f = null;
            gifImageView.f2309l = false;
        }
    }

    /* renamed from: com.clevertap.android.sdk.gif.GifImageView$b */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/gif/GifImageView$b.class */
    public class RunnableC0876b implements Runnable {
        public RunnableC0876b() {
            GifImageView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Bitmap bitmap = GifImageView.this.f2310m;
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            GifImageView gifImageView = GifImageView.this;
            gifImageView.setImageBitmap(gifImageView.f2310m);
            GifImageView.this.setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
    }

    /* renamed from: com.clevertap.android.sdk.gif.GifImageView$c */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/gif/GifImageView$c.class */
    public interface AbstractC0877c {
        /* renamed from: a */
        void m42076a();
    }

    /* renamed from: com.clevertap.android.sdk.gif.GifImageView$d */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/gif/GifImageView$d.class */
    public interface AbstractC0878d {
        /* renamed from: a */
        void m42075a();
    }

    /* renamed from: com.clevertap.android.sdk.gif.GifImageView$e */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/gif/GifImageView$e.class */
    public interface AbstractC0879e {
        /* renamed from: a */
        Bitmap m42074a(Bitmap bitmap);
    }

    public GifImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: d */
    public void m42078d() {
        this.f2300c = false;
        this.f2308k = false;
        this.f2309l = true;
        this.f2300c = false;
        Thread thread = this.f2303f;
        if (thread != null) {
            thread.interrupt();
            this.f2303f = null;
        }
        this.f2307j.post(this.f2311n);
    }

    /* renamed from: e */
    public final void m42077e() {
        if ((this.f2300c || this.f2308k) && this.f2306i != null && this.f2303f == null) {
            Thread thread = new Thread(this);
            this.f2303f = thread;
            thread.start();
        }
    }

    public int getFrameCount() {
        return this.f2306i.f63104g.f63136d;
    }

    public long getFramesDisplayDuration() {
        return this.f2305h;
    }

    public int getGifHeight() {
        return this.f2306i.f63104g.f63141i;
    }

    public int getGifWidth() {
        return this.f2306i.f63104g.f63144l;
    }

    public AbstractC0878d getOnAnimationStop() {
        return this.f2302e;
    }

    public AbstractC0879e getOnFrameAvailable() {
        return this.f2304g;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m42078d();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:9|(4:12|(1:14)|15|(11:19|69|20|(1:22)|23|24|25|65|26|29|(1:55)(9:67|33|34|(2:36|(1:38)(2:39|(2:41|(1:43))))|44|45|(4:47|48|(1:50)|51)|52|53)))|11|69|20|(0)|23|24|25|65|26|29|(2:31|73)(1:72)|55) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00be, code lost:
        r14 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0097 A[Catch: ArrayIndexOutOfBoundsException | IllegalArgumentException -> 0x00bd, TRY_ENTER, TryCatch #2 {ArrayIndexOutOfBoundsException | IllegalArgumentException -> 0x00bd, blocks: (B:20:0x007c, B:22:0x0097, B:23:0x00a2, B:23:0x00a2, B:24:0x00a5), top: B:69:0x007c }] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.clevertap.android.sdk.gif.GifImageView.run():void");
    }

    public void setBytes(byte[] bArr) {
        boolean z;
        C22779a c22779a = new C22779a();
        this.f2306i = c22779a;
        try {
            c22779a.m7778d(bArr);
            boolean z2 = this.f2300c;
            if (z2) {
                m42077e();
                return;
            }
            C22779a c22779a2 = this.f2306i;
            if (c22779a2.f63103f == 0) {
                return;
            }
            if (-1 >= c22779a2.f63104g.f63136d) {
                z = false;
            } else {
                c22779a2.f63103f = -1;
                z = true;
            }
            if (!z || z2) {
                return;
            }
            this.f2308k = true;
            m42077e();
        } catch (Exception e) {
            this.f2306i = null;
        }
    }

    public void setFramesDisplayDuration(long j) {
        this.f2305h = j;
    }

    public void setOnAnimationStart(AbstractC0877c abstractC0877c) {
        this.f2301d = abstractC0877c;
    }

    public void setOnAnimationStop(AbstractC0878d abstractC0878d) {
        this.f2302e = abstractC0878d;
    }

    public void setOnFrameAvailable(AbstractC0879e abstractC0879e) {
        this.f2304g = abstractC0879e;
    }
}
