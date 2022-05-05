package p081h.p203i.p204a.p224e.p259j.p266g;

import java.lang.reflect.Field;
import java.util.Arrays;
/* renamed from: h.i.a.e.j.g.z2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/z2.class */
public final class C7737z2 {

    /* renamed from: A */
    public int f18101A;

    /* renamed from: B */
    public int f18102B;

    /* renamed from: C */
    public Field f18103C;

    /* renamed from: D */
    public Object f18104D;

    /* renamed from: E */
    public Object f18105E;

    /* renamed from: F */
    public Object f18106F;

    /* renamed from: a */
    public final C7542a3 f18107a;

    /* renamed from: b */
    public final Object[] f18108b;

    /* renamed from: c */
    public Class<?> f18109c;

    /* renamed from: d */
    public final int f18110d;

    /* renamed from: e */
    public final int f18111e;

    /* renamed from: f */
    public final int f18112f;

    /* renamed from: g */
    public final int f18113g;

    /* renamed from: h */
    public final int f18114h;

    /* renamed from: i */
    public final int f18115i;

    /* renamed from: j */
    public final int f18116j;

    /* renamed from: k */
    public final int f18117k;

    /* renamed from: l */
    public final int f18118l;

    /* renamed from: m */
    public final int f18119m;

    /* renamed from: n */
    public final int[] f18120n;

    /* renamed from: o */
    public int f18121o;

    /* renamed from: p */
    public int f18122p;

    /* renamed from: q */
    public int f18123q = Integer.MAX_VALUE;

    /* renamed from: r */
    public int f18124r = Integer.MIN_VALUE;

    /* renamed from: s */
    public int f18125s = 0;

    /* renamed from: t */
    public int f18126t = 0;

    /* renamed from: u */
    public int f18127u = 0;

    /* renamed from: v */
    public int f18128v = 0;

    /* renamed from: w */
    public int f18129w = 0;

    /* renamed from: x */
    public int f18130x;

    /* renamed from: y */
    public int f18131y;

    /* renamed from: z */
    public int f18132z;

    public C7737z2(Class<?> cls, String str, Object[] objArr) {
        this.f18109c = cls;
        this.f18107a = new C7542a3(str);
        this.f18108b = objArr;
        this.f18110d = this.f18107a.m20372b();
        this.f18111e = this.f18107a.m20372b();
        int[] iArr = null;
        if (this.f18111e == 0) {
            this.f18112f = 0;
            this.f18113g = 0;
            this.f18114h = 0;
            this.f18115i = 0;
            this.f18116j = 0;
            this.f18118l = 0;
            this.f18117k = 0;
            this.f18119m = 0;
            this.f18120n = null;
            return;
        }
        this.f18112f = this.f18107a.m20372b();
        this.f18113g = this.f18107a.m20372b();
        this.f18114h = this.f18107a.m20372b();
        this.f18115i = this.f18107a.m20372b();
        this.f18118l = this.f18107a.m20372b();
        this.f18117k = this.f18107a.m20372b();
        this.f18116j = this.f18107a.m20372b();
        this.f18119m = this.f18107a.m20372b();
        int b = this.f18107a.m20372b();
        this.f18120n = b != 0 ? new int[b] : iArr;
        this.f18121o = (this.f18112f << 1) + this.f18113g;
    }

    /* renamed from: a */
    public static Field m19625a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    /* renamed from: a */
    public final boolean m19627a() {
        int i;
        Object type;
        boolean z = false;
        if (!this.f18107a.m20373a()) {
            return false;
        }
        this.f18130x = this.f18107a.m20372b();
        this.f18131y = this.f18107a.m20372b();
        this.f18132z = this.f18131y & 255;
        int i2 = this.f18130x;
        if (i2 < this.f18123q) {
            this.f18123q = i2;
        }
        int i3 = this.f18130x;
        if (i3 > this.f18124r) {
            this.f18124r = i3;
        }
        if (this.f18132z == EnumC7540a1.MAP.m20376a()) {
            this.f18125s++;
        } else if (this.f18132z >= EnumC7540a1.DOUBLE_LIST.m20376a() && this.f18132z <= EnumC7540a1.GROUP_LIST.m20376a()) {
            this.f18126t++;
        }
        this.f18129w++;
        if (C7571d3.m20274a(this.f18123q, this.f18130x, this.f18129w)) {
            this.f18128v = this.f18130x + 1;
            i = this.f18128v - this.f18123q;
        } else {
            i = this.f18127u + 1;
        }
        this.f18127u = i;
        if ((this.f18131y & 1024) != 0) {
            int[] iArr = this.f18120n;
            int i4 = this.f18122p;
            this.f18122p = i4 + 1;
            iArr[i4] = this.f18130x;
        }
        this.f18104D = null;
        this.f18105E = null;
        this.f18106F = null;
        if (m19616f()) {
            this.f18101A = this.f18107a.m20372b();
            if (!(this.f18132z == EnumC7540a1.MESSAGE.m20376a() + 51 || this.f18132z == EnumC7540a1.GROUP.m20376a() + 51)) {
                if (this.f18132z != EnumC7540a1.ENUM.m20376a() + 51 || !m19618e()) {
                    return true;
                }
                this.f18105E = m19624b();
                return true;
            }
            type = m19624b();
        } else {
            this.f18103C = m19625a(this.f18109c, (String) m19624b());
            if (m19608j()) {
                this.f18102B = this.f18107a.m20372b();
            }
            if (this.f18132z == EnumC7540a1.MESSAGE.m20376a() || this.f18132z == EnumC7540a1.GROUP.m20376a()) {
                type = this.f18103C.getType();
            } else {
                if (!(this.f18132z == EnumC7540a1.MESSAGE_LIST.m20376a() || this.f18132z == EnumC7540a1.GROUP_LIST.m20376a())) {
                    if (this.f18132z == EnumC7540a1.ENUM.m20376a() || this.f18132z == EnumC7540a1.ENUM_LIST.m20376a() || this.f18132z == EnumC7540a1.ENUM_LIST_PACKED.m20376a()) {
                        if (!m19618e()) {
                            return true;
                        }
                    } else if (this.f18132z != EnumC7540a1.MAP.m20376a()) {
                        return true;
                    } else {
                        this.f18106F = m19624b();
                        if ((this.f18131y & 2048) != 0) {
                            z = true;
                        }
                        if (!z) {
                            return true;
                        }
                    }
                    this.f18105E = m19624b();
                    return true;
                }
                type = m19624b();
            }
        }
        this.f18104D = type;
        return true;
    }

    /* renamed from: b */
    public final Object m19624b() {
        Object[] objArr = this.f18108b;
        int i = this.f18121o;
        this.f18121o = i + 1;
        return objArr[i];
    }

    /* renamed from: c */
    public final int m19622c() {
        return this.f18130x;
    }

    /* renamed from: d */
    public final int m19620d() {
        return this.f18132z;
    }

    /* renamed from: e */
    public final boolean m19618e() {
        return (this.f18110d & 1) == 1;
    }

    /* renamed from: f */
    public final boolean m19616f() {
        return this.f18132z > EnumC7540a1.MAP.m20376a();
    }

    /* renamed from: g */
    public final Field m19614g() {
        int i = this.f18101A << 1;
        Object obj = this.f18108b[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field a = m19625a(this.f18109c, (String) obj);
        this.f18108b[i] = a;
        return a;
    }

    /* renamed from: h */
    public final Field m19612h() {
        int i = (this.f18101A << 1) + 1;
        Object obj = this.f18108b[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field a = m19625a(this.f18109c, (String) obj);
        this.f18108b[i] = a;
        return a;
    }

    /* renamed from: i */
    public final Field m19610i() {
        return this.f18103C;
    }

    /* renamed from: j */
    public final boolean m19608j() {
        return m19618e() && this.f18132z <= EnumC7540a1.GROUP.m20376a();
    }

    /* renamed from: k */
    public final Field m19607k() {
        int i = (this.f18112f << 1) + (this.f18102B / 32);
        Object obj = this.f18108b[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field a = m19625a(this.f18109c, (String) obj);
        this.f18108b[i] = a;
        return a;
    }

    /* renamed from: l */
    public final int m19606l() {
        return this.f18102B % 32;
    }

    /* renamed from: m */
    public final boolean m19605m() {
        return (this.f18131y & 256) != 0;
    }

    /* renamed from: n */
    public final boolean m19604n() {
        return (this.f18131y & 512) != 0;
    }

    /* renamed from: o */
    public final Object m19603o() {
        return this.f18104D;
    }

    /* renamed from: p */
    public final Object m19602p() {
        return this.f18105E;
    }

    /* renamed from: q */
    public final Object m19601q() {
        return this.f18106F;
    }
}
