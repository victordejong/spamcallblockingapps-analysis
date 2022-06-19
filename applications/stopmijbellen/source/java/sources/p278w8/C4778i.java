package p278w8;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import java.util.ArrayList;
import java.util.List;
import p289x8.AbstractC4932a;
import p289x8.C4933b;
/* renamed from: w8.i */
/* loaded from: classes2-dex2jar.jar:w8/i.class */
public class C4778i extends C4933b {

    /* renamed from: d */
    public final List<AbstractC4932a> f14694d;

    /* renamed from: e */
    public List<String> f14695e = new ArrayList();

    /* renamed from: f */
    public final AbstractC4932a f14696f;

    public C4778i(String str, AbstractC4932a... abstractC4932aArr) {
        super((Class<?>) null, (String) null);
        ArrayList arrayList = new ArrayList();
        this.f14694d = arrayList;
        this.f14696f = new C4933b((Class<?>) null, C4779j.m472e(str).m471a());
        if (abstractC4932aArr.length == 0) {
            arrayList.add(C4933b.f15048c);
            return;
        }
        for (AbstractC4932a abstractC4932a : abstractC4932aArr) {
            if (this.f14694d.size() == 1 && this.f14694d.get(0) == C4933b.f15048c) {
                this.f14694d.remove(0);
            }
            this.f14694d.add(abstractC4932a);
            this.f14695e.add(",");
        }
    }

    /* renamed from: k */
    public static C4778i m476k(AbstractC4932a... abstractC4932aArr) {
        return new C4778i("COUNT", abstractC4932aArr);
    }

    @Override // p289x8.C4933b, p289x8.AbstractC4932a
    /* renamed from: f */
    public C4779j mo235f() {
        if (this.f15050b == null) {
            String mo238b = this.f14696f.mo238b();
            String str = mo238b;
            if (mo238b == null) {
                str = "";
            }
            String m4789h = C1676a.m4789h(str, "(");
            List<AbstractC4932a> list = this.f14694d;
            for (int i = 0; i < list.size(); i++) {
                AbstractC4932a abstractC4932a = list.get(i);
                String str2 = m4789h;
                if (i > 0) {
                    str2 = C0082b.m8754h(C0082b.m8752j(m4789h), this.f14695e.get(i), " ");
                }
                StringBuilder m8752j = C0082b.m8752j(str2);
                m8752j.append(abstractC4932a.toString());
                m4789h = m8752j.toString();
            }
            this.f15050b = C4779j.m472e(m4789h + ")").m471a();
        }
        return this.f15050b;
    }
}
