package p459j.p460a.p474c0.p499h;

import java.util.ArrayList;
import java.util.List;
/* renamed from: j.a.c0.h.x */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/x.class */
public class C12223x<Input, Output> {

    /* renamed from: a */
    public final List<AbstractC12224a<Input, Output>> f27398a = new ArrayList();

    /* renamed from: j.a.c0.h.x$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/x$a.class */
    public interface AbstractC12224a<Input, Output> {
        /* renamed from: a */
        Output mo6715a(Input input) throws Exception;
    }

    public C12223x(AbstractC12224a<Input, Output> aVar) {
        this.f27398a.add(aVar);
    }

    /* renamed from: b */
    public static <Input, Output> C12223x<Input, Output> m6716b(AbstractC12224a<Input, Output> aVar) {
        return new C12223x<>(aVar);
    }

    /* renamed from: a */
    public C12223x<Input, Output> m6718a(AbstractC12224a<Input, Output> aVar) {
        C12151d.m7003a(this.f27398a.isEmpty());
        this.f27398a.add(aVar);
        return this;
    }

    /* renamed from: a */
    public Output m6717a(Input input) {
        int size = this.f27398a.size();
        for (int i = 0; i < size; i++) {
            AbstractC12224a<Input, Output> aVar = this.f27398a.get(i);
            try {
                return aVar.mo6715a(input);
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Exceptions occured when executing strategy ");
                sb.append(aVar);
                sb.append(i < size - 1 ? ", attempting fallback " + this.f27398a.get(i + 1) : ", and running out of fallbacks.");
                C12153d0.m6986b("MessagingApp", sb.toString(), e);
            }
        }
        return null;
    }
}
