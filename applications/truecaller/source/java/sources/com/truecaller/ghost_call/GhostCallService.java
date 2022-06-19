package com.truecaller.ghost_call;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.IBinder;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import androidx.core.graphics.drawable.IconCompat;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26444m;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1349x.AbstractC21373l;
import p193e.p194a.p1349x.AbstractC21385w;
import p193e.p194a.p1349x.AbstractServiceC21331e0;
import p193e.p194a.p1349x.C21383u;
import p193e.p194a.p849h4.AbstractC14920n;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b?\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J)\u0010\n\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0016\u0010\u0004R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010%\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0011\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010,\u001a\u00020&8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00103\u001a\u00020-8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010:\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006@"}, d2 = {"Lcom/truecaller/ghost_call/GhostCallService;", "Landroid/app/Service;", "Ls1/s;", "onCreate", "()V", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "p0", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "d", "f", "", "mute", AbstractC2405c.f7629a, "(Z)V", "e", "Ljava/util/TimerTask;", "j", "Ljava/util/TimerTask;", "autoCallEndTask", "Landroid/os/Vibrator;", "h", "Landroid/os/Vibrator;", "vibrationPlayer", "Le/a/x/l;", "Le/a/x/l;", "getGhostCallManager", "()Le/a/x/l;", "setGhostCallManager", "(Le/a/x/l;)V", "ghostCallManager", "Le/a/x/w;", "Le/a/x/w;", "getGhostCallSettings", "()Le/a/x/w;", "setGhostCallSettings", "(Le/a/x/w;)V", "ghostCallSettings", "Le/a/h4/n;", "Le/a/h4/n;", "getNotificationManager", "()Le/a/h4/n;", "setNotificationManager", "(Le/a/h4/n;)V", "notificationManager", "Ljava/util/Timer;", "k", "Ljava/util/Timer;", "autoCallEndTimer", "i", "Ljava/lang/Integer;", "musicVolume", "Landroid/media/MediaPlayer;", "g", "Landroid/media/MediaPlayer;", "ringTonePlayer", "<init>", "ghost-call_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/ghost_call/GhostCallService.class */
public final class GhostCallService extends AbstractServiceC21331e0 {
    @Inject

    /* renamed from: d */
    public AbstractC21385w f12261d;
    @Inject

    /* renamed from: e */
    public AbstractC14920n f12262e;
    @Inject

    /* renamed from: f */
    public AbstractC21373l f12263f;

    /* renamed from: g */
    public MediaPlayer f12264g;

    /* renamed from: h */
    public Vibrator f12265h;

    /* renamed from: i */
    public Integer f12266i;

    /* renamed from: j */
    public TimerTask f12267j;

    /* renamed from: k */
    public Timer f12268k;

    /* renamed from: a */
    public static final Intent m35317a(Context context) {
        return new Intent(context, GhostCallService.class);
    }

    /* renamed from: b */
    public static final boolean m35316b() {
        return Build.VERSION.SDK_INT >= 26;
    }

    /* renamed from: c */
    public final void m35315c(boolean z) {
        if (C19291g.m13630F(this).getRingerMode() == 1) {
            return;
        }
        try {
            C19291g.m13630F(this).adjustStreamVolume(2, z ? -100 : 100, 0);
        } catch (SecurityException e) {
            e.toString();
        }
    }

    /* renamed from: d */
    public final void m35314d() {
        boolean z = false;
        try {
            MediaPlayer mediaPlayer = this.f12264g;
            if (mediaPlayer != null) {
                mediaPlayer.stop();
            }
            Integer num = this.f12266i;
            if (num != null) {
                C19291g.m13630F(this).setStreamVolume(3, num.intValue(), 0);
            }
            m35315c(false);
            Vibrator vibrator = this.f12265h;
            if (vibrator != null) {
                vibrator.cancel();
            }
            m35312f();
        } catch (Exception e) {
            e.toString();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            z = true;
        }
        if (z) {
            stopForeground(true);
        }
        stopSelf();
    }

    /* renamed from: e */
    public final void m35313e() {
        m35315c(false);
        MediaPlayer mediaPlayer = this.f12264g;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
        }
        MediaPlayer mediaPlayer2 = new MediaPlayer();
        mediaPlayer2.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).setUsage(1).build());
        mediaPlayer2.setDataSource(getApplicationContext(), Settings.System.DEFAULT_RINGTONE_URI);
        mediaPlayer2.setLooping(true);
        mediaPlayer2.prepare();
        mediaPlayer2.start();
        this.f12264g = mediaPlayer2;
        this.f12266i = Integer.valueOf(C19291g.m13630F(this).getStreamVolume(3));
        int streamVolume = C19291g.m13630F(this).getStreamVolume(2);
        C19291g.m13630F(this).setStreamVolume(3, (C19291g.m13630F(this).getStreamMaxVolume(3) * streamVolume) / C19291g.m13630F(this).getStreamMaxVolume(2), 0);
    }

    /* renamed from: f */
    public final void m35312f() {
        TimerTask timerTask = this.f12267j;
        if (timerTask != null) {
            timerTask.cancel();
        }
        Timer timer = this.f12268k;
        if (timer != null) {
            timer.cancel();
        }
        this.f12267j = null;
        this.f12268k = null;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // p193e.p194a.p1349x.AbstractServiceC21331e0, android.app.Service
    public void onCreate() {
        super.onCreate();
        int i = C4002R.C4004id.ghost_call_service_foreground_notification;
        AbstractC14920n abstractC14920n = this.f12262e;
        if (abstractC14920n == null) {
            l.l("notificationManager");
            throw null;
        }
        String mo19425a = abstractC14920n.mo19425a("caller_id");
        l.e(this, AnalyticsConstants.CONTEXT);
        Intent action = new Intent(this, GhostCallService.class).setAction("com.truecaller.ACTION_END_CALL_FROM_NOTIFICATION");
        l.d(action, "createServiceIntent(cont…D_CALL_FROM_NOTIFICATION)");
        C26444m m1875b = new C26444m.C26445a((IconCompat) null, getResources().getString(C4002R.string.PretendCallServiceEndCall), PendingIntent.getService(this, 1, action, 201326592)).m1875b();
        l.d(m1875b, "NotificationCompat.Actio…), pendingIntent).build()");
        C26450q c26450q = new C26450q(getApplicationContext(), mo19425a);
        c26450q.f74137R.icon = C4002R.C4003drawable.ic_notification_call_dark;
        c26450q.m1855n(getResources().getString(C4002R.string.PretendCallServiceTitle));
        c26450q.m1867b(m1875b);
        int i2 = C4002R.color.truecaller_blue_all_themes;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(this, i2);
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "NotificationCompat.Build…es))\n            .build()");
        startForeground(i, m1865d);
        Object systemService = getSystemService("vibrator");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.os.Vibrator");
        this.f12265h = (Vibrator) systemService;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String action = intent != null ? intent.getAction() : null;
        if (action != null) {
            switch (action.hashCode()) {
                case -913222492:
                    if (action.equals("com.truecaller.ACTION_END_CALL_FROM_NOTIFICATION")) {
                        AbstractC21373l abstractC21373l = this.f12263f;
                        if (abstractC21373l == null) {
                            l.l("ghostCallManager");
                            throw null;
                        }
                        abstractC21373l.mo9828x();
                        m35314d();
                        break;
                    }
                    break;
                case -780675453:
                    if (action.equals("com.truecaller.ACTION_END_CALL")) {
                        m35314d();
                        break;
                    }
                    break;
                case 1607167772:
                    if (action.equals("com.truecaller.ACTION_START_CALL")) {
                        try {
                            m35313e();
                            boolean z = true;
                            m35315c(true);
                            if (C19291g.m13630F(this).getRingerMode() == 1) {
                                long[] jArr = {0, 1000, 1000};
                                if (Build.VERSION.SDK_INT < 26) {
                                    z = false;
                                }
                                if (z) {
                                    Vibrator vibrator = this.f12265h;
                                    if (vibrator != null) {
                                        vibrator.vibrate(VibrationEffect.createWaveform(jArr, 0));
                                    }
                                } else {
                                    Vibrator vibrator2 = this.f12265h;
                                    if (vibrator2 != null) {
                                        vibrator2.vibrate(jArr, 0);
                                    }
                                }
                            }
                            m35312f();
                            this.f12267j = new C21383u(this);
                            Timer timer = new Timer();
                            this.f12268k = timer;
                            timer.schedule(this.f12267j, TimeUnit.MILLISECONDS.convert(60L, TimeUnit.SECONDS));
                            Context applicationContext = getApplicationContext();
                            l.d(applicationContext, "applicationContext");
                            l.e(applicationContext, AnalyticsConstants.CONTEXT);
                            Intent addFlags = new Intent(applicationContext, GhostInCallUIActivity.class).setFlags(268435456).addFlags(262144);
                            l.d(addFlags, "Intent(context, GhostInC…_ACTIVITY_NO_USER_ACTION)");
                            startActivity(addFlags);
                            break;
                        } catch (Exception e) {
                            e.toString();
                            break;
                        }
                    }
                    break;
                case 1829679490:
                    if (action.equals("com.truecaller.ACTION_ON_CALL_PICKED")) {
                        MediaPlayer mediaPlayer = this.f12264g;
                        if (mediaPlayer != null) {
                            mediaPlayer.stop();
                        }
                        Vibrator vibrator3 = this.f12265h;
                        if (vibrator3 != null) {
                            vibrator3.cancel();
                        }
                        m35312f();
                        break;
                    }
                    break;
            }
        }
        return super.onStartCommand(intent, i, i2);
    }
}
