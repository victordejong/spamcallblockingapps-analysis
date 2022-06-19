package p193e.p1681q.p1701f.p1702a.p1704d;

import e.q.f.a.c.d;
import p193e.p1681q.p1701f.p1702a.p1712f.C25246b;
/* renamed from: e.q.f.a.d.b */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/d/b.class */
public class C25226b {

    /* renamed from: a */
    public d f70535a;

    /* renamed from: b */
    public d f70536b;

    /* renamed from: c */
    public boolean f70537c = true;

    public C25226b(d dVar) {
        this.f70535a = dVar;
        this.f70536b = dVar;
    }

    /* renamed from: a */
    public final boolean m3809a(char c) {
        char lowerCase = Character.toLowerCase(c);
        if (this.f70536b.d.containsKey(Character.valueOf(lowerCase))) {
            this.f70536b = (d) this.f70536b.d.get(Character.valueOf(lowerCase));
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public C25246b m3808b(String str) {
        int i;
        if (!this.f70537c) {
            return null;
        }
        if (this.f70536b.f70532b && (1 == str.length() || C25227c.m3804d(str.charAt(1)) || str.charAt(1) == ';')) {
            d dVar = this.f70536b;
            return new C25246b(1, dVar.e, dVar.h, dVar.i);
        }
        d dVar2 = this.f70536b;
        for (int i2 = 1; i2 < str.length(); i2++) {
            if (!m3809a(str.charAt(i2))) {
                this.f70536b = dVar2;
                return null;
            } else if (this.f70536b.f70532b && (i = i2 + 1) < str.length() && C25227c.m3804d(str.charAt(i))) {
                d dVar3 = this.f70536b;
                return new C25246b(i2, dVar3.e, dVar3.h, dVar3.i);
            }
        }
        this.f70536b = dVar2;
        return null;
    }
}
