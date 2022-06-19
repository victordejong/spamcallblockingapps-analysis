package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import com.google.android.exoplayer2.C5188s;
import com.google.android.exoplayer2.audio.C4825i;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
/* renamed from: com.google.android.exoplayer2.s */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/s.class */
public final class C5188s {

    /* renamed from: a */
    private final AudioManager f16280a;

    /* renamed from: b */
    private final C5189a f16281b;

    /* renamed from: c */
    private final AbstractC5190b f16282c;

    /* renamed from: d */
    private C4825i f16283d;

    /* renamed from: f */
    private int f16285f;

    /* renamed from: h */
    private AudioFocusRequest f16287h;

    /* renamed from: i */
    private boolean f16288i;

    /* renamed from: g */
    private float f16286g = 1.0f;

    /* renamed from: e */
    private int f16284e = 0;

    /* renamed from: com.google.android.exoplayer2.s$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/s$a.class */
    public class C5189a implements AudioManager.OnAudioFocusChangeListener {

        /* renamed from: a */
        private final Handler f16289a;

        public C5189a(Handler handler) {
            C5188s.this = r4;
            this.f16289a = handler;
        }

        /* renamed from: a */
        public /* synthetic */ void m20195b(int i) {
            C5188s.this.m20205g(i);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i) {
            this.f16289a.post(new Runnable() { // from class: com.google.android.exoplayer2.a
                @Override // java.lang.Runnable
                public final void run() {
                    C5188s.C5189a.this.m20195b(i);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer2.s$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/s$b.class */
    public interface AbstractC5190b {
        /* renamed from: f */
        void mo18394f(float f);

        /* renamed from: g */
        void mo18393g(int i);
    }

    public C5188s(Context context, Handler handler, AbstractC5190b abstractC5190b) {
        this.f16280a = (AudioManager) context.getApplicationContext().getSystemService("audio");
        this.f16282c = abstractC5190b;
        this.f16281b = new C5189a(handler);
    }

    /* renamed from: a */
    private void m20211a() {
        m20210b(false);
    }

    /* renamed from: b */
    private void m20210b(boolean z) {
        int i = this.f16285f;
        if (i == 0 && this.f16284e == 0) {
            return;
        }
        if (i == 1 && this.f16284e != -1 && !z) {
            return;
        }
        if (C5515h0.f17876a >= 26) {
            m20208d();
        } else {
            m20209c();
        }
        this.f16284e = 0;
    }

    /* renamed from: c */
    private void m20209c() {
        this.f16280a.abandonAudioFocus(this.f16281b);
    }

    /* renamed from: d */
    private void m20208d() {
        AudioFocusRequest audioFocusRequest = this.f16287h;
        if (audioFocusRequest != null) {
            this.f16280a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    /* renamed from: g */
    public void m20205g(int i) {
        if (i != -3) {
            if (i == -2) {
                this.f16284e = 2;
            } else if (i == -1) {
                this.f16284e = -1;
            } else if (i != 1) {
                C5526o.m18742f("AudioFocusManager", "Unknown focus change type: " + i);
                return;
            } else {
                this.f16284e = 1;
            }
        } else if (m20197o()) {
            this.f16284e = 2;
        } else {
            this.f16284e = 3;
        }
        int i2 = this.f16284e;
        if (i2 == -1) {
            this.f16282c.mo18393g(-1);
            m20210b(true);
        } else if (i2 != 0) {
            if (i2 == 1) {
                this.f16282c.mo18393g(1);
            } else if (i2 == 2) {
                this.f16282c.mo18393g(0);
            } else if (i2 != 3) {
                throw new IllegalStateException("Unknown audio focus state: " + this.f16284e);
            }
        }
        float f = this.f16284e == 3 ? 0.2f : 1.0f;
        if (this.f16286g != f) {
            this.f16286g = f;
            this.f16282c.mo18394f(f);
        }
    }

    /* renamed from: h */
    private int m20204h(boolean z) {
        return z ? 1 : -1;
    }

    /* renamed from: l */
    private int m20200l() {
        if (this.f16285f == 0) {
            if (this.f16284e == 0) {
                return 1;
            }
            m20210b(true);
            return 1;
        }
        if (this.f16284e == 0) {
            this.f16284e = (C5515h0.f17876a >= 26 ? m20198n() : m20199m()) == 1 ? 1 : 0;
        }
        int i = this.f16284e;
        if (i == 0) {
            return -1;
        }
        int i2 = 1;
        if (i == 2) {
            i2 = 0;
        }
        return i2;
    }

    /* renamed from: m */
    private int m20199m() {
        return this.f16280a.requestAudioFocus(this.f16281b, C5515h0.m18861K(((C4825i) C5508e.m18911e(this.f16283d)).f14619d), this.f16285f);
    }

    /* renamed from: n */
    private int m20198n() {
        AudioFocusRequest audioFocusRequest = this.f16287h;
        if (audioFocusRequest == null || this.f16288i) {
            this.f16287h = (audioFocusRequest == null ? new AudioFocusRequest.Builder(this.f16285f) : new AudioFocusRequest.Builder(this.f16287h)).setAudioAttributes(((C4825i) C5508e.m18911e(this.f16283d)).m21581a()).setWillPauseWhenDucked(m20197o()).setOnAudioFocusChangeListener(this.f16281b).build();
            this.f16288i = false;
        }
        return this.f16280a.requestAudioFocus(this.f16287h);
    }

    /* renamed from: o */
    private boolean m20197o() {
        C4825i c4825i = this.f16283d;
        boolean z = true;
        if (c4825i == null || c4825i.f14617b != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public float m20206f() {
        return this.f16286g;
    }

    /* renamed from: i */
    public int m20203i(boolean z) {
        return z ? m20200l() : -1;
    }

    /* renamed from: j */
    public int m20202j(boolean z, int i) {
        if (z) {
            return i == 1 ? m20204h(z) : m20200l();
        }
        m20211a();
        return -1;
    }

    /* renamed from: k */
    public void m20201k() {
        m20210b(true);
    }
}
