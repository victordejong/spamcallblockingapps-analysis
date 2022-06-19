package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.C18524p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/InvalidModuleException.class */
public final class InvalidModuleException extends IllegalStateException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InvalidModuleException(String message) {
        super(message);
        C18524p.m3840d(message, "message");
    }
}
