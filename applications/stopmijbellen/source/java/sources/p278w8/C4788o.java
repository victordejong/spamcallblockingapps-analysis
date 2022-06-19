package p278w8;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p267v8.AbstractC4654a;
import p267v8.C4655b;
import p289x8.AbstractC4932a;
import p289x8.C4933b;
/* renamed from: w8.o */
/* loaded from: classes2-dex2jar.jar:w8/o.class */
public class C4788o implements AbstractC4654a {

    /* renamed from: a */
    public final List<AbstractC4932a> f14715a;

    public C4788o(AbstractC4932a... abstractC4932aArr) {
        ArrayList arrayList = new ArrayList();
        this.f14715a = arrayList;
        Collections.addAll(arrayList, abstractC4932aArr);
        if (arrayList.isEmpty()) {
            arrayList.add(C4933b.f15048c);
        }
    }

    @Override // p267v8.AbstractC4654a
    /* renamed from: b */
    public String mo238b() {
        C4655b c4655b = new C4655b("SELECT ");
        c4655b.f14350a.append((Object) C4655b.m676e(",", this.f14715a));
        c4655b.m678c();
        return c4655b.mo238b();
    }

    public String toString() {
        return mo238b();
    }
}
