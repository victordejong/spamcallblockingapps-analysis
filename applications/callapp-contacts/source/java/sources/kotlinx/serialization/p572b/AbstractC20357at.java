package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\b'\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0002H\u0004J\u0014\u0010\u0011\u001a\u00020\u0002*\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0004R\u0011\u0010\u0003\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0012"}, m4298d2 = {"Lkotlinx/serialization/internal/NamedValueDecoder;", "Lkotlinx/serialization/internal/TaggedDecoder;", "", "rootName", "(Ljava/lang/String;)V", "getRootName", "()Ljava/lang/String;", "composeName", "parentName", "childName", "elementName", "desc", "Lkotlinx/serialization/SerialDescriptor;", "index", "", "nested", "nestedName", "getTag", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.at */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/at.class */
public abstract class AbstractC20357at extends AbstractC20378bl<String> {
    private final String rootName;

    public AbstractC20357at() {
        this(null, 1, null);
    }

    public AbstractC20357at(String rootName) {
        C18524p.m3841c(rootName, "rootName");
        this.rootName = rootName;
    }

    public /* synthetic */ AbstractC20357at(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str);
    }

    public String composeName(String parentName, String childName) {
        C18524p.m3841c(parentName, "parentName");
        C18524p.m3841c(childName, "childName");
        if (parentName.length() == 0) {
            return childName;
        }
        return parentName + '.' + childName;
    }

    public String elementName(SerialDescriptor desc, int i) {
        C18524p.m3841c(desc, "desc");
        return desc.mo664a(i);
    }

    public final String getRootName() {
        return this.rootName;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20378bl
    public final String getTag(SerialDescriptor getTag, int i) {
        C18524p.m3841c(getTag, "$this$getTag");
        return nested(elementName(getTag, i));
    }

    protected final String nested(String nestedName) {
        C18524p.m3841c(nestedName, "nestedName");
        String currentTagOrNull = getCurrentTagOrNull();
        String str = currentTagOrNull;
        if (currentTagOrNull == null) {
            str = this.rootName;
        }
        return composeName(str, nestedName);
    }
}
