package p193e.p1681q.p1701f.p1702a.p1705e.p1706b;

import e.q.f.a.c.b;
import java.util.HashMap;
import p193e.p1681q.p1701f.p1702a.p1705e.C25228a;
import p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25234a;
import p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25235b;
/* renamed from: e.q.f.a.e.b.b */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/e/b/b.class */
public class C25230b {

    /* renamed from: a */
    public C25232c f70558a;

    /* renamed from: b */
    public b f70559b;

    /* renamed from: d */
    public C25228a f70561d;

    /* renamed from: e */
    public int f70562e = 0;

    /* renamed from: c */
    public HashMap<String, C25231b> f70560c = new HashMap<>();

    /* renamed from: e.q.f.a.e.b.b$b */
    /* loaded from: classes16-dex2jar.jar:e/q/f/a/e/b/b$b.class */
    public static class C25231b {

        /* renamed from: a */
        public C25229a f70563a;

        /* renamed from: b */
        public C25235b f70564b;

        public C25231b(C25229a c25229a, C25235b c25235b) {
            this.f70563a = c25229a;
            this.f70564b = c25235b;
        }
    }

    public C25230b(b bVar, C25234a c25234a, C25228a c25228a) {
        this.f70561d = c25228a;
        C25232c c25232c = new C25232c();
        this.f70558a = c25232c;
        c25232c.m3786a(new C25229a(bVar, c25234a, c25234a, new a(this), 0));
        this.f70559b = bVar;
    }

    /* renamed from: a */
    public final void m3787a() {
        for (C25231b c25231b : this.f70560c.values()) {
            if (!c25231b.f70564b.f70586h) {
                this.f70558a.m3786a(c25231b.f70563a);
                c25231b.f70563a.m3789a(c25231b.f70564b);
            }
        }
        this.f70560c.clear();
    }
}
