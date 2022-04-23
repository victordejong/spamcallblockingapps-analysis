package kotlin.jvm.internal;

import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.c;
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/w.class */
public final class w extends v {
    public w(Class cls, String str, String str2, int i) {
        super(NO_RECEIVER, cls, str, str2, i);
    }

    public w(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    public w(KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(NO_RECEIVER, ((g) kDeclarationContainer).a(), str, str2, !(kDeclarationContainer instanceof c) ? 1 : 0);
    }

    @Override // kotlin.reflect.m
    public final Object a(Object obj) {
        return a().call(obj);
    }
}
