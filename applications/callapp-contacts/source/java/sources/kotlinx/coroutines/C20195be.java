package kotlinx.coroutines;

import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\n\u001a\u00020\u000bH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0005R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\f"}, m4298d2 = {"Lkotlinx/coroutines/Empty;", "Lkotlinx/coroutines/Incomplete;", "isActive", "", "(Z)V", "()Z", "list", "Lkotlinx/coroutines/NodeList;", "getList", "()Lkotlinx/coroutines/NodeList;", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.be */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/be.class */
public final class C20195be implements AbstractC20213bq {

    /* renamed from: a */
    final boolean f66640a;

    public C20195be(boolean z) {
        this.f66640a = z;
    }

    @Override // kotlinx.coroutines.AbstractC20213bq
    public final C20237cf ax_() {
        return null;
    }

    @Override // kotlinx.coroutines.AbstractC20213bq
    /* renamed from: b */
    public final boolean mo919b() {
        return this.f66640a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Empty{");
        sb.append(this.f66640a ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
