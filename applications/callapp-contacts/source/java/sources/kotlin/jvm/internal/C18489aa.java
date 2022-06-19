package kotlin.jvm.internal;

import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.KDeclarationContainer;
/* renamed from: kotlin.jvm.internal.aa */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/aa.class */
public final class C18489aa extends AbstractC18534z {
    public C18489aa(Class cls, String str, String str2, int i) {
        super(NO_RECEIVER, cls, str, str2, i);
    }

    public C18489aa(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    public C18489aa(KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(NO_RECEIVER, ((AbstractC18514g) kDeclarationContainer).mo1163a(), str, str2, !(kDeclarationContainer instanceof AbstractC18551c) ? 1 : 0);
    }

    @Override // kotlin.reflect.AbstractC20107m
    /* renamed from: a */
    public final Object mo1114a(Object obj) {
        return mo1115a().call(obj);
    }
}
