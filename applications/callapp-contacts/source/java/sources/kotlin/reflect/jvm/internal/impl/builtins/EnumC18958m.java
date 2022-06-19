package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* JADX WARN: Init of enum UBYTE can be incorrect */
/* JADX WARN: Init of enum UINT can be incorrect */
/* JADX WARN: Init of enum ULONG can be incorrect */
/* JADX WARN: Init of enum USHORT can be incorrect */
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.m */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/m.class */
public enum EnumC18958m {
    UBYTE(r0),
    USHORT(r0),
    UINT(r0),
    ULONG(r0);
    
    private final C18960a arrayClassId;
    private final C18960a classId;
    private final C18966e typeName;

    static {
        C18524p.m3843b(C18960a.m2756a("kotlin/UByte"), "fromString(\"kotlin/UByte\")");
        C18524p.m3843b(C18960a.m2756a("kotlin/UShort"), "fromString(\"kotlin/UShort\")");
        C18524p.m3843b(C18960a.m2756a("kotlin/UInt"), "fromString(\"kotlin/UInt\")");
        C18524p.m3843b(C18960a.m2756a("kotlin/ULong"), "fromString(\"kotlin/ULong\")");
    }

    EnumC18958m(C18960a c18960a) {
        this.classId = c18960a;
        C18966e m2751c = c18960a.m2751c();
        C18524p.m3843b(m2751c, "classId.shortClassName");
        this.typeName = m2751c;
        this.arrayClassId = new C18960a(c18960a.m2758a(), C18966e.m2719a(C18524p.m3847a(m2751c.m2721a(), (Object) "Array")));
    }

    public final C18960a getArrayClassId() {
        return this.arrayClassId;
    }

    public final C18960a getClassId() {
        return this.classId;
    }

    public final C18966e getTypeName() {
        return this.typeName;
    }
}
