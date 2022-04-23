package kotlin.reflect.jvm.internal.impl.b.b;

import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/e.class */
public final class e {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <M extends h.c<M>, T> T a(h.c<M> cVar, h.e<M, T> extension) {
        p.d(cVar, "<this>");
        p.d(extension, "extension");
        if (cVar.a((h.e<M, Type>) extension)) {
            return (T) cVar.c(extension);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <M extends h.c<M>, T> T a(h.c<M> cVar, h.e<M, List<T>> extension, int i) {
        p.d(cVar, "<this>");
        p.d(extension, "extension");
        if (i < cVar.b(extension)) {
            return (T) cVar.a(extension, i);
        }
        return null;
    }
}
