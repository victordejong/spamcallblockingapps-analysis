package ba;

import java.util.ArrayList;
import java.util.List;
/* renamed from: ba.h */
/* loaded from: classes2-dex2jar.jar:ba/h.class */
public final class C0759h {

    /* renamed from: d */
    public static final List<C0759h> f2856d = new ArrayList();

    /* renamed from: a */
    public Object f2857a;

    /* renamed from: b */
    public C0767o f2858b;

    /* renamed from: c */
    public C0759h f2859c;

    public C0759h(Object obj, C0767o c0767o) {
        this.f2857a = obj;
        this.f2858b = c0767o;
    }

    /* renamed from: a */
    public static C0759h m7395a(C0767o c0767o, Object obj) {
        List<C0759h> list = f2856d;
        synchronized (list) {
            int size = ((ArrayList) list).size();
            if (size > 0) {
                C0759h c0759h = (C0759h) ((ArrayList) list).remove(size - 1);
                c0759h.f2857a = obj;
                c0759h.f2858b = c0767o;
                c0759h.f2859c = null;
                return c0759h;
            }
            return new C0759h(obj, c0767o);
        }
    }
}
