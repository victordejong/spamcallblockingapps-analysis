package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import com.google.android.exoplayer2.C10919c;
import com.google.android.exoplayer2.audio.C10889d;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
/* renamed from: com.google.android.exoplayer2.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/c.class */
public final class C10919c {

    /* renamed from: a */
    AbstractC10921b f35304a;

    /* renamed from: c */
    private final AudioManager f35306c;

    /* renamed from: d */
    private final C10920a f35307d;

    /* renamed from: e */
    private C10889d f35308e;

    /* renamed from: g */
    private int f35310g;

    /* renamed from: h */
    private AudioFocusRequest f35311h;

    /* renamed from: i */
    private boolean f35312i;

    /* renamed from: b */
    float f35305b = 1.0f;

    /* renamed from: f */
    private int f35309f = 0;

    /* renamed from: com.google.android.exoplayer2.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/c$a.class */
    public final class C10920a implements AudioManager.OnAudioFocusChangeListener {

        /* renamed from: b */
        private final Handler f35314b;

        public C10920a(Handler handler) {
            C10919c.this = r4;
            this.f35314b = handler;
        }

        /* renamed from: a */
        public /* synthetic */ void m21942a(int i) {
            C10919c c10919c = C10919c.this;
            if (i == -3 || i == -2) {
                if (i != -2 && !c10919c.m21951b()) {
                    c10919c.m21954a(3);
                    return;
                }
                c10919c.m21950b(0);
                c10919c.m21954a(2);
            } else if (i == -1) {
                c10919c.m21950b(-1);
                c10919c.m21955a();
            } else if (i != 1) {
                C11617n.m19863a("AudioFocusManager", "Unknown focus change type: ".concat(String.valueOf(i)));
            } else {
                c10919c.m21954a(1);
                c10919c.m21950b(1);
            }
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(final int i) {
            this.f35314b.post(new Runnable() { // from class: com.google.android.exoplayer2._$$Lambda$c$a$P9noghjh4KDiLtwbQDVQOfcn3DA
                @Override // java.lang.Runnable
                public final void run() {
                    C10919c.C10920a.this.m21942a(i);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer2.c$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/c$b.class */
    public interface AbstractC10921b {
        /* renamed from: a */
        void mo21940a(int i);

        /* renamed from: b */
        void mo21939b();
    }

    public C10919c(Context context, Handler handler, AbstractC10921b abstractC10921b) {
        this.f35306c = (AudioManager) C11593a.m20020b((AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.f35304a = abstractC10921b;
        this.f35307d = new C10920a(handler);
    }

    /* renamed from: b */
    private static int m21949b(C10889d c10889d) {
        if (c10889d == null) {
            return 0;
        }
        switch (c10889d.f35140d) {
            case 0:
                C11617n.m19863a("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                return 3;
            case 11:
                return c10889d.f35138b == 1 ? 2 : 3;
            case 15:
            default:
                C11617n.m19863a("AudioFocusManager", "Unidentified audio usage: " + c10889d.f35140d);
                return 0;
            case 16:
                return C11599af.f38648a >= 19 ? 4 : 2;
        }
    }

    /* renamed from: c */
    private int m21948c() {
        if (this.f35309f == 1) {
            return 1;
        }
        if ((C11599af.f38648a >= 26 ? m21945e() : m21946d()) == 1) {
            m21954a(1);
            return 1;
        }
        m21954a(0);
        return -1;
    }

    /* renamed from: c */
    private boolean m21947c(int i) {
        return i == 1 || this.f35310g != 1;
    }

    /* renamed from: d */
    private int m21946d() {
        return this.f35306c.requestAudioFocus(this.f35307d, C11599af.m19923f(((C10889d) C11593a.m20020b(this.f35308e)).f35140d), this.f35310g);
    }

    /* renamed from: e */
    private int m21945e() {
        AudioFocusRequest audioFocusRequest = this.f35311h;
        if (audioFocusRequest == null || this.f35312i) {
            this.f35311h = (audioFocusRequest == null ? new AudioFocusRequest.Builder(this.f35310g) : new AudioFocusRequest.Builder(this.f35311h)).setAudioAttributes(((C10889d) C11593a.m20020b(this.f35308e)).m22070a()).setWillPauseWhenDucked(m21951b()).setOnAudioFocusChangeListener(this.f35307d).build();
            this.f35312i = false;
        }
        return this.f35306c.requestAudioFocus(this.f35311h);
    }

    /* renamed from: f */
    private void m21944f() {
        this.f35306c.abandonAudioFocus(this.f35307d);
    }

    /* renamed from: g */
    private void m21943g() {
        AudioFocusRequest audioFocusRequest = this.f35311h;
        if (audioFocusRequest != null) {
            this.f35306c.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    /* renamed from: a */
    public final int m21952a(boolean z, int i) {
        if (m21947c(i)) {
            m21955a();
            return z ? 1 : -1;
        } else if (!z) {
            return -1;
        } else {
            return m21948c();
        }
    }

    /* renamed from: a */
    public final void m21955a() {
        if (this.f35309f == 0) {
            return;
        }
        if (C11599af.f38648a >= 26) {
            m21943g();
        } else {
            m21944f();
        }
        m21954a(0);
    }

    /* renamed from: a */
    final void m21954a(int i) {
        if (this.f35309f == i) {
            return;
        }
        this.f35309f = i;
        float f = i == 3 ? 0.2f : 1.0f;
        if (this.f35305b == f) {
            return;
        }
        this.f35305b = f;
        AbstractC10921b abstractC10921b = this.f35304a;
        if (abstractC10921b == null) {
            return;
        }
        abstractC10921b.mo21939b();
    }

    /* renamed from: a */
    public final void m21953a(C10889d c10889d) {
        if (!C11599af.m19973a(this.f35308e, c10889d)) {
            this.f35308e = c10889d;
            int m21949b = m21949b(c10889d);
            this.f35310g = m21949b;
            boolean z = true;
            if (m21949b != 1) {
                z = m21949b == 0;
            }
            C11593a.m20021a(z, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
        }
    }

    /* renamed from: b */
    final void m21950b(int i) {
        AbstractC10921b abstractC10921b = this.f35304a;
        if (abstractC10921b != null) {
            abstractC10921b.mo21940a(i);
        }
    }

    /* renamed from: b */
    final boolean m21951b() {
        C10889d c10889d = this.f35308e;
        return c10889d != null && c10889d.f35138b == 1;
    }
}
