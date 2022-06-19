package p193e.p194a.p195a.p200c.p222s8;

import android.media.AudioManager;
import s1.z.c.l;
/* renamed from: e.a.a.c.s8.d */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/s8/d.class */
public final class C5727d implements AbstractC5726c {

    /* renamed from: a */
    public final AudioManager.OnAudioFocusChangeListener f19188a;

    public C5727d(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        l.e(onAudioFocusChangeListener, "listener");
        this.f19188a = onAudioFocusChangeListener;
    }

    @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5726c
    /* renamed from: a */
    public void mo32755a(AudioManager audioManager) {
        l.e(audioManager, "audioManager");
        audioManager.abandonAudioFocus(this.f19188a);
    }
}
