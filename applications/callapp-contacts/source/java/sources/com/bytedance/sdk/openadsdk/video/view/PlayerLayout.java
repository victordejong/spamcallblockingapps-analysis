package com.bytedance.sdk.openadsdk.video.view;

import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.video.p231b.C5500a;
import com.bytedance.sdk.openadsdk.video.p232c.AbstractC5501a;
import com.bytedance.sdk.openadsdk.video.p233d.C5503a;
import com.bytedance.sdk.openadsdk.video.p233d.C5507d;
import java.lang.reflect.InvocationTargetException;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/view/PlayerLayout.class */
public class PlayerLayout extends FrameLayout implements AbstractC5501a.AbstractC5502a {

    /* renamed from: b */
    public static AudioManager.OnAudioFocusChangeListener f19079b = new AudioManager.OnAudioFocusChangeListener() { // from class: com.bytedance.sdk.openadsdk.video.view.PlayerLayout.1
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(int i) {
        }
    };

    /* renamed from: d */
    public static int f19080d = -1;

    /* renamed from: a */
    public int f19081a;

    /* renamed from: c */
    public int f19082c;

    /* renamed from: e */
    public AbstractC5501a f19083e;

    /* renamed from: f */
    public Class f19084f;

    /* renamed from: g */
    public TextureView f19085g;

    /* renamed from: h */
    public SurfaceView f19086h;

    /* renamed from: i */
    private boolean f19087i;

    /* renamed from: j */
    private Timer f19088j;

    /* renamed from: k */
    private AudioManager f19089k;

    /* renamed from: l */
    private C5511a f19090l;

    /* renamed from: m */
    private long f19091m;

    /* renamed from: n */
    private C5500a f19092n;

    /* renamed from: o */
    private boolean f19093o;

    /* renamed from: com.bytedance.sdk.openadsdk.video.view.PlayerLayout$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/view/PlayerLayout$a.class */
    public class C5511a extends TimerTask {
        public C5511a() {
            PlayerLayout.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (PlayerLayout.this.f19082c == 5 || PlayerLayout.this.f19082c == 6 || PlayerLayout.this.f19082c == 3) {
                PlayerLayout.this.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.video.view.PlayerLayout.a.1
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
                    @Override // java.lang.Runnable
                    public void run() {
                        long currentPositionWhenPlaying = PlayerLayout.this.getCurrentPositionWhenPlaying();
                        ?? duration = PlayerLayout.this.getDuration();
                        PlayerLayout.this.m31955a((int) ((100 * currentPositionWhenPlaying) / (duration == 0 ? (char) 1 : duration)), currentPositionWhenPlaying, duration);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public void m31956a() {
        try {
            AbstractC5501a abstractC5501a = (AbstractC5501a) this.f19084f.getConstructor(new Class[0]).newInstance(new Object[0]);
            this.f19083e = abstractC5501a;
            abstractC5501a.m31983a(getContext());
            this.f19083e.m31976b(this.f19087i);
            this.f19083e.m31978a(this.f19093o);
            this.f19083e.m31979a(this);
            this.f19083e.m31980a(this.f19092n);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e2) {
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
        }
        if (this.f19093o) {
            m31946j();
        } else {
            m31945k();
        }
        AudioManager audioManager = (AudioManager) getContext().getSystemService("audio");
        this.f19089k = audioManager;
        audioManager.requestAudioFocus(f19079b, 3, 2);
        C5507d.m31957a(getContext()).getWindow().addFlags(128);
        m31953c();
    }

    /* renamed from: a */
    public void m31955a(int i, long j, long j2) {
        this.f19091m = j;
        C5503a.m31968b("PlayerLayout", "onProgress:  progress =", Integer.valueOf(i), "  position = ", Long.valueOf(j), "  duration=", Long.valueOf(j2));
    }

    /* renamed from: b */
    public void m31954b() {
        C5503a.m31968b("PlayerLayout", "video_new onStateNormal ", Integer.valueOf(hashCode()));
        this.f19082c = 0;
        m31943m();
        AbstractC5501a abstractC5501a = this.f19083e;
        if (abstractC5501a != null) {
            abstractC5501a.m31977b();
        }
    }

    /* renamed from: c */
    public void m31953c() {
        C5503a.m31968b("PlayerLayout", "video_new onStatePreparing ", Integer.valueOf(hashCode()));
        this.f19082c = 1;
        m31942n();
    }

    /* renamed from: d */
    public void m31952d() {
        C5503a.m31968b("PlayerLayout", "video_new onStatePreparingPlaying ", Integer.valueOf(hashCode()));
        this.f19082c = 3;
    }

    /* renamed from: e */
    public void m31951e() {
        C5503a.m31968b("PlayerLayout", "video_new onStatePreparingChangeUrl ", Integer.valueOf(hashCode()));
        this.f19082c = 2;
        m31956a();
    }

    /* renamed from: f */
    public void m31950f() {
        C5503a.m31968b("PlayerLayout", "video_new onStatePlaying seekToInAdvance=", Integer.valueOf(this.f19081a), Integer.valueOf(hashCode()));
        if (this.f19082c == 4) {
            int i = this.f19081a;
            if (i != 0) {
                this.f19083e.m31984a(i);
                C5503a.m31968b("PlayerLayout", "video_new onStatePlaying seekTo");
                this.f19081a = 0;
            } else {
                this.f19083e.m31984a(0);
            }
        }
        this.f19082c = 5;
        m31944l();
    }

    /* renamed from: g */
    public void m31949g() {
        C5503a.m31968b("PlayerLayout", "video_new onStatePause ", Integer.valueOf(hashCode()));
        this.f19082c = 6;
        m31943m();
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    public long getCurrentPositionWhenPlaying() {
        int i = this.f19082c;
        char c = 0;
        if (i == 5 || i == 6 || i == 3) {
            try {
                c = this.f19083e.m31975c();
            } catch (IllegalStateException e) {
                e.printStackTrace();
                return 0L;
            }
        }
        return c;
    }

    public long getDuration() {
        try {
            return this.f19083e.m31974d();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    /* renamed from: h */
    public void m31948h() {
        C5503a.m31968b("PlayerLayout", "video_new onStateError ", Integer.valueOf(hashCode()));
        this.f19082c = 8;
        m31943m();
    }

    /* renamed from: i */
    public void m31947i() {
        C5503a.m31968b("PlayerLayout", "video_new onStateAutoComplete ", Integer.valueOf(hashCode()));
        this.f19082c = 7;
        m31943m();
    }

    /* renamed from: j */
    public void m31946j() {
        C5503a.m31971a("PlayerLayout", "video_new addTextureView ", Integer.valueOf(hashCode()));
        removeAllViews();
        TextureView textureView = new TextureView(getContext().getApplicationContext());
        this.f19085g = textureView;
        textureView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: com.bytedance.sdk.openadsdk.video.view.PlayerLayout.2
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                if (PlayerLayout.this.f19083e != null) {
                    PlayerLayout.this.f19083e.m31982a(new Surface(surfaceTexture));
                    PlayerLayout.this.f19083e.m31985a();
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                C5503a.m31968b("PlayerLayout", "video_new  onSurfaceTextureDestroyed: ");
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        });
        addView(this.f19085g, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    /* renamed from: k */
    public void m31945k() {
        C5503a.m31971a("PlayerLayout", "video_new addSurfaceView ", Integer.valueOf(hashCode()));
        removeAllViews();
        SurfaceView surfaceView = new SurfaceView(getContext().getApplicationContext());
        this.f19086h = surfaceView;
        surfaceView.getHolder().addCallback(new SurfaceHolder.Callback() { // from class: com.bytedance.sdk.openadsdk.video.view.PlayerLayout.3
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                if (PlayerLayout.this.f19083e != null) {
                    surfaceHolder.setType(3);
                    PlayerLayout.this.f19083e.m31981a(surfaceHolder);
                    PlayerLayout.this.f19083e.m31985a();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                C5503a.m31971a("PlayerLayout", "video_new surfaceDestroyed ", Integer.valueOf(hashCode()));
                if (PlayerLayout.this.f19083e != null) {
                    PlayerLayout playerLayout = PlayerLayout.this;
                    playerLayout.f19081a = playerLayout.f19083e.m31975c();
                    PlayerLayout.this.f19083e.m31977b();
                    C5503a.m31971a("PlayerLayout", "video_new  ", Integer.valueOf(PlayerLayout.this.f19081a));
                }
            }
        });
        this.f19086h.setZOrderOnTop(true);
        this.f19086h.setZOrderMediaOverlay(true);
        addView(this.f19086h, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    /* renamed from: l */
    public void m31944l() {
        C5503a.m31968b("PlayerLayout", "startProgressTimer: ", Integer.valueOf(hashCode()));
        m31943m();
        this.f19088j = new Timer();
        C5511a c5511a = new C5511a();
        this.f19090l = c5511a;
        this.f19088j.schedule(c5511a, 0L, 300L);
    }

    /* renamed from: m */
    public void m31943m() {
        Timer timer = this.f19088j;
        if (timer != null) {
            timer.cancel();
        }
        C5511a c5511a = this.f19090l;
        if (c5511a != null) {
            c5511a.cancel();
        }
    }

    /* renamed from: n */
    public void m31942n() {
        this.f19091m = 0L;
    }

    /* renamed from: o */
    public void m31941o() {
        C5503a.m31968b("PlayerLayout", "video_new reset ", Integer.valueOf(hashCode()));
        m31943m();
        m31954b();
        removeAllViews();
        ((AudioManager) getContext().getSystemService("audio")).abandonAudioFocus(f19079b);
        C5507d.m31957a(getContext()).getWindow().clearFlags(128);
        AbstractC5501a abstractC5501a = this.f19083e;
        if (abstractC5501a != null) {
            abstractC5501a.m31977b();
        }
    }

    public void setMediaInterface(Class cls) {
        m31941o();
        this.f19084f = cls;
    }

    public void setState(int i) {
        switch (i) {
            case 0:
                m31954b();
                return;
            case 1:
                m31953c();
                return;
            case 2:
                m31951e();
                return;
            case 3:
                m31952d();
                return;
            case 4:
            default:
                return;
            case 5:
                m31950f();
                return;
            case 6:
                m31949g();
                return;
            case 7:
                m31947i();
                return;
            case 8:
                m31948h();
                return;
        }
    }
}
