package androidx.media2.exoplayer.external.audio;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
/* renamed from: androidx.media2.exoplayer.external.audio.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/e.class */
public final class C1405e {

    /* renamed from: a */
    final AbstractC1408b f5310a;

    /* renamed from: b */
    public C1401c f5311b;

    /* renamed from: d */
    public int f5313d;

    /* renamed from: f */
    private final AudioManager f5315f;

    /* renamed from: h */
    private AudioFocusRequest f5317h;

    /* renamed from: i */
    private boolean f5318i;

    /* renamed from: e */
    public float f5314e = 1.0f;

    /* renamed from: g */
    private final C1407a f5316g = new C1407a();

    /* renamed from: c */
    int f5312c = 0;

    /* renamed from: androidx.media2.exoplayer.external.audio.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/e$a.class */
    public final class C1407a implements AudioManager.OnAudioFocusChangeListener {
        private C1407a() {
            C1405e.this = r4;
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(int i) {
            if (i != -3) {
                if (i == -2) {
                    C1405e.this.f5312c = 2;
                } else if (i == -1) {
                    C1405e.this.f5312c = -1;
                } else if (i != 1) {
                    StringBuilder sb = new StringBuilder(38);
                    sb.append("Unknown focus change type: ");
                    sb.append(i);
                    C2009j.m41584a("AudioFocusManager", sb.toString());
                    return;
                } else {
                    C1405e.this.f5312c = 1;
                }
            } else if (C1405e.this.m43014b()) {
                C1405e.this.f5312c = 2;
            } else {
                C1405e.this.f5312c = 3;
            }
            int i2 = C1405e.this.f5312c;
            if (i2 == -1) {
                C1405e.this.f5310a.mo43007c(-1);
                C1405e.this.m43013b(true);
            } else if (i2 != 0) {
                if (i2 == 1) {
                    C1405e.this.f5310a.mo43007c(1);
                } else if (i2 == 2) {
                    C1405e.this.f5310a.mo43007c(0);
                } else if (i2 != 3) {
                    int i3 = C1405e.this.f5312c;
                    StringBuilder sb2 = new StringBuilder(38);
                    sb2.append("Unknown audio focus state: ");
                    sb2.append(i3);
                    throw new IllegalStateException(sb2.toString());
                }
            }
            float f = C1405e.this.f5312c == 3 ? 0.2f : 1.0f;
            if (C1405e.this.f5314e != f) {
                C1405e.this.f5314e = f;
                C1405e.this.f5310a.mo43008c();
            }
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/e$b.class */
    public interface AbstractC1408b {
        /* renamed from: c */
        void mo43008c();

        /* renamed from: c */
        void mo43007c(int i);
    }

    public C1405e(Context context, AbstractC1408b abstractC1408b) {
        this.f5315f = (AudioManager) context.getApplicationContext().getSystemService("audio");
        this.f5310a = abstractC1408b;
    }

    /* renamed from: c */
    private int m43012c() {
        return this.f5315f.requestAudioFocus(this.f5316g, C1996ac.m41617f(((C1401c) C1993a.m41690a(this.f5311b)).f5301d), this.f5313d);
    }

    /* renamed from: d */
    private int m43011d() {
        AudioFocusRequest audioFocusRequest = this.f5317h;
        if (audioFocusRequest == null || this.f5318i) {
            this.f5317h = (audioFocusRequest == null ? new AudioFocusRequest.Builder(this.f5313d) : new AudioFocusRequest.Builder(this.f5317h)).setAudioAttributes(((C1401c) C1993a.m41690a(this.f5311b)).m43019a()).setWillPauseWhenDucked(m43014b()).setOnAudioFocusChangeListener(this.f5316g).build();
            this.f5318i = false;
        }
        return this.f5315f.requestAudioFocus(this.f5317h);
    }

    /* renamed from: e */
    private void m43010e() {
        this.f5315f.abandonAudioFocus(this.f5316g);
    }

    /* renamed from: f */
    private void m43009f() {
        AudioFocusRequest audioFocusRequest = this.f5317h;
        if (audioFocusRequest != null) {
            this.f5315f.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    /* renamed from: a */
    public final int m43016a() {
        if (this.f5313d == 0) {
            if (this.f5312c == 0) {
                return 1;
            }
            m43013b(true);
            return 1;
        }
        if (this.f5312c == 0) {
            this.f5312c = (C1996ac.f8062a >= 26 ? m43011d() : m43012c()) == 1 ? 1 : 0;
        }
        int i = this.f5312c;
        if (i == 0) {
            return -1;
        }
        return i == 2 ? 0 : 1;
    }

    /* renamed from: a */
    public final int m43015a(boolean z) {
        if (z) {
            return m43016a();
        }
        return -1;
    }

    /* renamed from: b */
    public final void m43013b(boolean z) {
        int i = this.f5313d;
        if (i == 0 && this.f5312c == 0) {
            return;
        }
        if (i == 1 && this.f5312c != -1 && !z) {
            return;
        }
        if (C1996ac.f8062a >= 26) {
            m43009f();
        } else {
            m43010e();
        }
        this.f5312c = 0;
    }

    /* renamed from: b */
    final boolean m43014b() {
        C1401c c1401c = this.f5311b;
        return c1401c != null && c1401c.f5299b == 1;
    }
}
