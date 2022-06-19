package p074d9;

import com.raizlabs.android.dbflow.config.FlowManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p024b9.AbstractC0743c;
import p024b9.AbstractC0744d;
import p034c9.AbstractC0859f;
import p256u8.C4547b;
/* renamed from: d9.e */
/* loaded from: classes2-dex2jar.jar:d9/e.class */
public class C2492e<TModel> implements AbstractC2490c {

    /* renamed from: a */
    public final List<TModel> f8736a;

    /* renamed from: b */
    public final AbstractC2494b<TModel> f8737b;

    /* renamed from: d9.e$a */
    /* loaded from: classes2-dex2jar.jar:d9/e$a.class */
    public static final class C2493a<TModel> {

        /* renamed from: a */
        public final AbstractC2494b<TModel> f8738a;

        /* renamed from: b */
        public List<TModel> f8739b = new ArrayList();

        public C2493a(AbstractC2494b<TModel> abstractC2494b) {
            this.f8738a = abstractC2494b;
        }
    }

    /* renamed from: d9.e$b */
    /* loaded from: classes2-dex2jar.jar:d9/e$b.class */
    public interface AbstractC2494b<TModel> {
    }

    public C2492e(C2493a<TModel> c2493a) {
        this.f8736a = c2493a.f8739b;
        this.f8737b = c2493a.f8738a;
    }

    @Override // p074d9.AbstractC2490c
    /* renamed from: c */
    public void mo98c(AbstractC0859f abstractC0859f) {
        List<TModel> list = this.f8736a;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                TModel tmodel = this.f8736a.get(i);
                Objects.requireNonNull((C4547b.C4548a) this.f8737b);
                if (tmodel instanceof AbstractC0743c) {
                    ((AbstractC0743c) tmodel).mo7416a();
                } else if (tmodel == null) {
                    continue;
                } else {
                    Class<?> cls = tmodel.getClass();
                    AbstractC0744d m3906g = FlowManager.m3906g(cls);
                    if (m3906g == null) {
                        FlowManager.m3901l("ModelAdapter", cls);
                        throw null;
                    }
                    m3906g.m7413r(tmodel);
                }
            }
        }
    }
}
