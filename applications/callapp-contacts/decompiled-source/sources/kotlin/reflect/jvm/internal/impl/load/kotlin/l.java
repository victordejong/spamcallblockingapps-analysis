package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.load.kotlin.j;
import kotlin.reflect.jvm.internal.impl.resolve.c.c;
import kotlin.reflect.jvm.internal.impl.resolve.c.d;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/l.class */
final class l implements k<j> {

    /* renamed from: a  reason: collision with root package name */
    public static final l f38085a = new l();

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/l$a.class */
    public final /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f38086a;

        static {
            int[] iArr = new int[h.values().length];
            iArr[h.BOOLEAN.ordinal()] = 1;
            iArr[h.CHAR.ordinal()] = 2;
            iArr[h.BYTE.ordinal()] = 3;
            iArr[h.SHORT.ordinal()] = 4;
            iArr[h.INT.ordinal()] = 5;
            iArr[h.FLOAT.ordinal()] = 6;
            iArr[h.LONG.ordinal()] = 7;
            iArr[h.DOUBLE.ordinal()] = 8;
            f38086a = iArr;
        }
    }

    private l() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public j a(String representation) {
        d dVar;
        p.d(representation, "representation");
        String endsWith = representation;
        boolean z = endsWith.length() > 0;
        if (!x.f38657a || z) {
            char charAt = representation.charAt(0);
            d[] values = d.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    dVar = null;
                    break;
                }
                dVar = values[i];
                if (dVar.getDesc().charAt(0) == charAt) {
                    break;
                }
                i++;
            }
            if (dVar != null) {
                return new j.d(dVar);
            }
            if (charAt == 'V') {
                return new j.d(null);
            }
            if (charAt == '[') {
                String substring = representation.substring(1);
                p.b(substring, "(this as java.lang.String).substring(startIndex)");
                return new j.a(a(substring));
            }
            boolean z2 = false;
            if (charAt == 'L') {
                p.d(endsWith, "$this$endsWith");
                z2 = false;
                if (endsWith.length() > 0 && kotlin.h.a.a(endsWith.charAt(kotlin.h.p.d((CharSequence) endsWith)), ';', false)) {
                    z2 = true;
                }
            }
            if (!x.f38657a || z2) {
                String substring2 = representation.substring(1, representation.length() - 1);
                p.b(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                return new j.c(substring2);
            }
            throw new AssertionError("Type that is not primitive nor array should be Object, but '" + representation + "' was found");
        }
        throw new AssertionError("empty string as JvmType");
    }

    private static j.c d(String internalName) {
        p.d(internalName, "internalName");
        return new j.c(internalName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k
    public final /* synthetic */ j a() {
        return d("java/lang/Class");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k
    public final /* synthetic */ j a(j jVar) {
        j possiblyPrimitiveType = jVar;
        p.d(possiblyPrimitiveType, "possiblyPrimitiveType");
        j.c cVar = possiblyPrimitiveType;
        if (possiblyPrimitiveType instanceof j.d) {
            j.d dVar = (j.d) possiblyPrimitiveType;
            cVar = possiblyPrimitiveType;
            if (dVar.f38084b != null) {
                String c2 = c.a(dVar.f38084b.getWrapperFqName()).c();
                p.b(c2, "byFqNameWithoutInnerClasses(possiblyPrimitiveType.jvmPrimitiveType.wrapperFqName).internalName");
                cVar = d(c2);
            }
        }
        return cVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k
    public final /* synthetic */ j a(h primitiveType) {
        j.d dVar;
        j.d dVar2;
        j.d dVar3;
        j.d dVar4;
        j.d dVar5;
        j.d dVar6;
        j.d dVar7;
        j.d dVar8;
        p.d(primitiveType, "primitiveType");
        switch (a.f38086a[primitiveType.ordinal()]) {
            case 1:
                j.b bVar = j.f38078a;
                dVar = j.f38079b;
                return dVar;
            case 2:
                j.b bVar2 = j.f38078a;
                dVar2 = j.f38080c;
                return dVar2;
            case 3:
                j.b bVar3 = j.f38078a;
                dVar3 = j.f38081d;
                return dVar3;
            case 4:
                j.b bVar4 = j.f38078a;
                dVar4 = j.e;
                return dVar4;
            case 5:
                j.b bVar5 = j.f38078a;
                dVar5 = j.f;
                return dVar5;
            case 6:
                j.b bVar6 = j.f38078a;
                dVar6 = j.g;
                return dVar6;
            case 7:
                j.b bVar7 = j.f38078a;
                dVar7 = j.h;
                return dVar7;
            case 8:
                j.b bVar8 = j.f38078a;
                dVar8 = j.i;
                return dVar8;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final String b(j type) {
        String desc;
        p.d(type, "type");
        if (type instanceof j.a) {
            return p.a("[", (Object) b(((j.a) type).f38082b));
        }
        if (type instanceof j.d) {
            d dVar = ((j.d) type).f38084b;
            return (dVar == null || (desc = dVar.getDesc()) == null) ? "V" : desc;
        } else if (type instanceof j.c) {
            return "L" + ((j.c) type).f38083b + ';';
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k
    public final /* synthetic */ j b(String str) {
        return d(str);
    }
}
