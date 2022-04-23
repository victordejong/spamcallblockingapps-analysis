package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.descriptors.au;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
import kotlin.reflect.jvm.internal.impl.resolve.c.c;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.q;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/i.class */
public final class i implements f {

    /* renamed from: b  reason: collision with root package name */
    public final c f38075b;

    /* renamed from: c  reason: collision with root package name */
    public final o f38076c;

    /* renamed from: d  reason: collision with root package name */
    private final c f38077d;
    private final q<kotlin.reflect.jvm.internal.impl.b.c.a.f> e;
    private final boolean f;
    private final e g;
    private final String h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public i(kotlin.reflect.jvm.internal.impl.load.kotlin.o r11, kotlin.reflect.jvm.internal.impl.b.a.k r12, kotlin.reflect.jvm.internal.impl.b.b.c r13, kotlin.reflect.jvm.internal.impl.serialization.deserialization.q<kotlin.reflect.jvm.internal.impl.b.c.a.f> r14, boolean r15, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e r16) {
        /*
            r10 = this;
            r0 = r11
            java.lang.String r1 = "kotlinClass"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r12
            java.lang.String r1 = "packageProto"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r13
            java.lang.String r1 = "nameResolver"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r16
            java.lang.String r1 = "abiStability"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r11
            kotlin.reflect.jvm.internal.impl.c.a r0 = r0.c()
            kotlin.reflect.jvm.internal.impl.resolve.c.c r0 = kotlin.reflect.jvm.internal.impl.resolve.c.c.a(r0)
            r17 = r0
            r0 = r17
            java.lang.String r1 = "byClassId(kotlinClass.classId)"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r11
            kotlin.reflect.jvm.internal.impl.load.kotlin.a.a r0 = r0.a()
            java.lang.String r0 = r0.a()
            r18 = r0
            r0 = 0
            r19 = r0
            r0 = r18
            if (r0 != 0) goto L_0x0041
        L_0x003e:
            goto L_0x0066
        L_0x0041:
            r0 = r18
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x0054
            r0 = 1
            r20 = r0
            goto L_0x0057
        L_0x0054:
            r0 = 0
            r20 = r0
        L_0x0057:
            r0 = r20
            if (r0 == 0) goto L_0x003e
            r0 = r18
            kotlin.reflect.jvm.internal.impl.resolve.c.c r0 = kotlin.reflect.jvm.internal.impl.resolve.c.c.a(r0)
            r19 = r0
            goto L_0x003e
        L_0x0066:
            r0 = r10
            r1 = r17
            r2 = r19
            r3 = r12
            r4 = r13
            r5 = r14
            r6 = r15
            r7 = r16
            r8 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.i.<init>(kotlin.reflect.jvm.internal.impl.load.kotlin.o, kotlin.reflect.jvm.internal.impl.b.a$k, kotlin.reflect.jvm.internal.impl.b.b.c, kotlin.reflect.jvm.internal.impl.serialization.deserialization.q, boolean, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e):void");
    }

    public i(c className, c cVar, a.k packageProto, kotlin.reflect.jvm.internal.impl.b.b.c nameResolver, q<kotlin.reflect.jvm.internal.impl.b.c.a.f> qVar, boolean z, e abiStability, o oVar) {
        String a2;
        p.d(className, "className");
        p.d(packageProto, "packageProto");
        p.d(nameResolver, "nameResolver");
        p.d(abiStability, "abiStability");
        this.f38077d = className;
        this.f38075b = cVar;
        this.e = qVar;
        this.f = z;
        this.g = abiStability;
        this.f38076c = oVar;
        h.e<a.k, Integer> packageModuleName = kotlin.reflect.jvm.internal.impl.b.c.a.m;
        p.b(packageModuleName, "packageModuleName");
        Integer num = (Integer) kotlin.reflect.jvm.internal.impl.b.b.e.a(packageProto, packageModuleName);
        String str = "main";
        if (!(num == null || (a2 = nameResolver.a(num.intValue())) == null)) {
            str = a2;
        }
        this.h = str;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.at
    public final au a() {
        au NO_SOURCE_FILE = au.f37402a;
        p.b(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f
    public final String b() {
        return "Class '" + d().f().a() + '\'';
    }

    public final kotlin.reflect.jvm.internal.impl.c.e c() {
        String c2;
        String c3 = this.f38077d.c();
        p.b(c3, "className.internalName");
        c2 = kotlin.h.p.c(c3, '/', c3);
        kotlin.reflect.jvm.internal.impl.c.e a2 = kotlin.reflect.jvm.internal.impl.c.e.a(c2);
        p.b(a2, "identifier(className.internalName.substringAfterLast('/'))");
        return a2;
    }

    public final kotlin.reflect.jvm.internal.impl.c.a d() {
        return new kotlin.reflect.jvm.internal.impl.c.a(this.f38077d.b(), c());
    }

    public final String toString() {
        return ((Object) getClass().getSimpleName()) + ": " + this.f38077d;
    }
}
