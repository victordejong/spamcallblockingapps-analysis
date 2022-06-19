package javax.validation;

import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes5-dex2jar.jar:javax/validation/ConstraintViolationException.class */
public class ConstraintViolationException extends ValidationException {

    /* renamed from: a */
    private final Set<AbstractC18217c<?>> f63327a;

    public ConstraintViolationException(String str, Set<? extends AbstractC18217c<?>> set) {
        super(str);
        if (set == null) {
            this.f63327a = null;
        } else {
            this.f63327a = new HashSet(set);
        }
    }

    public ConstraintViolationException(Set<? extends AbstractC18217c<?>> set) {
        this(set != null ? (String) set.stream().map(C18214x9135f338.INSTANCE).collect(Collectors.joining(", ")) : null, set);
    }

    /* renamed from: a */
    public static /* synthetic */ String m4303a(AbstractC18217c abstractC18217c) {
        if (abstractC18217c == null) {
            return JsonReaderKt.NULL;
        }
        return abstractC18217c.m4301b() + ": " + abstractC18217c.m4302a();
    }
}
