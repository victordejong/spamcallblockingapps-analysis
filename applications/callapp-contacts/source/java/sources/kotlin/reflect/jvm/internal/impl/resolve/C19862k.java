package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.C18998aa;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/k.class */
public final class C19862k {

    /* renamed from: a */
    private static final C18998aa<AbstractC19859j> f66059a = new C18998aa<>("ResolutionAnchorProvider");

    /* renamed from: a */
    public static final AbstractC18999ab m1393a(AbstractC18999ab abstractC18999ab) {
        C18524p.m3840d(abstractC18999ab, "<this>");
        AbstractC19859j abstractC19859j = (AbstractC19859j) abstractC18999ab.getCapability(f66059a);
        if (abstractC19859j == null) {
            return null;
        }
        return abstractC19859j.mo1394a(abstractC18999ab);
    }
}
