package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Iterator;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b.class */
final class C19523b implements AbstractC18983g {

    /* renamed from: b */
    private final C18961b f65512b;

    public C19523b(C18961b fqNameToMatch) {
        C18524p.m3840d(fqNameToMatch, "fqNameToMatch");
        this.f65512b = fqNameToMatch;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: a */
    public final /* synthetic */ AbstractC18977c mo1340a(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        return C18524p.m3850a(fqName, this.f65512b) ? C19522a.f65511a : null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: a */
    public final boolean mo1275a() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: b */
    public final boolean mo1338b(C18961b c18961b) {
        return AbstractC18983g.C18986b.m2702b(this, c18961b);
    }

    @Override // java.lang.Iterable
    public final Iterator<AbstractC18977c> iterator() {
        return C18297z.f63400a.iterator();
    }
}
