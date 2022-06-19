package kotlin.reflect.jvm.internal.impl.utils;

import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
/* renamed from: kotlin.reflect.jvm.internal.impl.utils.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/e.class */
public final class C20017e {

    /* renamed from: a */
    public static final C20018a f66362a = new C20018a(null);

    /* renamed from: i */
    public static final EnumC20021g f66363i = EnumC20021g.WARN;

    /* renamed from: j */
    public static final C20017e f66364j = new C20017e(EnumC20021g.WARN, null, C18247ai.m4257a(), false, null, 24, null);

    /* renamed from: k */
    public static final C20017e f66365k;

    /* renamed from: l */
    public static final C20017e f66366l;

    /* renamed from: b */
    public final EnumC20021g f66367b;

    /* renamed from: c */
    public final EnumC20021g f66368c;

    /* renamed from: d */
    public final Map<String, EnumC20021g> f66369d;

    /* renamed from: e */
    public final boolean f66370e;

    /* renamed from: f */
    public final EnumC20021g f66371f;

    /* renamed from: g */
    public final boolean f66372g;

    /* renamed from: h */
    public final boolean f66373h;

    /* renamed from: m */
    private final Lazy f66374m;

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/e$a.class */
    public static final class C20018a {
        private C20018a() {
        }

        public /* synthetic */ C20018a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.e$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/e$b.class */
    public static final class C20019b extends AbstractC18526r implements Function0<String[]> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20019b() {
            super(0);
            C20017e.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ String[] invoke() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(C20017e.this.f66367b.getDescription());
            EnumC20021g enumC20021g = C20017e.this.f66368c;
            if (enumC20021g != null) {
                arrayList.add(C18524p.m3847a("under-migration:", (Object) enumC20021g.getDescription()));
            }
            for (Map.Entry<String, EnumC20021g> entry : C20017e.this.f66369d.entrySet()) {
                arrayList.add("@" + entry.getKey() + ':' + entry.getValue().getDescription());
            }
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return (String[]) array;
        }
    }

    static {
        EnumC20021g enumC20021g = EnumC20021g.IGNORE;
        f66365k = new C20017e(enumC20021g, enumC20021g, C18247ai.m4257a(), false, null, 24, null);
        EnumC20021g enumC20021g2 = EnumC20021g.STRICT;
        f66366l = new C20017e(enumC20021g2, enumC20021g2, C18247ai.m4257a(), false, null, 24, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C20017e(EnumC20021g globalJsr305Level, EnumC20021g enumC20021g, Map<String, ? extends EnumC20021g> userDefinedLevelForSpecificJsr305Annotation, boolean z, EnumC20021g jspecifyReportLevel) {
        C18524p.m3840d(globalJsr305Level, "globalJsr305Level");
        C18524p.m3840d(userDefinedLevelForSpecificJsr305Annotation, "userDefinedLevelForSpecificJsr305Annotation");
        C18524p.m3840d(jspecifyReportLevel, "jspecifyReportLevel");
        this.f66367b = globalJsr305Level;
        this.f66368c = enumC20021g;
        this.f66369d = userDefinedLevelForSpecificJsr305Annotation;
        this.f66370e = z;
        this.f66371f = jspecifyReportLevel;
        this.f66374m = C18399h.m3897a(new C20019b());
        boolean z2 = globalJsr305Level == EnumC20021g.IGNORE && enumC20021g == EnumC20021g.IGNORE && userDefinedLevelForSpecificJsr305Annotation.isEmpty();
        this.f66372g = z2;
        this.f66373h = !z2 ? jspecifyReportLevel == EnumC20021g.IGNORE : true;
    }

    public /* synthetic */ C20017e(EnumC20021g enumC20021g, EnumC20021g enumC20021g2, Map map, boolean z, EnumC20021g enumC20021g3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(enumC20021g, enumC20021g2, map, (i & 8) != 0 ? true : z, (i & 16) != 0 ? f66363i : enumC20021g3);
    }
}
