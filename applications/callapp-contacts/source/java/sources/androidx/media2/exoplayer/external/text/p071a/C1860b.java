package androidx.media2.exoplayer.external.text.p071a;

import android.text.Layout;
import androidx.media2.exoplayer.external.text.C1856a;
/* renamed from: androidx.media2.exoplayer.external.text.a.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/b.class */
final class C1860b extends C1856a implements Comparable<C1860b> {

    /* renamed from: p */
    public final int f7449p;

    public C1860b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
        super(charSequence, alignment, f, i, i2, f2, i3, f3, z, i4);
        this.f7449p = i5;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(C1860b c1860b) {
        int i = c1860b.f7449p;
        int i2 = this.f7449p;
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }
}
