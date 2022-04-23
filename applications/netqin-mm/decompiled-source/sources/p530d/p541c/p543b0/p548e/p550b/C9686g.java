package p530d.p541c.p543b0.p548e.p550b;

import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p543b0.p546c.AbstractC9652a;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p543b0.p556h.AbstractC9795a;
import p530d.p541c.p543b0.p556h.AbstractC9796b;
import p611j.p612a.AbstractC10433c;
/* renamed from: d.c.b0.e.b.g */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/g.class */
public final class C9686g<T> extends AbstractC9677a<T, T> {

    /* renamed from: c */
    public final AbstractC9646i<? super T> f36775c;

    /* renamed from: d.c.b0.e.b.g$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/g$a.class */
    public static final class C9687a<T> extends AbstractC9795a<T, T> {

        /* renamed from: f */
        public final AbstractC9646i<? super T> f36776f;

        public C9687a(AbstractC9652a<? super T> aVar, AbstractC9646i<? super T> iVar) {
            super(aVar);
            this.f36776f = iVar;
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            if (!tryOnNext(t)) {
                this.f36993b.request(1L);
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public T poll() throws Exception {
            AbstractC9658g<T> gVar = this.f36994c;
            AbstractC9646i<? super T> iVar = this.f36776f;
            while (true) {
                T poll = gVar.poll();
                if (poll == null) {
                    return null;
                }
                if (iVar.test(poll)) {
                    return poll;
                }
                if (this.f36996e == 2) {
                    gVar.request(1L);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            return m2022a(i);
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9652a
        public boolean tryOnNext(T t) {
            if (this.f36995d) {
                return false;
            }
            if (this.f36996e != 0) {
                return this.f36992a.tryOnNext(null);
            }
            try {
                boolean z = false;
                if (this.f36776f.test(t)) {
                    z = false;
                    if (this.f36992a.tryOnNext(t)) {
                        z = true;
                    }
                }
                return z;
            } catch (Throwable th) {
                m2021a(th);
                return true;
            }
        }
    }

    /* renamed from: d.c.b0.e.b.g$b */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/g$b.class */
    public static final class C9688b<T> extends AbstractC9796b<T, T> implements AbstractC9652a<T> {

        /* renamed from: f */
        public final AbstractC9646i<? super T> f36777f;

        public C9688b(AbstractC10433c<? super T> cVar, AbstractC9646i<? super T> iVar) {
            super(cVar);
            this.f36777f = iVar;
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            if (!tryOnNext(t)) {
                this.f36998b.request(1L);
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public T poll() throws Exception {
            AbstractC9658g<T> gVar = this.f36999c;
            AbstractC9646i<? super T> iVar = this.f36777f;
            while (true) {
                T poll = gVar.poll();
                if (poll == null) {
                    return null;
                }
                if (iVar.test(poll)) {
                    return poll;
                }
                if (this.f37001e == 2) {
                    gVar.request(1L);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            return m2018a(i);
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9652a
        public boolean tryOnNext(T t) {
            if (this.f37000d) {
                return false;
            }
            if (this.f37001e != 0) {
                this.f36997a.onNext(null);
                return true;
            }
            try {
                boolean test = this.f36777f.test(t);
                if (test) {
                    this.f36997a.onNext(t);
                }
                return test;
            } catch (Throwable th) {
                m2017a(th);
                return true;
            }
        }
    }

    public C9686g(AbstractC9814e<T> eVar, AbstractC9646i<? super T> iVar) {
        super(eVar);
        this.f36775c = iVar;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        if (cVar instanceof AbstractC9652a) {
            this.f36754b.m1965a((AbstractC9829h) new C9687a((AbstractC9652a) cVar, this.f36775c));
        } else {
            this.f36754b.m1965a((AbstractC9829h) new C9688b(cVar, this.f36775c));
        }
    }
}
