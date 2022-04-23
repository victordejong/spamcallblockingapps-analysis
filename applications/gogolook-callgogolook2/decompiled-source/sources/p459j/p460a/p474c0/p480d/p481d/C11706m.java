package p459j.p460a.p474c0.p480d.p481d;

import android.util.SparseArray;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import androidx.media2.exoplayer.external.extractor.p007ts.H262Reader;
import java.util.ArrayList;
/* renamed from: j.a.c0.d.d.m */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/m.class */
public class C11706m {

    /* renamed from: a */
    public SparseArray<Object> f26252a;

    public C11706m() {
        this.f26252a = null;
        this.f26252a = new SparseArray<>();
    }

    /* renamed from: a */
    public C11694e m8532a(int i) {
        return (C11694e) this.f26252a.get(i);
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
    public void m8531a(int r5, int r6) throws p459j.p460a.p474c0.p480d.C11687a {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p480d.p481d.C11706m.m8531a(int, int):void");
    }

    /* renamed from: a */
    public void m8530a(long j, int i) {
        if (i == 133 || i == 142 || i == 157 || i == 159 || i == 161 || i == 173 || i == 175 || i == 179 || i == 135 || i == 136) {
            this.f26252a.put(i, Long.valueOf(j));
            return;
        }
        throw new RuntimeException("Invalid header field!");
    }

    /* renamed from: a */
    public void m8529a(C11694e eVar, int i) {
        if (eVar == null) {
            throw new NullPointerException();
        } else if (i == 129 || i == 130 || i == 151) {
            ArrayList arrayList = (ArrayList) this.f26252a.get(i);
            ArrayList arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList();
            }
            arrayList2.add(eVar);
            this.f26252a.put(i, arrayList2);
        } else {
            throw new RuntimeException("Invalid header field!");
        }
    }

    /* renamed from: a */
    public void m8528a(byte[] bArr, int i) {
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
            this.f26252a.put(i, bArr);
            return;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public void m8527a(C11694e[] eVarArr, int i) {
        if (eVarArr == null) {
            throw new NullPointerException();
        } else if (i == 129 || i == 130 || i == 151) {
            ArrayList arrayList = new ArrayList();
            for (C11694e eVar : eVarArr) {
                arrayList.add(eVar);
            }
            this.f26252a.put(i, arrayList);
        } else {
            throw new RuntimeException("Invalid header field!");
        }
    }

    /* renamed from: b */
    public void m8525b(C11694e eVar, int i) {
        if (eVar == null) {
            throw new NullPointerException();
        } else if (i == 137 || i == 147 || i == 150 || i == 154 || i == 160 || i == 164 || i == 166 || i == 181 || i == 182) {
            this.f26252a.put(i, eVar);
        } else {
            throw new RuntimeException("Invalid header field!");
        }
    }

    /* renamed from: b */
    public C11694e[] m8526b(int i) {
        ArrayList arrayList = (ArrayList) this.f26252a.get(i);
        if (arrayList == null) {
            return null;
        }
        return (C11694e[]) arrayList.toArray(new C11694e[arrayList.size()]);
    }

    /* renamed from: c */
    public long m8524c(int i) {
        Long l = (Long) this.f26252a.get(i);
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    /* renamed from: d */
    public int m8523d(int i) {
        Integer num = (Integer) this.f26252a.get(i);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* renamed from: e */
    public byte[] m8522e(int i) {
        return (byte[]) this.f26252a.get(i);
    }

    /* renamed from: f */
    public boolean m8521f(int i) {
        return this.f26252a.get(i, null) != null;
    }
}
