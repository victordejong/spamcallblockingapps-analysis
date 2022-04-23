package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.e;
/* JADX WARN: Init of enum UBYTEARRAY can be incorrect */
/* JADX WARN: Init of enum UINTARRAY can be incorrect */
/* JADX WARN: Init of enum ULONGARRAY can be incorrect */
/* JADX WARN: Init of enum USHORTARRAY can be incorrect */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/l.class */
public enum l {
    UBYTEARRAY(r0),
    USHORTARRAY(r0),
    UINTARRAY(r0),
    ULONGARRAY(r0);
    
    private final a classId;
    private final e typeName;

    static {
        p.b(a.a("kotlin/UByteArray"), "fromString(\"kotlin/UByteArray\")");
        p.b(a.a("kotlin/UShortArray"), "fromString(\"kotlin/UShortArray\")");
        p.b(a.a("kotlin/UIntArray"), "fromString(\"kotlin/UIntArray\")");
        p.b(a.a("kotlin/ULongArray"), "fromString(\"kotlin/ULongArray\")");
    }

    l(a aVar) {
        this.classId = aVar;
        e c2 = aVar.c();
        p.b(c2, "classId.shortClassName");
        this.typeName = c2;
    }

    public final e getTypeName() {
        return this.typeName;
    }
}
