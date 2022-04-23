package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import com.google.android.exoplayer2.audio.d;
import com.google.android.exoplayer2.c;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    b f20807a;

    /* renamed from: c  reason: collision with root package name */
    private final AudioManager f20809c;

    /* renamed from: d  reason: collision with root package name */
    private final a f20810d;
    private d e;
    private int g;
    private AudioFocusRequest h;
    private boolean i;

    /* renamed from: b  reason: collision with root package name */
    float f20808b = 1.0f;
    private int f = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/c$a.class */
    public final class a implements AudioManager.OnAudioFocusChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private final Handler f20812b;

        public a(Handler handler) {
            this.f20812b = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i) {
            c cVar = c.this;
            if (i == -3 || i == -2) {
                if (i == -2 || cVar.b()) {
                    cVar.b(0);
                    cVar.a(2);
                    return;
                }
                cVar.a(3);
            } else if (i == -1) {
                cVar.b(-1);
                cVar.a();
            } else if (i != 1) {
                n.a("AudioFocusManager", "Unknown focus change type: ".concat(String.valueOf(i)));
            } else {
                cVar.a(1);
                cVar.b(1);
            }
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(final int i) {
            this.f20812b.post(new Runnable() { // from class: com.google.android.exoplayer2._$$Lambda$c$a$P9noghjh4KDiLtwbQDVQOfcn3DA
                @Override // java.lang.Runnable
                public final void run() {
                    c.a.this.a(i);
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/c$b.class */
    public interface b {
        void a(int i);

        void b();
    }

    public c(Context context, Handler handler, b bVar) {
        this.f20809c = (AudioManager) com.google.android.exoplayer2.util.a.b((AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.f20807a = bVar;
        this.f20810d = new a(handler);
    }

    private static int b(d dVar) {
        if (dVar == null) {
            return 0;
        }
        switch (dVar.f20745d) {
            case 0:
                n.a("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
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
                return dVar.f20743b == 1 ? 2 : 3;
            case 15:
            default:
                n.a("AudioFocusManager", "Unidentified audio usage: " + dVar.f20745d);
                return 0;
            case 16:
                return af.f22275a >= 19 ? 4 : 2;
        }
    }

    private int c() {
        if (this.f == 1) {
            return 1;
        }
        if ((af.f22275a >= 26 ? e() : d()) == 1) {
            a(1);
            return 1;
        }
        a(0);
        return -1;
    }

    private boolean c(int i) {
        return i == 1 || this.g != 1;
    }

    private int d() {
        return this.f20809c.requestAudioFocus(this.f20810d, af.f(((d) com.google.android.exoplayer2.util.a.b(this.e)).f20745d), this.g);
    }

    private int e() {
        AudioFocusRequest audioFocusRequest = this.h;
        if (audioFocusRequest == null || this.i) {
            this.h = (audioFocusRequest == null ? new AudioFocusRequest.Builder(this.g) : new AudioFocusRequest.Builder(this.h)).setAudioAttributes(((d) com.google.android.exoplayer2.util.a.b(this.e)).a()).setWillPauseWhenDucked(b()).setOnAudioFocusChangeListener(this.f20810d).build();
            this.i = false;
        }
        return this.f20809c.requestAudioFocus(this.h);
    }

    private void f() {
        this.f20809c.abandonAudioFocus(this.f20810d);
    }

    private void g() {
        AudioFocusRequest audioFocusRequest = this.h;
        if (audioFocusRequest != null) {
            this.f20809c.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    public final int a(boolean z, int i) {
        if (c(i)) {
            a();
            return z ? 1 : -1;
        } else if (z) {
            return c();
        } else {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.f != 0) {
            if (af.f22275a >= 26) {
                g();
            } else {
                f();
            }
            a(0);
        }
    }

    final void a(int i) {
        if (this.f != i) {
            this.f = i;
            float f = i == 3 ? 0.2f : 1.0f;
            if (this.f20808b != f) {
                this.f20808b = f;
                b bVar = this.f20807a;
                if (bVar != null) {
                    bVar.b();
                }
            }
        }
    }

    public final void a(d dVar) {
        if (!af.a(this.e, dVar)) {
            this.e = dVar;
            int b2 = b(dVar);
            this.g = b2;
            boolean z = true;
            if (b2 != 1) {
                z = b2 == 0;
            }
            com.google.android.exoplayer2.util.a.a(z, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
        }
    }

    final void b(int i) {
        b bVar = this.f20807a;
        if (bVar != null) {
            bVar.a(i);
        }
    }

    final boolean b() {
        d dVar = this.e;
        return dVar != null && dVar.f20743b == 1;
    }
}
