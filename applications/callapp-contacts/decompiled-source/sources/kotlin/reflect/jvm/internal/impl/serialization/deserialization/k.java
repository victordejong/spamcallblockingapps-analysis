package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.b.b.g;
import kotlin.reflect.jvm.internal.impl.b.b.i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final j f38445a;

    /* renamed from: b  reason: collision with root package name */
    public final c f38446b;

    /* renamed from: c  reason: collision with root package name */
    public final kotlin.reflect.jvm.internal.impl.descriptors.k f38447c;

    /* renamed from: d  reason: collision with root package name */
    public final g f38448d;
    final i e;
    final f f;
    public final aa g;
    public final t h;
    private final a i;

    /* JADX WARN: Code restructure failed: missing block: B:6:0x008e, code lost:
        if (r13 == null) goto L_0x007f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public k(kotlin.reflect.jvm.internal.impl.serialization.deserialization.j r13, kotlin.reflect.jvm.internal.impl.b.b.c r14, kotlin.reflect.jvm.internal.impl.descriptors.k r15, kotlin.reflect.jvm.internal.impl.b.b.g r16, kotlin.reflect.jvm.internal.impl.b.b.i r17, kotlin.reflect.jvm.internal.impl.b.b.a r18, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f r19, kotlin.reflect.jvm.internal.impl.serialization.deserialization.aa r20, java.util.List<kotlin.reflect.jvm.internal.impl.b.a.r> r21) {
        /*
            r12 = this;
            r0 = r13
            java.lang.String r1 = "components"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r14
            java.lang.String r1 = "nameResolver"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r15
            java.lang.String r1 = "containingDeclaration"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r16
            java.lang.String r1 = "typeTable"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r17
            java.lang.String r1 = "versionRequirementTable"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r18
            java.lang.String r1 = "metadataVersion"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r21
            java.lang.String r1 = "typeParameters"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r12
            r0.<init>()
            r0 = r12
            r1 = r13
            r0.f38445a = r1
            r0 = r12
            r1 = r14
            r0.f38446b = r1
            r0 = r12
            r1 = r15
            r0.f38447c = r1
            r0 = r12
            r1 = r16
            r0.f38448d = r1
            r0 = r12
            r1 = r17
            r0.e = r1
            r0 = r12
            r1 = r18
            r0.i = r1
            r0 = r12
            r1 = r19
            r0.f = r1
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Deserializer for \""
            r1.<init>(r2)
            r13 = r0
            r0 = r13
            r1 = r15
            kotlin.reflect.jvm.internal.impl.c.e r1 = r1.getName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = 34
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r0 = r0.toString()
            r14 = r0
            r0 = r19
            if (r0 != 0) goto L_0x0085
        L_0x007f:
            java.lang.String r0 = "[container not found]"
            r13 = r0
            goto L_0x0094
        L_0x0085:
            r0 = r19
            java.lang.String r0 = r0.b()
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L_0x0094
            goto L_0x007f
        L_0x0094:
            r0 = r12
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.aa r1 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.aa
            r2 = r1
            r3 = r12
            r4 = r20
            r5 = r21
            r6 = r14
            r7 = r13
            r8 = 0
            r9 = 32
            r10 = 0
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)
            r0.g = r1
            r0 = r12
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.t r1 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.t
            r2 = r1
            r3 = r12
            r2.<init>(r3)
            r0.h = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.k.<init>(kotlin.reflect.jvm.internal.impl.serialization.deserialization.j, kotlin.reflect.jvm.internal.impl.b.b.c, kotlin.reflect.jvm.internal.impl.descriptors.k, kotlin.reflect.jvm.internal.impl.b.b.g, kotlin.reflect.jvm.internal.impl.b.b.i, kotlin.reflect.jvm.internal.impl.b.b.a, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f, kotlin.reflect.jvm.internal.impl.serialization.deserialization.aa, java.util.List):void");
    }

    public final k a(kotlin.reflect.jvm.internal.impl.descriptors.k descriptor, List<a.r> typeParameterProtos, c nameResolver, g typeTable, i versionRequirementTable, kotlin.reflect.jvm.internal.impl.b.b.a version) {
        p.d(descriptor, "descriptor");
        p.d(typeParameterProtos, "typeParameterProtos");
        p.d(nameResolver, "nameResolver");
        p.d(typeTable, "typeTable");
        p.d(versionRequirementTable, "versionRequirementTable");
        p.d(version, "metadataVersion");
        j jVar = this.f38445a;
        p.d(version, "version");
        p.d(version, "version");
        boolean z = true;
        if (version.e != 1 || version.f < 4) {
            z = false;
        }
        if (!z) {
            versionRequirementTable = this.e;
        }
        return new k(jVar, nameResolver, descriptor, typeTable, versionRequirementTable, version, this.f, this.g, typeParameterProtos);
    }
}
