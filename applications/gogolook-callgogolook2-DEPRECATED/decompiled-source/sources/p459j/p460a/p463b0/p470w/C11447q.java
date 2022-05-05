package p459j.p460a.p463b0.p470w;

import android.content.Context;
import android.text.TextUtils;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p478y.C11613i;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13217t;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14217x3;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14978j;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p632u.C15022n;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Observable;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action0;
import p660rx.functions.Action1;
import p660rx.functions.Func1;
import p660rx.schedulers.Schedulers;
import p660rx.subjects.PublishSubject;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018�� \u001c2\u00020\u0001:\u0001\u001cB\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0017\u001a\u00020\u00182\b\b\u0001\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0019\u001a\u00020\u0010H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R&\u0010\u0006\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0004\u0012\u00020\n0\u00070\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\fX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\rR-\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\n0\u00070\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R,\u0010\u0015\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0004\u0012\u00020\n0\u00070\fX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\r¨\u0006\u001d"}, m815d2 = {"Lgogolook/callgogolook2/main/smslog/SmsLogsDataSourceImpl;", "Lgogolook/callgogolook2/main/smslog/SmsLogsDataSource;", "()V", "_isLoading", "Landroidx/lifecycle/MutableLiveData;", "", "_smsLogs", "Lkotlin/Pair;", "", "Lgogolook/callgogolook2/main/smslog/SmsLogsContract$SmsLog;", "", "isLoading", "Landroidx/lifecycle/LiveData;", "()Landroidx/lifecycle/LiveData;", "smsLogSubject", "Lrx/subjects/PublishSubject;", "", "getSmsLogSubject", "()Lrx/subjects/PublishSubject;", "smsLogSubject$delegate", "Lkotlin/Lazy;", "smsLogs", "getSmsLogs", "loadSmsLogs", "", "filter", "extras", "querySmsLogs", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.w.q */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/q.class */
public final class C11447q implements AbstractC11446p {

    /* renamed from: f */
    public static final /* synthetic */ AbstractC14906i[] f25590f;

    /* renamed from: a */
    public final MutableLiveData<Boolean> f25591a = new MutableLiveData<>();

    /* renamed from: b */
    public final LiveData<Boolean> f25592b = this.f25591a;

    /* renamed from: c */
    public final MutableLiveData<C14978j<List<C11444n>, Object>> f25593c = new MutableLiveData<>();

    /* renamed from: d */
    public final LiveData<C14978j<List<C11444n>, Object>> f25594d = this.f25593c;

    /* renamed from: e */
    public final AbstractC14974f f25595e = C14975g.m662a(new C11449b());

    /* renamed from: j.a.b0.w.q$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/q$a.class */
    public static final class C11448a {
        public C11448a() {
        }

        public /* synthetic */ C11448a(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001aV\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004 \u0005*\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00020\u0002 \u0005**\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004 \u0005*\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0006"}, m815d2 = {"<anonymous>", "Lrx/subjects/PublishSubject;", "Lkotlin/Pair;", "", "", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.b0.w.q$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/q$b.class */
    public static final class C11449b extends AbstractC15150l implements AbstractC15107a<PublishSubject<C14978j<? extends Integer, ? extends Object>>> {

        /* renamed from: j.a.b0.w.q$b$a */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/w/q$b$a.class */
        public static final class C11450a<T, R> implements Func1<C14978j<? extends Integer, ? extends Object>, Observable<C14978j<? extends List<? extends C11444n>, ? extends Object>>> {
            public C11450a() {
            }

            /* renamed from: a */
            public final Observable<C14978j<List<C11444n>, Object>> call(C14978j<Integer, ? extends Object> jVar) {
                int intValue = jVar.m661a().intValue();
                return Observable.just(new C14978j(C11447q.this.m9615a(intValue), jVar.m660b()));
            }
        }

        /* renamed from: j.a.b0.w.q$b$b */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/w/q$b$b.class */
        public static final class C11451b<T> implements Action1<C14978j<? extends List<? extends C11444n>, ? extends Object>> {
            public C11451b() {
            }

            /* renamed from: a */
            public final void call(C14978j<? extends List<C11444n>, ? extends Object> jVar) {
                C11447q.this.f25593c.setValue(new C14978j((List) jVar.m661a(), jVar.m660b()));
                C11447q.this.f25591a.setValue(false);
            }
        }

        /* renamed from: j.a.b0.w.q$b$c */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/w/q$b$c.class */
        public static final class C11452c<T> implements Action1<Throwable> {
            public C11452c() {
            }

            /* renamed from: a */
            public final void call(Throwable th) {
                C11447q.this.f25593c.setValue(new C14978j(C15021m.m565a(), C14989s.f33022a));
                C14080m2.m2612a(th);
                C11447q.this.f25591a.setValue(false);
            }
        }

        /* renamed from: j.a.b0.w.q$b$d */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/w/q$b$d.class */
        public static final class C11453d implements Action0 {

            /* renamed from: a */
            public static final C11453d f25600a = new C11453d();

            @Override // p660rx.functions.Action0
            public final void call() {
            }
        }

        public C11449b() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final PublishSubject<C14978j<? extends Integer, ? extends Object>> invoke() {
            PublishSubject<C14978j<? extends Integer, ? extends Object>> create = PublishSubject.create();
            create.observeOn(Schedulers.m0io()).debounce(500L, TimeUnit.MILLISECONDS).flatMap(new C11450a()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C11451b(), new C11452c(), C11453d.f25600a);
            return create;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11447q.class), "smsLogSubject", "getSmsLogSubject()Lrx/subjects/PublishSubject;");
        C15131a0.m412a(sVar);
        f25590f = new AbstractC14906i[]{sVar};
        new C11448a(null);
    }

    @Override // p459j.p460a.p463b0.p470w.AbstractC11446p
    /* renamed from: a */
    public LiveData<C14978j<List<C11444n>, Object>> mo9616a() {
        return this.f25594d;
    }

    /* renamed from: a */
    public final List<C11444n> m9615a(int i) {
        Object obj;
        ArrayList arrayList = new ArrayList();
        AbstractC11528g k = AbstractC11528g.m9259k();
        C15149k.m383a((Object) k, "DataModel.get()");
        C11534l f = k.mo9244f();
        ArrayList<C11613i> b = i != 1 ? i != 2 ? C11521c.m9356b() : C11521c.m9345c(f) : C11521c.m9355b(f);
        if ((b.isEmpty() ? b : null) != null) {
            return arrayList;
        }
        Context o = MyApplication.m29013o();
        if (!C12810o.m5236i()) {
            C15149k.m383a((Object) b, "conversationList");
            ArrayList arrayList2 = new ArrayList(C15022n.m555a(b, 10));
            for (C11613i iVar : b) {
                String d = iVar.m8868d();
                String e = !(d == null || d.length() == 0) ? C14108o4.m2481e(d) : null;
                arrayList2.add(Boolean.valueOf(arrayList.add(new C11444n(iVar.m8870b(), iVar.m8867e() > 1, iVar.m8869c(), e, d, C14217x3.m2155c(o, e), C14217x3.m2146e(o, e), iVar.m8865g(), iVar.m8866f(), iVar.m8863i(), iVar.m8864h(), false, 2048, null))));
            }
            return arrayList;
        }
        List<WhiteListRealmObject> a = C13217t.m4398a(C13193p.m4437a("_status"), C13193p.m4438a(2), C13193p.m4439a(C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
        Iterator<C11613i> it = b.iterator();
        while (it.hasNext()) {
            C11613i next = it.next();
            String d2 = next.m8868d();
            String e2 = !(d2 == null || d2.length() == 0) ? C14108o4.m2481e(d2) : null;
            if (!TextUtils.isEmpty(d2) && next.m8872a() == 2) {
                if (a != null) {
                    Iterator<T> it2 = a.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        if (C15149k.m384a((Object) ((WhiteListRealmObject) obj).get_e164(), (Object) d2)) {
                            break;
                        }
                    }
                    if (((WhiteListRealmObject) obj) != null) {
                    }
                }
            }
            arrayList.add(new C11444n(next.m8870b(), next.m8867e() > 1, next.m8869c(), e2, d2, C14217x3.m2155c(o, e2), C14217x3.m2146e(o, e2), next.m8865g(), next.m8866f(), next.m8863i(), next.m8864h(), false, 2048, null));
        }
        return arrayList;
    }

    @Override // p459j.p460a.p463b0.p470w.AbstractC11446p
    /* renamed from: a */
    public void mo9614a(int i, Object obj) {
        C15149k.m377b(obj, "extras");
        this.f25591a.postValue(true);
        m9611b().onNext(new C14978j<>(Integer.valueOf(i), obj));
    }

    /* renamed from: b */
    public final PublishSubject<C14978j<Integer, Object>> m9611b() {
        AbstractC14974f fVar = this.f25595e;
        AbstractC14906i iVar = f25590f[0];
        return (PublishSubject) fVar.getValue();
    }

    @Override // p459j.p460a.p463b0.p470w.AbstractC11446p
    public LiveData<Boolean> isLoading() {
        return this.f25592b;
    }
}
