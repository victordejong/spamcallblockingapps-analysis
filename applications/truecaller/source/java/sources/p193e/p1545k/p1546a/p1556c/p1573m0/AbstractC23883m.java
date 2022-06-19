package p193e.p1545k.p1546a.p1556c.p1573m0;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23869m;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
/* renamed from: e.k.a.c.m0.m */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/m.class */
public abstract class AbstractC23883m extends AbstractC23698i implements AbstractC23869m {

    /* renamed from: i */
    public static final C23884n f66049i = C23884n.f66055g;

    /* renamed from: f */
    public final AbstractC23698i f66050f;

    /* renamed from: g */
    public final AbstractC23698i[] f66051g;

    /* renamed from: h */
    public final C23884n f66052h;

    public AbstractC23883m(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr, int i, Object obj, Object obj2, boolean z) {
        super(cls, i, obj, obj2, z);
        this.f66052h = c23884n == null ? f66049i : c23884n;
        this.f66050f = abstractC23698i;
        this.f66051g = abstractC23698iArr;
    }

    /* renamed from: S */
    public static StringBuilder m5930S(Class<?> cls, StringBuilder sb, boolean z) {
        if (!cls.isPrimitive()) {
            sb.append('L');
            String name = cls.getName();
            int length = name.length();
            for (int i = 0; i < length; i++) {
                char charAt = name.charAt(i);
                char c = charAt;
                if (charAt == '.') {
                    c = '/';
                }
                sb.append(c);
            }
            if (z) {
                sb.append(';');
            }
        } else if (cls == Boolean.TYPE) {
            sb.append('Z');
        } else if (cls == Byte.TYPE) {
            sb.append('B');
        } else if (cls == Short.TYPE) {
            sb.append('S');
        } else if (cls == Character.TYPE) {
            sb.append('C');
        } else if (cls == Integer.TYPE) {
            sb.append('I');
        } else if (cls == Long.TYPE) {
            sb.append('J');
        } else if (cls == Float.TYPE) {
            sb.append('F');
        } else if (cls == Double.TYPE) {
            sb.append('D');
        } else if (cls != Void.TYPE) {
            throw new IllegalStateException(C22128a.m8647Z1(cls, C22128a.m8728C("Unrecognized primitive type: ")));
        } else {
            sb.append('V');
        }
        return sb;
    }

    /* renamed from: T */
    public String mo5929T() {
        return this.f65728a.getName();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: b */
    public void mo5715b(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        C23422b c23422b = new C23422b(this, EnumC23381m.VALUE_STRING);
        abstractC23712h.mo6002e(abstractC23372g, c23422b);
        abstractC23372g.mo5868T1(mo5929T());
        abstractC23712h.mo6001f(abstractC23372g, c23422b);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException, C23379k {
        abstractC23372g.mo5868T1(mo5929T());
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1555z.AbstractC23421a
    /* renamed from: e */
    public String mo5928e() {
        return mo5929T();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: f */
    public AbstractC23698i mo5927f(int i) {
        return this.f66052h.m5918d(i);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: g */
    public int mo5926g() {
        return this.f66052h.f66057b.length;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: i */
    public final AbstractC23698i mo5925i(Class<?> cls) {
        AbstractC23698i mo5925i;
        AbstractC23698i[] abstractC23698iArr;
        if (cls == this.f65728a) {
            return this;
        }
        if (cls.isInterface() && (abstractC23698iArr = this.f66051g) != null) {
            int length = abstractC23698iArr.length;
            for (int i = 0; i < length; i++) {
                AbstractC23698i mo5925i2 = this.f66051g[i].mo5925i(cls);
                if (mo5925i2 != null) {
                    return mo5925i2;
                }
            }
        }
        AbstractC23698i abstractC23698i = this.f66050f;
        if (abstractC23698i != null && (mo5925i = abstractC23698i.mo5925i(cls)) != null) {
            return mo5925i;
        }
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: j */
    public C23884n mo5924j() {
        return this.f66052h;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: n */
    public List<AbstractC23698i> mo5923n() {
        int length;
        AbstractC23698i[] abstractC23698iArr = this.f66051g;
        if (abstractC23698iArr != null && (length = abstractC23698iArr.length) != 0) {
            return length != 1 ? Arrays.asList(abstractC23698iArr) : Collections.singletonList(abstractC23698iArr[0]);
        }
        return Collections.emptyList();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: q */
    public AbstractC23698i mo5922q() {
        return this.f66050f;
    }
}
