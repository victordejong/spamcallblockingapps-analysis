package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.aa;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final aa<j> f38321a = new aa<>("ResolutionAnchorProvider");

    public static final ab a(ab abVar) {
        p.d(abVar, "<this>");
        j jVar = (j) abVar.getCapability(f38321a);
        if (jVar == null) {
            return null;
        }
        return jVar.a(abVar);
    }
}
