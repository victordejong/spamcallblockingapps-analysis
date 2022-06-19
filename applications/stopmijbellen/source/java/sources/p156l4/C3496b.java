package p156l4;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: l4.b */
/* loaded from: classes-dex2jar.jar:l4/b.class */
public final class C3496b {

    /* renamed from: a */
    public final Map f11608a = new HashMap();

    /* renamed from: b */
    public final AtomicBoolean f11609b = new AtomicBoolean(false);

    /* renamed from: a */
    public final boolean m2229a() {
        synchronized (this) {
            if (!this.f11609b.get()) {
                synchronized (this) {
                    this.f11608a.put("assetOnlyUpdates", Boolean.FALSE);
                }
            }
            Object obj = this.f11608a.get("assetOnlyUpdates");
            if (!(obj instanceof Boolean)) {
                return false;
            }
            return ((Boolean) obj).booleanValue();
        }
    }
}
