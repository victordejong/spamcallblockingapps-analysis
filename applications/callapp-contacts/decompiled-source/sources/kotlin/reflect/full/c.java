package kotlin.reflect.full;

import kotlin.Metadata;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.z;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.m;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/full/c.class */
public final /* synthetic */ class c extends z {

    /* renamed from: a  reason: collision with root package name */
    public static final m f36825a = new c();

    c() {
    }

    @Override // kotlin.reflect.m
    public final Object a(Object obj) {
        return b.c((kotlin.reflect.c) obj);
    }

    @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
    public final String getName() {
        return "superclasses";
    }

    @Override // kotlin.jvm.internal.e
    public final KDeclarationContainer getOwner() {
        return ac.a(b.class, "kotlin-reflection");
    }

    @Override // kotlin.jvm.internal.e
    public final String getSignature() {
        return "getSuperclasses(Lkotlin/reflect/KClass;)Ljava/util/List;";
    }
}
