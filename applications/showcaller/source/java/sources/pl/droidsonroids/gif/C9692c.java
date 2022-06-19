package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.SystemClock;
import android.widget.MediaController;
import java.io.File;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import pl.droidsonroids.gif.p345m.AbstractC9711a;
/* renamed from: pl.droidsonroids.gif.c */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/c.class */
public class C9692c extends Drawable implements Animatable, MediaController.MediaPlayerControl {

    /* renamed from: d */
    final ScheduledThreadPoolExecutor f40944d;

    /* renamed from: e */
    volatile boolean f40945e;

    /* renamed from: f */
    long f40946f;

    /* renamed from: g */
    private final Rect f40947g;

    /* renamed from: h */
    protected final Paint f40948h;

    /* renamed from: i */
    final Bitmap f40949i;

    /* renamed from: j */
    final GifInfoHandle f40950j;

    /* renamed from: k */
    final ConcurrentLinkedQueue<AbstractC9690a> f40951k;

    /* renamed from: l */
    private ColorStateList f40952l;

    /* renamed from: m */
    private PorterDuffColorFilter f40953m;

    /* renamed from: n */
    private PorterDuff.Mode f40954n;

    /* renamed from: o */
    final boolean f40955o;

    /* renamed from: p */
    final HandlerC9705g f40956p;

    /* renamed from: q */
    private final C9709k f40957q;

    /* renamed from: r */
    private final Rect f40958r;

    /* renamed from: s */
    ScheduledFuture<?> f40959s;

    /* renamed from: t */
    private int f40960t;

    /* renamed from: u */
    private int f40961u;

    /* renamed from: v */
    private AbstractC9711a f40962v;

    /* renamed from: pl.droidsonroids.gif.c$a */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/c$a.class */
    public class C9693a extends AbstractRunnableC9710l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C9693a(C9692c c9692c) {
            super(c9692c);
            C9692c.this = r4;
        }

        @Override // pl.droidsonroids.gif.AbstractRunnableC9710l
        /* renamed from: a */
        public void mo39a() {
            if (C9692c.this.f40950j.m92v()) {
                C9692c.this.start();
            }
        }
    }

    /* renamed from: pl.droidsonroids.gif.c$b */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/c$b.class */
    class C9694b extends AbstractRunnableC9710l {

        /* renamed from: e */
        final /* synthetic */ int f40964e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C9694b(C9692c c9692c, int i) {
            super(c9692c);
            C9692c.this = r4;
            this.f40964e = i;
        }

        @Override // pl.droidsonroids.gif.AbstractRunnableC9710l
        /* renamed from: a */
        public void mo39a() {
            C9692c c9692c = C9692c.this;
            c9692c.f40950j.m88z(this.f40964e, c9692c.f40949i);
            this.f40979d.f40956p.sendEmptyMessageAtTime(-1, 0L);
        }
    }

    public C9692c(ContentResolver contentResolver, Uri uri) {
        this(GifInfoHandle.m96r(contentResolver, uri), null, null, true);
    }

    public C9692c(AssetFileDescriptor assetFileDescriptor) {
        this(new GifInfoHandle(assetFileDescriptor), null, null, true);
    }

    public C9692c(Resources resources, int i) {
        this(resources.openRawResourceFd(i));
        float m47b = C9698e.m47b(resources, i);
        this.f40961u = (int) (this.f40950j.m107g() * m47b);
        this.f40960t = (int) (this.f40950j.m100n() * m47b);
    }

    public C9692c(File file) {
        this(file.getPath());
    }

    public C9692c(String str) {
        this(new GifInfoHandle(str), null, null, true);
    }

    C9692c(GifInfoHandle gifInfoHandle, C9692c c9692c, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, boolean z) {
        this.f40945e = true;
        this.f40946f = Long.MIN_VALUE;
        this.f40947g = new Rect();
        this.f40948h = new Paint(6);
        this.f40951k = new ConcurrentLinkedQueue<>();
        C9709k c9709k = new C9709k(this);
        this.f40957q = c9709k;
        this.f40955o = z;
        this.f40944d = scheduledThreadPoolExecutor == null ? C9695d.m50b() : scheduledThreadPoolExecutor;
        this.f40950j = gifInfoHandle;
        Bitmap bitmap = null;
        if (c9692c != null) {
            synchronized (c9692c.f40950j) {
                bitmap = null;
                if (!c9692c.f40950j.m98p()) {
                    bitmap = null;
                    if (c9692c.f40950j.m107g() >= gifInfoHandle.m107g()) {
                        bitmap = null;
                        if (c9692c.f40950j.m100n() >= gifInfoHandle.m100n()) {
                            c9692c.m53k();
                            bitmap = c9692c.f40949i;
                            bitmap.eraseColor(0);
                        }
                    }
                }
            }
        }
        if (bitmap == null) {
            this.f40949i = Bitmap.createBitmap(gifInfoHandle.m100n(), gifInfoHandle.m107g(), Bitmap.Config.ARGB_8888);
        } else {
            this.f40949i = bitmap;
        }
        this.f40949i.setHasAlpha(!gifInfoHandle.m99o());
        this.f40958r = new Rect(0, 0, gifInfoHandle.m100n(), gifInfoHandle.m107g());
        this.f40956p = new HandlerC9705g(this);
        c9709k.mo39a();
        this.f40960t = gifInfoHandle.m100n();
        this.f40961u = gifInfoHandle.m107g();
    }

    /* renamed from: a */
    private void m63a() {
        ScheduledFuture<?> scheduledFuture = this.f40959s;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f40956p.removeMessages(-1);
    }

    /* renamed from: i */
    private void m55i() {
        if (!this.f40955o || !this.f40945e) {
            return;
        }
        long j = this.f40946f;
        if (j == Long.MIN_VALUE) {
            return;
        }
        long max = Math.max(0L, j - SystemClock.uptimeMillis());
        this.f40946f = Long.MIN_VALUE;
        this.f40944d.remove(this.f40957q);
        this.f40959s = this.f40944d.schedule(this.f40957q, max, TimeUnit.MILLISECONDS);
    }

    /* renamed from: k */
    private void m53k() {
        this.f40945e = false;
        this.f40956p.removeMessages(-1);
        this.f40950j.m94t();
    }

    /* renamed from: m */
    private PorterDuffColorFilter m51m(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: b */
    public int m62b() {
        return this.f40950j.m111c();
    }

    /* renamed from: c */
    public int m61c() {
        int m110d = this.f40950j.m110d();
        int i = m110d;
        if (m110d != 0) {
            i = m110d < this.f40950j.m106h() ? m110d : m110d - 1;
        }
        return i;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        boolean z = true;
        if (m59e() <= 1) {
            z = false;
        }
        return z;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        boolean z = true;
        if (m59e() <= 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public int m60d() {
        return this.f40949i.getRowBytes() * this.f40949i.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        if (this.f40953m == null || this.f40948h.getColorFilter() != null) {
            z = false;
        } else {
            this.f40948h.setColorFilter(this.f40953m);
            z = true;
        }
        AbstractC9711a abstractC9711a = this.f40962v;
        if (abstractC9711a == null) {
            canvas.drawBitmap(this.f40949i, this.f40958r, this.f40947g, this.f40948h);
        } else {
            abstractC9711a.m38a(canvas, this.f40948h, this.f40949i);
        }
        if (z) {
            this.f40948h.setColorFilter(null);
        }
    }

    /* renamed from: e */
    public int m59e() {
        return this.f40950j.m102l();
    }

    /* renamed from: f */
    public boolean m58f() {
        return this.f40950j.m98p();
    }

    /* renamed from: g */
    public void m57g() {
        m53k();
        this.f40949i.recycle();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f40948h.getAlpha();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        return 100;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f40948h.getColorFilter();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        return this.f40950j.m109e();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        return this.f40950j.m108f();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f40961u;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f40960t;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return (!this.f40950j.m99o() || this.f40948h.getAlpha() < 255) ? -2 : -1;
    }

    /* renamed from: h */
    public void m56h() {
        this.f40944d.execute(new C9693a(this));
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        m55i();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return this.f40945e;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f40945e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        return super.isStateful() || ((colorStateList = this.f40952l) != null && colorStateList.isStateful());
    }

    /* renamed from: j */
    public void m54j(int i) {
        this.f40950j.m116A(i);
    }

    /* renamed from: l */
    public void m52l(long j) {
        if (this.f40955o) {
            this.f40946f = 0L;
            this.f40956p.sendEmptyMessageAtTime(-1, 0L);
            return;
        }
        m63a();
        this.f40959s = this.f40944d.schedule(this.f40957q, Math.max(j, 0L), TimeUnit.MILLISECONDS);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f40947g.set(rect);
        AbstractC9711a abstractC9711a = this.f40962v;
        if (abstractC9711a != null) {
            abstractC9711a.m37b(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f40952l;
        if (colorStateList == null || (mode = this.f40954n) == null) {
            return false;
        }
        this.f40953m = m51m(colorStateList, mode);
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        stop();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i) {
        if (i >= 0) {
            this.f40944d.execute(new C9694b(this, i));
            return;
        }
        throw new IllegalArgumentException("Position is not positive");
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f40948h.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f40948h.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f40948h.setDither(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f40948h.setFilterBitmap(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f40952l = colorStateList;
        this.f40953m = m51m(colorStateList, this.f40954n);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f40954n = mode;
        this.f40953m = m51m(this.f40952l, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (!this.f40955o) {
            if (z) {
                if (z2) {
                    m56h();
                }
                if (visible) {
                    start();
                }
            } else if (visible) {
                stop();
            }
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable, android.widget.MediaController.MediaPlayerControl
    public void start() {
        synchronized (this) {
            if (this.f40945e) {
                return;
            }
            this.f40945e = true;
            m52l(this.f40950j.m91w());
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        synchronized (this) {
            if (!this.f40945e) {
                return;
            }
            this.f40945e = false;
            m63a();
            this.f40950j.m89y();
        }
    }

    public String toString() {
        return String.format(Locale.ENGLISH, "GIF: size: %dx%d, frames: %d, error: %d", Integer.valueOf(this.f40950j.m100n()), Integer.valueOf(this.f40950j.m107g()), Integer.valueOf(this.f40950j.m102l()), Integer.valueOf(this.f40950j.m104j()));
    }
}
