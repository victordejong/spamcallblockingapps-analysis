package kotlin.reflect.full;

import kotlin.Metadata;
import kotlin.jvm.internal.AbstractC18534z;
import kotlin.jvm.internal.C18496ac;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.AbstractC20107m;
import kotlin.reflect.KDeclarationContainer;
@Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.full.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/full/c.class */
public final /* synthetic */ class C18560c extends AbstractC18534z {

    /* renamed from: a */
    public static final AbstractC20107m f63640a = new C18560c();

    C18560c() {
    }

    @Override // kotlin.reflect.AbstractC20107m
    /* renamed from: a */
    public final Object mo1114a(Object obj) {
        return C18558b.m3829c((AbstractC18551c) obj);
    }

    @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
    public final String getName() {
        return "superclasses";
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    public final KDeclarationContainer getOwner() {
        return C18496ac.m3889a(C18558b.class, "kotlin-reflection");
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    public final String getSignature() {
        return "getSuperclasses(Lkotlin/reflect/KClass;)Ljava/util/List;";
    }
}
