package p459j.p460a.p463b0.p464q;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14174u;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Observable;
import p660rx.Observer;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Func1;
import p660rx.schedulers.Schedulers;
import p660rx.subjects.PublishSubject;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018�� \u00182\u00020\u0001:\u0001\u0018B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0016J \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R!\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR \u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u000fX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0019"}, m815d2 = {"Lgogolook/callgogolook2/main/calllog/CallLogsDataSourceImpl;", "Lgogolook/callgogolook2/main/calllog/CallLogsDataSource;", "()V", "_callLogs", "Landroidx/lifecycle/MutableLiveData;", "", "Lgogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject;", "callLogSubject", "Lrx/subjects/PublishSubject;", "", "getCallLogSubject", "()Lrx/subjects/PublishSubject;", "callLogSubject$delegate", "Lkotlin/Lazy;", "callLogs", "Landroidx/lifecycle/LiveData;", "getCallLogs", "()Landroidx/lifecycle/LiveData;", "loadCallLogs", "", "filterTypes", "queryCallLogs", "limited", "", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.q.j */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/j.class */
public final class C11167j implements AbstractC11166i {

    /* renamed from: d */
    public static final /* synthetic */ AbstractC14906i[] f25081d;

    /* renamed from: a */
    public final MutableLiveData<List<LogsGroupRealmObject>> f25082a = new MutableLiveData<>();

    /* renamed from: b */
    public final LiveData<List<LogsGroupRealmObject>> f25083b = this.f25082a;

    /* renamed from: c */
    public final AbstractC14974f f25084c = C14975g.m662a(new C11169b());

    /* renamed from: j.a.b0.q.j$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/j$a.class */
    public static final class C11168a {
        public C11168a() {
        }

        public /* synthetic */ C11168a(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\u0010��\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, m815d2 = {"<anonymous>", "Lrx/subjects/PublishSubject;", "", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.b0.q.j$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/j$b.class */
    public static final class C11169b extends AbstractC15150l implements AbstractC15107a<PublishSubject<int[]>> {

        /* renamed from: j.a.b0.q.j$b$a */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/q/j$b$a.class */
        public static final class C11170a<T, R> implements Func1<int[], Observable<List<? extends LogsGroupRealmObject>>> {
            public C11170a() {
            }

            /* renamed from: a */
            public final Observable<List<LogsGroupRealmObject>> call(int[] iArr) {
                List list;
                if (iArr != null) {
                    if (!(iArr.length == 0)) {
                        list = C11167j.this.m10149a(iArr, true);
                        return Observable.just(list);
                    }
                }
                list = C15021m.m565a();
                return Observable.just(list);
            }
        }

        /* renamed from: j.a.b0.q.j$b$b */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/q/j$b$b.class */
        public static final class C11171b implements Observer<List<? extends LogsGroupRealmObject>> {
            public C11171b() {
            }

            /* renamed from: a */
            public void onNext(List<? extends LogsGroupRealmObject> list) {
                C15149k.m377b(list, "logList");
                C11167j.this.f25082a.setValue(list);
            }

            @Override // p660rx.Observer
            public void onCompleted() {
            }

            @Override // p660rx.Observer
            public void onError(Throwable th) {
                C15149k.m377b(th, "e");
                C11167j.this.f25082a.setValue(C15021m.m565a());
                C14080m2.m2612a(th);
            }
        }

        public C11169b() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final PublishSubject<int[]> invoke() {
            PublishSubject<int[]> create = PublishSubject.create();
            create.observeOn(Schedulers.from(C14174u.m2300d())).debounce(500L, TimeUnit.MILLISECONDS).flatMap(new C11170a()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C11171b());
            return create;
        }
    }

    /* renamed from: j.a.b0.q.j$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/j$c.class */
    public static final class C11172c extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ int[] f25088a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11172c(int[] iArr) {
            super(1);
            this.f25088a = iArr;
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                int i = 0;
                RealmResults findAll = realm.where(LogsGroupRealmObject.class).equalTo(LogsGroupRealmObject.BLOCKED, (Integer) 0).lessThan("type", 32).greaterThan(LogsGroupRealmObject.GROUP_ID_1, 0).sort("date", Sort.DESCENDING).distinct(LogsGroupRealmObject.GROUP_ID_1).findAll();
                if (findAll == null) {
                    return null;
                }
                RealmQuery where = findAll.where();
                C15149k.m383a((Object) where, "where()");
                int[] iArr = this.f25088a;
                RealmQuery realmQuery = where;
                if (iArr != null) {
                    ArrayList arrayList = new ArrayList(iArr.length);
                    int length = iArr.length;
                    int i2 = 0;
                    while (true) {
                        realmQuery = where;
                        if (i >= length) {
                            break;
                        }
                        int i3 = iArr[i];
                        if (i3 == 1) {
                            where = where.equalTo("type", (Integer) 17);
                            C15149k.m383a((Object) where, "furtherQuery.equalTo(Log…bject.TYPE_CALL_INCOMING)");
                        } else if (i3 == 2) {
                            where = where.equalTo("type", (Integer) 18);
                            C15149k.m383a((Object) where, "furtherQuery.equalTo(Log…bject.TYPE_CALL_OUTGOING)");
                        } else if (i3 == 4) {
                            where = where.equalTo("type", (Integer) 19);
                            C15149k.m383a((Object) where, "furtherQuery.equalTo(Log…mObject.TYPE_CALL_MISSED)");
                        }
                        where = where;
                        if (i2 != this.f25088a.length - 1) {
                            where = where.m10371or();
                            C15149k.m383a((Object) where, "furtherQuery.or()");
                        }
                        arrayList.add(C14989s.f33022a);
                        i++;
                        i2++;
                    }
                }
                List findAll2 = realmQuery.findAll();
                if (findAll == null) {
                    return null;
                }
                if (findAll2 == null) {
                    findAll2 = C15021m.m565a();
                }
                return realm.copyFromRealm(findAll2);
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return null;
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11167j.class), "callLogSubject", "getCallLogSubject()Lrx/subjects/PublishSubject;");
        C15131a0.m412a(sVar);
        f25081d = new AbstractC14906i[]{sVar};
        new C11168a(null);
    }

    /* renamed from: a */
    public final List<LogsGroupRealmObject> m10149a(int[] iArr, boolean z) {
        List<LogsGroupRealmObject> list;
        List<LogsGroupRealmObject> list2 = (List) C13131j.m4542a(new C11172c(iArr));
        if (list2 != null) {
            list = list2;
            if (z) {
                list = list2;
                if (list2.size() > 100) {
                    list = list2.subList(0, 101);
                }
            }
        } else {
            list = C15021m.m565a();
        }
        return list;
    }

    /* renamed from: a */
    public final PublishSubject<int[]> m10153a() {
        AbstractC14974f fVar = this.f25084c;
        AbstractC14906i iVar = f25081d[0];
        return (PublishSubject) fVar.getValue();
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11166i
    /* renamed from: a */
    public void mo10150a(int[] iArr) {
        m10153a().onNext(iArr);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11166i
    /* renamed from: b */
    public LiveData<List<LogsGroupRealmObject>> mo10148b() {
        return this.f25083b;
    }
}
