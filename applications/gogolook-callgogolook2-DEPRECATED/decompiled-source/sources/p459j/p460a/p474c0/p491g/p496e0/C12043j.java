package p459j.p460a.p474c0.p491g.p496e0;

import android.media.MediaRecorder;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.criteo.publisher.model.C2052w;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider;
import java.io.IOException;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: j.a.c0.g.e0.j */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/j.class */
public class C12043j {

    /* renamed from: a */
    public final C12007a f26983a = new C12007a();

    /* renamed from: b */
    public Thread f26984b;

    /* renamed from: c */
    public MediaRecorder f26985c;

    /* renamed from: d */
    public Uri f26986d;

    /* renamed from: e */
    public ParcelFileDescriptor f26987e;

    /* renamed from: j.a.c0.g.e0.j$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/j$a.class */
    public class RunnableC12044a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Uri f26988a;

        public RunnableC12044a(C12043j jVar, Uri uri) {
            this.f26988a = uri;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC11516a.m9413n().mo9412a().getContentResolver().delete(this.f26988a, null, null);
        }
    }

    /* renamed from: j.a.c0.g.e0.j$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/j$b.class */
    public class C12045b extends Thread {
        public C12045b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    synchronized (C12043j.class) {
                        if (C12043j.this.f26985c != null) {
                            C12043j.this.f26983a.m7555a(C12043j.this.m7436a());
                        } else {
                            return;
                        }
                    }
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final int m7436a() {
        synchronized (C12043j.class) {
            try {
                if (this.f26985c == null) {
                    return 0;
                }
                return Math.min(this.f26985c.getMaxAmplitude() / 327, 100);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public boolean m7435a(MediaRecorder.OnErrorListener onErrorListener, MediaRecorder.OnInfoListener onInfoListener, int i) {
        synchronized (C12043j.class) {
            try {
                if (this.f26985c == null) {
                    this.f26986d = MediaScratchFileProvider.m27783b(C12205r.f27365a);
                    this.f26985c = new MediaRecorder();
                    int i2 = (int) (i * 0.8f);
                    try {
                        this.f26987e = AbstractC11516a.m9413n().mo9412a().getContentResolver().openFileDescriptor(this.f26986d, C2052w.f2268l);
                        this.f26985c.setAudioSource(1);
                        this.f26985c.setOutputFormat(1);
                        this.f26985c.setAudioEncoder(1);
                        this.f26985c.setOutputFile(this.f26987e.getFileDescriptor());
                        this.f26985c.setMaxFileSize(i2);
                        this.f26985c.setOnErrorListener(onErrorListener);
                        this.f26985c.setOnInfoListener(onInfoListener);
                        this.f26985c.prepare();
                        this.f26985c.start();
                        m7429d();
                        return true;
                    } catch (Exception e) {
                        C12153d0.m6987b("MessagingApp", "Something went wrong when starting media recorder. " + e);
                        C12212s0.m6796a((int) R$string.audio_recording_start_failed);
                        m7428e();
                    }
                } else {
                    C12151d.m7005a("Trying to start a new recording session while already recording!");
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public C12007a m7433b() {
        return this.f26983a;
    }

    /* renamed from: c */
    public boolean m7431c() {
        return this.f26985c != null;
    }

    /* renamed from: d */
    public final void m7429d() {
        m7427f();
        this.f26984b = new C12045b();
        this.f26984b.start();
    }

    /* renamed from: e */
    public Uri m7428e() {
        synchronized (C12043j.class) {
            try {
                if (this.f26985c != null) {
                    try {
                        this.f26985c.stop();
                        this.f26985c.release();
                    } catch (RuntimeException e) {
                        C12153d0.m6981e("MessagingApp", "Something went wrong when stopping media recorder. " + e);
                        if (this.f26986d != null) {
                            AbstractAsyncTaskC12189n0.m6856a(new RunnableC12044a(this, this.f26986d));
                            this.f26986d = null;
                        }
                        this.f26985c.release();
                    }
                    this.f26985c = null;
                    ParcelFileDescriptor parcelFileDescriptor = this.f26987e;
                    if (parcelFileDescriptor != null) {
                        try {
                            parcelFileDescriptor.close();
                        } catch (IOException e2) {
                        }
                        this.f26987e = null;
                    }
                    m7427f();
                    return this.f26986d;
                }
                C12151d.m7005a("Not currently recording!");
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public final void m7427f() {
        Thread thread = this.f26984b;
        if (thread != null && thread.isAlive()) {
            this.f26984b.interrupt();
            this.f26984b = null;
        }
    }
}
