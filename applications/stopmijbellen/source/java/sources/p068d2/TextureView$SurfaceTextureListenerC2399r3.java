package p068d2;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.support.p012v4.media.C0082b;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.C0608b;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
@TargetApi(14)
/* renamed from: d2.r3 */
/* loaded from: classes-dex2jar.jar:d2/r3.class */
public class TextureView$SurfaceTextureListenerC2399r3 extends TextureView implements MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnSeekCompleteListener, TextureView.SurfaceTextureListener {

    /* renamed from: A */
    public boolean f8471A;

    /* renamed from: B */
    public boolean f8472B;

    /* renamed from: C */
    public String f8473C;

    /* renamed from: D */
    public String f8474D;

    /* renamed from: E */
    public C2410t0 f8475E;

    /* renamed from: F */
    public C2322j0 f8476F;

    /* renamed from: G */
    public SurfaceTexture f8477G;

    /* renamed from: I */
    public C2401b f8479I;

    /* renamed from: J */
    public ProgressBar f8480J;

    /* renamed from: K */
    public MediaPlayer f8481K;

    /* renamed from: N */
    public C2410t0 f8484N;

    /* renamed from: a */
    public float f8485a;

    /* renamed from: b */
    public float f8486b;

    /* renamed from: c */
    public float f8487c;

    /* renamed from: d */
    public float f8488d;

    /* renamed from: e */
    public int f8489e;

    /* renamed from: i */
    public int f8493i;

    /* renamed from: j */
    public int f8494j;

    /* renamed from: k */
    public int f8495k;

    /* renamed from: l */
    public int f8496l;

    /* renamed from: m */
    public int f8497m;

    /* renamed from: n */
    public int f8498n;

    /* renamed from: o */
    public int f8499o;

    /* renamed from: p */
    public double f8500p;

    /* renamed from: q */
    public double f8501q;

    /* renamed from: r */
    public long f8502r;

    /* renamed from: s */
    public boolean f8503s;

    /* renamed from: t */
    public boolean f8504t;

    /* renamed from: u */
    public boolean f8505u;

    /* renamed from: v */
    public boolean f8506v;

    /* renamed from: w */
    public boolean f8507w;

    /* renamed from: x */
    public boolean f8508x;

    /* renamed from: y */
    public boolean f8509y;

    /* renamed from: z */
    public boolean f8510z;

    /* renamed from: f */
    public boolean f8490f = true;

    /* renamed from: g */
    public Paint f8491g = new Paint();

    /* renamed from: h */
    public Paint f8492h = new Paint(1);

    /* renamed from: H */
    public RectF f8478H = new RectF();

    /* renamed from: L */
    public C2267f4 f8482L = new C2267f4();

    /* renamed from: M */
    public ExecutorService f8483M = Executors.newSingleThreadExecutor();

    /* renamed from: d2.r3$a */
    /* loaded from: classes-dex2jar.jar:d2/r3$a.class */
    public class RunnableC2400a implements Runnable {
        public RunnableC2400a() {
            TextureView$SurfaceTextureListenerC2399r3.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(150L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (TextureView$SurfaceTextureListenerC2399r3.this.f8484N != null) {
                C2267f4 c2267f4 = new C2267f4();
                C2227e4.m3740m(c2267f4, FacebookAdapter.KEY_ID, TextureView$SurfaceTextureListenerC2399r3.this.f8497m);
                C2227e4.m3744i(c2267f4, "ad_session_id", TextureView$SurfaceTextureListenerC2399r3.this.f8474D);
                C2227e4.m3739n(c2267f4, "success", true);
                TextureView$SurfaceTextureListenerC2399r3.this.f8484N.m3587a(c2267f4).m3586b();
                TextureView$SurfaceTextureListenerC2399r3.this.f8484N = null;
            }
        }
    }

    /* renamed from: d2.r3$b */
    /* loaded from: classes-dex2jar.jar:d2/r3$b.class */
    public class C2401b extends View {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2401b(Context context) {
            super(context);
            TextureView$SurfaceTextureListenerC2399r3.this = r8;
            setWillNotDraw(false);
            try {
                C2401b.class.getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this, 1, null);
            } catch (Exception e) {
            }
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3 = TextureView$SurfaceTextureListenerC2399r3.this;
            canvas.drawArc(textureView$SurfaceTextureListenerC2399r3.f8478H, 270.0f, textureView$SurfaceTextureListenerC2399r3.f8486b, false, textureView$SurfaceTextureListenerC2399r3.f8491g);
            StringBuilder m8752j = C0082b.m8752j("");
            m8752j.append(TextureView$SurfaceTextureListenerC2399r3.this.f8489e);
            canvas.drawText(m8752j.toString(), TextureView$SurfaceTextureListenerC2399r3.this.f8478H.centerX(), (float) ((TextureView$SurfaceTextureListenerC2399r3.this.f8492h.getFontMetrics().bottom * 1.35d) + TextureView$SurfaceTextureListenerC2399r3.this.f8478H.centerY()), TextureView$SurfaceTextureListenerC2399r3.this.f8492h);
            invalidate();
        }
    }

    public TextureView$SurfaceTextureListenerC2399r3(Context context, C2410t0 c2410t0, int i, C2322j0 c2322j0) {
        super(context);
        this.f8476F = c2322j0;
        this.f8475E = c2410t0;
        this.f8497m = i;
        setSurfaceTextureListener(this);
    }

    /* renamed from: a */
    public static boolean m3610a(TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3, C2410t0 c2410t0) {
        Objects.requireNonNull(textureView$SurfaceTextureListenerC2399r3);
        C2267f4 c2267f4 = c2410t0.f8537b;
        return C2227e4.m3735r(c2267f4, FacebookAdapter.KEY_ID) == textureView$SurfaceTextureListenerC2399r3.f8497m && C2227e4.m3735r(c2267f4, "container_id") == textureView$SurfaceTextureListenerC2399r3.f8476F.f8300j && c2267f4.m3697o("ad_session_id").equals(textureView$SurfaceTextureListenerC2399r3.f8476F.f8302l);
    }

    /* renamed from: b */
    public final void m3609b() {
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, FacebookAdapter.KEY_ID, this.f8474D);
        new C2410t0("AdSession.on_error", this.f8476F.f8301k, c2267f4).m3586b();
        this.f8503s = true;
    }

    /* renamed from: c */
    public boolean m3608c() {
        if (!this.f8507w) {
            C0082b.m8750l(0, 1, C0608b.m7626i("ADCVideoView pause() called while MediaPlayer is not prepared."), true);
            return false;
        } else if (!this.f8505u) {
            return false;
        } else {
            this.f8481K.getCurrentPosition();
            this.f8501q = this.f8481K.getDuration();
            this.f8481K.pause();
            this.f8506v = true;
            return true;
        }
    }

    /* renamed from: d */
    public boolean m3607d() {
        if (!this.f8507w) {
            return false;
        }
        if (!this.f8506v && C2408t.f8534d) {
            this.f8481K.start();
            try {
                this.f8483M.submit(new RunnableC2407s3(this));
            } catch (RejectedExecutionException e) {
                m3609b();
            }
        } else if (!this.f8503s && C2408t.f8534d) {
            this.f8481K.start();
            this.f8506v = false;
            if (!this.f8483M.isShutdown()) {
                try {
                    this.f8483M.submit(new RunnableC2407s3(this));
                } catch (RejectedExecutionException e2) {
                    m3609b();
                }
            }
            C2401b c2401b = this.f8479I;
            if (c2401b != null) {
                c2401b.invalidate();
            }
        }
        setWillNotDraw(false);
        return true;
    }

    /* renamed from: e */
    public void m3606e() {
        C0082b.m8750l(0, 2, C0608b.m7626i("MediaPlayer stopped and released."), true);
        try {
            if (!this.f8503s && this.f8507w && this.f8481K.isPlaying()) {
                this.f8481K.stop();
            }
        } catch (IllegalStateException e) {
            C0082b.m8750l(0, 1, C0608b.m7626i("Caught IllegalStateException when calling stop on MediaPlayer"), true);
        }
        ProgressBar progressBar = this.f8480J;
        if (progressBar != null) {
            this.f8476F.removeView(progressBar);
        }
        this.f8503s = true;
        this.f8507w = false;
        this.f8481K.release();
    }

    /* renamed from: f */
    public final void m3605f() {
        double min = Math.min(this.f8495k / this.f8498n, this.f8496l / this.f8499o);
        int i = (int) (this.f8498n * min);
        int i2 = (int) (this.f8499o * min);
        C0082b.m8750l(0, 2, "setMeasuredDimension to " + i + " by " + i2, true);
        setMeasuredDimension(i, i2);
        if (this.f8509y) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
            layoutParams.width = i;
            layoutParams.height = i2;
            layoutParams.gravity = 17;
            layoutParams.setMargins(0, 0, 0, 0);
            setLayoutParams(layoutParams);
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.f8503s = true;
        this.f8500p = this.f8501q;
        C2227e4.m3740m(this.f8482L, FacebookAdapter.KEY_ID, this.f8497m);
        C2227e4.m3740m(this.f8482L, "container_id", this.f8476F.f8300j);
        C2227e4.m3744i(this.f8482L, "ad_session_id", this.f8474D);
        C2227e4.m3747f(this.f8482L, "elapsed", this.f8500p);
        C2227e4.m3747f(this.f8482L, "duration", this.f8501q);
        new C2410t0("VideoView.on_progress", this.f8476F.f8301k, this.f8482L).m3586b();
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        m3609b();
        StringBuilder sb = new StringBuilder();
        sb.append("MediaPlayer error: " + i + "," + i2);
        C0082b.m8750l(0, 0, sb.toString(), false);
        return true;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        m3605f();
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.f8507w = true;
        if (this.f8472B) {
            this.f8476F.removeView(this.f8480J);
        }
        if (this.f8509y) {
            this.f8498n = mediaPlayer.getVideoWidth();
            this.f8499o = mediaPlayer.getVideoHeight();
            m3605f();
            C2408t.m3591d().m3718p().m3686e(0, 2, "MediaPlayer getVideoWidth = " + mediaPlayer.getVideoWidth(), true);
            C0082b.m8750l(0, 2, "MediaPlayer getVideoHeight = " + mediaPlayer.getVideoHeight(), true);
        }
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3740m(c2267f4, FacebookAdapter.KEY_ID, this.f8497m);
        C2227e4.m3740m(c2267f4, "container_id", this.f8476F.f8300j);
        C2227e4.m3744i(c2267f4, "ad_session_id", this.f8474D);
        new C2410t0("VideoView.on_ready", this.f8476F.f8301k, c2267f4).m3586b();
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        ExecutorService executorService = this.f8483M;
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        try {
            this.f8483M.submit(new RunnableC2400a());
        } catch (RejectedExecutionException e) {
            m3609b();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (surfaceTexture == null || this.f8508x) {
            C0082b.m8750l(0, 0, C1676a.m4789h("Null texture provided by system's onSurfaceTextureAvailable or ", "MediaPlayer has been destroyed."), true);
            return;
        }
        try {
            this.f8481K.setSurface(new Surface(surfaceTexture));
        } catch (IllegalStateException e) {
            C2408t.m3591d().m3718p().m3686e(0, 0, C0608b.m7626i("IllegalStateException thrown when calling MediaPlayer.setSurface()"), false);
            m3609b();
        }
        this.f8477G = surfaceTexture;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.f8477G = surfaceTexture;
        if (!this.f8508x) {
            return false;
        }
        surfaceTexture.release();
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f8477G = surfaceTexture;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f8477G = surfaceTexture;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C2230f1 m3591d = C2408t.m3591d();
        C2329k0 m3722l = m3591d.m3722l();
        int action = motionEvent.getAction() & 255;
        if (action == 0 || action == 1 || action == 3 || action == 2 || action == 5 || action == 6) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3740m(c2267f4, "view_id", this.f8497m);
            C2227e4.m3744i(c2267f4, "ad_session_id", this.f8474D);
            C2227e4.m3740m(c2267f4, "container_x", this.f8493i + x);
            C2227e4.m3740m(c2267f4, "container_y", this.f8494j + y);
            C2227e4.m3740m(c2267f4, "view_x", x);
            C2227e4.m3740m(c2267f4, "view_y", y);
            C2227e4.m3740m(c2267f4, FacebookAdapter.KEY_ID, this.f8476F.f8300j);
            if (action == 0) {
                new C2410t0("AdContainer.on_touch_began", this.f8476F.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 1) {
                if (!this.f8476F.f8311u) {
                    m3591d.f8099n = m3722l.f8333f.get(this.f8474D);
                }
                new C2410t0("AdContainer.on_touch_ended", this.f8476F.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 2) {
                new C2410t0("AdContainer.on_touch_moved", this.f8476F.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 3) {
                new C2410t0("AdContainer.on_touch_cancelled", this.f8476F.f8301k, c2267f4).m3586b();
                return true;
            } else if (action == 5) {
                int action2 = (motionEvent.getAction() & 65280) >> 8;
                C2227e4.m3740m(c2267f4, "container_x", ((int) motionEvent.getX(action2)) + this.f8493i);
                C2227e4.m3740m(c2267f4, "container_y", ((int) motionEvent.getY(action2)) + this.f8494j);
                C2227e4.m3740m(c2267f4, "view_x", (int) motionEvent.getX(action2));
                C2227e4.m3740m(c2267f4, "view_y", (int) motionEvent.getY(action2));
                new C2410t0("AdContainer.on_touch_began", this.f8476F.f8301k, c2267f4).m3586b();
                return true;
            } else if (action != 6) {
                return true;
            } else {
                int action3 = (motionEvent.getAction() & 65280) >> 8;
                C2227e4.m3740m(c2267f4, "container_x", ((int) motionEvent.getX(action3)) + this.f8493i);
                C2227e4.m3740m(c2267f4, "container_y", ((int) motionEvent.getY(action3)) + this.f8494j);
                C2227e4.m3740m(c2267f4, "view_x", (int) motionEvent.getX(action3));
                C2227e4.m3740m(c2267f4, "view_y", (int) motionEvent.getY(action3));
                if (!this.f8476F.f8311u) {
                    m3591d.f8099n = m3722l.f8333f.get(this.f8474D);
                }
                new C2410t0("AdContainer.on_touch_ended", this.f8476F.f8301k, c2267f4).m3586b();
                return true;
            }
        }
        return false;
    }
}
