package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.C20130x;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18400a;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.builtins.EnumC18946h;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19633j;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.C19766c;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.EnumC19767d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/l.class */
public final class C19639l implements AbstractC19638k<AbstractC19633j> {

    /* renamed from: a */
    public static final C19639l f65754a = new C19639l();

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.l$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/l$a.class */
    public final /* synthetic */ class C19640a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f65755a;

        static {
            int[] iArr = new int[EnumC18946h.values().length];
            iArr[EnumC18946h.BOOLEAN.ordinal()] = 1;
            iArr[EnumC18946h.CHAR.ordinal()] = 2;
            iArr[EnumC18946h.BYTE.ordinal()] = 3;
            iArr[EnumC18946h.SHORT.ordinal()] = 4;
            iArr[EnumC18946h.INT.ordinal()] = 5;
            iArr[EnumC18946h.FLOAT.ordinal()] = 6;
            iArr[EnumC18946h.LONG.ordinal()] = 7;
            iArr[EnumC18946h.DOUBLE.ordinal()] = 8;
            f65755a = iArr;
        }
    }

    private C19639l() {
    }

    /* renamed from: c */
    public AbstractC19633j mo1890a(String representation) {
        EnumC19767d enumC19767d;
        C18524p.m3840d(representation, "representation");
        String endsWith = representation;
        boolean z = endsWith.length() > 0;
        if (!C20130x.f66532a || z) {
            char charAt = representation.charAt(0);
            EnumC19767d[] values = EnumC19767d.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    enumC19767d = null;
                    break;
                }
                enumC19767d = values[i];
                if (enumC19767d.getDesc().charAt(0) == charAt) {
                    break;
                }
                i++;
            }
            if (enumC19767d != null) {
                return new AbstractC19633j.C19637d(enumC19767d);
            }
            if (charAt == 'V') {
                return new AbstractC19633j.C19637d(null);
            }
            if (charAt == '[') {
                String substring = representation.substring(1);
                C18524p.m3843b(substring, "(this as java.lang.String).substring(startIndex)");
                return new AbstractC19633j.C19634a(mo1890a(substring));
            }
            boolean z2 = false;
            if (charAt == 'L') {
                C18524p.m3840d(endsWith, "$this$endsWith");
                z2 = false;
                if (endsWith.length() > 0 && C18400a.m3997a(endsWith.charAt(C18425p.m3915d((CharSequence) endsWith)), ';', false)) {
                    z2 = true;
                }
            }
            if (!C20130x.f66532a || z2) {
                String substring2 = representation.substring(1, representation.length() - 1);
                C18524p.m3843b(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                return new AbstractC19633j.C19636c(substring2);
            }
            throw new AssertionError("Type that is not primitive nor array should be Object, but '" + representation + "' was found");
        }
        throw new AssertionError("empty string as JvmType");
    }

    /* renamed from: d */
    private static AbstractC19633j.C19636c m1884d(String internalName) {
        C18524p.m3840d(internalName, "internalName");
        return new AbstractC19633j.C19636c(internalName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19638k
    /* renamed from: a */
    public final /* synthetic */ AbstractC19633j mo1892a() {
        return m1884d("java/lang/Class");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19638k
    /* renamed from: a */
    public final /* synthetic */ AbstractC19633j mo1891a(AbstractC19633j abstractC19633j) {
        AbstractC19633j possiblyPrimitiveType = abstractC19633j;
        C18524p.m3840d(possiblyPrimitiveType, "possiblyPrimitiveType");
        AbstractC19633j.C19636c c19636c = possiblyPrimitiveType;
        if (possiblyPrimitiveType instanceof AbstractC19633j.C19637d) {
            AbstractC19633j.C19637d c19637d = (AbstractC19633j.C19637d) possiblyPrimitiveType;
            c19636c = possiblyPrimitiveType;
            if (c19637d.f65753b != null) {
                String m1499c = C19766c.m1501a(c19637d.f65753b.getWrapperFqName()).m1499c();
                C18524p.m3843b(m1499c, "byFqNameWithoutInnerClasses(possiblyPrimitiveType.jvmPrimitiveType.wrapperFqName).internalName");
                c19636c = m1884d(m1499c);
            }
        }
        return c19636c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19638k
    /* renamed from: a */
    public final /* synthetic */ AbstractC19633j mo1889a(EnumC18946h primitiveType) {
        AbstractC19633j.C19637d c19637d;
        AbstractC19633j.C19637d c19637d2;
        AbstractC19633j.C19637d c19637d3;
        AbstractC19633j.C19637d c19637d4;
        AbstractC19633j.C19637d c19637d5;
        AbstractC19633j.C19637d c19637d6;
        AbstractC19633j.C19637d c19637d7;
        AbstractC19633j.C19637d c19637d8;
        C18524p.m3840d(primitiveType, "primitiveType");
        switch (C19640a.f65755a[primitiveType.ordinal()]) {
            case 1:
                AbstractC19633j.C19635b c19635b = AbstractC19633j.f65742a;
                c19637d = AbstractC19633j.f65743b;
                return c19637d;
            case 2:
                AbstractC19633j.C19635b c19635b2 = AbstractC19633j.f65742a;
                c19637d2 = AbstractC19633j.f65744c;
                return c19637d2;
            case 3:
                AbstractC19633j.C19635b c19635b3 = AbstractC19633j.f65742a;
                c19637d3 = AbstractC19633j.f65745d;
                return c19637d3;
            case 4:
                AbstractC19633j.C19635b c19635b4 = AbstractC19633j.f65742a;
                c19637d4 = AbstractC19633j.f65746e;
                return c19637d4;
            case 5:
                AbstractC19633j.C19635b c19635b5 = AbstractC19633j.f65742a;
                c19637d5 = AbstractC19633j.f65747f;
                return c19637d5;
            case 6:
                AbstractC19633j.C19635b c19635b6 = AbstractC19633j.f65742a;
                c19637d6 = AbstractC19633j.f65748g;
                return c19637d6;
            case 7:
                AbstractC19633j.C19635b c19635b7 = AbstractC19633j.f65742a;
                c19637d7 = AbstractC19633j.f65749h;
                return c19637d7;
            case 8:
                AbstractC19633j.C19635b c19635b8 = AbstractC19633j.f65742a;
                c19637d8 = AbstractC19633j.f65750i;
                return c19637d8;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* renamed from: a */
    public final String mo1887b(AbstractC19633j type) {
        String desc;
        C18524p.m3840d(type, "type");
        if (type instanceof AbstractC19633j.C19634a) {
            return C18524p.m3847a("[", (Object) mo1887b(((AbstractC19633j.C19634a) type).f65751b));
        }
        if (type instanceof AbstractC19633j.C19637d) {
            EnumC19767d enumC19767d = ((AbstractC19633j.C19637d) type).f65753b;
            return (enumC19767d == null || (desc = enumC19767d.getDesc()) == null) ? "V" : desc;
        } else if (!(type instanceof AbstractC19633j.C19636c)) {
            throw new NoWhenBranchMatchedException();
        } else {
            return "L" + ((AbstractC19633j.C19636c) type).f65752b + ';';
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19638k
    /* renamed from: b */
    public final /* synthetic */ AbstractC19633j mo1886b(String str) {
        return m1884d(str);
    }
}
