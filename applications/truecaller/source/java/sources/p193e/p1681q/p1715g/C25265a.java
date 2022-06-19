package p193e.p1681q.p1715g;

import java.util.ArrayList;
/* renamed from: e.q.g.a */
/* loaded from: classes16-dex2jar.jar:e/q/g/a.class */
public class C25265a {

    /* renamed from: a */
    public final ArrayList<Character> f70685a = new ArrayList<>();

    /* renamed from: a */
    public char m3748a() {
        if (this.f70685a.size() > 0) {
            ArrayList<Character> arrayList = this.f70685a;
            return arrayList.get(arrayList.size() - 1).charValue();
        }
        return '~';
    }

    /* renamed from: b */
    public void m3747b(char c) {
        this.f70685a.add(Character.valueOf(c));
    }
}
