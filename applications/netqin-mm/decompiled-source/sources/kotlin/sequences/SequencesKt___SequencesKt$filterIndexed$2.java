package kotlin.sequences;

import kotlin.jvm.internal.Lambda;
import p573f.p577r.C9991z;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$filterIndexed$2.class */
public final class SequencesKt___SequencesKt$filterIndexed$2 extends Lambda implements AbstractC10031l<C9991z<? extends T>, T> {
    public static final SequencesKt___SequencesKt$filterIndexed$2 INSTANCE = new SequencesKt___SequencesKt$filterIndexed$2();

    public SequencesKt___SequencesKt$filterIndexed$2() {
        super(1);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    public final T invoke(C9991z<? extends T> zVar) {
        C10059q.m1637b(zVar, "it");
        return zVar.m1691b();
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke((C9991z<? extends Object>) obj);
    }
}
