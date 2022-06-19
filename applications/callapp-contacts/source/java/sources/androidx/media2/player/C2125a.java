package androidx.media2.player;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import androidx.media.AudioAttributesCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.player.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/a.class */
public final class C2125a {

    /* renamed from: a */
    final AbstractC2126a f8442a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.player.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/a$a.class */
    public interface AbstractC2126a {
        /* renamed from: a */
        boolean mo41302a();

        /* renamed from: b */
        void mo41301b();

        /* renamed from: c */
        void mo41300c();

        /* renamed from: d */
        void mo41299d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.player.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/a$b.class */
    public static final class C2127b implements AbstractC2126a {

        /* renamed from: b */
        final MediaPlayer f8444b;

        /* renamed from: c */
        AudioAttributesCompat f8445c;

        /* renamed from: d */
        boolean f8446d;

        /* renamed from: e */
        boolean f8447e;

        /* renamed from: i */
        private final Context f8451i;

        /* renamed from: j */
        private final AudioManager f8452j;

        /* renamed from: k */
        private int f8453k;

        /* renamed from: f */
        private final BroadcastReceiver f8448f = new C2129b();

        /* renamed from: g */
        private final IntentFilter f8449g = new IntentFilter("android.media.AUDIO_BECOMING_NOISY");

        /* renamed from: h */
        private final AudioManager.OnAudioFocusChangeListener f8450h = new C2128a();

        /* renamed from: a */
        final Object f8443a = new Object();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media2.player.a$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/a$b$a.class */
        public final class C2128a implements AudioManager.OnAudioFocusChangeListener {

            /* renamed from: b */
            private float f8455b;

            /* renamed from: c */
            private float f8456c;

            C2128a() {
                C2127b.this = r4;
            }

            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i) {
                if (i == -3) {
                    synchronized (C2127b.this.f8443a) {
                        if (C2127b.this.f8445c == null) {
                            return;
                        }
                        boolean z = false;
                        if (C2127b.this.f8445c.m43265c() == 1) {
                            z = true;
                        }
                        if (z) {
                            C2127b.this.f8444b.mo41366b();
                            return;
                        }
                        float m41330x = C2127b.this.f8444b.m41330x();
                        float f = 0.2f * m41330x;
                        synchronized (C2127b.this.f8443a) {
                            this.f8455b = m41330x;
                            this.f8456c = f;
                        }
                        C2127b.this.f8444b.m41365b(f);
                    }
                } else if (i == -2) {
                    C2127b.this.f8444b.mo41366b();
                    synchronized (C2127b.this.f8443a) {
                        C2127b.this.f8446d = true;
                    }
                } else if (i == -1) {
                    C2127b.this.f8444b.mo41366b();
                    synchronized (C2127b.this.f8443a) {
                        C2127b.this.f8446d = false;
                    }
                } else if (i != 1) {
                } else {
                    if (C2127b.this.f8444b.mo41353d() == 1) {
                        synchronized (C2127b.this.f8443a) {
                            if (!C2127b.this.f8446d) {
                                return;
                            }
                            C2127b.this.f8444b.mo41388a();
                            return;
                        }
                    }
                    float m41330x2 = C2127b.this.f8444b.m41330x();
                    synchronized (C2127b.this.f8443a) {
                        if (m41330x2 != this.f8456c) {
                            return;
                        }
                        C2127b.this.f8444b.m41365b(this.f8455b);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media2.player.a$b$b */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/a$b$b.class */
        public final class C2129b extends BroadcastReceiver {
            C2129b() {
                C2127b.this = r4;
            }

            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                if (!"android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                    return;
                }
                synchronized (C2127b.this.f8443a) {
                    StringBuilder sb = new StringBuilder("Received noisy intent, intent=");
                    sb.append(intent);
                    sb.append(", registered=");
                    sb.append(C2127b.this.f8447e);
                    sb.append(", attr=");
                    sb.append(C2127b.this.f8445c);
                    if (C2127b.this.f8447e && C2127b.this.f8445c != null) {
                        int m43264d = C2127b.this.f8445c.m43264d();
                        if (m43264d == 1) {
                            C2127b.this.f8444b.mo41366b();
                        } else if (m43264d != 14) {
                        } else {
                            C2127b.this.f8444b.m41365b(C2127b.this.f8444b.m41330x() * 0.2f);
                        }
                    }
                }
            }
        }

        C2127b(Context context, MediaPlayer mediaPlayer) {
            this.f8451i = context;
            this.f8444b = mediaPlayer;
            this.f8452j = (AudioManager) context.getSystemService("audio");
        }

        /* renamed from: e */
        private void m41298e() {
            if (this.f8453k == 0) {
                return;
            }
            new StringBuilder("abandoningAudioFocusLocked, currently=").append(this.f8453k);
            this.f8452j.abandonAudioFocus(this.f8450h);
            this.f8453k = 0;
            this.f8446d = false;
        }

        /* renamed from: f */
        private void m41297f() {
            if (!this.f8447e) {
                return;
            }
            this.f8451i.unregisterReceiver(this.f8448f);
            this.f8447e = false;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x00a2, code lost:
            if (r0.m43265c() == 1) goto L19;
         */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00d3 A[Catch: all -> 0x01a7, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x000f, B:7:0x001a, B:12:0x0039, B:13:0x003d, B:17:0x009d, B:22:0x00b1, B:23:0x00bc, B:26:0x00d3, B:28:0x00da, B:31:0x00e7, B:34:0x0108, B:35:0x0111, B:36:0x0146, B:36:0x0146, B:37:0x0149, B:42:0x016b, B:44:0x0179, B:49:0x0187, B:51:0x018e, B:53:0x01a4), top: B:61:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00e7 A[Catch: all -> 0x01a7, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x000f, B:7:0x001a, B:12:0x0039, B:13:0x003d, B:17:0x009d, B:22:0x00b1, B:23:0x00bc, B:26:0x00d3, B:28:0x00da, B:31:0x00e7, B:34:0x0108, B:35:0x0111, B:36:0x0146, B:36:0x0146, B:37:0x0149, B:42:0x016b, B:44:0x0179, B:49:0x0187, B:51:0x018e, B:53:0x01a4), top: B:61:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0187 A[Catch: all -> 0x01a7, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x000f, B:7:0x001a, B:12:0x0039, B:13:0x003d, B:17:0x009d, B:22:0x00b1, B:23:0x00bc, B:26:0x00d3, B:28:0x00da, B:31:0x00e7, B:34:0x0108, B:35:0x0111, B:36:0x0146, B:36:0x0146, B:37:0x0149, B:42:0x016b, B:44:0x0179, B:49:0x0187, B:51:0x018e, B:53:0x01a4), top: B:61:0x000f }] */
        @Override // androidx.media2.player.C2125a.AbstractC2126a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean mo41302a() {
            /*
                Method dump skipped, instructions count: 428
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.C2125a.C2127b.mo41302a():boolean");
        }

        @Override // androidx.media2.player.C2125a.AbstractC2126a
        /* renamed from: b */
        public final void mo41301b() {
            synchronized (this.f8443a) {
                this.f8446d = false;
                m41297f();
            }
        }

        @Override // androidx.media2.player.C2125a.AbstractC2126a
        /* renamed from: c */
        public final void mo41300c() {
            synchronized (this.f8443a) {
                m41298e();
                m41297f();
            }
        }

        @Override // androidx.media2.player.C2125a.AbstractC2126a
        /* renamed from: d */
        public final void mo41299d() {
            synchronized (this.f8443a) {
                m41297f();
                m41298e();
            }
        }
    }

    public C2125a(Context context, MediaPlayer mediaPlayer) {
        this.f8442a = new C2127b(context, mediaPlayer);
    }
}
