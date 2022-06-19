package androidx.media;

import androidx.versionedparcelable.AbstractC0520a;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public final class AudioAttributesImplBaseParcelizer {
    public static c read(AbstractC0520a abstractC0520a) {
        c cVar = new c();
        cVar.a = abstractC0520a.m11943p(cVar.a, 1);
        cVar.b = abstractC0520a.m11943p(cVar.b, 2);
        cVar.c = abstractC0520a.m11943p(cVar.c, 3);
        cVar.d = abstractC0520a.m11943p(cVar.d, 4);
        return cVar;
    }

    public static void write(c cVar, AbstractC0520a abstractC0520a) {
        abstractC0520a.m11935x(false, false);
        abstractC0520a.m11967F(cVar.a, 1);
        abstractC0520a.m11967F(cVar.b, 2);
        abstractC0520a.m11967F(cVar.c, 3);
        abstractC0520a.m11967F(cVar.d, 4);
    }
}
