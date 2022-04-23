package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.e;
/* JADX WARN: Init of enum UBYTE can be incorrect */
/* JADX WARN: Init of enum UINT can be incorrect */
/* JADX WARN: Init of enum ULONG can be incorrect */
/* JADX WARN: Init of enum USHORT can be incorrect */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/m.class */
public enum m {
    UBYTE(r0),
    USHORT(r0),
    UINT(r0),
    ULONG(r0);
    
    private final a arrayClassId;
    private final a classId;
    private final e typeName;

    static {
        p.b(a.a("kotlin/UByte"), "fromString(\"kotlin/UByte\")");
        p.b(a.a("kotlin/UShort"), "fromString(\"kotlin/UShort\")");
        p.b(a.a("kotlin/UInt"), "fromString(\"kotlin/UInt\")");
        p.b(a.a("kotlin/ULong"), "fromString(\"kotlin/ULong\")");
    }

    m(a aVar) {
        this.classId = aVar;
        e c2 = aVar.c();
        p.b(c2, "classId.shortClassName");
        this.typeName = c2;
        this.arrayClassId = new a(aVar.a(), e.a(p.a(c2.a(), (Object) "Array")));
    }

    public final a getArrayClassId() {
        return this.arrayClassId;
    }

    public final a getClassId() {
        return this.classId;
    }

    public final e getTypeName() {
        return this.typeName;
    }
}
