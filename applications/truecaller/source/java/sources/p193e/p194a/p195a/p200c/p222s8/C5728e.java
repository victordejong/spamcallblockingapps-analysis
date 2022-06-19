package p193e.p194a.p195a.p200c.p222s8;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import s1.z.c.l;
/* renamed from: e.a.a.c.s8.e */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/s8/e.class */
public final class C5728e implements AbstractC5726c {

    /* renamed from: a */
    public final AudioFocusRequest f19189a;

    public C5728e(AudioFocusRequest audioFocusRequest) {
        l.e(audioFocusRequest, "audioFocusRequest");
        this.f19189a = audioFocusRequest;
    }

    @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5726c
    /* renamed from: a */
    public void mo32755a(AudioManager audioManager) {
        l.e(audioManager, "audioManager");
        audioManager.abandonAudioFocusRequest(this.f19189a);
    }
}
