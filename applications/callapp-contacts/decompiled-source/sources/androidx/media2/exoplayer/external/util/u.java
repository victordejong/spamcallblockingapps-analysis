package androidx.media2.exoplayer.external.util;

import androidx.media2.exoplayer.external.util.s;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/u.class */
final /* synthetic */ class u implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    static final Comparator f4181a = new u();

    private u() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compare;
        compare = Float.compare(((s.a) obj).f4179c, ((s.a) obj2).f4179c);
        return compare;
    }
}
