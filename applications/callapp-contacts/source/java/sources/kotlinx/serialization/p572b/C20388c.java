package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.SerializationException;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u0001\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0002\u001a \u0010��\u001a\u00020\u00012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00052\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005H��¨\u0006\u0007"}, m4298d2 = {"throwSubtypeNotRegistered", "", "subClassName", "", "baseClass", "Lkotlin/reflect/KClass;", "subClass", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.c */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/c.class */
public final class C20388c {
    /* renamed from: a */
    public static final Void m710a(String str, AbstractC18551c<?> abstractC18551c) {
        throw new SerializationException(str + " is not registered for polymorphic serialization in the scope of " + abstractC18551c, null, 2, null);
    }

    /* renamed from: a */
    public static final Void m709a(AbstractC18551c<?> subClass, AbstractC18551c<?> baseClass) {
        C18524p.m3841c(subClass, "subClass");
        C18524p.m3841c(baseClass, "baseClass");
        m710a(subClass.toString(), baseClass);
        throw null;
    }
}
