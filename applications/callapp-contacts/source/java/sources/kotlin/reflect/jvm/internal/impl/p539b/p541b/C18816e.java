package kotlin.reflect.jvm.internal.impl.p539b.p541b;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.b.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/e.class */
public final class C18816e {
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static final <M extends AbstractC19683h.AbstractC19687c<M>, T> T m3057a(AbstractC19683h.AbstractC19687c<M> abstractC19687c, AbstractC19683h.C19690e<M, T> extension) {
        C18524p.m3840d(abstractC19687c, "<this>");
        C18524p.m3840d(extension, "extension");
        if (abstractC19687c.m1693a((AbstractC19683h.C19690e<M, Type>) extension)) {
            return (T) abstractC19687c.m1690c(extension);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static final <M extends AbstractC19683h.AbstractC19687c<M>, T> T m3056a(AbstractC19683h.AbstractC19687c<M> abstractC19687c, AbstractC19683h.C19690e<M, List<T>> extension, int i) {
        C18524p.m3840d(abstractC19687c, "<this>");
        C18524p.m3840d(extension, "extension");
        if (i < abstractC19687c.m1691b(extension)) {
            return (T) abstractC19687c.m1692a(extension, i);
        }
        return null;
    }
}
