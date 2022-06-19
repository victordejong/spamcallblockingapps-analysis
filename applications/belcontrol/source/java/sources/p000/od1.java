package p000;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import p000.md1;
import p000.r71;
import p000.w91;
/* renamed from: od1 */
/* loaded from: classes3-dex2jar.jar:od1.class */
public class od1 extends md1 {
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007c -> B:20:0x0048). Please submit an issue!!! */
    @Override // p000.md1
    /* renamed from: b */
    public boolean mo928b(md1.EnumC1473b enumC1473b, Context context) {
        if (this.f7000b == 0) {
            this.f7000b = this.f6999a + 1;
        }
        if (enumC1473b != md1.EnumC1473b.PUSH_CONTEXT_RECEIVE) {
            return false;
        }
        if (TextUtils.isEmpty(this.f7003f) || TextUtils.isEmpty(r71.EnumC1638a.f7904K.m687i())) {
            return true;
        }
        if (fa1.m1827w()) {
            try {
                new me1().m1259f();
            } catch (Throwable th) {
            }
        }
        Bundle bundle = new Bundle();
        bundle.putString("Payload Type", "" + this.f7001c);
        w91.m275c(this, w91.EnumC1708a.PUSH_NOTIFICATION_EXECUTED, bundle);
        return true;
    }
}
