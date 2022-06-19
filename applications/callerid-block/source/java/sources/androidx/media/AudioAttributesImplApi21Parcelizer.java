package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.AbstractC0520a;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public final class AudioAttributesImplApi21Parcelizer {
    public static b read(AbstractC0520a abstractC0520a) {
        b bVar = new b();
        bVar.a = (AudioAttributes) abstractC0520a.m11941r(bVar.a, 1);
        bVar.b = abstractC0520a.m11943p(bVar.b, 2);
        return bVar;
    }

    public static void write(b bVar, AbstractC0520a abstractC0520a) {
        abstractC0520a.m11935x(false, false);
        abstractC0520a.m11965H(bVar.a, 1);
        abstractC0520a.m11967F(bVar.b, 2);
    }
}
