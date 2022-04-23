package androidx.media2.player;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import androidx.media.AudioAttributesCompat;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    final AbstractC0093a f4336a;

    /* renamed from: androidx.media2.player.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/a$a.class */
    interface AbstractC0093a {
        boolean a();

        void b();

        void c();

        void d();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/a$b.class */
    static final class b implements AbstractC0093a {

        /* renamed from: b  reason: collision with root package name */
        final MediaPlayer f4338b;

        /* renamed from: c  reason: collision with root package name */
        AudioAttributesCompat f4339c;

        /* renamed from: d  reason: collision with root package name */
        boolean f4340d;
        boolean e;
        private final Context i;
        private final AudioManager j;
        private int k;
        private final BroadcastReceiver f = new C0095b();
        private final IntentFilter g = new IntentFilter("android.media.AUDIO_BECOMING_NOISY");
        private final AudioManager.OnAudioFocusChangeListener h = new C0094a();

        /* renamed from: a  reason: collision with root package name */
        final Object f4337a = new Object();

        /* renamed from: androidx.media2.player.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/a$b$a.class */
        final class C0094a implements AudioManager.OnAudioFocusChangeListener {

            /* renamed from: b  reason: collision with root package name */
            private float f4342b;

            /* renamed from: c  reason: collision with root package name */
            private float f4343c;

            C0094a() {
            }

            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i) {
                boolean z = false;
                if (i == -3) {
                    synchronized (b.this.f4337a) {
                        if (b.this.f4339c != null) {
                            if (b.this.f4339c.c() == 1) {
                                z = true;
                            }
                            if (z) {
                                b.this.f4338b.b();
                                return;
                            }
                            float x = b.this.f4338b.x();
                            float f = 0.2f * x;
                            synchronized (b.this.f4337a) {
                                this.f4342b = x;
                                this.f4343c = f;
                            }
                            b.this.f4338b.b(f);
                        }
                    }
                } else if (i == -2) {
                    b.this.f4338b.b();
                    synchronized (b.this.f4337a) {
                        b.this.f4340d = true;
                    }
                } else if (i == -1) {
                    b.this.f4338b.b();
                    synchronized (b.this.f4337a) {
                        b.this.f4340d = false;
                    }
                } else if (i == 1) {
                    if (b.this.f4338b.d() == 1) {
                        synchronized (b.this.f4337a) {
                            if (b.this.f4340d) {
                                b.this.f4338b.a();
                                return;
                            }
                            return;
                        }
                    }
                    float x2 = b.this.f4338b.x();
                    synchronized (b.this.f4337a) {
                        if (x2 == this.f4343c) {
                            b.this.f4338b.b(this.f4342b);
                        }
                    }
                }
            }
        }

        /* renamed from: androidx.media2.player.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/a$b$b.class */
        final class C0095b extends BroadcastReceiver {
            C0095b() {
            }

            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                    synchronized (b.this.f4337a) {
                        StringBuilder sb = new StringBuilder("Received noisy intent, intent=");
                        sb.append(intent);
                        sb.append(", registered=");
                        sb.append(b.this.e);
                        sb.append(", attr=");
                        sb.append(b.this.f4339c);
                        if (b.this.e && b.this.f4339c != null) {
                            int d2 = b.this.f4339c.d();
                            if (d2 == 1) {
                                b.this.f4338b.b();
                            } else if (d2 == 14) {
                                b.this.f4338b.b(b.this.f4338b.x() * 0.2f);
                            }
                        }
                    }
                }
            }
        }

        b(Context context, MediaPlayer mediaPlayer) {
            this.i = context;
            this.f4338b = mediaPlayer;
            this.j = (AudioManager) context.getSystemService("audio");
        }

        private void e() {
            if (this.k != 0) {
                new StringBuilder("abandoningAudioFocusLocked, currently=").append(this.k);
                this.j.abandonAudioFocus(this.h);
                this.k = 0;
                this.f4340d = false;
            }
        }

        private void f() {
            if (this.e) {
                this.i.unregisterReceiver(this.f);
                this.e = false;
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x00a2, code lost:
            if (r0.c() == 1) goto L_0x00a5;
         */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00d3 A[Catch: all -> 0x01a7, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x000f, B:7:0x001a, B:12:0x0039, B:13:0x003d, B:17:0x009d, B:22:0x00b1, B:23:0x00bc, B:26:0x00d3, B:28:0x00da, B:31:0x00e7, B:34:0x0108, B:35:0x0111, B:36:0x0146, B:36:0x0146, B:37:0x0149, B:42:0x016b, B:44:0x0179, B:49:0x0187, B:51:0x018e, B:53:0x01a4), top: B:61:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00e7 A[Catch: all -> 0x01a7, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x000f, B:7:0x001a, B:12:0x0039, B:13:0x003d, B:17:0x009d, B:22:0x00b1, B:23:0x00bc, B:26:0x00d3, B:28:0x00da, B:31:0x00e7, B:34:0x0108, B:35:0x0111, B:36:0x0146, B:36:0x0146, B:37:0x0149, B:42:0x016b, B:44:0x0179, B:49:0x0187, B:51:0x018e, B:53:0x01a4), top: B:61:0x000f }] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0187 A[Catch: all -> 0x01a7, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x000f, B:7:0x001a, B:12:0x0039, B:13:0x003d, B:17:0x009d, B:22:0x00b1, B:23:0x00bc, B:26:0x00d3, B:28:0x00da, B:31:0x00e7, B:34:0x0108, B:35:0x0111, B:36:0x0146, B:36:0x0146, B:37:0x0149, B:42:0x016b, B:44:0x0179, B:49:0x0187, B:51:0x018e, B:53:0x01a4), top: B:61:0x000f }] */
        @Override // androidx.media2.player.a.AbstractC0093a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean a() {
            /*
                Method dump skipped, instructions count: 428
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.a.b.a():boolean");
        }

        @Override // androidx.media2.player.a.AbstractC0093a
        public final void b() {
            synchronized (this.f4337a) {
                this.f4340d = false;
                f();
            }
        }

        @Override // androidx.media2.player.a.AbstractC0093a
        public final void c() {
            synchronized (this.f4337a) {
                e();
                f();
            }
        }

        @Override // androidx.media2.player.a.AbstractC0093a
        public final void d() {
            synchronized (this.f4337a) {
                f();
                e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, MediaPlayer mediaPlayer) {
        this.f4336a = new b(context, mediaPlayer);
    }
}
