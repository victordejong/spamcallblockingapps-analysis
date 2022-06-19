package p000;

import android.media.AudioManager;
/* renamed from: k */
/* loaded from: classes2-dex2jar.jar:k.class */
public final class C25344k implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: b */
    public static final C25344k f70750b = new C25344k(0);

    /* renamed from: c */
    public static final C25344k f70751c = new C25344k(1);

    /* renamed from: d */
    public static final C25344k f70752d = new C25344k(2);

    /* renamed from: a */
    public final /* synthetic */ int f70753a;

    public C25344k(int i) {
        this.f70753a = i;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        int i2 = this.f70753a;
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            return;
        }
        throw null;
    }
}
