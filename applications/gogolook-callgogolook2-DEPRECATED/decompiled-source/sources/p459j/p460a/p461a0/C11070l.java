package p459j.p460a.p461a0;

import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.NumberInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p459j.p460a.p461a0.AbstractC11043c;
import p459j.p460a.p564s.C13565v;
import p626l.C14989s;
import p626l.p632u.C15022n;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
import p660rx.Observable;
import p660rx.Scheduler;
import p660rx.Subscriber;
import p660rx.functions.Func1;
import p660rx.functions.FuncN;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010 \n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J2\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u00062\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0012"}, m815d2 = {"Lgogolook/callgogolook2/loader/RxNumberInfoLoadingHelper;", "", "()V", CallAction.DONE_TAG, "", "createObservable", "Lrx/Observable;", "Lgogolook/callgogolook2/gson/NumberInfo;", "loader", "Lgogolook/callgogolook2/loader/INumberInfoLoader;", "scheduler", "Lrx/Scheduler;", "getZipObservable", "", "syncLoaders", "", "asyncLoaders", "OnLoaderListenerWrapper", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.a0.l */
/* loaded from: classes2-dex2jar.jar:j/a/a0/l.class */
public final class C11070l {

    /* renamed from: a */
    public static final C11070l f24918a = new C11070l();

    /* renamed from: j.a.a0.l$a */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/l$a.class */
    public static final class C11071a implements AbstractC11043c.AbstractC11044a {

        /* renamed from: a */
        public final AbstractC11043c.AbstractC11044a f24919a;

        /* renamed from: b */
        public final AbstractC15118l<NumberInfo, C14989s> f24920b;

        /* JADX WARN: Multi-variable type inference failed */
        public C11071a(AbstractC11043c.AbstractC11044a aVar, AbstractC15118l<? super NumberInfo, C14989s> lVar) {
            C15149k.m377b(lVar, "callback");
            this.f24919a = aVar;
            this.f24920b = lVar;
        }

        @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
        /* renamed from: a */
        public void mo10314a(NumberInfo numberInfo) {
            C15149k.m377b(numberInfo, "numberInfo");
            AbstractC11043c.AbstractC11044a aVar = this.f24919a;
            if (aVar != null) {
                aVar.mo10314a(numberInfo);
            }
            this.f24920b.invoke(numberInfo);
        }

        @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
        /* renamed from: b */
        public void mo10313b(NumberInfo numberInfo) {
            C15149k.m377b(numberInfo, "numberInfo");
            AbstractC11043c.AbstractC11044a aVar = this.f24919a;
            if (aVar != null) {
                aVar.mo10313b(numberInfo);
            }
            this.f24920b.invoke(numberInfo);
        }

        @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
        public void onStart() {
            AbstractC11043c.AbstractC11044a aVar = this.f24919a;
            if (aVar != null) {
                aVar.onStart();
            }
        }
    }

    /* renamed from: j.a.a0.l$b */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/l$b.class */
    public static final class C11072b<T> implements Observable.OnSubscribe<T> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC11043c f24921a;

        public C11072b(AbstractC11043c cVar) {
            this.f24921a = cVar;
        }

        /* renamed from: a */
        public final void call(Subscriber<? super NumberInfo> subscriber) {
            NumberInfo numberInfo = new NumberInfo();
            numberInfo.m28365a(NumberInfo.ErrorReason.TIMEOUT);
            AbstractC11043c.AbstractC11044a listener = this.f24921a.getListener();
            if (listener != null) {
                listener.mo10313b(numberInfo);
            }
            subscriber.onNext(numberInfo);
            subscriber.onCompleted();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012.\u0010\u0002\u001a*\u0012\u000e\b��\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0014\u0012\u000e\b��\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, m815d2 = {"<anonymous>", "", "subscriber", "Lrx/Subscriber;", "Lgogolook/callgogolook2/gson/NumberInfo;", "kotlin.jvm.PlatformType", NotificationCompat.CATEGORY_CALL}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.a0.l$c */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/l$c.class */
    public static final class C11073c<T> implements Observable.OnSubscribe<T> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC11043c f24922a;

        /* renamed from: j.a.a0.l$c$a */
        /* loaded from: classes2-dex2jar.jar:j/a/a0/l$c$a.class */
        public static final class C11074a extends AbstractC15150l implements AbstractC15118l<NumberInfo, C14989s> {

            /* renamed from: a */
            public final /* synthetic */ Subscriber f24923a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11074a(Subscriber subscriber) {
                super(1);
                this.f24923a = subscriber;
            }

            /* renamed from: a */
            public final void m10310a(NumberInfo numberInfo) {
                C15149k.m377b(numberInfo, "it");
                this.f24923a.onNext(numberInfo);
                this.f24923a.onCompleted();
            }

            @Override // p626l.p641z.p642c.AbstractC15118l
            public /* bridge */ /* synthetic */ C14989s invoke(NumberInfo numberInfo) {
                m10310a(numberInfo);
                return C14989s.f33022a;
            }
        }

        public C11073c(AbstractC11043c cVar) {
            this.f24922a = cVar;
        }

        /* renamed from: a */
        public final void call(Subscriber<? super NumberInfo> subscriber) {
            AbstractC11043c cVar = this.f24922a;
            cVar.mo10306a(new C11071a(cVar.getListener(), new C11074a(subscriber)));
            this.f24922a.load();
        }
    }

    /* renamed from: j.a.a0.l$d */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/l$d.class */
    public static final class C11075d<R> implements FuncN<R> {

        /* renamed from: a */
        public static final C11075d f24924a = new C11075d();

        @Override // p660rx.functions.FuncN
        public final void call(Object[] objArr) {
        }
    }

    /* renamed from: j.a.a0.l$e */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/l$e.class */
    public static final class C11076e<T, R> implements Func1<NumberInfo, Boolean> {

        /* renamed from: a */
        public static final C11076e f24925a = new C11076e();

        /* renamed from: a */
        public final boolean m10309a(NumberInfo numberInfo) {
            boolean z;
            if (!numberInfo.m28372X()) {
                C15149k.m383a((Object) numberInfo, "it");
                if (numberInfo.m28305o() != null) {
                    z = false;
                    return z;
                }
            }
            z = true;
            return z;
        }

        @Override // p660rx.functions.Func1
        public /* bridge */ /* synthetic */ Boolean call(NumberInfo numberInfo) {
            return Boolean.valueOf(m10309a(numberInfo));
        }
    }

    /* renamed from: a */
    public static final Observable<C14989s> m10315a(List<? extends AbstractC11043c> list, List<? extends AbstractC11043c> list2, Scheduler scheduler) {
        C15149k.m377b(list, "syncLoaders");
        C15149k.m377b(list2, "asyncLoaders");
        C15149k.m377b(scheduler, "scheduler");
        ArrayList arrayList = new ArrayList();
        if (!list.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(C15022n.m555a(list, 10));
            for (AbstractC11043c cVar : list) {
                arrayList2.add(f24918a.m10316a(cVar, scheduler));
            }
            arrayList.add(Observable.concat(arrayList2).takeFirst(C11076e.f24925a));
        }
        if (!list2.isEmpty()) {
            ArrayList arrayList3 = new ArrayList(C15022n.m555a(list2, 10));
            for (AbstractC11043c cVar2 : list2) {
                arrayList3.add(f24918a.m10316a(cVar2, scheduler));
            }
            arrayList.addAll(arrayList3);
        }
        Observable<C14989s> subscribeOn = Observable.zip(arrayList, C11075d.f24924a).subscribeOn(scheduler);
        C15149k.m383a((Object) subscribeOn, "Observable\n             …  .subscribeOn(scheduler)");
        return subscribeOn;
    }

    /* renamed from: a */
    public final Observable<NumberInfo> m10316a(AbstractC11043c cVar, Scheduler scheduler) {
        Observable create = Observable.create(new C11073c(cVar));
        C13565v g = C13565v.m3921g();
        C15149k.m383a((Object) g, "DevelopMode.getInstance()");
        Observable<NumberInfo> subscribeOn = ((!g.m23335b() || !CallStats.m28533i()) ? create.timeout(cVar.mo10308a(), TimeUnit.MILLISECONDS, Observable.create(new C11072b(cVar))) : create).subscribeOn(scheduler);
        C15149k.m383a((Object) subscribeOn, "Observable\n             …  .subscribeOn(scheduler)");
        return subscribeOn;
    }
}
