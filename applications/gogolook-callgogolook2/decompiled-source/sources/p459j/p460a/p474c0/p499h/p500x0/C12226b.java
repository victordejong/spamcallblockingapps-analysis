package p459j.p460a.p474c0.p499h.p500x0;

import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: j.a.c0.h.x0.b */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/x0/b.class */
public class C12226b {

    /* renamed from: b */
    public byte[] f27403b;

    /* renamed from: d */
    public final ByteOrder f27405d;

    /* renamed from: a */
    public final C12237i[] f27402a = new C12237i[5];

    /* renamed from: c */
    public final ArrayList<byte[]> f27404c = new ArrayList<>();

    public C12226b(ByteOrder byteOrder) {
        this.f27405d = byteOrder;
    }

    /* renamed from: a */
    public C12236h m6701a(C12236h hVar) {
        if (hVar != null) {
            return m6700a(hVar, hVar.m6593e());
        }
        return null;
    }

    /* renamed from: a */
    public C12236h m6700a(C12236h hVar, int i) {
        if (hVar == null || !C12236h.m6586h(i)) {
            return null;
        }
        return m6695b(i).m6579a(hVar);
    }

    /* renamed from: a */
    public C12236h m6698a(short s, int i) {
        C12237i iVar = this.f27402a[i];
        return iVar == null ? null : iVar.m6578a(s);
    }

    /* renamed from: a */
    public C12237i m6703a(int i) {
        if (C12236h.m6586h(i)) {
            return this.f27402a[i];
        }
        return null;
    }

    /* renamed from: a */
    public void m6704a() {
        this.f27403b = null;
        this.f27404c.clear();
    }

    /* renamed from: a */
    public void m6702a(int i, byte[] bArr) {
        if (i < this.f27404c.size()) {
            this.f27404c.set(i, bArr);
            return;
        }
        for (int size = this.f27404c.size(); size < i; size++) {
            this.f27404c.add(null);
        }
        this.f27404c.add(bArr);
    }

    /* renamed from: a */
    public void m6699a(C12237i iVar) {
        this.f27402a[iVar.m6577b()] = iVar;
    }

    /* renamed from: a */
    public void m6697a(byte[] bArr) {
        this.f27403b = bArr;
    }

    /* renamed from: b */
    public C12237i m6695b(int i) {
        C12237i iVar = this.f27402a[i];
        C12237i iVar2 = iVar;
        if (iVar == null) {
            iVar2 = new C12237i(i);
            this.f27402a[i] = iVar2;
        }
        return iVar2;
    }

    /* renamed from: b */
    public List<C12236h> m6696b() {
        C12237i[] iVarArr;
        C12236h[] a;
        ArrayList arrayList = new ArrayList();
        for (C12237i iVar : this.f27402a) {
            if (!(iVar == null || (a = iVar.m6581a()) == null)) {
                for (C12236h hVar : a) {
                    arrayList.add(hVar);
                }
            }
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList.size() == 0) {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* renamed from: b */
    public void m6694b(short s, int i) {
        C12237i iVar = this.f27402a[i];
        if (iVar != null) {
            iVar.m6576b(s);
        }
    }

    /* renamed from: c */
    public ByteOrder m6693c() {
        return this.f27405d;
    }

    /* renamed from: c */
    public byte[] m6692c(int i) {
        return this.f27404c.get(i);
    }

    /* renamed from: d */
    public byte[] m6691d() {
        return this.f27403b;
    }

    /* renamed from: e */
    public int m6690e() {
        return this.f27404c.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C12226b)) {
            return false;
        }
        C12226b bVar = (C12226b) obj;
        if (!(bVar.f27405d == this.f27405d && bVar.f27404c.size() == this.f27404c.size() && Arrays.equals(bVar.f27403b, this.f27403b))) {
            return false;
        }
        for (int i = 0; i < this.f27404c.size(); i++) {
            if (!Arrays.equals(bVar.f27404c.get(i), this.f27404c.get(i))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < 5; i2++) {
            C12237i a = bVar.m6703a(i2);
            C12237i a2 = m6703a(i2);
            if (!(a == a2 || a == null || a.equals(a2))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public boolean m6689f() {
        return this.f27403b != null;
    }

    /* renamed from: g */
    public boolean m6688g() {
        return this.f27404c.size() != 0;
    }
}
