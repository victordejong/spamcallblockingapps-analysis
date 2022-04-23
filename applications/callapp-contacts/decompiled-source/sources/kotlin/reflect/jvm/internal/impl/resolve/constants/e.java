package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.Arrays;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/e.class */
public final class e extends n<Character> {
    public e(char c2) {
        super(Character.valueOf(c2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final /* synthetic */ KotlinType a(ab module) {
        p.d(module, "module");
        SimpleType a2 = module.getBuiltIns().a(h.CHAR);
        if (a2 == null) {
            g.b(61);
        }
        p.b(a2, "module.builtIns.charType");
        return a2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final String toString() {
        String str;
        char charValue = a().charValue();
        char charValue2 = a().charValue();
        if (charValue2 == '\b') {
            str = "\\b";
        } else if (charValue2 == '\t') {
            str = "\\t";
        } else if (charValue2 == '\n') {
            str = "\\n";
        } else if (charValue2 == '\f') {
            str = "\\f";
        } else if (charValue2 == '\r') {
            str = "\\r";
        } else {
            byte type = (byte) Character.getType(charValue2);
            boolean z = false;
            if (type != 0) {
                z = false;
                if (type != 13) {
                    z = false;
                    if (type != 14) {
                        z = false;
                        if (type != 15) {
                            z = false;
                            if (type != 16) {
                                z = false;
                                if (type != 18) {
                                    z = false;
                                    if (type != 19) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            str = z ? String.valueOf(charValue2) : "?";
        }
        String format = String.format("\\u%04X ('%s')", Arrays.copyOf(new Object[]{Integer.valueOf(charValue), str}, 2));
        p.b(format, "java.lang.String.format(this, *args)");
        return format;
    }
}
