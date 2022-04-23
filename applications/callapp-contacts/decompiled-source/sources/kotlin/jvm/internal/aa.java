package kotlin.jvm.internal;

import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.c;
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/aa.class */
public final class aa extends z {
    public aa(Class cls, String str, String str2, int i) {
        super(NO_RECEIVER, cls, str, str2, i);
    }

    public aa(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    public aa(KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(NO_RECEIVER, ((g) kDeclarationContainer).a(), str, str2, !(kDeclarationContainer instanceof c) ? 1 : 0);
    }

    @Override // kotlin.reflect.m
    public final Object a(Object obj) {
        return a().call(obj);
    }
}
