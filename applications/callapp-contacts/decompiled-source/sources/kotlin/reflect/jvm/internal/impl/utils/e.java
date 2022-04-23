package kotlin.reflect.jvm.internal.impl.utils;

import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.a.ai;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final a f38516a = new a(null);
    public static final g i = g.WARN;
    public static final e j = new e(g.WARN, null, ai.a(), false, null, 24, null);
    public static final e k;
    public static final e l;

    /* renamed from: b  reason: collision with root package name */
    public final g f38517b;

    /* renamed from: c  reason: collision with root package name */
    public final g f38518c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, g> f38519d;
    public final boolean e;
    public final g f;
    public final boolean g;
    public final boolean h;
    private final Lazy m;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/e$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/e$b.class */
    static final class b extends r implements Function0<String[]> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ String[] invoke() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(e.this.f38517b.getDescription());
            g gVar = e.this.f38518c;
            if (gVar != null) {
                arrayList.add(p.a("under-migration:", (Object) gVar.getDescription()));
            }
            for (Map.Entry<String, g> entry : e.this.f38519d.entrySet()) {
                arrayList.add("@" + entry.getKey() + ':' + entry.getValue().getDescription());
            }
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return (String[]) array;
        }
    }

    static {
        g gVar = g.IGNORE;
        k = new e(gVar, gVar, ai.a(), false, null, 24, null);
        g gVar2 = g.STRICT;
        l = new e(gVar2, gVar2, ai.a(), false, null, 24, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(g globalJsr305Level, g gVar, Map<String, ? extends g> userDefinedLevelForSpecificJsr305Annotation, boolean z, g jspecifyReportLevel) {
        p.d(globalJsr305Level, "globalJsr305Level");
        p.d(userDefinedLevelForSpecificJsr305Annotation, "userDefinedLevelForSpecificJsr305Annotation");
        p.d(jspecifyReportLevel, "jspecifyReportLevel");
        this.f38517b = globalJsr305Level;
        this.f38518c = gVar;
        this.f38519d = userDefinedLevelForSpecificJsr305Annotation;
        this.e = z;
        this.f = jspecifyReportLevel;
        this.m = h.a(new b());
        boolean z2 = globalJsr305Level == g.IGNORE && gVar == g.IGNORE && userDefinedLevelForSpecificJsr305Annotation.isEmpty();
        this.g = z2;
        this.h = !z2 ? jspecifyReportLevel == g.IGNORE : true;
    }

    public /* synthetic */ e(g gVar, g gVar2, Map map, boolean z, g gVar3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, gVar2, map, (i2 & 8) != 0 ? true : z, (i2 & 16) != 0 ? i : gVar3);
    }
}
