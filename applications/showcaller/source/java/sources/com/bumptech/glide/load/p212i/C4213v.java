package com.bumptech.glide.load.p212i;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.p222o.C4367d;
/* renamed from: com.bumptech.glide.load.i.v */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/v.class */
public class C4213v<Model> implements AbstractC4191n<Model, Model> {

    /* renamed from: a */
    private static final C4213v<?> f13092a = new C4213v<>();

    /* renamed from: com.bumptech.glide.load.i.v$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/v$a.class */
    public static class C4214a<Model> implements AbstractC4193o<Model, Model> {

        /* renamed from: a */
        private static final C4214a<?> f13093a = new C4214a<>();

        /* renamed from: a */
        public static <T> C4214a<T> m23105a() {
            return (C4214a<T>) f13093a;
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Model, Model> mo23078b(C4199r c4199r) {
            return C4213v.m23106c();
        }
    }

    /* renamed from: com.bumptech.glide.load.i.v$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/v$b.class */
    private static class C4215b<Model> implements AbstractC4007d<Model> {

        /* renamed from: d */
        private final Model f13094d;

        C4215b(Model model) {
            this.f13094d = model;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: a */
        public Class<Model> mo23090a() {
            return (Class<Model>) this.f13094d.getClass();
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: b */
        public void mo23089b() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: d */
        public DataSource mo23087d() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: e */
        public void mo23086e(Priority priority, AbstractC4007d.AbstractC4008a<? super Model> abstractC4008a) {
            abstractC4008a.mo23126f((Model) this.f13094d);
        }
    }

    /* renamed from: c */
    public static <T> C4213v<T> m23106c() {
        return (C4213v<T>) f13092a;
    }

    @Override // com.bumptech.glide.load.p212i.AbstractC4191n
    /* renamed from: a */
    public boolean mo23082a(Model model) {
        return true;
    }

    @Override // com.bumptech.glide.load.p212i.AbstractC4191n
    /* renamed from: b */
    public AbstractC4191n.C4192a<Model> mo23081b(Model model, int i, int i2, C4032e c4032e) {
        return new AbstractC4191n.C4192a<>(new C4367d(model), new C4215b(model));
    }
}
