package p1727n3.p1909z;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.s;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: n3.z.g3 */
/* loaded from: classes-dex2jar.jar:n3/z/g3.class */
public final class C27569g3<T> {

    /* renamed from: e */
    public static final C27569g3<Object> f77685e;

    /* renamed from: f */
    public static final C27570a f77686f = new C27570a(null);

    /* renamed from: a */
    public final int[] f77687a;

    /* renamed from: b */
    public final List<T> f77688b;

    /* renamed from: c */
    public final int f77689c;

    /* renamed from: d */
    public final List<Integer> f77690d;

    /* renamed from: n3.z.g3$a */
    /* loaded from: classes-dex2jar.jar:n3/z/g3$a.class */
    public static final class C27570a {
        public C27570a(f fVar) {
        }
    }

    static {
        s sVar = s.a;
        l.e(sVar, RemoteMessageConst.DATA);
        f77685e = new C27569g3<>(new int[]{0}, sVar, 0, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0051, code lost:
        if (r8.size() == r6.size()) goto L12;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C27569g3(int[] r5, java.util.List<? extends T> r6, int r7, java.util.List<java.lang.Integer> r8) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "originalPageOffsets"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            java.lang.String r1 = "data"
            s1.z.c.l.e(r0, r1)
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f77687a = r1
            r0 = r4
            r1 = r6
            r0.f77688b = r1
            r0 = r4
            r1 = r7
            r0.f77689c = r1
            r0 = r4
            r1 = r8
            r0.f77690d = r1
            r0 = r5
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 != 0) goto L34
            r0 = 1
            r7 = r0
            goto L36
        L34:
            r0 = 0
            r7 = r0
        L36:
            r0 = r7
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto Laa
            r0 = r8
            if (r0 == 0) goto L54
            r0 = r9
            r7 = r0
            r0 = r8
            int r0 = r0.size()
            r1 = r6
            int r1 = r1.size()
            if (r0 != r1) goto L56
        L54:
            r0 = 1
            r7 = r0
        L56:
            r0 = r7
            if (r0 == 0) goto L5b
            return
        L5b:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "If originalIndices (size = "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            s1.z.c.l.c(r0)
            r0 = r5
            r1 = r8
            int r1 = r1.size()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = ") is provided,"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = " it must be same length as data (size = "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            int r1 = r1.size()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = 41
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r5
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        Laa:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "originalPageOffsets cannot be empty when constructing TransformablePage"
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1909z.C27569g3.<init>(int[], java.util.List, int, java.util.List):void");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!l.a(C27569g3.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type androidx.paging.TransformablePage<*>");
        C27569g3 c27569g3 = (C27569g3) obj;
        return Arrays.equals(this.f77687a, c27569g3.f77687a) && !(l.a(this.f77688b, c27569g3.f77688b) ^ true) && this.f77689c == c27569g3.f77689c && !(l.a(this.f77690d, c27569g3.f77690d) ^ true);
    }

    public int hashCode() {
        int hashCode = Arrays.hashCode(this.f77687a);
        int hashCode2 = this.f77688b.hashCode();
        int i = this.f77689c;
        List<Integer> list = this.f77690d;
        return ((((hashCode2 + (hashCode * 31)) * 31) + i) * 31) + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TransformablePage(originalPageOffsets=");
        m8728C.append(Arrays.toString(this.f77687a));
        m8728C.append(", data=");
        m8728C.append(this.f77688b);
        m8728C.append(", hintOriginalPageOffset=");
        m8728C.append(this.f77689c);
        m8728C.append(", hintOriginalIndices=");
        return C22128a.m8602l(m8728C, this.f77690d, ")");
    }
}
