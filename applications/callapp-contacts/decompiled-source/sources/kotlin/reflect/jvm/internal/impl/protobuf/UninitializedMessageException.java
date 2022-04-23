package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.List;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException.class */
public class UninitializedMessageException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f38109a = null;

    public UninitializedMessageException(p pVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }
}
