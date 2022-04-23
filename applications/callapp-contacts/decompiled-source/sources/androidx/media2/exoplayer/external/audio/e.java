package androidx.media2.exoplayer.external.audio;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    final b f2879a;

    /* renamed from: b  reason: collision with root package name */
    public c f2880b;

    /* renamed from: d  reason: collision with root package name */
    public int f2882d;
    private final AudioManager f;
    private AudioFocusRequest h;
    private boolean i;
    public float e = 1.0f;
    private final a g = new a();

    /* renamed from: c  reason: collision with root package name */
    int f2881c = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/e$a.class */
    public final class a implements AudioManager.OnAudioFocusChangeListener {
        private a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(int i) {
            if (i != -3) {
                if (i == -2) {
                    e.this.f2881c = 2;
                } else if (i == -1) {
                    e.this.f2881c = -1;
                } else if (i != 1) {
                    StringBuilder sb = new StringBuilder(38);
                    sb.append("Unknown focus change type: ");
                    sb.append(i);
                    j.a("AudioFocusManager", sb.toString());
                    return;
                } else {
                    e.this.f2881c = 1;
                }
            } else if (e.this.b()) {
                e.this.f2881c = 2;
            } else {
                e.this.f2881c = 3;
            }
            int i2 = e.this.f2881c;
            if (i2 == -1) {
                e.this.f2879a.c(-1);
                e.this.b(true);
            } else if (i2 != 0) {
                if (i2 == 1) {
                    e.this.f2879a.c(1);
                } else if (i2 == 2) {
                    e.this.f2879a.c(0);
                } else if (i2 != 3) {
                    int i3 = e.this.f2881c;
                    StringBuilder sb2 = new StringBuilder(38);
                    sb2.append("Unknown audio focus state: ");
                    sb2.append(i3);
                    throw new IllegalStateException(sb2.toString());
                }
            }
            float f = e.this.f2881c == 3 ? 0.2f : 1.0f;
            if (e.this.e != f) {
                e.this.e = f;
                e.this.f2879a.c();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/e$b.class */
    public interface b {
        void c();

        void c(int i);
    }

    public e(Context context, b bVar) {
        this.f = (AudioManager) context.getApplicationContext().getSystemService("audio");
        this.f2879a = bVar;
    }

    private int c() {
        return this.f.requestAudioFocus(this.g, ac.f(((c) androidx.media2.exoplayer.external.util.a.a(this.f2880b)).f2871d), this.f2882d);
    }

    private int d() {
        AudioFocusRequest audioFocusRequest = this.h;
        if (audioFocusRequest == null || this.i) {
            this.h = (audioFocusRequest == null ? new AudioFocusRequest.Builder(this.f2882d) : new AudioFocusRequest.Builder(this.h)).setAudioAttributes(((c) androidx.media2.exoplayer.external.util.a.a(this.f2880b)).a()).setWillPauseWhenDucked(b()).setOnAudioFocusChangeListener(this.g).build();
            this.i = false;
        }
        return this.f.requestAudioFocus(this.h);
    }

    private void e() {
        this.f.abandonAudioFocus(this.g);
    }

    private void f() {
        AudioFocusRequest audioFocusRequest = this.h;
        if (audioFocusRequest != null) {
            this.f.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    public final int a() {
        if (this.f2882d != 0) {
            if (this.f2881c == 0) {
                this.f2881c = (ac.f4119a >= 26 ? d() : c()) == 1 ? 1 : 0;
            }
            int i = this.f2881c;
            if (i == 0) {
                return -1;
            }
            return i == 2 ? 0 : 1;
        } else if (this.f2881c == 0) {
            return 1;
        } else {
            b(true);
            return 1;
        }
    }

    public final int a(boolean z) {
        if (z) {
            return a();
        }
        return -1;
    }

    public final void b(boolean z) {
        int i = this.f2882d;
        if (i != 0 || this.f2881c != 0) {
            if (i != 1 || this.f2881c == -1 || z) {
                if (ac.f4119a >= 26) {
                    f();
                } else {
                    e();
                }
                this.f2881c = 0;
            }
        }
    }

    final boolean b() {
        c cVar = this.f2880b;
        return cVar != null && cVar.f2869b == 1;
    }
}
