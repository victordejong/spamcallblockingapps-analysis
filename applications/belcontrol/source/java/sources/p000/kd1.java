package p000;

import java.util.Iterator;
import org.json.JSONObject;
import p000.r71;
/* renamed from: kd1 */
/* loaded from: classes3-dex2jar.jar:kd1.class */
public class kd1 extends md1 {

    /* renamed from: kd1$a */
    /* loaded from: classes3-dex2jar.jar:kd1$a.class */
    public class RunnableC1457a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ JSONObject f6856a;

        public RunnableC1457a(kd1 kd1Var, JSONObject jSONObject) {
            this.f6856a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            k61.m1465D(r71.EnumC1638a.f7904K.m687i(), this.f6856a);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0285  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x0347 -> B:28:0x008e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x0350 -> B:42:0x0166). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:97:0x0367 -> B:53:0x01a4). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x036f -> B:69:0x025f). Please submit an issue!!! */
    @Override // p000.md1
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo928b(p000.md1.EnumC1473b r8, android.content.Context r9) {
        /*
            Method dump skipped, instructions count: 887
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.kd1.mo928b(md1$b, android.content.Context):boolean");
    }

    /* renamed from: j */
    public final void m1405j(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject2.opt(next);
            if (opt != null) {
                String replaceAll = str.replaceAll("\\*.*$", next);
                if (opt instanceof JSONObject) {
                    m1405j(replaceAll + ".*", jSONObject, (JSONObject) opt);
                } else {
                    try {
                        jSONObject.put(replaceAll, opt);
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }
}
