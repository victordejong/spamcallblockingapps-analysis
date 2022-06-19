package androidx.media2.exoplayer.external.util;

import androidx.media2.exoplayer.external.util.C2021s;
import java.util.Comparator;
/* renamed from: androidx.media2.exoplayer.external.util.u */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/u.class */
final /* synthetic */ class C2025u implements Comparator {

    /* renamed from: a */
    static final Comparator f8151a = new C2025u();

    private C2025u() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compare;
        compare = Float.compare(((C2021s.C2023a) obj).f8149c, ((C2021s.C2023a) obj2).f8149c);
        return compare;
    }
}
