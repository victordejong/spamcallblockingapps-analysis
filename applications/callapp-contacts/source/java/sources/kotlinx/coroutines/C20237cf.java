package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.coroutines.internal.C20281j;
import kotlinx.coroutines.internal.C20283l;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\b��\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ\b\u0010\r\u001a\u00020\u000bH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0006R\u0014\u0010\u0007\u001a\u00020��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, m4298d2 = {"Lkotlinx/coroutines/NodeList;", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "Lkotlinx/coroutines/Incomplete;", "()V", "isActive", "", "()Z", "list", "getList", "()Lkotlinx/coroutines/NodeList;", "getString", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "toString", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.cf */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cf.class */
public final class C20237cf extends C20281j implements AbstractC20213bq {
    /* renamed from: a */
    public final String m920a(String str) {
        C20237cf c20237cf;
        StringBuilder sb = new StringBuilder();
        sb.append("List{");
        sb.append(str);
        sb.append("}[");
        Object e = m854e();
        Objects.requireNonNull(e, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        C20283l c20283l = (C20283l) e;
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!(!C18524p.m3850a(c20283l, c20237cf))) {
                sb.append("]");
                String sb2 = sb.toString();
                C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
                return sb2;
            }
            boolean z3 = z2;
            if (c20283l instanceof AbstractC20224bz) {
                AbstractC20224bz abstractC20224bz = (AbstractC20224bz) c20283l;
                if (z2) {
                    z2 = false;
                } else {
                    sb.append(", ");
                }
                sb.append(abstractC20224bz);
                z3 = z2;
            }
            c20283l = c20283l.m853f();
            z = z3;
        }
    }

    @Override // kotlinx.coroutines.AbstractC20213bq
    public final C20237cf ax_() {
        return this;
    }

    @Override // kotlinx.coroutines.AbstractC20213bq
    /* renamed from: b */
    public final boolean mo919b() {
        return true;
    }

    @Override // kotlinx.coroutines.internal.C20283l
    public final String toString() {
        return C20159ao.m1082b() ? m920a("Active") : super.toString();
    }
}
