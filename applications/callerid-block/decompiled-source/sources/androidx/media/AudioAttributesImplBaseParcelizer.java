package androidx.media;

import androidx.versionedparcelable.AbstractC0520a;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public final class AudioAttributesImplBaseParcelizer {
    public static c read(AbstractC0520a aVar) {
        c cVar = new c();
        cVar.a = aVar.m11943p(cVar.a, 1);
        cVar.b = aVar.m11943p(cVar.b, 2);
        cVar.c = aVar.m11943p(cVar.c, 3);
        cVar.d = aVar.m11943p(cVar.d, 4);
        return cVar;
    }

    public static void write(c cVar, AbstractC0520a aVar) {
        aVar.m11935x(false, false);
        aVar.m11967F(cVar.a, 1);
        aVar.m11967F(cVar.b, 2);
        aVar.m11967F(cVar.c, 3);
        aVar.m11967F(cVar.d, 4);
    }
}
