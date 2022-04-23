package javax.validation;

import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes5-dex2jar.jar:javax/validation/ConstraintViolationException.class */
public class ConstraintViolationException extends ValidationException {

    /* renamed from: a  reason: collision with root package name */
    private final Set<c<?>> f36552a;

    public ConstraintViolationException(String str, Set<? extends c<?>> set) {
        super(str);
        if (set == null) {
            this.f36552a = null;
        } else {
            this.f36552a = new HashSet(set);
        }
    }

    public ConstraintViolationException(Set<? extends c<?>> set) {
        this(set != null ? (String) set.stream().map(_$$Lambda$ConstraintViolationException$yl4fKTbH_GKbNeGNHoi4iTSEUR4.INSTANCE).collect(Collectors.joining(", ")) : null, set);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String a(c cVar) {
        if (cVar == null) {
            return JsonReaderKt.NULL;
        }
        return cVar.b() + ": " + cVar.a();
    }
}
