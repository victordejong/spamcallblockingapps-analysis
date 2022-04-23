package com.bytedance.sdk.openadsdk.video.view;

import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.video.c.a;
import com.bytedance.sdk.openadsdk.video.d.d;
import java.lang.reflect.InvocationTargetException;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/view/PlayerLayout.class */
public class PlayerLayout extends FrameLayout implements a.AbstractC0189a {

    /* renamed from: b  reason: collision with root package name */
    public static AudioManager.OnAudioFocusChangeListener f10356b = new AudioManager.OnAudioFocusChangeListener() { // from class: com.bytedance.sdk.openadsdk.video.view.PlayerLayout.1
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(int i) {
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static int f10357d = -1;

    /* renamed from: a  reason: collision with root package name */
    public int f10358a;

    /* renamed from: c  reason: collision with root package name */
    public int f10359c;
    public com.bytedance.sdk.openadsdk.video.c.a e;
    public Class f;
    public TextureView g;
    public SurfaceView h;
    private boolean i;
    private Timer j;
    private AudioManager k;
    private a l;
    private long m;
    private com.bytedance.sdk.openadsdk.video.b.a n;
    private boolean o;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/view/PlayerLayout$a.class */
    public class a extends TimerTask {
        public a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (PlayerLayout.this.f10359c == 5 || PlayerLayout.this.f10359c == 6 || PlayerLayout.this.f10359c == 3) {
                PlayerLayout.this.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.video.view.PlayerLayout.a.1
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
                    /* JADX WARN: Type inference failed for: r12v1 */
                    /* JADX WARN: Type inference failed for: r12v2 */
                    /* JADX WARN: Unknown variable types count: 1 */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public void run() {
                        /*
                            r7 = this;
                            r0 = r7
                            com.bytedance.sdk.openadsdk.video.view.PlayerLayout$a r0 = com.bytedance.sdk.openadsdk.video.view.PlayerLayout.a.this
                            com.bytedance.sdk.openadsdk.video.view.PlayerLayout r0 = com.bytedance.sdk.openadsdk.video.view.PlayerLayout.this
                            long r0 = r0.getCurrentPositionWhenPlaying()
                            r8 = r0
                            r0 = r7
                            com.bytedance.sdk.openadsdk.video.view.PlayerLayout$a r0 = com.bytedance.sdk.openadsdk.video.view.PlayerLayout.a.this
                            com.bytedance.sdk.openadsdk.video.view.PlayerLayout r0 = com.bytedance.sdk.openadsdk.video.view.PlayerLayout.this
                            long r0 = r0.getDuration()
                            r10 = r0
                            r0 = r10
                            r1 = 0
                            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                            if (r0 != 0) goto L_0x0022
                            r0 = 1
                            r12 = r0
                            goto L_0x0025
                        L_0x0022:
                            r0 = r10
                            r12 = r0
                        L_0x0025:
                            r0 = 100
                            r1 = r8
                            long r0 = r0 * r1
                            r1 = r12
                            long r0 = r0 / r1
                            int r0 = (int) r0
                            r14 = r0
                            r0 = r7
                            com.bytedance.sdk.openadsdk.video.view.PlayerLayout$a r0 = com.bytedance.sdk.openadsdk.video.view.PlayerLayout.a.this
                            com.bytedance.sdk.openadsdk.video.view.PlayerLayout r0 = com.bytedance.sdk.openadsdk.video.view.PlayerLayout.this
                            r1 = r14
                            r2 = r8
                            r3 = r10
                            r0.a(r1, r2, r3)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.video.view.PlayerLayout.a.AnonymousClass1.run():void");
                    }
                });
            }
        }
    }

    public void a() {
        try {
            com.bytedance.sdk.openadsdk.video.c.a aVar = (com.bytedance.sdk.openadsdk.video.c.a) this.f.getConstructor(new Class[0]).newInstance(new Object[0]);
            this.e = aVar;
            aVar.a(getContext());
            this.e.b(this.i);
            this.e.a(this.o);
            this.e.a(this);
            this.e.a(this.n);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e2) {
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
        }
        if (this.o) {
            j();
        } else {
            k();
        }
        AudioManager audioManager = (AudioManager) getContext().getSystemService("audio");
        this.k = audioManager;
        audioManager.requestAudioFocus(f10356b, 3, 2);
        d.a(getContext()).getWindow().addFlags(128);
        c();
    }

    public void a(int i, long j, long j2) {
        this.m = j;
        com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "onProgress:  progress =", Integer.valueOf(i), "  position = ", Long.valueOf(j), "  duration=", Long.valueOf(j2));
    }

    public void b() {
        com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "video_new onStateNormal ", Integer.valueOf(hashCode()));
        this.f10359c = 0;
        m();
        com.bytedance.sdk.openadsdk.video.c.a aVar = this.e;
        if (aVar != null) {
            aVar.b();
        }
    }

    public void c() {
        com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "video_new onStatePreparing ", Integer.valueOf(hashCode()));
        this.f10359c = 1;
        n();
    }

    public void d() {
        com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "video_new onStatePreparingPlaying ", Integer.valueOf(hashCode()));
        this.f10359c = 3;
    }

    public void e() {
        com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "video_new onStatePreparingChangeUrl ", Integer.valueOf(hashCode()));
        this.f10359c = 2;
        a();
    }

    public void f() {
        com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "video_new onStatePlaying seekToInAdvance=", Integer.valueOf(this.f10358a), Integer.valueOf(hashCode()));
        if (this.f10359c == 4) {
            int i = this.f10358a;
            if (i != 0) {
                this.e.a(i);
                com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "video_new onStatePlaying seekTo");
                this.f10358a = 0;
            } else {
                this.e.a(0);
            }
        }
        this.f10359c = 5;
        l();
    }

    public void g() {
        com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "video_new onStatePause ", Integer.valueOf(hashCode()));
        this.f10359c = 6;
        m();
    }

    public long getCurrentPositionWhenPlaying() {
        int i = this.f10359c;
        long j = 0;
        if (i == 5 || i == 6 || i == 3) {
            try {
                j = this.e.c();
            } catch (IllegalStateException e) {
                e.printStackTrace();
                return 0L;
            }
        }
        return j;
    }

    public long getDuration() {
        try {
            return this.e.d();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public void h() {
        com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "video_new onStateError ", Integer.valueOf(hashCode()));
        this.f10359c = 8;
        m();
    }

    public void i() {
        com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "video_new onStateAutoComplete ", Integer.valueOf(hashCode()));
        this.f10359c = 7;
        m();
    }

    public void j() {
        com.bytedance.sdk.openadsdk.video.d.a.a("PlayerLayout", "video_new addTextureView ", Integer.valueOf(hashCode()));
        removeAllViews();
        TextureView textureView = new TextureView(getContext().getApplicationContext());
        this.g = textureView;
        textureView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: com.bytedance.sdk.openadsdk.video.view.PlayerLayout.2
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                if (PlayerLayout.this.e != null) {
                    PlayerLayout.this.e.a(new Surface(surfaceTexture));
                    PlayerLayout.this.e.a();
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "video_new  onSurfaceTextureDestroyed: ");
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        });
        addView(this.g, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    public void k() {
        com.bytedance.sdk.openadsdk.video.d.a.a("PlayerLayout", "video_new addSurfaceView ", Integer.valueOf(hashCode()));
        removeAllViews();
        SurfaceView surfaceView = new SurfaceView(getContext().getApplicationContext());
        this.h = surfaceView;
        surfaceView.getHolder().addCallback(new SurfaceHolder.Callback() { // from class: com.bytedance.sdk.openadsdk.video.view.PlayerLayout.3
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                if (PlayerLayout.this.e != null) {
                    surfaceHolder.setType(3);
                    PlayerLayout.this.e.a(surfaceHolder);
                    PlayerLayout.this.e.a();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                com.bytedance.sdk.openadsdk.video.d.a.a("PlayerLayout", "video_new surfaceDestroyed ", Integer.valueOf(hashCode()));
                if (PlayerLayout.this.e != null) {
                    PlayerLayout playerLayout = PlayerLayout.this;
                    playerLayout.f10358a = playerLayout.e.c();
                    PlayerLayout.this.e.b();
                    com.bytedance.sdk.openadsdk.video.d.a.a("PlayerLayout", "video_new  ", Integer.valueOf(PlayerLayout.this.f10358a));
                }
            }
        });
        this.h.setZOrderOnTop(true);
        this.h.setZOrderMediaOverlay(true);
        addView(this.h, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    public void l() {
        com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "startProgressTimer: ", Integer.valueOf(hashCode()));
        m();
        this.j = new Timer();
        a aVar = new a();
        this.l = aVar;
        this.j.schedule(aVar, 0L, 300L);
    }

    public void m() {
        Timer timer = this.j;
        if (timer != null) {
            timer.cancel();
        }
        a aVar = this.l;
        if (aVar != null) {
            aVar.cancel();
        }
    }

    public void n() {
        this.m = 0L;
    }

    public void o() {
        com.bytedance.sdk.openadsdk.video.d.a.b("PlayerLayout", "video_new reset ", Integer.valueOf(hashCode()));
        m();
        b();
        removeAllViews();
        ((AudioManager) getContext().getSystemService("audio")).abandonAudioFocus(f10356b);
        d.a(getContext()).getWindow().clearFlags(128);
        com.bytedance.sdk.openadsdk.video.c.a aVar = this.e;
        if (aVar != null) {
            aVar.b();
        }
    }

    public void setMediaInterface(Class cls) {
        o();
        this.f = cls;
    }

    public void setState(int i) {
        switch (i) {
            case 0:
                b();
                return;
            case 1:
                c();
                return;
            case 2:
                e();
                return;
            case 3:
                d();
                return;
            case 4:
            default:
                return;
            case 5:
                f();
                return;
            case 6:
                g();
                return;
            case 7:
                i();
                return;
            case 8:
                h();
                return;
        }
    }
}
