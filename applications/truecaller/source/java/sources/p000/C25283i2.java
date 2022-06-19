package p000;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.truecaller.C2752R;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: i2 */
/* loaded from: classes4-dex2jar.jar:i2.class */
public final class C25283i2 extends m implements a<Drawable> {

    /* renamed from: b */
    public final /* synthetic */ int f70730b;

    /* renamed from: c */
    public final /* synthetic */ Object f70731c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25283i2(int i, Object obj) {
        super(0);
        this.f70730b = i;
        this.f70731c = obj;
    }

    public final Object invoke() {
        int i = this.f70730b;
        if (i != 0) {
            if (i != 1) {
                throw null;
            }
            return C19291g.m13535l0((Context) this.f70731c, C2752R.C2753drawable.ic_bubble_expand, 2130970253);
        }
        return C19291g.m13535l0((Context) this.f70731c, C2752R.C2753drawable.ic_bubble_collapse, 2130970253);
    }
}
