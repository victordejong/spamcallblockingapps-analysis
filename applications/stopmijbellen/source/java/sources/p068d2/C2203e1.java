package p068d2;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import com.google.ads.mediation.facebook.FacebookAdapter;
/* renamed from: d2.e1 */
/* loaded from: classes-dex2jar.jar:d2/e1.class */
public class C2203e1 extends ContentObserver {

    /* renamed from: a */
    public AudioManager f8029a;

    /* renamed from: b */
    public C2387q f8030b;

    public C2203e1(Handler handler, C2387q c2387q) {
        super(handler);
        Context context = C2408t.f8531a;
        if (context != null) {
            this.f8029a = (AudioManager) context.getSystemService("audio");
            this.f8030b = c2387q;
            context.getApplicationContext().getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
        }
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return false;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        AudioManager audioManager;
        C2387q c2387q;
        if (this.f8029a == null || (c2387q = this.f8030b) == null || c2387q.f8438c == null) {
            return;
        }
        double streamVolume = (audioManager.getStreamVolume(3) / 15.0f) * 100.0f;
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3747f(c2267f4, "audio_percentage", streamVolume);
        C2227e4.m3744i(c2267f4, "ad_session_id", this.f8030b.f8438c.f8302l);
        C2227e4.m3740m(c2267f4, FacebookAdapter.KEY_ID, this.f8030b.f8438c.f8300j);
        new C2410t0("AdContainer.on_audio_change", this.f8030b.f8438c.f8301k, c2267f4).m3586b();
    }
}
