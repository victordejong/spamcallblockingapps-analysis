package p000;

import android.content.Context;
import android.text.TextUtils;
import com.kedlin.cca.core.sync.ServerSync;
import p000.md1;
import p000.r71;
/* renamed from: jd1 */
/* loaded from: classes3-dex2jar.jar:jd1.class */
public class jd1 extends md1 {
    @Override // p000.md1
    /* renamed from: b */
    public boolean mo928b(md1.EnumC1473b enumC1473b, Context context) {
        if (this.f7000b == 0) {
            this.f7000b = this.f6999a + 1;
        }
        if (enumC1473b != md1.EnumC1473b.PUSH_CONTEXT_RECEIVE) {
            return false;
        }
        if (TextUtils.isEmpty(r71.EnumC1638a.f7904K.m687i())) {
            return true;
        }
        r71.EnumC1638a.f7931X0.m682n(Long.valueOf(System.currentTimeMillis() - r71.EnumC1638a.f7999w1.m689g()));
        ServerSync.m4357k();
        return true;
    }
}
