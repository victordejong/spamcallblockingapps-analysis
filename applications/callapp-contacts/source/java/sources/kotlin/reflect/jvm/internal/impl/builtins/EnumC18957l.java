package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* JADX WARN: Init of enum UBYTEARRAY can be incorrect */
/* JADX WARN: Init of enum UINTARRAY can be incorrect */
/* JADX WARN: Init of enum ULONGARRAY can be incorrect */
/* JADX WARN: Init of enum USHORTARRAY can be incorrect */
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/l.class */
public enum EnumC18957l {
    UBYTEARRAY(r0),
    USHORTARRAY(r0),
    UINTARRAY(r0),
    ULONGARRAY(r0);
    
    private final C18960a classId;
    private final C18966e typeName;

    static {
        C18524p.m3843b(C18960a.m2756a("kotlin/UByteArray"), "fromString(\"kotlin/UByteArray\")");
        C18524p.m3843b(C18960a.m2756a("kotlin/UShortArray"), "fromString(\"kotlin/UShortArray\")");
        C18524p.m3843b(C18960a.m2756a("kotlin/UIntArray"), "fromString(\"kotlin/UIntArray\")");
        C18524p.m3843b(C18960a.m2756a("kotlin/ULongArray"), "fromString(\"kotlin/ULongArray\")");
    }

    EnumC18957l(C18960a c18960a) {
        this.classId = c18960a;
        C18966e m2751c = c18960a.m2751c();
        C18524p.m3843b(m2751c, "classId.shortClassName");
        this.typeName = m2751c;
    }

    public final C18966e getTypeName() {
        return this.typeName;
    }
}
