package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18297z;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/j.class */
public final class C19562j {

    /* renamed from: a */
    final C19582r f65566a;

    /* renamed from: b */
    final List<C19582r> f65567b;

    public C19562j() {
        this(null, null, 3, null);
    }

    public C19562j(C19582r c19582r, List<C19582r> parametersInfo) {
        C18524p.m3840d(parametersInfo, "parametersInfo");
        this.f65566a = c19582r;
        this.f65567b = parametersInfo;
    }

    public /* synthetic */ C19562j(C19582r c19582r, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : c19582r, (i & 2) != 0 ? C18297z.f63400a : list);
    }
}
