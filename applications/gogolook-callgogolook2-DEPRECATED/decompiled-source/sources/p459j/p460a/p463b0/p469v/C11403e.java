package p459j.p460a.p463b0.p469v;

import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p582w0.C14174u;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\u0018�� \u000e2\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J%\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\fH\u0016¢\u0006\u0002\u0010\rR\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000f"}, m815d2 = {"Lgogolook/callgogolook2/main/logselect/LogSelectionPresenter;", "Lgogolook/callgogolook2/main/logselect/LogSelectionContract$Presenter;", "view", "Lgogolook/callgogolook2/main/logselect/LogSelectionContract$View;", "(Lgogolook/callgogolook2/main/logselect/LogSelectionContract$View;)V", "logSelectionView", "queryLogsSelectionItem", "", "numberArray", "", "", "selectionType", "", "([Ljava/lang/String;I)V", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.v.e */
/* loaded from: classes2-dex2jar.jar:j/a/b0/v/e.class */
public final class C11403e implements AbstractC11398a {

    /* renamed from: a */
    public AbstractC11399b f25517a;

    /* renamed from: j.a.b0.v.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/e$a.class */
    public static final class C11404a {
        public C11404a() {
        }

        public /* synthetic */ C11404a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.b0.v.e$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/e$b.class */
    public static final class C11405b<T> implements Single.OnSubscribe<T> {

        /* renamed from: a */
        public final /* synthetic */ int f25518a;

        /* renamed from: b */
        public final /* synthetic */ String[] f25519b;

        public C11405b(int i, String[] strArr) {
            this.f25518a = i;
            this.f25519b = strArr;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super List<? extends LogsGroupRealmObject>> singleSubscriber) {
            int i = this.f25518a;
            if (i == 0) {
                singleSubscriber.onSuccess(C13131j.m4532b(this.f25519b));
            } else if (i == 1) {
                singleSubscriber.onSuccess(C13131j.m4527c(this.f25519b));
            } else if (i == 2) {
                singleSubscriber.onSuccess(C13131j.m4541a(this.f25519b));
            } else if (i != 3) {
                singleSubscriber.onSuccess(C13131j.m4524e());
            } else {
                singleSubscriber.onSuccess(C13131j.m4524e());
            }
        }
    }

    /* renamed from: j.a.b0.v.e$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/e$c.class */
    public static final class C11406c<T> implements Action1<List<? extends LogsGroupRealmObject>> {
        public C11406c() {
        }

        /* renamed from: a */
        public final void call(List<? extends LogsGroupRealmObject> list) {
            AbstractC11399b bVar = C11403e.this.f25517a;
            C15149k.m383a((Object) list, "it");
            bVar.mo9689a(list);
        }
    }

    /* renamed from: j.a.b0.v.e$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/e$d.class */
    public static final class C11407d<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C11407d f25521a = new C11407d();

        /* renamed from: a */
        public final void call(Throwable th) {
        }
    }

    static {
        new C11404a(null);
    }

    public C11403e(AbstractC11399b bVar) {
        C15149k.m377b(bVar, "view");
        this.f25517a = bVar;
    }

    @Override // p459j.p460a.p463b0.p469v.AbstractC11398a
    /* renamed from: a */
    public void mo9677a(String[] strArr, int i) {
        Single.create(new C11405b(i, strArr)).subscribeOn(Schedulers.from(C14174u.m2297g())).observeOn(AndroidSchedulers.mainThread()).subscribe(new C11406c(), C11407d.f25521a);
    }
}
