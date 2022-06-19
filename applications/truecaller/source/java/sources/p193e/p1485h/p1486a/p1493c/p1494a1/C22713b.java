package p193e.p1485h.p1486a.p1493c.p1494a1;

import java.util.ArrayList;
/* renamed from: e.h.a.c.a1.b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/a1/b.class */
public class C22713b {

    /* renamed from: b */
    public static final Object f62845b = new Object();

    /* renamed from: a */
    public ArrayList<C22712a> f62846a = new ArrayList<>();

    /* renamed from: a */
    public C22712a m7927a() {
        C22712a c22712a;
        synchronized (f62845b) {
            c22712a = null;
            try {
                if (!this.f62846a.isEmpty()) {
                    c22712a = this.f62846a.remove(0);
                }
            } catch (Exception e) {
                c22712a = null;
            }
        }
        return c22712a;
    }

    /* renamed from: b */
    public void m7926b(C22712a c22712a) {
        synchronized (f62845b) {
            try {
                int size = this.f62846a.size();
                if (size > 50) {
                    ArrayList<C22712a> arrayList = new ArrayList<>();
                    for (int i = 10; i < size; i++) {
                        arrayList.add(this.f62846a.get(i));
                    }
                    arrayList.add(c22712a);
                    this.f62846a = arrayList;
                } else {
                    this.f62846a.add(c22712a);
                }
            } catch (Exception e) {
            }
        }
    }
}
