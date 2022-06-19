package kotlin.reflect.jvm.internal.impl.load.kotlin.p562a;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p530f.C18363d;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18848c;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18854f;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/a.class */
public final class C19608a {

    /* renamed from: a */
    public final EnumC19609a f65675a;

    /* renamed from: b */
    public final C18854f f65676b;

    /* renamed from: c */
    public final String[] f65677c;

    /* renamed from: d */
    public final String[] f65678d;

    /* renamed from: e */
    public final String[] f65679e;

    /* renamed from: f */
    private final C18848c f65680f;

    /* renamed from: g */
    private final String f65681g;

    /* renamed from: h */
    private final int f65682h;

    /* renamed from: i */
    private final String f65683i;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a.class */
    public enum EnumC19609a {
        UNKNOWN(0),
        CLASS(1),
        FILE_FACADE(2),
        SYNTHETIC_CLASS(3),
        MULTIFILE_CLASS(4),
        MULTIFILE_CLASS_PART(5);
        
        public static final C19610a Companion = new C19610a(null);
        private static final Map<Integer, EnumC19609a> entryById;

        /* renamed from: id */
        private final int f65684id;

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a.a$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a$a.class */
        public static final class C19610a {
            private C19610a() {
            }

            public /* synthetic */ C19610a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        static {
            EnumC19609a[] values = values();
            LinkedHashMap linkedHashMap = new LinkedHashMap(C18363d.m4051c(C18247ai.m4260a(values.length), 16));
            for (EnumC19609a enumC19609a : values) {
                linkedHashMap.put(Integer.valueOf(enumC19609a.getId()), enumC19609a);
            }
            entryById = linkedHashMap;
        }

        EnumC19609a(int i) {
            this.f65684id = i;
        }

        public static final EnumC19609a getById(int i) {
            EnumC19609a enumC19609a = (EnumC19609a) entryById.get(Integer.valueOf(i));
            EnumC19609a enumC19609a2 = enumC19609a;
            if (enumC19609a == null) {
                enumC19609a2 = UNKNOWN;
            }
            return enumC19609a2;
        }

        public final int getId() {
            return this.f65684id;
        }
    }

    public C19608a(EnumC19609a kind, C18854f metadataVersion, C18848c bytecodeVersion, String[] strArr, String[] strArr2, String[] strArr3, String str, int i, String str2) {
        C18524p.m3840d(kind, "kind");
        C18524p.m3840d(metadataVersion, "metadataVersion");
        C18524p.m3840d(bytecodeVersion, "bytecodeVersion");
        this.f65675a = kind;
        this.f65676b = metadataVersion;
        this.f65680f = bytecodeVersion;
        this.f65677c = strArr;
        this.f65678d = strArr2;
        this.f65679e = strArr3;
        this.f65681g = str;
        this.f65682h = i;
        this.f65683i = str2;
    }

    /* renamed from: a */
    private static boolean m1941a(int i, int i2) {
        return (i & i2) != 0;
    }

    /* renamed from: a */
    public final String m1942a() {
        String str = this.f65681g;
        if (this.f65675a == EnumC19609a.MULTIFILE_CLASS_PART) {
            return str;
        }
        return null;
    }

    /* renamed from: b */
    public final boolean m1940b() {
        return m1941a(this.f65682h, 16) && !m1941a(this.f65682h, 32);
    }

    /* renamed from: c */
    public final boolean m1939c() {
        return m1941a(this.f65682h, 64) && !m1941a(this.f65682h, 32);
    }

    /* renamed from: d */
    public final boolean m1938d() {
        return m1941a(this.f65682h, 2);
    }

    public final String toString() {
        return this.f65675a + " version=" + this.f65676b;
    }
}
