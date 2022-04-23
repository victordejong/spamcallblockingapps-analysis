package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.List;
import kotlin.a.z;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    final r f37964a;

    /* renamed from: b  reason: collision with root package name */
    final List<r> f37965b;

    public j() {
        this(null, null, 3, null);
    }

    public j(r rVar, List<r> parametersInfo) {
        p.d(parametersInfo, "parametersInfo");
        this.f37964a = rVar;
        this.f37965b = parametersInfo;
    }

    public /* synthetic */ j(r rVar, z zVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : rVar, (i & 2) != 0 ? z.f36608a : zVar);
    }
}
