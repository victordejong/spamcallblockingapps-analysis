package p012b.p076s.p078b.p079a.p083p0;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
/* renamed from: b.s.b.a.p0.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/e.class */
public final class C1275e {

    /* renamed from: a */
    public final AudioManager f5074a;

    /* renamed from: c */
    public final AbstractC1278c f5076c;

    /* renamed from: d */
    public C1271c f5077d;

    /* renamed from: f */
    public int f5079f;

    /* renamed from: h */
    public AudioFocusRequest f5081h;

    /* renamed from: i */
    public boolean f5082i;

    /* renamed from: g */
    public float f5080g = 1.0f;

    /* renamed from: b */
    public final C1277b f5075b = new C1277b();

    /* renamed from: e */
    public int f5078e = 0;

    /* renamed from: b.s.b.a.p0.e$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/p0/e$b.class */
    public class C1277b implements AudioManager.OnAudioFocusChangeListener {
        public C1277b() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i != -3) {
                if (i == -2) {
                    C1275e.this.f5078e = 2;
                } else if (i == -1) {
                    C1275e.this.f5078e = -1;
                } else if (i != 1) {
                    StringBuilder sb = new StringBuilder(38);
                    sb.append("Unknown focus change type: ");
                    sb.append(i);
                    C1175j.m34414d("AudioFocusManager", sb.toString());
                    return;
                } else {
                    C1275e.this.f5078e = 1;
                }
            } else if (C1275e.this.m33904i()) {
                C1275e.this.f5078e = 2;
            } else {
                C1275e.this.f5078e = 3;
            }
            int i2 = C1275e.this.f5078e;
            if (i2 == -1) {
                C1275e.this.f5076c.mo33902c(-1);
                C1275e.this.m33918a(true);
            } else if (i2 != 0) {
                if (i2 == 1) {
                    C1275e.this.f5076c.mo33902c(1);
                } else if (i2 == 2) {
                    C1275e.this.f5076c.mo33902c(0);
                } else if (i2 != 3) {
                    int i3 = C1275e.this.f5078e;
                    StringBuilder sb2 = new StringBuilder(38);
                    sb2.append("Unknown audio focus state: ");
                    sb2.append(i3);
                    throw new IllegalStateException(sb2.toString());
                }
            }
            float f = C1275e.this.f5078e == 3 ? 0.2f : 1.0f;
            if (C1275e.this.f5080g != f) {
                C1275e.this.f5080g = f;
                C1275e.this.f5076c.mo33903a(f);
            }
        }
    }

    /* renamed from: b.s.b.a.p0.e$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/p0/e$c.class */
    public interface AbstractC1278c {
        /* renamed from: a */
        void mo33903a(float f);

        /* renamed from: c */
        void mo33902c(int i);
    }

    public C1275e(Context context, AbstractC1278c cVar) {
        this.f5074a = (AudioManager) context.getApplicationContext().getSystemService("audio");
        this.f5076c = cVar;
    }

    /* renamed from: a */
    public static int m33924a(C1271c cVar) {
        if (cVar == null) {
            return 0;
        }
        int i = cVar.f5065c;
        switch (i) {
            case 0:
                C1175j.m34414d("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
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
                return cVar.f5063a == 1 ? 2 : 3;
            case 15:
            default:
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unidentified audio usage: ");
                sb.append(i);
                C1175j.m34414d("AudioFocusManager", sb.toString());
                return 0;
            case 16:
                return C1167d0.f4688a >= 19 ? 4 : 2;
        }
    }

    /* renamed from: a */
    public int m33923a(C1271c cVar, boolean z, int i) {
        if (!C1167d0.m34478a(this.f5077d, cVar)) {
            this.f5077d = cVar;
            int a = m33924a(cVar);
            this.f5079f = a;
            C1160a.m34519a(a == 1 || a == 0, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
            if (z && (i == 2 || i == 3)) {
                return m33907f();
            }
        }
        return i == 1 ? m33914b(z) : m33911c(z);
    }

    /* renamed from: a */
    public int m33917a(boolean z, int i) {
        if (!z) {
            m33925a();
            return -1;
        }
        return i == 1 ? m33914b(z) : m33907f();
    }

    /* renamed from: a */
    public final void m33925a() {
        m33918a(false);
    }

    /* renamed from: a */
    public final void m33918a(boolean z) {
        if (this.f5079f != 0 || this.f5078e != 0) {
            if (this.f5079f != 1 || this.f5078e == -1 || z) {
                if (C1167d0.f4688a >= 26) {
                    m33913c();
                } else {
                    m33916b();
                }
                this.f5078e = 0;
            }
        }
    }

    /* renamed from: b */
    public final int m33914b(boolean z) {
        return z ? 1 : -1;
    }

    /* renamed from: b */
    public final void m33916b() {
        this.f5074a.abandonAudioFocus(this.f5075b);
    }

    /* renamed from: c */
    public int m33911c(boolean z) {
        return z ? m33907f() : -1;
    }

    /* renamed from: c */
    public final void m33913c() {
        AudioFocusRequest audioFocusRequest = this.f5081h;
        if (audioFocusRequest != null) {
            this.f5074a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    /* renamed from: d */
    public float m33910d() {
        return this.f5080g;
    }

    /* renamed from: e */
    public void m33908e() {
        m33918a(true);
    }

    /* renamed from: f */
    public final int m33907f() {
        int i = 1;
        if (this.f5079f != 0) {
            if (this.f5078e == 0) {
                this.f5078e = (C1167d0.f4688a >= 26 ? m33905h() : m33906g()) == 1 ? 1 : 0;
            }
            int i2 = this.f5078e;
            if (i2 == 0) {
                return -1;
            }
            if (i2 == 2) {
                i = 0;
            }
            return i;
        } else if (this.f5078e == 0) {
            return 1;
        } else {
            m33918a(true);
            return 1;
        }
    }

    /* renamed from: g */
    public final int m33906g() {
        AudioManager audioManager = this.f5074a;
        C1277b bVar = this.f5075b;
        C1271c cVar = this.f5077d;
        C1160a.m34522a(cVar);
        return audioManager.requestAudioFocus(bVar, C1167d0.m34443d(cVar.f5065c), this.f5079f);
    }

    /* renamed from: h */
    public final int m33905h() {
        if (this.f5081h == null || this.f5082i) {
            AudioFocusRequest.Builder builder = this.f5081h == null ? new AudioFocusRequest.Builder(this.f5079f) : new AudioFocusRequest.Builder(this.f5081h);
            boolean i = m33904i();
            C1271c cVar = this.f5077d;
            C1160a.m34522a(cVar);
            this.f5081h = builder.setAudioAttributes(cVar.m33935a()).setWillPauseWhenDucked(i).setOnAudioFocusChangeListener(this.f5075b).build();
            this.f5082i = false;
        }
        return this.f5074a.requestAudioFocus(this.f5081h);
    }

    /* renamed from: i */
    public final boolean m33904i() {
        C1271c cVar = this.f5077d;
        boolean z = true;
        if (cVar == null || cVar.f5063a != 1) {
            z = false;
        }
        return z;
    }
}
