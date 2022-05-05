package p065f.p066a.p068b.p069a.p070r;

import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import androidx.media2.exoplayer.external.extractor.p007ts.H262Reader;
import java.util.ArrayList;
import java.util.HashMap;
/* renamed from: f.a.b.a.r.n */
/* loaded from: classes-dex2jar.jar:f/a/b/a/r/n.class */
public class C4280n {

    /* renamed from: a */
    public HashMap<Integer, Object> f10345a;

    public C4280n() {
        this.f10345a = null;
        this.f10345a = new HashMap<>();
    }

    /* renamed from: a */
    public C4271e m29141a(int i) {
        return (C4271e) this.f10345a.get(Integer.valueOf(i));
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x024d, code lost:
        if (r5 >= 192) goto L_0x0250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x029a, code lost:
        if (r5 >= 192) goto L_0x029d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0101, code lost:
        if (r5 > 255) goto L_0x0104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x011c, code lost:
        if (r5 >= 192) goto L_0x011f;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m29140a(int r5, int r6) throws p065f.p066a.p068b.p069a.p070r.C4273g {
        /*
            Method dump skipped, instructions count: 730
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p065f.p066a.p068b.p069a.p070r.C4280n.m29140a(int, int):void");
    }

    /* renamed from: a */
    public void m29139a(long j, int i) {
        if (i == 133 || i == 142 || i == 157 || i == 159 || i == 161 || i == 173 || i == 175 || i == 179 || i == 135 || i == 136) {
            this.f10345a.put(Integer.valueOf(i), Long.valueOf(j));
            return;
        }
        throw new RuntimeException("Invalid header field!");
    }

    /* renamed from: a */
    public void m29138a(C4271e eVar, int i) {
        if (eVar == null) {
            throw new NullPointerException();
        } else if (i == 129 || i == 130 || i == 151) {
            ArrayList arrayList = (ArrayList) this.f10345a.get(Integer.valueOf(i));
            ArrayList arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList();
            }
            arrayList2.add(eVar);
            this.f10345a.put(Integer.valueOf(i), arrayList2);
        } else {
            throw new RuntimeException("Invalid header field!");
        }
    }

    /* renamed from: a */
    public void m29137a(byte[] bArr, int i) {
        if (bArr != null) {
            if (!(i == 131 || i == 132 || i == 138 || i == 139 || i == 152 || i == 158 || i == 189 || i == 190)) {
                switch (i) {
                    case MatroskaExtractor.ID_CUE_TRACK_POSITIONS /* 183 */:
                    case H262Reader.START_GROUP /* 184 */:
                    case 185:
                        break;
                    default:
                        throw new RuntimeException("Invalid header field!");
                }
            }
            this.f10345a.put(Integer.valueOf(i), bArr);
            return;
        }
        throw new NullPointerException();
    }

    /* renamed from: b */
    public void m29135b(C4271e eVar, int i) {
        if (eVar == null) {
            throw new NullPointerException();
        } else if (i == 137 || i == 147 || i == 150 || i == 154 || i == 160 || i == 164 || i == 166 || i == 181 || i == 182) {
            this.f10345a.put(Integer.valueOf(i), eVar);
        } else {
            throw new RuntimeException("Invalid header field!");
        }
    }

    /* renamed from: b */
    public C4271e[] m29136b(int i) {
        ArrayList arrayList = (ArrayList) this.f10345a.get(Integer.valueOf(i));
        if (arrayList == null) {
            return null;
        }
        return (C4271e[]) arrayList.toArray(new C4271e[arrayList.size()]);
    }

    /* renamed from: c */
    public long m29134c(int i) {
        Long l = (Long) this.f10345a.get(Integer.valueOf(i));
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    /* renamed from: d */
    public int m29133d(int i) {
        Integer num = (Integer) this.f10345a.get(Integer.valueOf(i));
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* renamed from: e */
    public byte[] m29132e(int i) {
        return (byte[]) this.f10345a.get(Integer.valueOf(i));
    }
}
