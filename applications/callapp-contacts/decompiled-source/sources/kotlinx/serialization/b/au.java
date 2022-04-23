package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\b'\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0002H\u0004J\u0014\u0010\u0011\u001a\u00020\u0002*\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0004R\u0011\u0010\u0003\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0012"}, d2 = {"Lkotlinx/serialization/internal/NamedValueEncoder;", "Lkotlinx/serialization/internal/TaggedEncoder;", "", "rootName", "(Ljava/lang/String;)V", "getRootName", "()Ljava/lang/String;", "composeName", "parentName", "childName", "elementName", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "index", "", "nested", "nestedName", "getTag", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/au.class */
public abstract class au extends bm<String> {
    private final String rootName;

    public au() {
        this(null, 1, null);
    }

    public au(String rootName) {
        p.c(rootName, "rootName");
        this.rootName = rootName;
    }

    public /* synthetic */ au(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str);
    }

    public String composeName(String parentName, String childName) {
        p.c(parentName, "parentName");
        p.c(childName, "childName");
        if (parentName.length() == 0) {
            return childName;
        }
        return parentName + '.' + childName;
    }

    public String elementName(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        return descriptor.a(i);
    }

    public final String getRootName() {
        return this.rootName;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.b.bm
    public final String getTag(SerialDescriptor getTag, int i) {
        p.c(getTag, "$this$getTag");
        return nested(elementName(getTag, i));
    }

    protected final String nested(String nestedName) {
        p.c(nestedName, "nestedName");
        String currentTagOrNull = getCurrentTagOrNull();
        String str = currentTagOrNull;
        if (currentTagOrNull == null) {
            str = this.rootName;
        }
        return composeName(str, nestedName);
    }
}
