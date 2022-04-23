package kotlinx.serialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u0010\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u0002\u001a\u0012\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0004¨\u0006\b"}, d2 = {"elementDescriptors", "", "Lkotlinx/serialization/SerialDescriptor;", "elementNames", "", "getElementIndexOrThrow", "", "name", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/o.class */
public final class o {
    public static final int a(SerialDescriptor getElementIndexOrThrow, String name) {
        p.c(getElementIndexOrThrow, "$this$getElementIndexOrThrow");
        p.c(name, "name");
        int a2 = getElementIndexOrThrow.a(name);
        if (a2 != -3) {
            return a2;
        }
        throw new SerializationException(getElementIndexOrThrow.a() + " does not contain element with name '" + name + '\'', null, 2, null);
    }

    public static final List<SerialDescriptor> a(SerialDescriptor elementDescriptors) {
        p.c(elementDescriptors, "$this$elementDescriptors");
        int d2 = elementDescriptors.d();
        ArrayList arrayList = new ArrayList(d2);
        for (int i = 0; i < d2; i++) {
            arrayList.add(elementDescriptors.b(i));
        }
        return arrayList;
    }

    public static final List<String> b(SerialDescriptor elementNames) {
        p.c(elementNames, "$this$elementNames");
        int d2 = elementNames.d();
        ArrayList arrayList = new ArrayList(d2);
        for (int i = 0; i < d2; i++) {
            arrayList.add(elementNames.a(i));
        }
        return arrayList;
    }
}
