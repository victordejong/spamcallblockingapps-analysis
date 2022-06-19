package p193e.p1577m.p1578a.p1596c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import com.google.android.exoplayer2.SimpleExoPlayer;
/* renamed from: e.m.a.c.r */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/r.class */
public final class C24808r {

    /* renamed from: a */
    public final Context f69531a;

    /* renamed from: b */
    public final RunnableC24809a f69532b;

    /* renamed from: c */
    public boolean f69533c;

    /* renamed from: e.m.a.c.r$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/r$a.class */
    public final class RunnableC24809a extends BroadcastReceiver implements Runnable {

        /* renamed from: a */
        public final AbstractC24810b f69534a;

        /* renamed from: b */
        public final Handler f69535b;

        public RunnableC24809a(Handler handler, AbstractC24810b abstractC24810b) {
            C24808r.this = r4;
            this.f69535b = handler;
            this.f69534a = abstractC24810b;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f69535b.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C24808r.this.f69533c) {
                SimpleExoPlayer.this.setPlayWhenReady(false);
            }
        }
    }

    /* renamed from: e.m.a.c.r$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/r$b.class */
    public interface AbstractC24810b {
    }

    public C24808r(Context context, Handler handler, AbstractC24810b abstractC24810b) {
        this.f69531a = context.getApplicationContext();
        this.f69532b = new RunnableC24809a(handler, abstractC24810b);
    }

    /* renamed from: a */
    public void m4499a(boolean z) {
        if (z && !this.f69533c) {
            this.f69531a.registerReceiver(this.f69532b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.f69533c = true;
        } else if (z || !this.f69533c) {
        } else {
            this.f69531a.unregisterReceiver(this.f69532b);
            this.f69533c = false;
        }
    }
}
