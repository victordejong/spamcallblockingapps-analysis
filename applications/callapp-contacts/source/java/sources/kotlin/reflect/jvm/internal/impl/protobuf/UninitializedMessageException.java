package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.List;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException.class */
public class UninitializedMessageException extends RuntimeException {

    /* renamed from: a */
    private final List<String> f65796a = null;

    public UninitializedMessageException(AbstractC19705p abstractC19705p) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }
}
