package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p543b0.p546c.AbstractC9652a;
import p530d.p541c.p543b0.p556h.AbstractC9795a;
import p530d.p541c.p543b0.p556h.AbstractC9796b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
/* renamed from: d.c.b0.e.b.d */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/d.class */
public final class C9680d<T> extends AbstractC9677a<T, T> {

    /* renamed from: c */
    public final AbstractC9644g<? super T> f36755c;

    /* renamed from: d */
    public final AbstractC9644g<? super Throwable> f36756d;

    /* renamed from: e */
    public final AbstractC9638a f36757e;

    /* renamed from: f */
    public final AbstractC9638a f36758f;

    /* renamed from: d.c.b0.e.b.d$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/d$a.class */
    public static final class C9681a<T> extends AbstractC9795a<T, T> {

        /* renamed from: f */
        public final AbstractC9644g<? super T> f36759f;

        /* renamed from: g */
        public final AbstractC9644g<? super Throwable> f36760g;

        /* renamed from: h */
        public final AbstractC9638a f36761h;

        /* renamed from: i */
        public final AbstractC9638a f36762i;

        public C9681a(AbstractC9652a<? super T> aVar, AbstractC9644g<? super T> gVar, AbstractC9644g<? super Throwable> gVar2, AbstractC9638a aVar2, AbstractC9638a aVar3) {
            super(aVar);
            this.f36759f = gVar;
            this.f36760g = gVar2;
            this.f36761h = aVar2;
            this.f36762i = aVar3;
        }

        @Override // p530d.p541c.p543b0.p556h.AbstractC9795a, p611j.p612a.AbstractC10433c
        public void onComplete() {
            if (!this.f36995d) {
                try {
                    this.f36761h.run();
                    this.f36995d = true;
                    this.f36992a.onComplete();
                    try {
                        this.f36762i.run();
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        C9815a.m1923b(th);
                    }
                } catch (Throwable th2) {
                    m2021a(th2);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p556h.AbstractC9795a, p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            if (this.f36995d) {
                C9815a.m1923b(th);
                return;
            }
            boolean z = true;
            this.f36995d = true;
            try {
                this.f36760g.accept(th);
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                this.f36992a.onError(new CompositeException(th, th2));
                z = false;
            }
            if (z) {
                this.f36992a.onError(th);
            }
            try {
                this.f36762i.run();
            } catch (Throwable th3) {
                C9863a.m1822b(th3);
                C9815a.m1923b(th3);
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            if (!this.f36995d) {
                if (this.f36996e != 0) {
                    this.f36992a.onNext(null);
                    return;
                }
                try {
                    this.f36759f.accept(t);
                    this.f36992a.onNext(t);
                } catch (Throwable th) {
                    m2021a(th);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public T poll() throws Exception {
            try {
                T poll = this.f36994c.poll();
                if (poll != null) {
                    try {
                        this.f36759f.accept(poll);
                        this.f36762i.run();
                    } catch (Throwable th) {
                        try {
                            C9863a.m1822b(th);
                            this.f36760g.accept(th);
                            throw ExceptionHelper.m225a(th);
                        } finally {
                            this.f36762i.run();
                        }
                    }
                } else if (this.f36996e == 1) {
                    this.f36761h.run();
                }
                return poll;
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                try {
                    this.f36760g.accept(th2);
                    throw ExceptionHelper.m225a(th2);
                } catch (Throwable th3) {
                    throw new CompositeException(th2, th3);
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
            try {
                this.f36759f.accept(t);
                return this.f36992a.tryOnNext(t);
            } catch (Throwable th) {
                m2021a(th);
                return false;
            }
        }
    }

    /* renamed from: d.c.b0.e.b.d$b */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/d$b.class */
    public static final class C9682b<T> extends AbstractC9796b<T, T> {

        /* renamed from: f */
        public final AbstractC9644g<? super T> f36763f;

        /* renamed from: g */
        public final AbstractC9644g<? super Throwable> f36764g;

        /* renamed from: h */
        public final AbstractC9638a f36765h;

        /* renamed from: i */
        public final AbstractC9638a f36766i;

        public C9682b(AbstractC10433c<? super T> cVar, AbstractC9644g<? super T> gVar, AbstractC9644g<? super Throwable> gVar2, AbstractC9638a aVar, AbstractC9638a aVar2) {
            super(cVar);
            this.f36763f = gVar;
            this.f36764g = gVar2;
            this.f36765h = aVar;
            this.f36766i = aVar2;
        }

        @Override // p530d.p541c.p543b0.p556h.AbstractC9796b, p611j.p612a.AbstractC10433c
        public void onComplete() {
            if (!this.f37000d) {
                try {
                    this.f36765h.run();
                    this.f37000d = true;
                    this.f36997a.onComplete();
                    try {
                        this.f36766i.run();
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        C9815a.m1923b(th);
                    }
                } catch (Throwable th2) {
                    m2017a(th2);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p556h.AbstractC9796b, p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            if (this.f37000d) {
                C9815a.m1923b(th);
                return;
            }
            boolean z = true;
            this.f37000d = true;
            try {
                this.f36764g.accept(th);
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                this.f36997a.onError(new CompositeException(th, th2));
                z = false;
            }
            if (z) {
                this.f36997a.onError(th);
            }
            try {
                this.f36766i.run();
            } catch (Throwable th3) {
                C9863a.m1822b(th3);
                C9815a.m1923b(th3);
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            if (!this.f37000d) {
                if (this.f37001e != 0) {
                    this.f36997a.onNext(null);
                    return;
                }
                try {
                    this.f36763f.accept(t);
                    this.f36997a.onNext(t);
                } catch (Throwable th) {
                    m2017a(th);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public T poll() throws Exception {
            try {
                T poll = this.f36999c.poll();
                if (poll != null) {
                    try {
                        this.f36763f.accept(poll);
                        this.f36766i.run();
                    } catch (Throwable th) {
                        try {
                            C9863a.m1822b(th);
                            this.f36764g.accept(th);
                            throw ExceptionHelper.m225a(th);
                        } finally {
                            this.f36766i.run();
                        }
                    }
                } else if (this.f37001e == 1) {
                    this.f36765h.run();
                }
                return poll;
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                try {
                    this.f36764g.accept(th2);
                    throw ExceptionHelper.m225a(th2);
                } catch (Throwable th3) {
                    throw new CompositeException(th2, th3);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            return m2018a(i);
        }
    }

    public C9680d(AbstractC9814e<T> eVar, AbstractC9644g<? super T> gVar, AbstractC9644g<? super Throwable> gVar2, AbstractC9638a aVar, AbstractC9638a aVar2) {
        super(eVar);
        this.f36755c = gVar;
        this.f36756d = gVar2;
        this.f36757e = aVar;
        this.f36758f = aVar2;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        if (cVar instanceof AbstractC9652a) {
            this.f36754b.m1965a((AbstractC9829h) new C9681a((AbstractC9652a) cVar, this.f36755c, this.f36756d, this.f36757e, this.f36758f));
        } else {
            this.f36754b.m1965a((AbstractC9829h) new C9682b(cVar, this.f36755c, this.f36756d, this.f36757e, this.f36758f));
        }
    }
}
