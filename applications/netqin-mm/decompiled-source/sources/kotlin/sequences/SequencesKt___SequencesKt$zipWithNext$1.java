package kotlin.sequences;

import kotlin.Pair;
import kotlin.jvm.internal.Lambda;
import p573f.C9928f;
import p573f.p590w.p591b.AbstractC10035p;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$zipWithNext$1.class */
public final class SequencesKt___SequencesKt$zipWithNext$1 extends Lambda implements AbstractC10035p<T, T, Pair<? extends T, ? extends T>> {
    public static final SequencesKt___SequencesKt$zipWithNext$1 INSTANCE = new SequencesKt___SequencesKt$zipWithNext$1();

    public SequencesKt___SequencesKt$zipWithNext$1() {
        super(2);
    }

    @Override // p573f.p590w.p591b.AbstractC10035p
    public final Pair<T, T> invoke(T t, T t2) {
        return C9928f.m1777a(t, t2);
    }
}
