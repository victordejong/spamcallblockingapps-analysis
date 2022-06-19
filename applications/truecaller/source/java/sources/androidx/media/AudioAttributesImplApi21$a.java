package androidx.media;

import android.media.AudioAttributes;
import androidx.media.AudioAttributesImpl;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21$a.class */
public class AudioAttributesImplApi21$a implements AudioAttributesImpl.AbstractC0223a {

    /* renamed from: a */
    public final AudioAttributes.Builder f927a = new AudioAttributes.Builder();

    /* renamed from: b */
    public AudioAttributesImplApi21$a mo42855a(int i) {
        int i2 = i;
        if (i == 16) {
            i2 = 12;
        }
        this.f927a.setUsage(i2);
        return this;
    }

    @Override // androidx.media.AudioAttributesImpl.AbstractC0223a
    public AudioAttributesImpl build() {
        return new AudioAttributesImplApi21(this.f927a.build());
    }
}
