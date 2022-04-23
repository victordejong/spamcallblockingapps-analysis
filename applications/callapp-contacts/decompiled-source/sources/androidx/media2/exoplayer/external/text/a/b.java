package androidx.media2.exoplayer.external.text.a;

import android.text.Layout;
import androidx.media2.exoplayer.external.text.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/b.class */
final class b extends a implements Comparable<b> {
    public final int p;

    public b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
        super(charSequence, alignment, f, i, i2, f2, i3, f3, z, i4);
        this.p = i5;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(b bVar) {
        int i = bVar.p;
        int i2 = this.p;
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }
}
