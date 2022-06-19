package cn.jzvd;

import android.content.Context;
import android.media.AudioManager;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import cn.jzvd.Jzvd;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedList;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:cn/jzvd/Jzvd.class */
public abstract class Jzvd extends FrameLayout implements View.OnClickListener, SeekBar.OnSeekBarChangeListener, View.OnTouchListener {

    /* renamed from: d */
    public static Jzvd f7274d;

    /* renamed from: e */
    public static LinkedList<ViewGroup> f7275e = new LinkedList<>();

    /* renamed from: f */
    public static boolean f7276f = true;

    /* renamed from: g */
    public static int f7277g = 6;

    /* renamed from: h */
    public static int f7278h = 1;

    /* renamed from: i */
    public static boolean f7279i = false;

    /* renamed from: j */
    public static boolean f7280j = false;

    /* renamed from: k */
    public static int f7281k = 2;

    /* renamed from: l */
    public static long f7282l = 0;

    /* renamed from: m */
    public static int f7283m = 0;

    /* renamed from: n */
    public static AudioManager.OnAudioFocusChangeListener f7284n = new C2104a();

    /* renamed from: A */
    public ImageView f7285A;

    /* renamed from: B */
    public SeekBar f7286B;

    /* renamed from: C */
    public ImageView f7287C;

    /* renamed from: D */
    public TextView f7288D;

    /* renamed from: E */
    public TextView f7289E;

    /* renamed from: F */
    public ViewGroup f7290F;

    /* renamed from: G */
    public ViewGroup f7291G;

    /* renamed from: H */
    public ViewGroup f7292H;

    /* renamed from: I */
    public JZTextureView f7293I;

    /* renamed from: J */
    protected Timer f7294J;

    /* renamed from: K */
    protected int f7295K;

    /* renamed from: L */
    protected int f7296L;

    /* renamed from: M */
    protected AudioManager f7297M;

    /* renamed from: N */
    protected C2105b f7298N;

    /* renamed from: O */
    protected boolean f7299O;

    /* renamed from: P */
    protected float f7300P;

    /* renamed from: Q */
    protected float f7301Q;

    /* renamed from: R */
    protected boolean f7302R;

    /* renamed from: S */
    protected boolean f7303S;

    /* renamed from: T */
    protected boolean f7304T;

    /* renamed from: U */
    protected long f7305U;

    /* renamed from: V */
    protected int f7306V;

    /* renamed from: W */
    protected float f7307W;

    /* renamed from: a0 */
    protected long f7308a0;

    /* renamed from: q */
    public C2129t f7312q;

    /* renamed from: t */
    public Class f7315t;

    /* renamed from: u */
    public AbstractTextureView$SurfaceTextureListenerC2130u f7316u;

    /* renamed from: o */
    public int f7310o = -1;

    /* renamed from: p */
    public int f7311p = -1;

    /* renamed from: r */
    public int f7313r = 0;

    /* renamed from: s */
    public int f7314s = 0;

    /* renamed from: v */
    public int f7317v = -1;

    /* renamed from: w */
    public int f7318w = 0;

    /* renamed from: x */
    protected long f7319x = 0;

    /* renamed from: y */
    public int f7320y = -1;

    /* renamed from: z */
    public long f7321z = 0;

    /* renamed from: b0 */
    public boolean f7309b0 = false;

    /* renamed from: cn.jzvd.Jzvd$a */
    /* loaded from: classes-dex2jar.jar:cn/jzvd/Jzvd$a.class */
    class C2104a implements AudioManager.OnAudioFocusChangeListener {
        C2104a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i != -2) {
                if (i != -1) {
                    return;
                }
                Jzvd.m27996L();
                Log.d("JZVD", "AUDIOFOCUS_LOSS [" + hashCode() + "]");
                return;
            }
            try {
                Jzvd jzvd = Jzvd.f7274d;
                if (jzvd != null && jzvd.f7310o == 4) {
                    jzvd.f7285A.performClick();
                }
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
            Log.d("JZVD", "AUDIOFOCUS_LOSS_TRANSIENT [" + hashCode() + "]");
        }
    }

    /* renamed from: cn.jzvd.Jzvd$b */
    /* loaded from: classes-dex2jar.jar:cn/jzvd/Jzvd$b.class */
    public class C2105b extends TimerTask {
        public C2105b() {
            Jzvd.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        /* renamed from: a */
        public /* synthetic */ void m27984b() {
            long currentPositionWhenPlaying = Jzvd.this.getCurrentPositionWhenPlaying();
            ?? duration = Jzvd.this.getDuration();
            Jzvd.this.mo27983C((int) ((100 * currentPositionWhenPlaying) / (duration == 0 ? (char) 1 : duration)), currentPositionWhenPlaying, duration);
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Jzvd jzvd = Jzvd.this;
            int i = jzvd.f7310o;
            if (i == 4 || i == 5) {
                jzvd.post(new Runnable() { // from class: cn.jzvd.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        Jzvd.C2105b.this.m27984b();
                    }
                });
            }
        }
    }

    public Jzvd(Context context) {
        super(context);
        mo27450x(context);
    }

    public Jzvd(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mo27450x(context);
    }

    /* renamed from: L */
    public static void m27996L() {
        Log.d("JZVD", "releaseAllVideos");
        Jzvd jzvd = f7274d;
        if (jzvd != null) {
            jzvd.mo27982M();
            f7274d = null;
        }
    }

    /* renamed from: b */
    public static boolean m27993b() {
        Jzvd jzvd;
        Jzvd jzvd2;
        Log.i("JZVD", "backPress");
        if (f7275e.size() != 0 && (jzvd2 = f7274d) != null) {
            jzvd2.mo27451w();
            return true;
        } else if (f7275e.size() != 0 || (jzvd = f7274d) == null || jzvd.f7311p == 0) {
            return false;
        } else {
            jzvd.m27990j();
            return true;
        }
    }

    public static void setCurrentJzvd(Jzvd jzvd) {
        Jzvd jzvd2 = f7274d;
        if (jzvd2 != null) {
            jzvd2.mo27982M();
        }
        f7274d = jzvd;
    }

    public static void setTextureViewRotation(int i) {
        JZTextureView jZTextureView;
        Jzvd jzvd = f7274d;
        if (jzvd == null || (jZTextureView = jzvd.f7293I) == null) {
            return;
        }
        jZTextureView.setRotation(i);
    }

    public static void setVideoImageDisplayType(int i) {
        JZTextureView jZTextureView;
        f7281k = i;
        Jzvd jzvd = f7274d;
        if (jzvd == null || (jZTextureView = jzvd.f7293I) == null) {
            return;
        }
        jZTextureView.requestLayout();
    }

    /* renamed from: t */
    public static void m27987t() {
        Jzvd jzvd = f7274d;
        if (jzvd != null) {
            int i = jzvd.f7310o;
            if (i == 6 || i == 0 || i == 7) {
                m27996L();
                return;
            }
            f7283m = i;
            jzvd.mo27466H();
            f7274d.f7316u.pause();
        }
    }

    /* renamed from: u */
    public static void m27986u() {
        Jzvd jzvd = f7274d;
        if (jzvd == null || jzvd.f7310o != 5) {
            return;
        }
        if (f7283m == 5) {
            jzvd.mo27466H();
            f7274d.f7316u.pause();
        } else {
            jzvd.mo27465I();
            f7274d.f7316u.start();
        }
        f7283m = 0;
    }

    /* renamed from: A */
    public void mo27470A(int i, int i2) {
        Log.d("JZVD", "onInfo what - " + i + " extra - " + i2);
        if (i == 3) {
            int i3 = this.f7310o;
            if (i3 != 3 && i3 != 2) {
                return;
            }
            mo27465I();
        }
    }

    /* renamed from: B */
    public void m27998B() {
        Log.i("JZVD", "onPrepared  [" + hashCode() + "] ");
        this.f7310o = 3;
        if (!this.f7309b0) {
            this.f7316u.start();
            this.f7309b0 = false;
        }
        if (this.f7312q.m27953c().toString().toLowerCase().contains("mp3") || this.f7312q.m27953c().toString().toLowerCase().contains("wav")) {
            mo27465I();
        }
    }

    /* renamed from: C */
    public void mo27983C(int i, long j, long j2) {
        if (!this.f7299O) {
            int i2 = this.f7320y;
            if (i2 != -1) {
                if (i2 > i) {
                    return;
                }
                this.f7320y = -1;
            } else if (i != 0) {
                this.f7286B.setProgress(i);
            }
        }
        if (j != 0) {
            this.f7288D.setText(C2131v.m27939l(j));
        }
        this.f7289E.setText(C2131v.m27939l(j2));
    }

    /* renamed from: D */
    public void m27997D() {
    }

    /* renamed from: E */
    public void mo27469E() {
        Log.i("JZVD", "onStateAutoComplete  [" + hashCode() + "] ");
        this.f7310o = 6;
        m27992c();
        this.f7286B.setProgress(100);
        this.f7288D.setText(this.f7289E.getText());
    }

    /* renamed from: F */
    public void mo27468F() {
        Log.i("JZVD", "onStateError  [" + hashCode() + "] ");
        this.f7310o = 7;
        m27992c();
    }

    /* renamed from: G */
    public void mo27467G() {
        Log.i("JZVD", "onStateNormal  [" + hashCode() + "] ");
        this.f7310o = 0;
        m27992c();
        AbstractTextureView$SurfaceTextureListenerC2130u abstractTextureView$SurfaceTextureListenerC2130u = this.f7316u;
        if (abstractTextureView$SurfaceTextureListenerC2130u != null) {
            abstractTextureView$SurfaceTextureListenerC2130u.release();
        }
    }

    /* renamed from: H */
    public void mo27466H() {
        Log.i("JZVD", "onStatePause  [" + hashCode() + "] ");
        this.f7310o = 5;
        m27995T();
    }

    /* renamed from: I */
    public void mo27465I() {
        Log.i("JZVD", "onStatePlaying  [" + hashCode() + "] ");
        if (this.f7310o == 3) {
            long j = this.f7321z;
            if (j != 0) {
                this.f7316u.seekTo(j);
                this.f7321z = 0L;
            } else {
                long m27949b = C2131v.m27949b(getContext(), this.f7312q.m27953c());
                if (m27949b != 0) {
                    this.f7316u.seekTo(m27949b);
                }
            }
        }
        this.f7310o = 4;
        m27995T();
    }

    /* renamed from: J */
    public void mo27464J() {
        Log.i("JZVD", "onStatePreparing  [" + hashCode() + "] ");
        this.f7310o = 1;
        mo27981O();
    }

    /* renamed from: K */
    public void mo27463K(int i, int i2) {
        Log.i("JZVD", "onVideoSizeChanged  [" + hashCode() + "] ");
        JZTextureView jZTextureView = this.f7293I;
        if (jZTextureView != null) {
            int i3 = this.f7318w;
            if (i3 != 0) {
                jZTextureView.setRotation(i3);
            }
            this.f7293I.setVideoSize(i, i2);
        }
    }

    /* renamed from: M */
    public void mo27982M() {
        Log.i("JZVD", "reset  [" + hashCode() + "] ");
        int i = this.f7310o;
        if (i == 4 || i == 5) {
            C2131v.m27944g(getContext(), this.f7312q.m27953c(), getCurrentPositionWhenPlaying());
        }
        m27992c();
        mo27963p();
        mo27961q();
        mo27959r();
        mo27467G();
        this.f7290F.removeAllViews();
        AbstractTextureView$SurfaceTextureListenerC2130u.SAVED_SURFACE = null;
        ((AudioManager) getApplicationContext().getSystemService("audio")).abandonAudioFocus(f7284n);
        AbstractTextureView$SurfaceTextureListenerC2130u abstractTextureView$SurfaceTextureListenerC2130u = this.f7316u;
        if (abstractTextureView$SurfaceTextureListenerC2130u != null) {
            abstractTextureView$SurfaceTextureListenerC2130u.release();
        }
    }

    /* renamed from: O */
    public void mo27981O() {
        this.f7286B.setProgress(0);
        this.f7286B.setSecondaryProgress(0);
        this.f7288D.setText(C2131v.m27939l(0L));
        this.f7289E.setText(C2131v.m27939l(0L));
    }

    /* renamed from: P */
    public void mo27980P(int i) {
    }

    /* renamed from: Q */
    public void mo27979Q(float f, String str, long j, String str2, long j2) {
    }

    /* renamed from: R */
    public void mo27978R(float f, int i) {
    }

    /* renamed from: S */
    public void mo27977S() {
    }

    /* renamed from: T */
    public void m27995T() {
        Log.i("JZVD", "startProgressTimer:  [" + hashCode() + "] ");
        m27992c();
        this.f7294J = new Timer();
        C2105b c2105b = new C2105b();
        this.f7298N = c2105b;
        this.f7294J.schedule(c2105b, 0L, 300L);
    }

    /* renamed from: U */
    public void mo27462U() {
        Log.d("JZVD", "startVideo [" + hashCode() + "] ");
        setCurrentJzvd(this);
        try {
            this.f7316u = (AbstractTextureView$SurfaceTextureListenerC2130u) this.f7315t.getConstructor(Jzvd.class).newInstance(this);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e2) {
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
        }
        m27994a();
        AudioManager audioManager = (AudioManager) getApplicationContext().getSystemService("audio");
        this.f7297M = audioManager;
        audioManager.requestAudioFocus(f7284n, 3, 2);
        mo27464J();
    }

    /* renamed from: a */
    public void m27994a() {
        Log.d("JZVD", "addTextureView [" + hashCode() + "] ");
        JZTextureView jZTextureView = this.f7293I;
        if (jZTextureView != null) {
            this.f7290F.removeView(jZTextureView);
        }
        JZTextureView jZTextureView2 = new JZTextureView(getContext().getApplicationContext());
        this.f7293I = jZTextureView2;
        jZTextureView2.setSurfaceTextureListener(this.f7316u);
        this.f7290F.addView(this.f7293I, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    /* renamed from: c */
    public void m27992c() {
        Timer timer = this.f7294J;
        if (timer != null) {
            timer.cancel();
        }
        C2105b c2105b = this.f7298N;
        if (c2105b != null) {
            c2105b.cancel();
        }
    }

    /* renamed from: d */
    public void m27991d() {
        try {
            this.f7316u.setVolume(1.0f, 1.0f);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public void mo27973e(int i, long j) {
        this.f7310o = 2;
        this.f7321z = j;
        this.f7312q.f7387a = i;
        this.f7316u.setSurface(null);
        this.f7316u.release();
        this.f7316u.prepare();
    }

    public Context getApplicationContext() {
        Context applicationContext;
        Context context = getContext();
        return (context == null || (applicationContext = context.getApplicationContext()) == null) ? context : applicationContext;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public long getCurrentPositionWhenPlaying() {
        int i = this.f7310o;
        char c = 0;
        if (i == 4 || i == 5) {
            try {
                c = this.f7316u.getCurrentPosition();
            } catch (IllegalStateException e) {
                e.printStackTrace();
                return 0L;
            }
        }
        return c;
    }

    public long getDuration() {
        try {
            return this.f7316u.getDuration();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public abstract int getLayoutId();

    /* renamed from: j */
    public void m27990j() {
        C2131v.m27941j(getContext());
        C2131v.m27942i(getContext(), f7278h);
        C2131v.m27940k(getContext());
        ((ViewGroup) C2131v.m27943h(getContext()).getWindow().getDecorView()).removeView(this);
        AbstractTextureView$SurfaceTextureListenerC2130u abstractTextureView$SurfaceTextureListenerC2130u = this.f7316u;
        if (abstractTextureView$SurfaceTextureListenerC2130u != null) {
            abstractTextureView$SurfaceTextureListenerC2130u.release();
        }
        f7274d = null;
    }

    /* renamed from: o */
    public void m27989o(ViewGroup viewGroup) {
        try {
            Jzvd jzvd = (Jzvd) getClass().getConstructor(Context.class).newInstance(getContext());
            jzvd.setId(getId());
            viewGroup.addView(jzvd);
            jzvd.setUp(this.f7312q.m27955a(), 0, this.f7315t);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e2) {
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != C2134y.start) {
            if (id != C2134y.fullscreen) {
                return;
            }
            Log.i("JZVD", "onClick fullscreen [" + hashCode() + "] ");
            if (this.f7310o == 6) {
                return;
            }
            if (this.f7311p == 1) {
                m27993b();
                return;
            }
            Log.d("JZVD", "toFullscreenActivity [" + hashCode() + "] ");
            mo27452v();
            return;
        }
        Log.i("JZVD", "onClick start [" + hashCode() + "] ");
        C2129t c2129t = this.f7312q;
        if (c2129t == null || c2129t.f7388b.isEmpty() || this.f7312q.m27953c() == null) {
            Toast.makeText(getContext(), getResources().getString(C2109a0.no_url), 0).show();
            return;
        }
        int i = this.f7310o;
        if (i == 0) {
            if (this.f7312q.m27953c().toString().startsWith("file") || this.f7312q.m27953c().toString().startsWith("/") || C2131v.m27945f(getContext()) || f7280j) {
                mo27462U();
            } else {
                mo27977S();
            }
        } else if (i == 4) {
            Log.d("JZVD", "pauseVideo [" + hashCode() + "] ");
            this.f7316u.pause();
            mo27466H();
        } else if (i == 5) {
            this.f7316u.start();
            mo27465I();
        } else if (i != 6) {
        } else {
            mo27462U();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.f7311p;
        if (i3 == 1 || i3 == 2) {
            super.onMeasure(i, i2);
        } else if (this.f7313r == 0 || this.f7314s == 0) {
            super.onMeasure(i, i2);
        } else {
            int size = View.MeasureSpec.getSize(i);
            int i4 = (int) ((size * this.f7314s) / this.f7313r);
            setMeasuredDimension(size, i4);
            getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            this.f7288D.setText(C2131v.m27939l((i * getDuration()) / 100));
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        Log.i("JZVD", "bottomProgress onStartTrackingTouch [" + hashCode() + "] ");
        m27992c();
        ViewParent parent = getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (viewParent != null) {
                viewParent.requestDisallowInterceptTouchEvent(true);
                parent = viewParent.getParent();
            } else {
                return;
            }
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        Log.i("JZVD", "bottomProgress onStopTrackingTouch [" + hashCode() + "] ");
        m27995T();
        ViewParent parent = getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (viewParent == null) {
                break;
            }
            viewParent.requestDisallowInterceptTouchEvent(false);
            parent = viewParent.getParent();
        }
        int i = this.f7310o;
        if (i == 4 || i == 5) {
            long progress = (seekBar.getProgress() * getDuration()) / 100;
            this.f7320y = seekBar.getProgress();
            this.f7316u.seekTo(progress);
            Log.i("JZVD", "seekTo " + progress + " [" + hashCode() + "] ");
        }
    }

    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int streamMaxVolume;
        int i;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (view.getId() == C2134y.surface_container) {
            int action = motionEvent.getAction();
            if (action == 0) {
                Log.i("JZVD", "onTouch surfaceContainer actionDown [" + hashCode() + "] ");
                this.f7299O = true;
                this.f7300P = x;
                this.f7301Q = y;
                this.f7302R = false;
                this.f7303S = false;
                this.f7304T = false;
                return false;
            } else if (action == 1) {
                Log.i("JZVD", "onTouch surfaceContainer actionUp [" + hashCode() + "] ");
                this.f7299O = false;
                mo27961q();
                mo27959r();
                mo27963p();
                if (this.f7303S) {
                    this.f7316u.seekTo(this.f7308a0);
                    ?? duration = getDuration();
                    long j = this.f7308a0;
                    char c = duration;
                    if (duration == 0) {
                        c = 1;
                    }
                    this.f7286B.setProgress((int) ((j * 100) / c));
                }
                m27995T();
                return false;
            } else if (action != 2) {
                return false;
            } else {
                Log.i("JZVD", "onTouch surfaceContainer actionMove [" + hashCode() + "] ");
                float f = x - this.f7300P;
                float f2 = y - this.f7301Q;
                float abs = Math.abs(f);
                float abs2 = Math.abs(f2);
                if (this.f7311p == 1 && !this.f7303S && !this.f7302R && !this.f7304T && (abs > 80.0f || abs2 > 80.0f)) {
                    m27992c();
                    if (i >= 0) {
                        if (this.f7310o != 7) {
                            this.f7303S = true;
                            this.f7305U = getCurrentPositionWhenPlaying();
                        }
                    } else if (this.f7300P < this.f7295K * 0.5f) {
                        this.f7304T = true;
                        float f3 = C2131v.m27948c(getContext()).getAttributes().screenBrightness;
                        if (f3 < 0.0f) {
                            try {
                                this.f7307W = Settings.System.getInt(getContext().getContentResolver(), "screen_brightness");
                                Log.i("JZVD", "current system brightness: " + this.f7307W);
                            } catch (Settings.SettingNotFoundException e) {
                                e.printStackTrace();
                            }
                        } else {
                            this.f7307W = f3 * 255.0f;
                            Log.i("JZVD", "current activity brightness: " + this.f7307W);
                        }
                    } else {
                        this.f7302R = true;
                        this.f7306V = this.f7297M.getStreamVolume(3);
                    }
                }
                if (this.f7303S) {
                    long duration2 = getDuration();
                    long j2 = (int) (((float) this.f7305U) + ((((float) duration2) * f) / this.f7295K));
                    this.f7308a0 = j2;
                    if (j2 > duration2) {
                        this.f7308a0 = duration2;
                    }
                    mo27979Q(f, C2131v.m27939l(this.f7308a0), this.f7308a0, C2131v.m27939l(duration2), duration2);
                }
                float f4 = f2;
                if (this.f7302R) {
                    f4 = -f2;
                    this.f7297M.setStreamVolume(3, this.f7306V + ((int) (((this.f7297M.getStreamMaxVolume(3) * f4) * 3.0f) / this.f7296L)), 0);
                    mo27978R(-f4, (int) (((this.f7306V * 100) / streamMaxVolume) + (((f4 * 3.0f) * 100.0f) / this.f7296L)));
                }
                if (!this.f7304T) {
                    return false;
                }
                float f5 = -f4;
                int i2 = (int) (((f5 * 255.0f) * 3.0f) / this.f7296L);
                WindowManager.LayoutParams attributes = C2131v.m27948c(getContext()).getAttributes();
                float f6 = this.f7307W;
                float f7 = i2;
                if ((f6 + f7) / 255.0f >= 1.0f) {
                    attributes.screenBrightness = 1.0f;
                } else if ((f6 + f7) / 255.0f <= 0.0f) {
                    attributes.screenBrightness = 0.01f;
                } else {
                    attributes.screenBrightness = (f6 + f7) / 255.0f;
                }
                C2131v.m27948c(getContext()).setAttributes(attributes);
                mo27980P((int) (((this.f7307W * 100.0f) / 255.0f) + (((f5 * 3.0f) * 100.0f) / this.f7296L)));
                return false;
            }
        }
        return false;
    }

    /* renamed from: p */
    public void mo27963p() {
    }

    /* renamed from: q */
    public void mo27961q() {
    }

    /* renamed from: r */
    public void mo27959r() {
    }

    /* renamed from: s */
    public void m27988s() {
        try {
            this.f7316u.setVolume(0.0f, 0.0f);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setBufferProgress(int i) {
        if (i != 0) {
            this.f7286B.setSecondaryProgress(i);
        }
    }

    public void setMediaInterface(Class cls) {
        mo27982M();
        this.f7315t = cls;
    }

    public void setScreen(int i) {
        if (i == 0) {
            setScreenNormal();
        } else if (i == 1) {
            setScreenFullscreen();
        } else if (i != 2) {
        } else {
            setScreenTiny();
        }
    }

    public void setScreenFullscreen() {
        this.f7311p = 1;
    }

    public void setScreenNormal() {
        this.f7311p = 0;
    }

    public void setScreenTiny() {
        this.f7311p = 2;
    }

    public void setState(int i) {
        setState(i, 0, 0);
    }

    public void setState(int i, int i2, int i3) {
        if (i == 0) {
            mo27467G();
        } else if (i == 1) {
            mo27464J();
        } else if (i == 2) {
            mo27973e(i2, i3);
        } else if (i == 4) {
            mo27465I();
        } else if (i == 5) {
            mo27466H();
        } else if (i == 6) {
            mo27469E();
        } else if (i != 7) {
        } else {
            mo27468F();
        }
    }

    public void setUp(C2129t c2129t, int i) {
        setUp(c2129t, i, JZMediaSystem.class);
    }

    public void setUp(C2129t c2129t, int i, Class cls) {
        if (System.currentTimeMillis() - this.f7319x < 200) {
            return;
        }
        this.f7312q = c2129t;
        this.f7311p = i;
        mo27467G();
        this.f7315t = cls;
    }

    public void setUp(String str, String str2) {
        setUp(new C2129t(str, str2), 0);
    }

    public void setUp(String str, String str2, int i) {
        setUp(new C2129t(str, str2), i);
    }

    public void setUp(String str, String str2, int i, Class cls) {
        setUp(new C2129t(str, str2), i, cls);
    }

    /* renamed from: v */
    public void mo27452v() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        viewGroup.removeView(this);
        m27989o(viewGroup);
        f7275e.add(viewGroup);
        ((ViewGroup) C2131v.m27943h(getContext()).getWindow().getDecorView()).addView(this, new FrameLayout.LayoutParams(-1, -1));
        setScreenFullscreen();
        C2131v.m27947d(getContext());
        C2131v.m27942i(getContext(), f7277g);
        C2131v.m27946e(getContext());
    }

    /* renamed from: w */
    public void mo27451w() {
        this.f7319x = System.currentTimeMillis();
        ((ViewGroup) C2131v.m27943h(getContext()).getWindow().getDecorView()).removeView(this);
        f7275e.getLast().removeAllViews();
        f7275e.getLast().addView(this, new FrameLayout.LayoutParams(-1, -1));
        f7275e.pop();
        setScreenNormal();
        C2131v.m27941j(getContext());
        C2131v.m27942i(getContext(), f7278h);
        C2131v.m27940k(getContext());
    }

    /* renamed from: x */
    public void mo27450x(Context context) {
        View.inflate(context, getLayoutId(), this);
        this.f7285A = (ImageView) findViewById(C2134y.start);
        this.f7287C = (ImageView) findViewById(C2134y.fullscreen);
        this.f7286B = (SeekBar) findViewById(C2134y.bottom_seek_progress);
        this.f7288D = (TextView) findViewById(C2134y.current);
        this.f7289E = (TextView) findViewById(C2134y.total);
        this.f7292H = (ViewGroup) findViewById(C2134y.layout_bottom);
        this.f7290F = (ViewGroup) findViewById(C2134y.surface_container);
        this.f7291G = (ViewGroup) findViewById(C2134y.layout_top);
        this.f7285A.setOnClickListener(this);
        this.f7287C.setOnClickListener(this);
        this.f7286B.setOnSeekBarChangeListener(this);
        this.f7292H.setOnClickListener(this);
        this.f7290F.setOnClickListener(this);
        this.f7295K = getContext().getResources().getDisplayMetrics().widthPixels;
        this.f7296L = getContext().getResources().getDisplayMetrics().heightPixels;
        this.f7310o = -1;
    }

    /* renamed from: y */
    public void mo27956y() {
        Runtime.getRuntime().gc();
        Log.i("JZVD", "onAutoCompletion  [" + hashCode() + "] ");
        m27992c();
        mo27963p();
        mo27961q();
        mo27959r();
        mo27469E();
        this.f7316u.release();
        C2131v.m27944g(getContext(), this.f7312q.m27953c(), 0L);
    }

    /* renamed from: z */
    public void mo27449z(int i, int i2) {
        Log.e("JZVD", "onError " + i + " - " + i2 + " [" + hashCode() + "] ");
        if (i == 38 || i2 == -38 || i == -38 || i2 == 38 || i2 == -19) {
            return;
        }
        mo27468F();
        this.f7316u.release();
    }
}
