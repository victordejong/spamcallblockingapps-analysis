package p193e.p1432d.p1436b.p1437a.p1438b;

import android.util.SparseArray;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
/* renamed from: e.d.b.a.b.m */
/* loaded from: classes-dex2jar.jar:e/d/b/a/b/m.class */
public class C22122m {

    /* renamed from: a */
    public SparseArray<Object> f61448a;

    public C22122m() {
        this.f61448a = null;
        this.f61448a = new SparseArray<>();
    }

    /* renamed from: a */
    public void m8769a(C22110e c22110e, int i) {
        AssertionUtil.AlwaysFatal.isNotNull(c22110e, new String[0]);
        if (i == 129 || i == 130 || i == 151) {
            ArrayList arrayList = (ArrayList) this.f61448a.get(i);
            ArrayList arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList();
            }
            arrayList2.add(c22110e);
            this.f61448a.put(i, arrayList2);
            return;
        }
        throw new RuntimeException("Invalid header field!");
    }

    /* renamed from: b */
    public C22110e m8768b(int i) {
        return (C22110e) this.f61448a.get(i);
    }

    /* renamed from: c */
    public C22110e[] m8767c(int i) {
        ArrayList arrayList = (ArrayList) this.f61448a.get(i);
        if (arrayList == null) {
            return null;
        }
        return (C22110e[]) arrayList.toArray(new C22110e[arrayList.size()]);
    }

    /* renamed from: d */
    public long m8766d(int i) {
        Long l = (Long) this.f61448a.get(i);
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    /* renamed from: e */
    public int m8765e(int i) {
        Integer num = (Integer) this.f61448a.get(i);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* renamed from: f */
    public byte[] m8764f(int i) {
        return (byte[]) this.f61448a.get(i);
    }

    /* renamed from: g */
    public void m8763g(C22110e c22110e, int i) {
        AssertionUtil.AlwaysFatal.isNotNull(c22110e, new String[0]);
        if (i == 137 || i == 147 || i == 150 || i == 154 || i == 160 || i == 164 || i == 166 || i == 181 || i == 182) {
            this.f61448a.put(i, c22110e);
            return;
        }
        throw new RuntimeException("Invalid header field!");
    }

    /* renamed from: h */
    public void m8762h(long j, int i) {
        if (i == 133 || i == 142 || i == 157 || i == 159 || i == 161 || i == 173 || i == 175 || i == 179 || i == 135 || i == 136) {
            this.f61448a.put(i, Long.valueOf(j));
            return;
        }
        throw new RuntimeException("Invalid header field!");
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x01c1, code lost:
        if (r5 > 19) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0259, code lost:
        if (r5 > 255) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x029c, code lost:
        if (r5 > 255) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0119, code lost:
        if (r5 > 255) goto L66;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m8761i(int r5, int r6) throws p193e.p1432d.p1436b.p1437a.C22105a {
        /*
            Method dump skipped, instructions count: 718
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1436b.p1437a.p1438b.C22122m.m8761i(int, int):void");
    }

    /* renamed from: j */
    public void m8760j(byte[] bArr, int i) {
        AssertionUtil.AlwaysFatal.isNotNull(bArr, new String[0]);
        if (i != 131 && i != 132 && i != 138 && i != 139 && i != 152 && i != 158 && i != 189 && i != 190) {
            switch (i) {
                case 183:
                case 184:
                case 185:
                    break;
                default:
                    throw new RuntimeException("Invalid header field!");
            }
        }
        this.f61448a.put(i, bArr);
    }
}
