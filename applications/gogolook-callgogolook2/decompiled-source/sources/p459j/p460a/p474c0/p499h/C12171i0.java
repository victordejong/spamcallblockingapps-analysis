package p459j.p460a.p474c0.p499h;

import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.util.MimeTypes;
import java.lang.Thread;
import java.util.LinkedList;
import p459j.p460a.p474c0.AbstractC11516a;
/* renamed from: j.a.c0.h.i0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/i0.class */
public class C12171i0 implements MediaPlayer.OnCompletionListener {

    /* renamed from: b */
    public Looper f27313b;

    /* renamed from: c */
    public String f27314c;

    /* renamed from: d */
    public C12173b f27315d;

    /* renamed from: e */
    public C12175d f27316e;

    /* renamed from: g */
    public MediaPlayer f27318g;

    /* renamed from: h */
    public PowerManager.WakeLock f27319h;

    /* renamed from: i */
    public AudioManager f27320i;

    /* renamed from: a */
    public final LinkedList<C12174c> f27312a = new LinkedList<>();

    /* renamed from: f */
    public final Object f27317f = new Object();

    /* renamed from: j */
    public int f27321j = 2;

    /* renamed from: j.a.c0.h.i0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/i0$b.class */
    public final class C12173b extends Thread {
        public C12173b() {
            super("NotificationPlayer-" + C12171i0.this.f27314c);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            C12174c cVar;
            while (true) {
                synchronized (C12171i0.this.f27312a) {
                    cVar = (C12174c) C12171i0.this.f27312a.removeFirst();
                }
                int i = cVar.f27323a;
                if (i == 1) {
                    C12171i0.this.m6929b(cVar);
                } else if (i == 2) {
                    C12171i0.this.m6925c(cVar);
                }
                synchronized (C12171i0.this.f27312a) {
                    if (C12171i0.this.f27312a.size() == 0) {
                        C12171i0.this.f27315d = null;
                        C12171i0.this.m6930b();
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: j.a.c0.h.i0$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/i0$c.class */
    public static final class C12174c {

        /* renamed from: a */
        public int f27323a;

        /* renamed from: b */
        public Uri f27324b;

        /* renamed from: c */
        public boolean f27325c;

        /* renamed from: d */
        public int f27326d;

        /* renamed from: e */
        public float f27327e;

        /* renamed from: f */
        public long f27328f;

        /* renamed from: g */
        public boolean f27329g;

        public C12174c() {
        }

        public String toString() {
            return "{ code=" + this.f27323a + " looping=" + this.f27325c + " stream=" + this.f27326d + " uri=" + this.f27324b + " }";
        }
    }

    /* renamed from: j.a.c0.h.i0$d */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/i0$d.class */
    public final class C12175d extends Thread {

        /* renamed from: a */
        public C12174c f27330a;

        public C12175d(C12174c cVar) {
            this.f27330a = cVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            C12171i0.this.f27313b = Looper.myLooper();
            synchronized (this) {
                AudioManager audioManager = (AudioManager) AbstractC11516a.m9413n().mo9412a().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
                try {
                    MediaPlayer mediaPlayer = new MediaPlayer();
                    mediaPlayer.setAudioStreamType(this.f27330a.f27326d);
                    mediaPlayer.setDataSource(AbstractC11516a.m9413n().mo9412a(), this.f27330a.f27324b);
                    mediaPlayer.setLooping(this.f27330a.f27325c);
                    mediaPlayer.setVolume(this.f27330a.f27327e, this.f27330a.f27327e);
                    mediaPlayer.prepare();
                    if (!(this.f27330a.f27324b == null || this.f27330a.f27324b.getEncodedPath() == null || this.f27330a.f27324b.getEncodedPath().length() <= 0)) {
                        audioManager.requestAudioFocus(null, this.f27330a.f27326d, this.f27330a.f27325c ? 2 : 3);
                    }
                    mediaPlayer.setOnCompletionListener(C12171i0.this);
                    mediaPlayer.start();
                    if (C12171i0.this.f27318g != null) {
                        C12171i0.this.f27318g.release();
                    }
                    C12171i0.this.f27318g = mediaPlayer;
                } catch (Exception e) {
                    String str = C12171i0.this.f27314c;
                    C12153d0.m6982d(str, "error loading sound for " + this.f27330a.f27324b, e);
                }
                C12171i0.this.f27320i = audioManager;
                notify();
            }
            Looper.loop();
        }
    }

    public C12171i0(String str) {
        if (str != null) {
            this.f27314c = str;
        } else {
            this.f27314c = "NotificationPlayer";
        }
    }

    /* renamed from: a */
    public final void m6940a() {
        PowerManager.WakeLock wakeLock = this.f27319h;
        if (wakeLock != null) {
            wakeLock.acquire();
        }
    }

    /* renamed from: a */
    public void m6939a(Uri uri, boolean z, int i, float f) {
        C12174c cVar = new C12174c();
        cVar.f27328f = SystemClock.elapsedRealtime();
        cVar.f27323a = 1;
        cVar.f27324b = uri;
        cVar.f27325c = z;
        cVar.f27326d = i;
        cVar.f27327e = f;
        synchronized (this.f27312a) {
            m6938a(cVar);
            this.f27321j = 1;
        }
    }

    /* renamed from: a */
    public final void m6938a(C12174c cVar) {
        this.f27312a.add(cVar);
        if (this.f27315d == null) {
            m6940a();
            this.f27315d = new C12173b();
            this.f27315d.start();
        }
    }

    /* renamed from: a */
    public void m6931a(boolean z) {
        synchronized (this.f27312a) {
            if (this.f27321j != 2) {
                C12174c cVar = new C12174c();
                cVar.f27328f = SystemClock.elapsedRealtime();
                cVar.f27323a = 2;
                cVar.f27329g = z;
                m6938a(cVar);
                this.f27321j = 2;
            }
        }
    }

    /* renamed from: b */
    public final void m6930b() {
        PowerManager.WakeLock wakeLock = this.f27319h;
        if (wakeLock != null) {
            wakeLock.release();
        }
    }

    /* renamed from: b */
    public final void m6929b(C12174c cVar) {
        try {
            synchronized (this.f27317f) {
                if (!(this.f27313b == null || this.f27313b.getThread().getState() == Thread.State.TERMINATED)) {
                    this.f27313b.quit();
                }
                this.f27316e = new C12175d(cVar);
                synchronized (this.f27316e) {
                    this.f27316e.start();
                    this.f27316e.wait();
                }
            }
            long elapsedRealtime = SystemClock.elapsedRealtime() - cVar.f27328f;
            if (elapsedRealtime > 1000) {
                String str = this.f27314c;
                C12153d0.m6981e(str, "Notification sound delayed by " + elapsedRealtime + "msecs");
            }
        } catch (Exception e) {
            String str2 = this.f27314c;
            C12153d0.m6982d(str2, "error loading sound for " + cVar.f27324b, e);
        }
    }

    /* renamed from: c */
    public void m6926c() {
        m6931a(true);
    }

    /* renamed from: c */
    public final void m6925c(C12174c cVar) {
        AudioManager audioManager;
        if (this.f27318g != null) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - cVar.f27328f;
            if (elapsedRealtime > 1000) {
                String str = this.f27314c;
                C12153d0.m6981e(str, "Notification stop delayed by " + elapsedRealtime + "msecs");
            }
            this.f27318g.stop();
            this.f27318g.release();
            this.f27318g = null;
            if (cVar.f27329g && (audioManager = this.f27320i) != null) {
                audioManager.abandonAudioFocus(null);
            }
            this.f27320i = null;
            Looper looper = this.f27313b;
            if (looper != null && looper.getThread().getState() != Thread.State.TERMINATED) {
                this.f27313b.quit();
            }
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        AudioManager audioManager = this.f27320i;
        if (audioManager != null) {
            audioManager.abandonAudioFocus(null);
        }
        synchronized (this.f27312a) {
            if (this.f27312a.size() == 0) {
                synchronized (this.f27317f) {
                    if (this.f27313b != null) {
                        this.f27313b.quit();
                    }
                    this.f27316e = null;
                }
            }
        }
    }
}
