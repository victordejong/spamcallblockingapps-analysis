package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.y */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/y.class */
public final class C19977y {

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.y$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/y$a.class */
    public final /* synthetic */ class C19978a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f66338a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f66339b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f66340c;

        static {
            int[] iArr = new int[C18702a.EnumC18744i.values().length];
            iArr[C18702a.EnumC18744i.DECLARATION.ordinal()] = 1;
            iArr[C18702a.EnumC18744i.FAKE_OVERRIDE.ordinal()] = 2;
            iArr[C18702a.EnumC18744i.DELEGATION.ordinal()] = 3;
            iArr[C18702a.EnumC18744i.SYNTHESIZED.ordinal()] = 4;
            f66338a = iArr;
            int[] iArr2 = new int[AbstractC19039b.EnumC19040a.values().length];
            iArr2[AbstractC19039b.EnumC19040a.DECLARATION.ordinal()] = 1;
            iArr2[AbstractC19039b.EnumC19040a.FAKE_OVERRIDE.ordinal()] = 2;
            iArr2[AbstractC19039b.EnumC19040a.DELEGATION.ordinal()] = 3;
            iArr2[AbstractC19039b.EnumC19040a.SYNTHESIZED.ordinal()] = 4;
            f66339b = iArr2;
            int[] iArr3 = new int[C18702a.EnumC18800w.values().length];
            iArr3[C18702a.EnumC18800w.INTERNAL.ordinal()] = 1;
            iArr3[C18702a.EnumC18800w.PRIVATE.ordinal()] = 2;
            iArr3[C18702a.EnumC18800w.PRIVATE_TO_THIS.ordinal()] = 3;
            iArr3[C18702a.EnumC18800w.PROTECTED.ordinal()] = 4;
            iArr3[C18702a.EnumC18800w.PUBLIC.ordinal()] = 5;
            iArr3[C18702a.EnumC18800w.LOCAL.ordinal()] = 6;
            f66340c = iArr3;
        }
    }

    /* renamed from: a */
    public static final AbstractC19039b.EnumC19040a m1221a(C19975x c19975x, C18702a.EnumC18744i enumC18744i) {
        C18524p.m3840d(c19975x, "<this>");
        int i = enumC18744i == null ? -1 : C19978a.f66338a[enumC18744i.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? AbstractC19039b.EnumC19040a.DECLARATION : AbstractC19039b.EnumC19040a.SYNTHESIZED : AbstractC19039b.EnumC19040a.DELEGATION : AbstractC19039b.EnumC19040a.FAKE_OVERRIDE : AbstractC19039b.EnumC19040a.DECLARATION;
    }

    /* renamed from: a */
    public static final AbstractC19213s m1220a(C19975x c19975x, C18702a.EnumC18800w enumC18800w) {
        C18524p.m3840d(c19975x, "<this>");
        switch (enumC18800w == null ? -1 : C19978a.f66340c[enumC18800w.ordinal()]) {
            case 1:
                AbstractC19213s INTERNAL = C19200r.f65005d;
                C18524p.m3843b(INTERNAL, "INTERNAL");
                return INTERNAL;
            case 2:
                AbstractC19213s PRIVATE = C19200r.f65002a;
                C18524p.m3843b(PRIVATE, "PRIVATE");
                return PRIVATE;
            case 3:
                AbstractC19213s PRIVATE_TO_THIS = C19200r.f65003b;
                C18524p.m3843b(PRIVATE_TO_THIS, "PRIVATE_TO_THIS");
                return PRIVATE_TO_THIS;
            case 4:
                AbstractC19213s PROTECTED = C19200r.f65004c;
                C18524p.m3843b(PROTECTED, "PROTECTED");
                return PROTECTED;
            case 5:
                AbstractC19213s PUBLIC = C19200r.f65006e;
                C18524p.m3843b(PUBLIC, "PUBLIC");
                return PUBLIC;
            case 6:
                AbstractC19213s LOCAL = C19200r.f65007f;
                C18524p.m3843b(LOCAL, "LOCAL");
                return LOCAL;
            default:
                AbstractC19213s PRIVATE2 = C19200r.f65002a;
                C18524p.m3843b(PRIVATE2, "PRIVATE");
                return PRIVATE2;
        }
    }
}
