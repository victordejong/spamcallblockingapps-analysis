package p131c.p396i.p397a.p398e;

import java.util.HashMap;
/* renamed from: c.i.a.e.k */
/* loaded from: classes2-dex2jar.jar:c/i/a/e/k.class */
public class C6522k {

    /* renamed from: b */
    public static final C6522k f20284b = new C6522k();

    /* renamed from: a */
    public final HashMap<String, AbstractC6508d> f20285a = new HashMap<>();

    /* renamed from: a */
    public static AbstractC6508d m20576a(String str) {
        return f20284b.f20285a.get(str);
    }

    /* renamed from: a */
    public static void m20575a(String str, AbstractC6508d dVar) {
        f20284b.f20285a.put(str, dVar);
    }

    /* renamed from: b */
    public static void m20574b(String str) {
        f20284b.f20285a.remove(str);
    }
}
