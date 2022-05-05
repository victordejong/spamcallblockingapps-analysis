package p459j.p460a.p533l.p534n;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.messaging.datamodel.action.DeleteConversationAction;
import gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.p478y.C11613i;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13217t;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.DialogC14618f;
import p626l.C14986p;
import p626l.p632u.C15022n;
import p626l.p632u.C15029u;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\b\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\tH\u0016J\b\u0010\u000f\u001a\u00020\tH\u0016J\b\u0010\u0010\u001a\u00020\tH\u0016J\b\u0010\u0011\u001a\u00020\tH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m815d2 = {"Lgogolook/callgogolook2/block/blocklog/SmsBlockLogPresenter;", "Lgogolook/callgogolook2/block/blocklog/SmsBlockLogContract$Presenter;", "view", "Lgogolook/callgogolook2/block/blocklog/SmsBlockLogContract$View;", "(Lgogolook/callgogolook2/block/blocklog/SmsBlockLogContract$View;)V", "lastLongClickLog", "Lgogolook/callgogolook2/block/blocklog/SmsBlockLogContract$SmsBlockLog;", "smsBlockLogView", "deleteAllSmsBlockLog", "", "getLastLongClickLog", "handleCallLogsLongClick", "smsBlockLog", "handleContextMenuActionBlock", "handleContextMenuActionCall", "handleContextMenuActionDelete", "handleContextMenuActionMessage", "loadSmsBlockLog", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.l.n.k */
/* loaded from: classes2-dex2jar.jar:j/a/l/n/k.class */
public final class C12984k implements AbstractC12976g {

    /* renamed from: a */
    public final AbstractC12978i f29367a;

    /* renamed from: b */
    public C12977h f29368b;

    /* renamed from: j.a.l.n.k$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/k$a.class */
    public static final class DialogInterface$OnClickListenerC12985a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ List f29369a;

        public DialogInterface$OnClickListenerC12985a(List list) {
            this.f29369a = list;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            List<C12977h> list = this.f29369a;
            ArrayList arrayList = new ArrayList(C15022n.m555a(list, 10));
            for (C12977h hVar : list) {
                arrayList.add(hVar.m4894a());
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                String[] strArr = (String[]) array;
                List<C12977h> list2 = this.f29369a;
                ArrayList arrayList2 = new ArrayList(C15022n.m555a(list2, 10));
                for (C12977h hVar2 : list2) {
                    arrayList2.add(Long.valueOf(hVar2.m4889f()));
                }
                DeleteConversationAction.m27722a(strArr, C15029u.m529c((Collection<Long>) arrayList2), -1);
                dialogInterface.dismiss();
                return;
            }
            throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
        }
    }

    /* renamed from: j.a.l.n.k$b */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/k$b.class */
    public static final class DialogInterface$OnClickListenerC12986b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f29370a;

        public DialogInterface$OnClickListenerC12986b(String str) {
            this.f29370a = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            DeleteConversationAction.m27722a(new String[]{this.f29370a}, new long[]{System.currentTimeMillis()}, -1);
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.l.n.k$c */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/k$c.class */
    public static final class C12987c<T> implements Single.OnSubscribe<T> {

        /* renamed from: a */
        public static final C12987c f29371a = new C12987c();

        /* renamed from: a */
        public final void call(SingleSubscriber<? super List<C12977h>> singleSubscriber) {
            String e;
            WhiteListRealmObject whiteListRealmObject;
            T t;
            ArrayList arrayList = new ArrayList();
            ArrayList<C11613i> a = C11521c.m9393a();
            if ((a.isEmpty() ? a : null) != null) {
                singleSubscriber.onSuccess(null);
                return;
            }
            List<WhiteListRealmObject> a2 = C13217t.m4398a(C13193p.m4437a("_status"), C13193p.m4438a(2), C13193p.m4439a(C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
            Iterator<C11613i> it = a.iterator();
            while (it.hasNext()) {
                C11613i next = it.next();
                String d = next.m8868d();
                if (!(d == null || (e = C14108o4.m2481e(d)) == null)) {
                    if (a2 != null) {
                        Iterator<T> it2 = a2.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                t = null;
                                break;
                            }
                            t = it2.next();
                            if (C15149k.m384a((Object) ((WhiteListRealmObject) t).get_e164(), (Object) d)) {
                                break;
                            }
                        }
                        whiteListRealmObject = (WhiteListRealmObject) t;
                    } else {
                        whiteListRealmObject = null;
                    }
                    if (whiteListRealmObject == null) {
                        arrayList.add(new C12977h(e, d, next.m8870b(), next.m8865g(), next.m8866f(), null, next.m8863i(), next.m8864h()));
                    }
                }
            }
            singleSubscriber.onSuccess(arrayList);
        }
    }

    /* renamed from: j.a.l.n.k$d */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/k$d.class */
    public static final class C12988d<T> implements Action1<List<? extends C12977h>> {
        public C12988d() {
        }

        /* renamed from: a */
        public final void call(List<C12977h> list) {
            Context a = C12984k.this.f29367a.mo4884a();
            if (a != null && C14217x3.m2193a(a)) {
                C12984k.this.f29367a.mo4880e(list);
            }
        }
    }

    /* renamed from: j.a.l.n.k$e */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/k$e.class */
    public static final class C12989e<T> implements Action1<Throwable> {
        public C12989e() {
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            C13973d4.m2952a(th);
            Context a = C12984k.this.f29367a.mo4884a();
            if (a != null && C14217x3.m2193a(a)) {
                C12984k.this.f29367a.mo4880e(null);
            }
        }
    }

    public C12984k(AbstractC12978i iVar) {
        C15149k.m377b(iVar, "view");
        this.f29367a = iVar;
    }

    /* renamed from: a */
    public void m4877a() {
        List<C12977h> w = this.f29367a.mo4879w();
        if (w != null) {
            Context a = this.f29367a.mo4884a();
            if (C14191v.m2254c(a)) {
                DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(a);
                fVar.m979b(C14206w4.m2225a((int) R$string.sms_block_history_delete_confirm));
                fVar.m977c(4);
                fVar.m978b(C14206w4.m2225a((int) R$string.okok), new DialogInterface$OnClickListenerC12985a(w));
                fVar.m984a(C14206w4.m2225a((int) R$string.cancel), (DialogInterface.OnClickListener) null);
                fVar.m982b();
            }
        }
    }

    /* renamed from: a */
    public void m4876a(C12977h hVar) {
        C15149k.m377b(hVar, "smsBlockLog");
        this.f29368b = hVar;
        this.f29367a.mo4882b();
    }

    /* renamed from: b */
    public C12977h m4874b() {
        return this.f29368b;
    }

    /* renamed from: c */
    public void m4873c() {
        String b;
        C12977h hVar = this.f29368b;
        if (hVar != null && (b = hVar.m4893b()) != null) {
            C12928g.m4997a(this.f29367a.mo4884a(), b, 3, (String) null, (View.OnClickListener) null, DataUserReport.Source.SMS);
        }
    }

    /* renamed from: d */
    public void m4872d() {
        String b;
        C12977h hVar = this.f29368b;
        if (hVar != null && (b = hVar.m4893b()) != null) {
            C14217x3.m2145e(this.f29367a.mo4884a(), b, 0);
        }
    }

    /* renamed from: e */
    public void m4871e() {
        String a;
        C12977h hVar = this.f29368b;
        if (hVar != null && (a = hVar.m4894a()) != null) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this.f29367a.mo4884a());
            Context a2 = this.f29367a.mo4884a();
            fVar.m979b(a2 != null ? a2.getString(R$string.delete_confirm_text) : null);
            fVar.m977c(4);
            Context a3 = this.f29367a.mo4884a();
            fVar.m978b(a3 != null ? a3.getString(R$string.okok) : null, new DialogInterface$OnClickListenerC12986b(a));
            Context a4 = this.f29367a.mo4884a();
            fVar.m984a(a4 != null ? a4.getString(R$string.cancel) : null, (DialogInterface.OnClickListener) null);
            fVar.m982b();
        }
    }

    /* renamed from: f */
    public void m4870f() {
        String b;
        Context a;
        C12977h hVar = this.f29368b;
        if (hVar != null && (b = hVar.m4893b()) != null && (a = this.f29367a.mo4884a()) != null) {
            C12810o.m5267a(a, 7, b, (String) null, false, -1);
        }
    }

    /* renamed from: g */
    public void m4869g() {
        if (!C12810o.m5236i()) {
            this.f29367a.mo4880e(null);
        } else {
            Single.create(C12987c.f29371a).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12988d(), new C12989e());
        }
    }
}
