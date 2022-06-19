package p193e.p1545k.p1546a.p1556c;

import java.io.Serializable;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23657g;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23664j;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23669m;
/* renamed from: e.k.a.c.w */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/w.class */
public class C23952w implements Serializable {
    @Deprecated

    /* renamed from: a */
    public static final C23952w f66307a = new C23955c();
    @Deprecated

    /* renamed from: b */
    public static final C23952w f66308b = new C23954b();

    @Deprecated
    /* renamed from: e.k.a.c.w$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/w$a.class */
    public static abstract class AbstractC23953a extends C23952w {
        @Override // p193e.p1545k.p1546a.p1556c.C23952w
        /* renamed from: a */
        public String mo5658a(AbstractC23458k<?> abstractC23458k, C23669m c23669m, String str) {
            return mo5654e(str);
        }

        @Override // p193e.p1545k.p1546a.p1556c.C23952w
        /* renamed from: b */
        public String mo5657b(AbstractC23458k<?> abstractC23458k, C23657g c23657g, String str) {
            return mo5654e(str);
        }

        @Override // p193e.p1545k.p1546a.p1556c.C23952w
        /* renamed from: c */
        public String mo5656c(AbstractC23458k<?> abstractC23458k, C23664j c23664j, String str) {
            return mo5654e(str);
        }

        @Override // p193e.p1545k.p1546a.p1556c.C23952w
        /* renamed from: d */
        public String mo5655d(AbstractC23458k<?> abstractC23458k, C23664j c23664j, String str) {
            return mo5654e(str);
        }

        /* renamed from: e */
        public abstract String mo5654e(String str);
    }

    @Deprecated
    /* renamed from: e.k.a.c.w$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/w$b.class */
    public static class C23954b extends AbstractC23953a {
        @Override // p193e.p1545k.p1546a.p1556c.C23952w.AbstractC23953a
        /* renamed from: e */
        public String mo5654e(String str) {
            boolean z;
            int i;
            if (str == null) {
                return str;
            }
            int length = str.length();
            StringBuilder sb = new StringBuilder(length * 2);
            int i2 = 0;
            int i3 = 0;
            boolean z2 = false;
            while (true) {
                boolean z3 = z2;
                if (i2 >= length) {
                    break;
                }
                char charAt = str.charAt(i2);
                if (i2 <= 0) {
                    i = i3;
                    z = z3;
                    if (charAt == '_') {
                        i2++;
                        i3 = i;
                        z2 = z;
                    }
                }
                if (Character.isUpperCase(charAt)) {
                    int i4 = i3;
                    if (!z3) {
                        i4 = i3;
                        if (i3 > 0) {
                            i4 = i3;
                            if (sb.charAt(i3 - 1) != '_') {
                                sb.append('_');
                                i4 = i3 + 1;
                            }
                        }
                    }
                    i3 = i4;
                    z = true;
                    charAt = Character.toLowerCase(charAt);
                } else {
                    z = false;
                }
                sb.append(charAt);
                i = i3 + 1;
                i2++;
                i3 = i;
                z2 = z;
            }
            if (i3 > 0) {
                str = sb.toString();
            }
            return str;
        }
    }

    @Deprecated
    /* renamed from: e.k.a.c.w$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/w$c.class */
    public static class C23955c extends AbstractC23953a {
        @Override // p193e.p1545k.p1546a.p1556c.C23952w.AbstractC23953a
        /* renamed from: e */
        public String mo5654e(String str) {
            String str2 = str;
            if (str != null) {
                if (str.isEmpty()) {
                    str2 = str;
                } else {
                    char charAt = str.charAt(0);
                    char upperCase = Character.toUpperCase(charAt);
                    if (charAt == upperCase) {
                        return str;
                    }
                    StringBuilder sb = new StringBuilder(str);
                    sb.setCharAt(0, upperCase);
                    str2 = sb.toString();
                }
            }
            return str2;
        }
    }

    /* renamed from: a */
    public String mo5658a(AbstractC23458k<?> abstractC23458k, C23669m c23669m, String str) {
        return str;
    }

    /* renamed from: b */
    public String mo5657b(AbstractC23458k<?> abstractC23458k, C23657g c23657g, String str) {
        return str;
    }

    /* renamed from: c */
    public String mo5656c(AbstractC23458k<?> abstractC23458k, C23664j c23664j, String str) {
        return str;
    }

    /* renamed from: d */
    public String mo5655d(AbstractC23458k<?> abstractC23458k, C23664j c23664j, String str) {
        return str;
    }
}
