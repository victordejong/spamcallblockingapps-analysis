package kotlin.reflect.jvm.internal.impl.load.kotlin.a;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.a.ai;
import kotlin.f.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.c.a.c;
import kotlin.reflect.jvm.internal.impl.b.c.a.f;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final EnumC0694a f38020a;

    /* renamed from: b  reason: collision with root package name */
    public final f f38021b;

    /* renamed from: c  reason: collision with root package name */
    public final String[] f38022c;

    /* renamed from: d  reason: collision with root package name */
    public final String[] f38023d;
    public final String[] e;
    private final c f;
    private final String g;
    private final int h;
    private final String i;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a.class */
    public enum EnumC0694a {
        UNKNOWN(0),
        CLASS(1),
        FILE_FACADE(2),
        SYNTHETIC_CLASS(3),
        MULTIFILE_CLASS(4),
        MULTIFILE_CLASS_PART(5);
        
        public static final C0695a Companion = new C0695a(null);
        private static final Map<Integer, EnumC0694a> entryById;
        private final int id;

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a$a.class */
        public static final class C0695a {
            private C0695a() {
            }

            public /* synthetic */ C0695a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        static {
            EnumC0694a[] values = values();
            LinkedHashMap linkedHashMap = new LinkedHashMap(d.c(ai.a(values.length), 16));
            for (EnumC0694a aVar : values) {
                linkedHashMap.put(Integer.valueOf(aVar.getId()), aVar);
            }
            entryById = linkedHashMap;
        }

        EnumC0694a(int i) {
            this.id = i;
        }

        public static final EnumC0694a getById(int i) {
            EnumC0694a aVar = (EnumC0694a) entryById.get(Integer.valueOf(i));
            EnumC0694a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = UNKNOWN;
            }
            return aVar2;
        }

        public final int getId() {
            return this.id;
        }
    }

    public a(EnumC0694a kind, f metadataVersion, c bytecodeVersion, String[] strArr, String[] strArr2, String[] strArr3, String str, int i, String str2) {
        p.d(kind, "kind");
        p.d(metadataVersion, "metadataVersion");
        p.d(bytecodeVersion, "bytecodeVersion");
        this.f38020a = kind;
        this.f38021b = metadataVersion;
        this.f = bytecodeVersion;
        this.f38022c = strArr;
        this.f38023d = strArr2;
        this.e = strArr3;
        this.g = str;
        this.h = i;
        this.i = str2;
    }

    private static boolean a(int i, int i2) {
        return (i & i2) != 0;
    }

    public final String a() {
        String str = this.g;
        if (this.f38020a == EnumC0694a.MULTIFILE_CLASS_PART) {
            return str;
        }
        return null;
    }

    public final boolean b() {
        return a(this.h, 16) && !a(this.h, 32);
    }

    public final boolean c() {
        return a(this.h, 64) && !a(this.h, 32);
    }

    public final boolean d() {
        return a(this.h, 2);
    }

    public final String toString() {
        return this.f38020a + " version=" + this.f38021b;
    }
}
