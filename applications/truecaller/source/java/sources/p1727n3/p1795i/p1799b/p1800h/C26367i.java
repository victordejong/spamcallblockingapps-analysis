package p1727n3.p1795i.p1799b.p1800h;

import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import p1727n3.p1795i.p1799b.p1800h.p1801m.C26379n;
/* renamed from: n3.i.b.h.i */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/i.class */
public class C26367i extends C26363d implements AbstractC26366h {

    /* renamed from: H0 */
    public C26363d[] f73774H0 = new C26363d[4];

    /* renamed from: I0 */
    public int f73775I0 = 0;

    /* renamed from: V */
    public void m2044V(ArrayList<C26379n> arrayList, int i, C26379n c26379n) {
        int i2;
        int i3 = 0;
        while (true) {
            if (i3 < this.f73775I0) {
                c26379n.m2013a(this.f73774H0[i3]);
                i3++;
            }
        }
        for (i2 = 0; i2 < this.f73775I0; i2++) {
            MediaSessionCompat.m43255a0(this.f73774H0[i2], i, arrayList, c26379n);
        }
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.AbstractC26366h
    /* renamed from: a */
    public void mo2043a(C26363d c26363d) {
        if (c26363d == this || c26363d == null) {
            return;
        }
        int i = this.f73775I0;
        C26363d[] c26363dArr = this.f73774H0;
        if (i + 1 > c26363dArr.length) {
            this.f73774H0 = (C26363d[]) Arrays.copyOf(c26363dArr, c26363dArr.length * 2);
        }
        C26363d[] c26363dArr2 = this.f73774H0;
        int i2 = this.f73775I0;
        c26363dArr2[i2] = c26363d;
        this.f73775I0 = i2 + 1;
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.AbstractC26366h
    /* renamed from: b */
    public void mo2042b() {
        this.f73775I0 = 0;
        Arrays.fill(this.f73774H0, (Object) null);
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.AbstractC26366h
    /* renamed from: c */
    public void mo2041c(e eVar) {
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.C26363d
    /* renamed from: k */
    public void mo2040k(C26363d c26363d, HashMap<C26363d, C26363d> hashMap) {
        super.mo2040k(c26363d, hashMap);
        C26367i c26367i = (C26367i) c26363d;
        this.f73775I0 = 0;
        int i = c26367i.f73775I0;
        for (int i2 = 0; i2 < i; i2++) {
            mo2043a(hashMap.get(c26367i.f73774H0[i2]));
        }
    }
}
