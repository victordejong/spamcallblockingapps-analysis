package p655o;
/* renamed from: o.h */
/* loaded from: classes3-dex2jar.jar:o/h.class */
public class C15254h extends RuntimeException {
    public C15254h(C15299r<?> rVar) {
        super(m151a(rVar));
        rVar.m92b();
        rVar.m89e();
    }

    /* renamed from: a */
    public static String m151a(C15299r<?> rVar) {
        C15306w.m66a(rVar, "response == null");
        return "HTTP " + rVar.m92b() + " " + rVar.m89e();
    }
}
