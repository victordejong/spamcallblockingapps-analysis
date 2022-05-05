package p459j.p460a.p462a1;

import android.text.TextUtils;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.realm.obj.block.BlockListRealmObject;
import gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject;
import io.realm.Sort;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13217t;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.C14989s;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0006\u0018�� \u00152\u00020\u0001:\u0001\u0015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u001d\u0010\u000e\u001a\u00020\n2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0010H\u0016¢\u0006\u0002\u0010\u0011J\u001d\u0010\u0012\u001a\u00020\n2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0010H\u0016¢\u0006\u0002\u0010\u0011J\b\u0010\u0013\u001a\u00020\nH\u0016J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0004¨\u0006\u0016"}, m815d2 = {"Lgogolook/callgogolook2/whitelist/WhiteListPresenter;", "Lgogolook/callgogolook2/whitelist/WhiteListContract$Presenter;", "view", "Lgogolook/callgogolook2/whitelist/WhiteListContract$View;", "(Lgogolook/callgogolook2/whitelist/WhiteListContract$View;)V", "whiteListActivityView", "getWhiteListActivityView", "()Lgogolook/callgogolook2/whitelist/WhiteListContract$View;", "setWhiteListActivityView", "checkIfCanSaveToWhiteList", "", "e164", "", "deleteWhiteList", "handleDeSelectedNumber", "numbers", "", "([Ljava/lang/String;)V", "handleSelectedNumber", "loadWhiteList", "saveToWhiteList", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.a1.d */
/* loaded from: classes3-dex2jar.jar:j/a/a1/d.class */
public final class C11091d implements AbstractC11087a {

    /* renamed from: a */
    public AbstractC11088b f24956a;

    /* renamed from: j.a.a1.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$a.class */
    public static final class C11092a {
        public C11092a() {
        }

        public /* synthetic */ C11092a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.a1.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$b.class */
    public static final class C11093b<T> implements Single.OnSubscribe<T> {

        /* renamed from: b */
        public final /* synthetic */ String f24958b;

        public C11093b(String str) {
            this.f24958b = str;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Void> singleSubscriber) {
            C13625a.m3784e(C11091d.this.m10282a().mo10291a(), this.f24958b);
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: j.a.a1.d$c */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$c.class */
    public static final class C11094c<T> implements Action1<Void> {

        /* renamed from: a */
        public static final C11094c f24959a = new C11094c();

        /* renamed from: a */
        public final void call(Void r2) {
        }
    }

    /* renamed from: j.a.a1.d$d */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$d.class */
    public static final class C11095d<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C11095d f24960a = new C11095d();

        /* renamed from: a */
        public final void call(Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    /* renamed from: j.a.a1.d$e */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$e.class */
    public static final class C11096e<T> implements Single.OnSubscribe<T> {

        /* renamed from: b */
        public final /* synthetic */ String[] f24962b;

        public C11096e(String[] strArr) {
            this.f24962b = strArr;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Void> singleSubscriber) {
            String[] strArr = this.f24962b;
            if (strArr != null) {
                ArrayList arrayList = new ArrayList(strArr.length);
                for (String str : strArr) {
                    String l = TextUtils.isEmpty(str) ? "" : C14108o4.m2474l(str);
                    String[] a = C13193p.m4437a("_e164");
                    C15149k.m383a((Object) l, "e164");
                    List<WhiteListRealmObject> a2 = C13217t.m4398a(a, C13193p.m4438a(l), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                    if (a2 == null || a2.isEmpty()) {
                        C13625a.m3773i(C11091d.this.m10282a().mo10291a(), l);
                    } else {
                        C13625a.m3769l(C11091d.this.m10282a().mo10291a(), l);
                    }
                    arrayList.add(C14989s.f33022a);
                }
            }
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: j.a.a1.d$f */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$f.class */
    public static final class C11097f<T> implements Action1<Void> {

        /* renamed from: a */
        public static final C11097f f24963a = new C11097f();

        /* renamed from: a */
        public final void call(Void r2) {
        }
    }

    /* renamed from: j.a.a1.d$g */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$g.class */
    public static final class C11098g<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C11098g f24964a = new C11098g();

        /* renamed from: a */
        public final void call(Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    /* renamed from: j.a.a1.d$h */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$h.class */
    public static final class C11099h<T> implements Single.OnSubscribe<T> {

        /* renamed from: a */
        public static final C11099h f24965a = new C11099h();

        /* renamed from: a */
        public final void call(SingleSubscriber<? super List<? extends WhiteListRealmObject>> singleSubscriber) {
            singleSubscriber.onSuccess(C13217t.m4398a(C13193p.m4437a("_status"), C13193p.m4438a(2), C13193p.m4439a(C13193p.EnumC13194a.NOT_EQUAL_TO), "_createtime", Sort.DESCENDING));
        }
    }

    /* renamed from: j.a.a1.d$i */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$i.class */
    public static final class C11100i<T> implements Action1<List<? extends WhiteListRealmObject>> {
        public C11100i() {
        }

        /* renamed from: a */
        public final void call(List<? extends WhiteListRealmObject> list) {
            C11091d.this.m10282a().mo10289c(list);
        }
    }

    /* renamed from: j.a.a1.d$j */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$j.class */
    public static final class C11101j<T> implements Action1<Throwable> {
        public C11101j() {
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            C13973d4.m2952a(th);
            C11091d.this.m10282a().mo10289c(null);
        }
    }

    /* renamed from: j.a.a1.d$k */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$k.class */
    public static final class C11102k<T> implements Single.OnSubscribe<T> {

        /* renamed from: b */
        public final /* synthetic */ String f24969b;

        public C11102k(String str) {
            this.f24969b = str;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Boolean> singleSubscriber) {
            boolean z;
            boolean z2 = true;
            List<WhiteListRealmObject> a = C13217t.m4398a(C13193p.m4437a("_e164"), C13193p.m4438a(this.f24969b), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
            if (a != null) {
                z = !a.isEmpty();
                if (a.isEmpty() || a.get(0).get_status() != 2) {
                    z2 = false;
                }
            } else {
                z2 = false;
                z = false;
            }
            if (!z) {
                C13625a.m3773i(C11091d.this.m10282a().mo10291a(), this.f24969b);
                singleSubscriber.onSuccess(true);
            } else if (z2) {
                C13625a.m3769l(C11091d.this.m10282a().mo10291a(), this.f24969b);
                singleSubscriber.onSuccess(true);
            } else {
                singleSubscriber.onSuccess(false);
            }
        }
    }

    /* renamed from: j.a.a1.d$l */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$l.class */
    public static final class C11103l<T> implements Action1<Boolean> {
        public C11103l() {
        }

        /* renamed from: a */
        public final void call(Boolean bool) {
            if (!bool.booleanValue()) {
                C14687h.m861a(C11091d.this.m10282a().mo10291a(), C14206w4.m2225a((int) R$string.blocklist_smart_exception_page_add_error), 1).m858c();
            }
        }
    }

    /* renamed from: j.a.a1.d$m */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/d$m.class */
    public static final class C11104m<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C11104m f24971a = new C11104m();

        /* renamed from: a */
        public final void call(Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    static {
        new C11092a(null);
    }

    public C11091d(AbstractC11088b bVar) {
        C15149k.m377b(bVar, "view");
        this.f24956a = bVar;
    }

    /* renamed from: a */
    public final AbstractC11088b m10282a() {
        return this.f24956a;
    }

    /* renamed from: a */
    public void m10281a(String str) {
        C15149k.m377b(str, "e164");
        String[] a = C13193p.m4437a("_e164", "_type", "_status");
        Object[] a2 = C13193p.m4438a(str, 1, 2);
        C13193p.EnumC13194a aVar = C13193p.EnumC13194a.EQUAL_TO;
        List<BlockListRealmObject> a3 = C13032a.m4748a(a, a2, C13193p.m4439a(aVar, aVar, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
        boolean z = false;
        if (a3 != null) {
            z = false;
            if (!a3.isEmpty()) {
                z = true;
            }
        }
        if (z) {
            this.f24956a.mo10290b(str);
        } else {
            m10277c(str);
        }
    }

    /* renamed from: a */
    public void m10280a(String[] strArr) {
        Single.create(new C11096e(strArr)).subscribeOn(Schedulers.m0io()).subscribe(C11097f.f24963a, C11098g.f24964a);
    }

    /* renamed from: b */
    public void m10279b() {
        Single.create(C11099h.f24965a).subscribeOn(Schedulers.from(C14174u.m2297g())).observeOn(AndroidSchedulers.mainThread()).subscribe(new C11100i(), new C11101j());
    }

    /* renamed from: b */
    public void m10278b(String str) {
        C15149k.m377b(str, "e164");
        Single.create(new C11093b(str)).subscribeOn(Schedulers.m0io()).subscribe(C11094c.f24959a, C11095d.f24960a);
    }

    /* renamed from: c */
    public void m10277c(String str) {
        C15149k.m377b(str, "e164");
        Single.create(new C11102k(str)).subscribeOn(Schedulers.from(C14174u.m2297g())).observeOn(AndroidSchedulers.mainThread()).subscribe(new C11103l(), C11104m.f24971a);
    }
}
