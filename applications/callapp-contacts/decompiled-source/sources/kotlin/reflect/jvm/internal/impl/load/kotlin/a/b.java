package kotlin.reflect.jvm.internal.impl.load.kotlin.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.load.java.u;
import kotlin.reflect.jvm.internal.impl.load.kotlin.a.a;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.resolve.constants.f;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/b.class */
public final class b implements o.c {
    private static final boolean j = "true".equals(System.getProperty("kotlin.ignore.old.metadata"));
    private static final Map<kotlin.reflect.jvm.internal.impl.c.a, a.EnumC0694a> k;

    /* renamed from: a  reason: collision with root package name */
    public int[] f38026a = null;

    /* renamed from: b  reason: collision with root package name */
    public kotlin.reflect.jvm.internal.impl.b.c.a.c f38027b = null;

    /* renamed from: c  reason: collision with root package name */
    public String f38028c = null;

    /* renamed from: d  reason: collision with root package name */
    public int f38029d = 0;
    public String e = null;
    public String[] f = null;
    public String[] g = null;
    public String[] h = null;
    public a.EnumC0694a i = null;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/b$a.class */
    static abstract class a implements o.b {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f38030a = new ArrayList();

        private static /* synthetic */ void a(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "enumEntryName";
            } else if (i != 2) {
                objArr[0] = "enumClassId";
            } else {
                objArr[0] = "classLiteralValue";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$CollectStringArrayAnnotationVisitor";
            if (i != 2) {
                objArr[2] = "visitEnum";
            } else {
                objArr[2] = "visitClassLiteral";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.b
        public final void a() {
            a((String[]) this.f38030a.toArray(new String[0]));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.b
        public final void a(Object obj) {
            if (obj instanceof String) {
                this.f38030a.add((String) obj);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.b
        public final void a(kotlin.reflect.jvm.internal.impl.c.a aVar, e eVar) {
            if (aVar == null) {
                a(0);
            }
            if (eVar == null) {
                a(1);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.b
        public final void a(f fVar) {
            if (fVar == null) {
                a(2);
            }
        }

        protected abstract void a(String[] strArr);
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b.class */
    final class C0696b implements o.a {
        private C0696b() {
        }

        private static /* synthetic */ void a(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "classLiteralValue";
            } else if (i == 7) {
                objArr[0] = "classId";
            } else if (i == 4) {
                objArr[0] = "enumClassId";
            } else if (i != 5) {
                objArr[0] = "name";
            } else {
                objArr[0] = "enumEntryName";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor";
            switch (i) {
                case 2:
                    objArr[2] = "visitArray";
                    break;
                case 3:
                case 4:
                case 5:
                    objArr[2] = "visitEnum";
                    break;
                case 6:
                case 7:
                    objArr[2] = "visitAnnotation";
                    break;
                default:
                    objArr[2] = "visitClassLiteral";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final o.a a(e eVar, kotlin.reflect.jvm.internal.impl.c.a aVar) {
            if (eVar == null) {
                a(6);
            }
            if (aVar != null) {
                return null;
            }
            a(7);
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final o.b a(e eVar) {
            if (eVar == null) {
                a(2);
            }
            String a2 = eVar.a();
            if ("d1".equals(a2)) {
                return new a() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b.b.1
                    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.a.b.a
                    protected final void a(String[] strArr) {
                        if (strArr != null) {
                            b.this.f = strArr;
                            return;
                        }
                        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "result", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1", "visitEnd"));
                    }
                };
            }
            if ("d2".equals(a2)) {
                return new a() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b.b.2
                    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.a.b.a
                    protected final void a(String[] strArr) {
                        if (strArr != null) {
                            b.this.g = strArr;
                            return;
                        }
                        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "result", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$2", "visitEnd"));
                    }
                };
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final void a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final void a(e eVar, Object obj) {
            if (eVar != null) {
                String a2 = eVar.a();
                if ("k".equals(a2)) {
                    if (obj instanceof Integer) {
                        b.this.i = a.EnumC0694a.getById(((Integer) obj).intValue());
                    }
                } else if ("mv".equals(a2)) {
                    if (obj instanceof int[]) {
                        b.this.f38026a = (int[]) obj;
                    }
                } else if ("bv".equals(a2)) {
                    if (obj instanceof int[]) {
                        b.this.f38027b = new kotlin.reflect.jvm.internal.impl.b.c.a.c((int[]) obj);
                    }
                } else if ("xs".equals(a2)) {
                    if (obj instanceof String) {
                        b.this.f38028c = (String) obj;
                    }
                } else if ("xi".equals(a2)) {
                    if (obj instanceof Integer) {
                        b.this.f38029d = ((Integer) obj).intValue();
                    }
                } else if ("pn".equals(a2) && (obj instanceof String)) {
                    b.this.e = (String) obj;
                }
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final void a(e eVar, kotlin.reflect.jvm.internal.impl.c.a aVar, e eVar2) {
            if (eVar == null) {
                a(3);
            }
            if (aVar == null) {
                a(4);
            }
            if (eVar2 == null) {
                a(5);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final void a(e eVar, f fVar) {
            if (eVar == null) {
                a(0);
            }
            if (fVar == null) {
                a(1);
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/b$c.class */
    final class c implements o.a {
        private c() {
        }

        private static /* synthetic */ void a(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "classLiteralValue";
            } else if (i == 7) {
                objArr[0] = "classId";
            } else if (i == 4) {
                objArr[0] = "enumClassId";
            } else if (i != 5) {
                objArr[0] = "name";
            } else {
                objArr[0] = "enumEntryName";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor";
            switch (i) {
                case 2:
                    objArr[2] = "visitArray";
                    break;
                case 3:
                case 4:
                case 5:
                    objArr[2] = "visitEnum";
                    break;
                case 6:
                case 7:
                    objArr[2] = "visitAnnotation";
                    break;
                default:
                    objArr[2] = "visitClassLiteral";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final o.a a(e eVar, kotlin.reflect.jvm.internal.impl.c.a aVar) {
            if (eVar == null) {
                a(6);
            }
            if (aVar != null) {
                return null;
            }
            a(7);
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final o.b a(e eVar) {
            if (eVar == null) {
                a(2);
            }
            String a2 = eVar.a();
            if ("data".equals(a2) || "filePartClassNames".equals(a2)) {
                return new a() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b.c.1
                    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.a.b.a
                    protected final void a(String[] strArr) {
                        if (strArr != null) {
                            b.this.f = strArr;
                            return;
                        }
                        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "data", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1", "visitEnd"));
                    }
                };
            }
            if ("strings".equals(a2)) {
                return new a() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b.c.2
                    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.a.b.a
                    protected final void a(String[] strArr) {
                        if (strArr != null) {
                            b.this.g = strArr;
                            return;
                        }
                        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "data", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$2", "visitEnd"));
                    }
                };
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final void a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final void a(e eVar, Object obj) {
            if (eVar != null) {
                String a2 = eVar.a();
                if ("version".equals(a2)) {
                    if (obj instanceof int[]) {
                        int[] iArr = (int[]) obj;
                        b.this.f38026a = iArr;
                        if (b.this.f38027b == null) {
                            b.this.f38027b = new kotlin.reflect.jvm.internal.impl.b.c.a.c(iArr);
                        }
                    }
                } else if ("multifileClassName".equals(a2)) {
                    b.this.f38028c = obj instanceof String ? (String) obj : null;
                }
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final void a(e eVar, kotlin.reflect.jvm.internal.impl.c.a aVar, e eVar2) {
            if (eVar == null) {
                a(3);
            }
            if (aVar == null) {
                a(4);
            }
            if (eVar2 == null) {
                a(5);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final void a(e eVar, f fVar) {
            if (eVar == null) {
                a(0);
            }
            if (fVar == null) {
                a(1);
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        k = hashMap;
        hashMap.put(kotlin.reflect.jvm.internal.impl.c.a.a(new kotlin.reflect.jvm.internal.impl.c.b("kotlin.jvm.internal.KotlinClass")), a.EnumC0694a.CLASS);
        hashMap.put(kotlin.reflect.jvm.internal.impl.c.a.a(new kotlin.reflect.jvm.internal.impl.c.b("kotlin.jvm.internal.KotlinFileFacade")), a.EnumC0694a.FILE_FACADE);
        hashMap.put(kotlin.reflect.jvm.internal.impl.c.a.a(new kotlin.reflect.jvm.internal.impl.c.b("kotlin.jvm.internal.KotlinMultifileClass")), a.EnumC0694a.MULTIFILE_CLASS);
        hashMap.put(kotlin.reflect.jvm.internal.impl.c.a.a(new kotlin.reflect.jvm.internal.impl.c.b("kotlin.jvm.internal.KotlinMultifileClassPart")), a.EnumC0694a.MULTIFILE_CLASS_PART);
        hashMap.put(kotlin.reflect.jvm.internal.impl.c.a.a(new kotlin.reflect.jvm.internal.impl.c.b("kotlin.jvm.internal.KotlinSyntheticClass")), a.EnumC0694a.SYNTHETIC_CLASS);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.c
    public final o.a a(kotlin.reflect.jvm.internal.impl.c.a aVar, at atVar) {
        a.EnumC0694a aVar2;
        if (aVar == null) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "classId", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor", "visitAnnotation"));
        } else if (aVar.f().equals(u.f38001a)) {
            return new C0696b();
        } else {
            if (j || this.i != null || (aVar2 = k.get(aVar)) == null) {
                return null;
            }
            this.i = aVar2;
            return new c();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.c
    public final void b() {
    }
}
