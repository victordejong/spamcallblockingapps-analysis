package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.coroutines.internal.j;
import kotlinx.coroutines.internal.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\b��\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ\b\u0010\r\u001a\u00020\u000bH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0006R\u0014\u0010\u0007\u001a\u00020��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/NodeList;", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "Lkotlinx/coroutines/Incomplete;", "()V", "isActive", "", "()Z", "list", "getList", "()Lkotlinx/coroutines/NodeList;", "getString", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "toString", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cf.class */
public final class cf extends j implements bq {
    public final String a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("List{");
        sb.append(str);
        sb.append("}[");
        cf cfVar = this;
        Object e = cfVar.e();
        Objects.requireNonNull(e, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        boolean z = true;
        for (l lVar = (l) e; !p.a(lVar, cfVar); lVar = lVar.f()) {
            z = z;
            if (lVar instanceof bz) {
                bz bzVar = (bz) lVar;
                if (z) {
                    z = false;
                } else {
                    sb.append(", ");
                }
                sb.append(bzVar);
            }
        }
        sb.append("]");
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // kotlinx.coroutines.bq
    public final cf ax_() {
        return this;
    }

    @Override // kotlinx.coroutines.bq
    public final boolean b() {
        return true;
    }

    @Override // kotlinx.coroutines.internal.l
    public final String toString() {
        return ao.b() ? a("Active") : super.toString();
    }
}
