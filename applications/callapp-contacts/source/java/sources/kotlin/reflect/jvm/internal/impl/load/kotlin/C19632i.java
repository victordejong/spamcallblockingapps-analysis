package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19028au;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18816e;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18854f;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.C19766c;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19959q;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19906f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.EnumC19905e;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/i.class */
public final class C19632i implements AbstractC19906f {

    /* renamed from: b */
    public final C19766c f65735b;

    /* renamed from: c */
    public final AbstractC19646o f65736c;

    /* renamed from: d */
    private final C19766c f65737d;

    /* renamed from: e */
    private final C19959q<C18854f> f65738e;

    /* renamed from: f */
    private final boolean f65739f;

    /* renamed from: g */
    private final EnumC19905e f65740g;

    /* renamed from: h */
    private final String f65741h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C19632i(kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o r11, kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18748k r12, kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c r13, kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19959q<kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18854f> r14, boolean r15, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.EnumC19905e r16) {
        /*
            r10 = this;
            r0 = r11
            java.lang.String r1 = "kotlinClass"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r12
            java.lang.String r1 = "packageProto"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r13
            java.lang.String r1 = "nameResolver"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r16
            java.lang.String r1 = "abiStability"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r11
            kotlin.reflect.jvm.internal.impl.c.a r0 = r0.mo1875c()
            kotlin.reflect.jvm.internal.impl.resolve.c.c r0 = kotlin.reflect.jvm.internal.impl.resolve.p565c.C19766c.m1502a(r0)
            r17 = r0
            r0 = r17
            java.lang.String r1 = "byClassId(kotlinClass.classId)"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r11
            kotlin.reflect.jvm.internal.impl.load.kotlin.a.a r0 = r0.mo1879a()
            java.lang.String r0 = r0.m1942a()
            r18 = r0
            r0 = 0
            r19 = r0
            r0 = r18
            if (r0 != 0) goto L41
        L3e:
            goto L66
        L41:
            r0 = r18
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            int r0 = r0.length()
            if (r0 <= 0) goto L54
            r0 = 1
            r20 = r0
            goto L57
        L54:
            r0 = 0
            r20 = r0
        L57:
            r0 = r20
            if (r0 == 0) goto L3e
            r0 = r18
            kotlin.reflect.jvm.internal.impl.resolve.c.c r0 = kotlin.reflect.jvm.internal.impl.resolve.p565c.C19766c.m1503a(r0)
            r19 = r0
            goto L3e
        L66:
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
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.C19632i.<init>(kotlin.reflect.jvm.internal.impl.load.kotlin.o, kotlin.reflect.jvm.internal.impl.b.a$k, kotlin.reflect.jvm.internal.impl.b.b.c, kotlin.reflect.jvm.internal.impl.serialization.deserialization.q, boolean, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e):void");
    }

    public C19632i(C19766c className, C19766c c19766c, C18702a.C18748k packageProto, AbstractC18813c nameResolver, C19959q<C18854f> c19959q, boolean z, EnumC19905e abiStability, AbstractC19646o abstractC19646o) {
        String mo2927a;
        C18524p.m3840d(className, "className");
        C18524p.m3840d(packageProto, "packageProto");
        C18524p.m3840d(nameResolver, "nameResolver");
        C18524p.m3840d(abiStability, "abiStability");
        this.f65737d = className;
        this.f65735b = c19766c;
        this.f65738e = c19959q;
        this.f65739f = z;
        this.f65740g = abiStability;
        this.f65736c = abstractC19646o;
        AbstractC19683h.C19690e<C18702a.C18748k, Integer> packageModuleName = C18827a.f64340m;
        C18524p.m3843b(packageModuleName, "packageModuleName");
        Integer num = (Integer) C18816e.m3057a(packageProto, packageModuleName);
        String str = "main";
        if (num != null && (mo2927a = nameResolver.mo2927a(num.intValue())) != null) {
            str = mo2927a;
        }
        this.f65741h = str;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at
    /* renamed from: a */
    public final AbstractC19028au mo1859a() {
        AbstractC19028au NO_SOURCE_FILE = AbstractC19028au.f64760a;
        C18524p.m3843b(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19906f
    /* renamed from: b */
    public final String mo1334b() {
        return "Class '" + m1901d().m2748f().m2746a() + '\'';
    }

    /* renamed from: c */
    public final C18966e m1902c() {
        String c;
        String m1499c = this.f65737d.m1499c();
        C18524p.m3843b(m1499c, "className.internalName");
        c = C18425p.m3918c(m1499c, '/', m1499c);
        C18966e m2719a = C18966e.m2719a(c);
        C18524p.m3843b(m2719a, "identifier(className.internalName.substringAfterLast('/'))");
        return m2719a;
    }

    /* renamed from: d */
    public final C18960a m1901d() {
        return new C18960a(this.f65737d.m1500b(), m1902c());
    }

    public final String toString() {
        return ((Object) getClass().getSimpleName()) + ": " + this.f65737d;
    }
}
