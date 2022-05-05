package p459j.p460a.p533l.p534n;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallFragmentActivity;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p541n0.C13041b;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u000e\u0018��  2\u00020\u0001:\u0001 B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0011H\u0016J\n\u0010\u0015\u001a\u0004\u0018\u00010\tH\u0016J\n\u0010\u0016\u001a\u0004\u0018\u00010\tH\u0016J\n\u0010\u0017\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0011H\u0016J\b\u0010\u001a\u001a\u00020\u0013H\u0016J\b\u0010\u001b\u001a\u00020\u0013H\u0016J\b\u0010\u001c\u001a\u00020\u0013H\u0016J\b\u0010\u001d\u001a\u00020\u0013H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\u001e\u001a\u00020\u0013H\u0016J\b\u0010\u001f\u001a\u00020\u0013H\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��¨\u0006!"}, m815d2 = {"Lgogolook/callgogolook2/block/blocklog/BlockLogPresenter;", "Lgogolook/callgogolook2/block/blocklog/BlockLogContract$Presenter;", "view", "Lgogolook/callgogolook2/block/blocklog/BlockLogContract$View;", "(Lgogolook/callgogolook2/block/blocklog/BlockLogContract$View;)V", "blockLogView", "isLastLongClickLogBlocked", "", "lastLongClickLogCause", "", "lastLongClickLogE164", "lastLongClickLogKeyWord", "lastLongClickLogKind", "", "Ljava/lang/Integer;", "lastLongClickLogNumber", "lastLongClickLogs", "Lgogolook/callgogolook2/realm/obj/block/BlockLogRealmObject;", "deleteAllCallBlockLog", "", "getLastLongClickLog", "getLastLongClickLogCauseWording", "getLastLongClickLogE164", "getLastLongClickLogNumber", "handleCallLogsLongClick", "logsObject", "handleContextMenuActionBlock", "handleContextMenuActionCall", "handleContextMenuActionDelete", "handleContextMenuActionMessage", "loadBlockLog", "onStop", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.l.n.d */
/* loaded from: classes2-dex2jar.jar:j/a/l/n/d.class */
public final class C12956d implements AbstractC12950a {

    /* renamed from: a */
    public AbstractC12951b f29312a;

    /* renamed from: b */
    public BlockLogRealmObject f29313b;

    /* renamed from: c */
    public boolean f29314c;

    /* renamed from: d */
    public String f29315d;

    /* renamed from: e */
    public Integer f29316e;

    /* renamed from: f */
    public String f29317f;

    /* renamed from: g */
    public String f29318g;

    /* renamed from: j.a.l.n.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/d$a.class */
    public static final class C12957a {
        public C12957a() {
        }

        public /* synthetic */ C12957a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.l.n.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/d$b.class */
    public static final class DialogInterface$OnClickListenerC12958b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC12958b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C13131j.m4520i();
            C13041b.m4724a(C13193p.m4437a(new String[0]), C13193p.m4438a(new Object[0]), C13193p.m4439a(new C13193p.EnumC13194a[0]));
            C12956d.this.m4920j();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007¨\u0006\b"}, m815d2 = {"<anonymous>", "", "dialog", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick", "gogolook/callgogolook2/block/blocklog/BlockLogPresenter$handleContextMenuActionDelete$1$1"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.l.n.d$c */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/d$c.class */
    public static final class DialogInterface$OnClickListenerC12959c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ BlockLogRealmObject f29320a;

        /* renamed from: b */
        public final /* synthetic */ C12956d f29321b;

        /* renamed from: j.a.l.n.d$c$a */
        /* loaded from: classes2-dex2jar.jar:j/a/l/n/d$c$a.class */
        public static final class C12960a<T> implements Single.OnSubscribe<T> {
            public C12960a() {
            }

            /* renamed from: a */
            public final void call(SingleSubscriber<? super Void> singleSubscriber) {
                C13131j.m4530c(DialogInterface$OnClickListenerC12959c.this.f29320a.get_createtime());
                String str = DialogInterface$OnClickListenerC12959c.this.f29320a.get_e164();
                if (str != null) {
                    C13041b.m4724a(C13193p.m4437a("_e164"), C13193p.m4438a(str), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO));
                }
                singleSubscriber.onSuccess(null);
            }
        }

        /* renamed from: j.a.l.n.d$c$b */
        /* loaded from: classes2-dex2jar.jar:j/a/l/n/d$c$b.class */
        public static final class C12961b<T> implements Action1<Void> {
            public C12961b() {
            }

            /* renamed from: a */
            public final void call(Void r5) {
                DialogInterface$OnClickListenerC12959c.this.f29321b.m4920j();
                C14687h.m861a(DialogInterface$OnClickListenerC12959c.this.f29321b.f29312a.mo4937a(), C14206w4.m2225a((int) R$string.delete_number_toast), 1).m858c();
                C14217x3.m2119o(DialogInterface$OnClickListenerC12959c.this.f29321b.f29312a.mo4937a());
            }
        }

        public DialogInterface$OnClickListenerC12959c(BlockLogRealmObject blockLogRealmObject, C12956d dVar) {
            this.f29320a = blockLogRealmObject;
            this.f29321b = dVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            Single.create(new C12960a()).subscribeOn(Schedulers.from(C14174u.m2297g())).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12961b());
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.l.n.d$d */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/d$d.class */
    public static final class C12962d<T> implements Single.OnSubscribe<T> {

        /* renamed from: a */
        public static final C12962d f29324a = new C12962d();

        /* renamed from: a */
        public final void call(SingleSubscriber<? super List<? extends BlockLogRealmObject>> singleSubscriber) {
            singleSubscriber.onSuccess(C13041b.m4719d());
        }
    }

    /* renamed from: j.a.l.n.d$e */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/d$e.class */
    public static final class C12963e<T> implements Action1<List<? extends BlockLogRealmObject>> {
        public C12963e() {
        }

        /* renamed from: a */
        public final void call(List<? extends BlockLogRealmObject> list) {
            Context a = C12956d.this.f29312a.mo4937a();
            if (a != null && C14217x3.m2193a(a)) {
                C12956d.this.f29312a.mo4933f(list);
            }
        }
    }

    /* renamed from: j.a.l.n.d$f */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/d$f.class */
    public static final class C12964f<T> implements Action1<Throwable> {
        public C12964f() {
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            C13973d4.m2952a(th);
            Context a = C12956d.this.f29312a.mo4937a();
            if (a != null && C14217x3.m2193a(a)) {
                C12956d.this.f29312a.mo4933f(null);
            }
        }
    }

    static {
        new C12957a(null);
    }

    public C12956d(AbstractC12951b bVar) {
        C15149k.m377b(bVar, "view");
        this.f29312a = bVar;
    }

    /* renamed from: a */
    public void m4931a() {
        if (C14191v.m2254c(this.f29312a.mo4937a())) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this.f29312a.mo4937a());
            fVar.m979b(C14206w4.m2225a((int) R$string.call_block_history_delete_confirm));
            fVar.m977c(4);
            fVar.m978b(WhoscallFragmentActivity.m28663e(R$string.okok), new DialogInterface$OnClickListenerC12958b());
            fVar.m984a(C14206w4.m2225a((int) R$string.cancel), (DialogInterface.OnClickListener) null);
            fVar.m982b();
        }
    }

    /* renamed from: a */
    public void m4930a(BlockLogRealmObject blockLogRealmObject) {
        C15149k.m377b(blockLogRealmObject, "logsObject");
        this.f29313b = blockLogRealmObject;
        if (!C15149k.m384a((Object) blockLogRealmObject.get_e164(), (Object) C14206w4.m2225a((int) R$string.unknown_number))) {
            blockLogRealmObject.get_e164();
        }
        this.f29315d = C15149k.m384a((Object) blockLogRealmObject.get_number(), (Object) C14206w4.m2225a((int) R$string.unknown_number)) ? "" : blockLogRealmObject.get_number();
        this.f29316e = Integer.valueOf(blockLogRealmObject.get_kind());
        this.f29317f = blockLogRealmObject.get_keyword();
        this.f29318g = blockLogRealmObject.get_cause_wording();
        C12928g a = C12928g.m5000a();
        Context a2 = this.f29312a.mo4937a();
        String str = this.f29315d;
        String str2 = this.f29317f;
        Integer num = this.f29316e;
        C12942i a3 = a.m4996a(a2, str, str2, num != null ? num.intValue() : 3);
        C15149k.m383a((Object) a3, "blockResult");
        this.f29314c = a3.m4960d();
        this.f29312a.mo4935b();
    }

    /* renamed from: b */
    public BlockLogRealmObject m4928b() {
        return this.f29313b;
    }

    /* renamed from: c */
    public String m4927c() {
        return this.f29318g;
    }

    /* renamed from: d */
    public String m4926d() {
        return this.f29315d;
    }

    /* renamed from: e */
    public void m4925e() {
        if (this.f29314c) {
            Context a = this.f29312a.mo4937a();
            String str = this.f29315d;
            Integer num = this.f29316e;
            C12928g.m4997a(a, str, num != null ? num.intValue() : 3, (String) null, (View.OnClickListener) null, DataUserReport.Source.CALL);
        }
    }

    /* renamed from: f */
    public void m4924f() {
        String str = this.f29315d;
        if (str != null) {
            C14217x3.m2145e(this.f29312a.mo4937a(), str, 1);
        }
    }

    /* renamed from: g */
    public void m4923g() {
        try {
            BlockLogRealmObject blockLogRealmObject = this.f29313b;
            if (blockLogRealmObject != null) {
                DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this.f29312a.mo4937a());
                fVar.m979b(C14206w4.m2225a((int) R$string.delete_number));
                fVar.m977c(4);
                fVar.m978b(C14206w4.m2225a((int) R$string.okok), new DialogInterface$OnClickListenerC12959c(blockLogRealmObject, this));
                fVar.m984a(C14206w4.m2225a((int) R$string.cancel), (DialogInterface.OnClickListener) null);
                fVar.m982b();
            }
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    /* renamed from: h */
    public void m4922h() {
        Context a;
        String str = this.f29315d;
        if (str != null && (a = this.f29312a.mo4937a()) != null) {
            C12810o.m5266a(a, 7, str, null, false, 0, 32, null);
        }
    }

    /* renamed from: i */
    public boolean m4921i() {
        return this.f29314c;
    }

    /* renamed from: j */
    public void m4920j() {
        Single.create(C12962d.f29324a).subscribeOn(Schedulers.from(C14174u.m2297g())).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12963e(), new C12964f());
    }
}
