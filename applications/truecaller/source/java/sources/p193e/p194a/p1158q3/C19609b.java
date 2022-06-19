package p193e.p194a.p1158q3;

import android.content.Context;
import android.media.ToneGenerator;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Vibrator;
import javax.inject.Inject;
import p193e.p1482g.p1483a.AbstractC22643f;
import p193e.p1482g.p1483a.C22641e;
import p193e.p194a.p437c.p578p.C10480a;
/* renamed from: e.a.q3.b */
/* loaded from: classes8-dex2jar.jar:e/a/q3/b.class */
public class C19609b {

    /* renamed from: h */
    public static final AbstractC22643f f54493h;

    /* renamed from: a */
    public final Context f54494a;

    /* renamed from: b */
    public final boolean f54495b;

    /* renamed from: c */
    public HandlerThread f54496c;

    /* renamed from: d */
    public Handler f54497d;

    /* renamed from: e */
    public ToneGenerator f54498e;

    /* renamed from: f */
    public Vibrator f54499f;
    @Inject

    /* renamed from: g */
    public AbstractC19617h f54500g;

    /* renamed from: e.a.q3.b$a */
    /* loaded from: classes8-dex2jar.jar:e/a/q3/b$a.class */
    public class HandlerThreadC19610a extends HandlerThread {

        /* renamed from: e.a.q3.b$a$a */
        /* loaded from: classes8-dex2jar.jar:e/a/q3/b$a$a.class */
        public class HandlerC19611a extends Handler {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public HandlerC19611a(Looper looper) {
                super(looper);
                HandlerThreadC19610a.this = r4;
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Vibrator vibrator;
                int i = message.what;
                if (i == 0) {
                    ToneGenerator toneGenerator = C19609b.this.f54498e;
                    if (toneGenerator != null) {
                        toneGenerator.startTone(message.arg1, message.arg2);
                    }
                } else if (i == 1) {
                    ToneGenerator toneGenerator2 = C19609b.this.f54498e;
                    if (toneGenerator2 != null) {
                        toneGenerator2.stopTone();
                    }
                } else if (i == 2 && (vibrator = C19609b.this.f54499f) != null) {
                    vibrator.vibrate(message.arg1);
                }
                super.handleMessage(message);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerThreadC19610a(String str) {
            super(str);
            C19609b.this = r4;
        }

        @Override // android.os.HandlerThread
        public void onLooperPrepared() {
            super.onLooperPrepared();
            C19609b.this.f54497d = new HandlerC19611a(getLooper());
        }

        @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                C19609b.this.f54498e = new ToneGenerator(8, 70);
            } catch (Exception e) {
                C10480a.m26057J1(e, "Could not create tone generator");
            }
            try {
                C19609b c19609b = C19609b.this;
                c19609b.f54499f = (Vibrator) c19609b.f54494a.getSystemService("vibrator");
            } catch (Exception e2) {
                C10480a.m26057J1(e2, "Could not create vibrator");
            }
            super.run();
            ToneGenerator toneGenerator = C19609b.this.f54498e;
            if (toneGenerator != null) {
                toneGenerator.stopTone();
                C19609b.this.f54498e.release();
                C19609b.this.f54498e = null;
            }
        }
    }

    static {
        C22641e c22641e = new C22641e(12, 0.99d);
        f54493h = c22641e;
        c22641e.m8001c('1', 1);
        c22641e.m8001c('2', 2);
        c22641e.m8001c('3', 3);
        c22641e.m8001c('4', 4);
        c22641e.m8001c('5', 5);
        c22641e.m8001c('6', 6);
        c22641e.m8001c('7', 7);
        c22641e.m8001c('8', 8);
        c22641e.m8001c('9', 9);
        c22641e.m8001c('0', 0);
        c22641e.m8001c('*', 10);
        c22641e.m8001c('#', 11);
    }

    public C19609b(Context context) {
        this.f54494a = context;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof AbstractC19616g) {
            ((AbstractC19616g) applicationContext).mo13097B().mo11153a(this);
        }
        this.f54495b = this.f54500g.mo13094c();
        HandlerThreadC19610a handlerThreadC19610a = new HandlerThreadC19610a("feedback");
        this.f54496c = handlerThreadC19610a;
        handlerThreadC19610a.start();
    }
}
