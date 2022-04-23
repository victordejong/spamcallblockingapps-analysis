package kotlinx.serialization;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.a.z;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010#\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u000f\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J3\u0010\u001f\u001a\u00020 \"\u0006\b��\u0010!\u0018\u00012\u0006\u0010\"\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010#\u001a\u00020\u0015H\u0087\bJ0\u0010\u001f\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u00102\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010#\u001a\u00020\u0015R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR \u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\rX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\tR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\rX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\tR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\rX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\tR\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\rX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\tR\u001a\u0010\u0017\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001eX\u0082\u0004¢\u0006\u0002\n��¨\u0006%"}, d2 = {"Lkotlinx/serialization/SerialDescriptorBuilder;", "", "serialName", "", "(Ljava/lang/String;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "setAnnotations", "(Ljava/util/List;)V", "elementAnnotations", "", "getElementAnnotations$kotlinx_serialization_runtime", "elementDescriptors", "Lkotlinx/serialization/SerialDescriptor;", "getElementDescriptors$kotlinx_serialization_runtime", "elementNames", "getElementNames$kotlinx_serialization_runtime", "elementOptionality", "", "getElementOptionality$kotlinx_serialization_runtime", "isNullable", "()Z", "setNullable", "(Z)V", "getSerialName", "()Ljava/lang/String;", "uniqueNames", "", "element", "", "T", "elementName", "isOptional", "descriptor", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    boolean f38999a;
    private final String h;

    /* renamed from: b  reason: collision with root package name */
    List<? extends Annotation> f39000b = z.f36608a;

    /* renamed from: c  reason: collision with root package name */
    final List<String> f39001c = new ArrayList();
    private final Set<String> g = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    final List<SerialDescriptor> f39002d = new ArrayList();
    final List<List<Annotation>> e = new ArrayList();
    final List<Boolean> f = new ArrayList();

    public l(String serialName) {
        p.c(serialName, "serialName");
        this.h = serialName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String elementName, SerialDescriptor descriptor, List<? extends Annotation> annotations, boolean z) {
        p.c(elementName, "elementName");
        p.c(descriptor, "descriptor");
        p.c(annotations, "annotations");
        if (this.g.add(elementName)) {
            this.f39001c.add(elementName);
            this.f39002d.add(descriptor);
            this.e.add(annotations);
            this.f.add(Boolean.FALSE);
            return;
        }
        throw new IllegalArgumentException(("Element with name '" + elementName + "' is already registered").toString());
    }
}
