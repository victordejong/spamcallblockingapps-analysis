package kotlinx.serialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u0010\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u0002\u001a\u0012\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0004¨\u0006\b"}, m4298d2 = {"elementDescriptors", "", "Lkotlinx/serialization/SerialDescriptor;", "elementNames", "", "getElementIndexOrThrow", "", "name", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.o */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/o.class */
public final class C20457o {
    /* renamed from: a */
    public static final int m657a(SerialDescriptor getElementIndexOrThrow, String name) {
        C18524p.m3841c(getElementIndexOrThrow, "$this$getElementIndexOrThrow");
        C18524p.m3841c(name, "name");
        int mo663a = getElementIndexOrThrow.mo663a(name);
        if (mo663a != -3) {
            return mo663a;
        }
        throw new SerializationException(getElementIndexOrThrow.mo665a() + " does not contain element with name '" + name + '\'', null, 2, null);
    }

    /* renamed from: a */
    public static final List<SerialDescriptor> m658a(SerialDescriptor elementDescriptors) {
        C18524p.m3841c(elementDescriptors, "$this$elementDescriptors");
        int mo659d = elementDescriptors.mo659d();
        ArrayList arrayList = new ArrayList(mo659d);
        for (int i = 0; i < mo659d; i++) {
            arrayList.add(elementDescriptors.mo661b(i));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static final List<String> m656b(SerialDescriptor elementNames) {
        C18524p.m3841c(elementNames, "$this$elementNames");
        int mo659d = elementNames.mo659d();
        ArrayList arrayList = new ArrayList(mo659d);
        for (int i = 0; i < mo659d; i++) {
            arrayList.add(elementNames.mo664a(i));
        }
        return arrayList;
    }
}
