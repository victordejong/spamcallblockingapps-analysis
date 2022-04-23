package p012b.p076s.p116d;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
import android.support.p009v4.media.session.PlaybackStateCompat;
import android.view.KeyEvent;
import androidx.media2.common.MediaMetadata;
import androidx.media2.session.MediaSession;
import androidx.media2.session.MediaSessionService;
import com.facebook.ads.AdError;
import java.util.List;
import p012b.p042i.p043h.C0857h;
import p012b.p042i.p044i.C0869a;
import p012b.p074r.p075j.C1153a;
/* renamed from: b.s.d.g */
/* loaded from: classes-dex2jar.jar:b/s/d/g.class */
public class C1792g extends MediaSession.AbstractC0426d.AbstractC0427a {

    /* renamed from: a */
    public final MediaSessionService f7213a;

    /* renamed from: b */
    public final NotificationManager f7214b;

    /* renamed from: c */
    public final String f7215c;

    /* renamed from: d */
    public final Intent f7216d;

    /* renamed from: e */
    public final C0857h.C0858a f7217e = m32093a(C1798j.media_session_service_notification_ic_play, C1799k.play_button_content_description, 4);

    /* renamed from: f */
    public final C0857h.C0858a f7218f = m32093a(C1798j.media_session_service_notification_ic_pause, C1799k.pause_button_content_description, 2);

    /* renamed from: g */
    public final C0857h.C0858a f7219g = m32093a(C1798j.media_session_service_notification_ic_skip_to_previous, C1799k.skip_to_previous_item_button_content_description, 16);

    /* renamed from: h */
    public final C0857h.C0858a f7220h = m32093a(C1798j.media_session_service_notification_ic_skip_to_next, C1799k.skip_to_next_item_button_content_description, 32);

    public C1792g(MediaSessionService mediaSessionService) {
        this.f7213a = mediaSessionService;
        MediaSessionService mediaSessionService2 = this.f7213a;
        this.f7216d = new Intent(mediaSessionService2, mediaSessionService2.getClass());
        this.f7214b = (NotificationManager) this.f7213a.getSystemService("notification");
        this.f7215c = this.f7213a.getResources().getString(C1799k.default_notification_channel_name);
    }

    /* renamed from: a */
    public static boolean m32094a(int i) {
        boolean z = true;
        if (i != 1) {
            z = true;
            if (i != 0) {
                z = i == 3;
            }
        }
        return z;
    }

    /* renamed from: a */
    public final PendingIntent m32092a(long j) {
        int a = PlaybackStateCompat.m39234a(j);
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        MediaSessionService mediaSessionService = this.f7213a;
        intent.setComponent(new ComponentName(mediaSessionService, mediaSessionService.getClass()));
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, a));
        return (Build.VERSION.SDK_INT < 26 || j == 2) ? PendingIntent.getService(this.f7213a, a, intent, 0) : PendingIntent.getForegroundService(this.f7213a, a, intent, 0);
    }

    /* renamed from: a */
    public MediaSessionService.C0428a m32091a(MediaSession mediaSession) {
        MediaMetadata i;
        m32095a();
        C0857h.C0861d dVar = new C0857h.C0861d(this.f7213a, "default_channel_id");
        dVar.m35746a(this.f7219g);
        if (mediaSession.m37745z0().mo37837h() == 2) {
            dVar.m35746a(this.f7218f);
        } else {
            dVar.m35746a(this.f7217e);
        }
        dVar.m35746a(this.f7220h);
        if (!(mediaSession.m37745z0().mo37851c() == null || (i = mediaSession.m37745z0().mo37851c().m38232i()) == null)) {
            CharSequence e = i.m38226e("android.media.metadata.DISPLAY_TITLE");
            CharSequence charSequence = e;
            if (e == null) {
                charSequence = i.m38226e("android.media.metadata.TITLE");
            }
            dVar.m35737b(charSequence);
            dVar.m35744a(i.m38226e("android.media.metadata.ARTIST"));
            dVar.m35738b(i.m38229b("android.media.metadata.ALBUM_ART"));
        }
        C1153a aVar = new C1153a();
        aVar.m34571a(m32092a(1L));
        aVar.m34570a(mediaSession.m37752C1().m39247b());
        aVar.m34567a(1);
        dVar.m35748a(mediaSession.m37751a().m37739u1());
        dVar.m35739b(m32092a(1L));
        dVar.m35728d(true);
        dVar.m35734c(m32089b());
        dVar.m35745a(aVar);
        dVar.m35730d(1);
        dVar.m35732c(false);
        return new MediaSessionService.C0428a(AdError.NO_FILL_ERROR_CODE, dVar.m35753a());
    }

    /* renamed from: a */
    public final C0857h.C0858a m32093a(int i, int i2, long j) {
        return new C0857h.C0858a(i, this.f7213a.getResources().getText(i2), m32092a(j));
    }

    /* renamed from: a */
    public final void m32095a() {
        if (Build.VERSION.SDK_INT >= 26 && this.f7214b.getNotificationChannel("default_channel_id") == null) {
            this.f7214b.createNotificationChannel(new NotificationChannel("default_channel_id", this.f7215c, 2));
        }
    }

    /* renamed from: a */
    public void m32090a(MediaSession mediaSession, int i) {
        MediaSessionService.C0428a b = this.f7213a.m37732b(mediaSession);
        if (b != null) {
            int b2 = b.m37730b();
            Notification a = b.m37731a();
            if (m32094a(i)) {
                m32088c();
                this.f7214b.notify(b2, a);
                return;
            }
            C0869a.m35692a(this.f7213a, this.f7216d);
            this.f7213a.startForeground(b2, a);
        }
    }

    /* renamed from: b */
    public final int m32089b() {
        int i = this.f7213a.getApplicationInfo().icon;
        return i != 0 ? i : C1798j.media_session_service_notification_ic_music_note;
    }

    /* renamed from: c */
    public final void m32088c() {
        List<MediaSession> b = this.f7213a.m37733b();
        boolean z = false;
        for (int i = 0; i < b.size(); i++) {
            if (!m32094a(b.get(i).m37745z0().mo37837h())) {
                return;
            }
        }
        if (Build.VERSION.SDK_INT < 21) {
            z = true;
        }
        this.f7213a.stopForeground(z);
    }
}
