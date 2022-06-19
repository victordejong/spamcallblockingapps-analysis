package kotlin.reflect.jvm.internal.impl.load.kotlin.p562a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.load.java.C19585u;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o;
import kotlin.reflect.jvm.internal.impl.load.kotlin.p562a.C19608a;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18848c;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19780f;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/b.class */
public final class C19611b implements AbstractC19646o.AbstractC19649c {

    /* renamed from: j */
    private static final boolean f65685j = "true".equals(System.getProperty("kotlin.ignore.old.metadata"));

    /* renamed from: k */
    private static final Map<C18960a, C19608a.EnumC19609a> f65686k;

    /* renamed from: a */
    public int[] f65687a = null;

    /* renamed from: b */
    public C18848c f65688b = null;

    /* renamed from: c */
    public String f65689c = null;

    /* renamed from: d */
    public int f65690d = 0;

    /* renamed from: e */
    public String f65691e = null;

    /* renamed from: f */
    public String[] f65692f = null;

    /* renamed from: g */
    public String[] f65693g = null;

    /* renamed from: h */
    public String[] f65694h = null;

    /* renamed from: i */
    public C19608a.EnumC19609a f65695i = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/b$a.class */
    public static abstract class AbstractC19613a implements AbstractC19646o.AbstractC19648b {

        /* renamed from: a */
        private final List<String> f65696a = new ArrayList();

        /* renamed from: a */
        private static /* synthetic */ void m1928a(int i) {
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

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19648b
        /* renamed from: a */
        public final void mo1868a() {
            mo1925a((String[]) this.f65696a.toArray(new String[0]));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19648b
        /* renamed from: a */
        public final void mo1867a(Object obj) {
            if (obj instanceof String) {
                this.f65696a.add((String) obj);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19648b
        /* renamed from: a */
        public final void mo1866a(C18960a c18960a, C18966e c18966e) {
            if (c18960a == null) {
                m1928a(0);
            }
            if (c18966e == null) {
                m1928a(1);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19648b
        /* renamed from: a */
        public final void mo1865a(C19780f c19780f) {
            if (c19780f == null) {
                m1928a(2);
            }
        }

        /* renamed from: a */
        protected abstract void mo1925a(String[] strArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b.class */
    public final class C19614b implements AbstractC19646o.AbstractC19647a {
        private C19614b() {
            C19611b.this = r4;
        }

        /* renamed from: a */
        private static /* synthetic */ void m1927a(int i) {
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

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final AbstractC19646o.AbstractC19647a mo1871a(C18966e c18966e, C18960a c18960a) {
            if (c18966e == null) {
                m1927a(6);
            }
            if (c18960a == null) {
                m1927a(7);
                return null;
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final AbstractC19646o.AbstractC19648b mo1873a(C18966e c18966e) {
            if (c18966e == null) {
                m1927a(2);
            }
            String m2721a = c18966e.m2721a();
            if ("d1".equals(m2721a)) {
                return new AbstractC19613a() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b.b.1
                    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.p562a.C19611b.AbstractC19613a
                    /* renamed from: a */
                    protected final void mo1925a(String[] strArr) {
                        if (strArr != null) {
                            C19611b.this.f65692f = strArr;
                            return;
                        }
                        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "result", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1", "visitEnd"));
                    }
                };
            }
            if (!"d2".equals(m2721a)) {
                return null;
            }
            return new AbstractC19613a() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b.b.2
                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.p562a.C19611b.AbstractC19613a
                /* renamed from: a */
                protected final void mo1925a(String[] strArr) {
                    if (strArr != null) {
                        C19611b.this.f65693g = strArr;
                        return;
                    }
                    throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "result", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$2", "visitEnd"));
                }
            };
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final void mo1874a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final void mo1872a(C18966e c18966e, Object obj) {
            if (c18966e == null) {
                return;
            }
            String m2721a = c18966e.m2721a();
            if ("k".equals(m2721a)) {
                if (!(obj instanceof Integer)) {
                    return;
                }
                C19611b.this.f65695i = C19608a.EnumC19609a.getById(((Integer) obj).intValue());
            } else if ("mv".equals(m2721a)) {
                if (!(obj instanceof int[])) {
                    return;
                }
                C19611b.this.f65687a = (int[]) obj;
            } else if ("bv".equals(m2721a)) {
                if (!(obj instanceof int[])) {
                    return;
                }
                C19611b.this.f65688b = new C18848c((int[]) obj);
            } else if ("xs".equals(m2721a)) {
                if (!(obj instanceof String)) {
                    return;
                }
                C19611b.this.f65689c = (String) obj;
            } else if ("xi".equals(m2721a)) {
                if (!(obj instanceof Integer)) {
                    return;
                }
                C19611b.this.f65690d = ((Integer) obj).intValue();
            } else if (!"pn".equals(m2721a) || !(obj instanceof String)) {
            } else {
                C19611b.this.f65691e = (String) obj;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final void mo1870a(C18966e c18966e, C18960a c18960a, C18966e c18966e2) {
            if (c18966e == null) {
                m1927a(3);
            }
            if (c18960a == null) {
                m1927a(4);
            }
            if (c18966e2 == null) {
                m1927a(5);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final void mo1869a(C18966e c18966e, C19780f c19780f) {
            if (c18966e == null) {
                m1927a(0);
            }
            if (c19780f == null) {
                m1927a(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a/b$c.class */
    public final class C19617c implements AbstractC19646o.AbstractC19647a {
        private C19617c() {
            C19611b.this = r4;
        }

        /* renamed from: a */
        private static /* synthetic */ void m1926a(int i) {
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

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final AbstractC19646o.AbstractC19647a mo1871a(C18966e c18966e, C18960a c18960a) {
            if (c18966e == null) {
                m1926a(6);
            }
            if (c18960a == null) {
                m1926a(7);
                return null;
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final AbstractC19646o.AbstractC19648b mo1873a(C18966e c18966e) {
            if (c18966e == null) {
                m1926a(2);
            }
            String m2721a = c18966e.m2721a();
            if ("data".equals(m2721a) || "filePartClassNames".equals(m2721a)) {
                return new AbstractC19613a() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b.c.1
                    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.p562a.C19611b.AbstractC19613a
                    /* renamed from: a */
                    protected final void mo1925a(String[] strArr) {
                        if (strArr != null) {
                            C19611b.this.f65692f = strArr;
                            return;
                        }
                        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "data", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1", "visitEnd"));
                    }
                };
            }
            if (!"strings".equals(m2721a)) {
                return null;
            }
            return new AbstractC19613a() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.a.b.c.2
                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.p562a.C19611b.AbstractC19613a
                /* renamed from: a */
                protected final void mo1925a(String[] strArr) {
                    if (strArr != null) {
                        C19611b.this.f65693g = strArr;
                        return;
                    }
                    throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "data", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$2", "visitEnd"));
                }
            };
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final void mo1874a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final void mo1872a(C18966e c18966e, Object obj) {
            if (c18966e == null) {
                return;
            }
            String m2721a = c18966e.m2721a();
            if (!"version".equals(m2721a)) {
                if (!"multifileClassName".equals(m2721a)) {
                    return;
                }
                C19611b.this.f65689c = obj instanceof String ? (String) obj : null;
            } else if (!(obj instanceof int[])) {
            } else {
                int[] iArr = (int[]) obj;
                C19611b.this.f65687a = iArr;
                if (C19611b.this.f65688b != null) {
                    return;
                }
                C19611b.this.f65688b = new C18848c(iArr);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final void mo1870a(C18966e c18966e, C18960a c18960a, C18966e c18966e2) {
            if (c18966e == null) {
                m1926a(3);
            }
            if (c18960a == null) {
                m1926a(4);
            }
            if (c18966e2 == null) {
                m1926a(5);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final void mo1869a(C18966e c18966e, C19780f c19780f) {
            if (c18966e == null) {
                m1926a(0);
            }
            if (c19780f == null) {
                m1926a(1);
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f65686k = hashMap;
        hashMap.put(C18960a.m2754a(new C18961b("kotlin.jvm.internal.KotlinClass")), C19608a.EnumC19609a.CLASS);
        hashMap.put(C18960a.m2754a(new C18961b("kotlin.jvm.internal.KotlinFileFacade")), C19608a.EnumC19609a.FILE_FACADE);
        hashMap.put(C18960a.m2754a(new C18961b("kotlin.jvm.internal.KotlinMultifileClass")), C19608a.EnumC19609a.MULTIFILE_CLASS);
        hashMap.put(C18960a.m2754a(new C18961b("kotlin.jvm.internal.KotlinMultifileClassPart")), C19608a.EnumC19609a.MULTIFILE_CLASS_PART);
        hashMap.put(C18960a.m2754a(new C18961b("kotlin.jvm.internal.KotlinSyntheticClass")), C19608a.EnumC19609a.SYNTHETIC_CLASS);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19649c
    /* renamed from: a */
    public final AbstractC19646o.AbstractC19647a mo1864a(C18960a c18960a, AbstractC19026at abstractC19026at) {
        C19608a.EnumC19609a enumC19609a;
        if (c18960a != null) {
            if (c18960a.m2748f().equals(C19585u.f65607a)) {
                return new C19614b();
            }
            if (f65685j || this.f65695i != null || (enumC19609a = f65686k.get(c18960a)) == null) {
                return null;
            }
            this.f65695i = enumC19609a;
            return new C19617c();
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "classId", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor", "visitAnnotation"));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19649c
    /* renamed from: b */
    public final void mo1863b() {
    }
}
