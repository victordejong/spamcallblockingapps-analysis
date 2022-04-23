package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.AbstractC0520a;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public final class AudioAttributesImplApi21Parcelizer {
    public static b read(AbstractC0520a aVar) {
        b bVar = new b();
        bVar.a = (AudioAttributes) aVar.m11941r(bVar.a, 1);
        bVar.b = aVar.m11943p(bVar.b, 2);
        return bVar;
    }

    public static void write(b bVar, AbstractC0520a aVar) {
        aVar.m11935x(false, false);
        aVar.m11965H(bVar.a, 1);
        aVar.m11967F(bVar.b, 2);
    }
}
