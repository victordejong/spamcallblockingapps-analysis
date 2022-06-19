package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.Arrays;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.EnumC18946h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/e.class */
public final class C19779e extends AbstractC19792n<Character> {
    public C19779e(char c) {
        super(Character.valueOf(c));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    /* renamed from: a */
    public final /* synthetic */ KotlinType mo1485a(AbstractC18999ab module) {
        C18524p.m3840d(module, "module");
        SimpleType m2831a = module.getBuiltIns().m2831a(EnumC18946h.CHAR);
        if (m2831a == null) {
            AbstractC18940g.m2819b(61);
        }
        C18524p.m3843b(m2831a, "module.builtIns.charType");
        return m2831a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    public final String toString() {
        String str;
        char charValue = mo1489a().charValue();
        char charValue2 = mo1489a().charValue();
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
        C18524p.m3843b(format, "java.lang.String.format(this, *args)");
        return format;
    }
}
