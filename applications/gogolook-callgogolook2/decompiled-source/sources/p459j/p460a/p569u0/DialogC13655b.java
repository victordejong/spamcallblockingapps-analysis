package p459j.p460a.p569u0;

import android.content.Context;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import kotlin.Metadata;
import p459j.p460a.p569u0.C13673f;
import p459j.p460a.p569u0.C13681h;
import p459j.p460a.p582w0.C14081m3;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001:\u0001\fB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0014\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014¨\u0006\r"}, m815d2 = {"Lgogolook/callgogolook2/template/CallEndDialogTemplate;", "Lgogolook/callgogolook2/template/AbstractDialogTemplate;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "loadCallback", "Lgogolook/callgogolook2/template/CallEndDialogTemplate$DialogTemplateLoadCallBack;", "(Landroid/content/Context;Lgogolook/callgogolook2/template/CallEndDialogTemplate$DialogTemplateLoadCallBack;)V", "getViewBinder", "Lgogolook/callgogolook2/template/TemplateViewBinder;", "configuration", "Lgogolook/callgogolook2/template/TemplateConfiguration;", "DialogTemplateLoadCallBack", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.u0.b */
/* loaded from: classes3-dex2jar.jar:j/a/u0/b.class */
public final class DialogC13655b extends AbstractDialogC13647a {

    /* renamed from: j.a.u0.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/b$a.class */
    public static final class C13656a<T> implements Single.OnSubscribe<DialogC13655b> {
        public C13656a() {
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super DialogC13655b> singleSubscriber) {
            DialogC13655b.this.m3734a(C13673f.EnumC13678e.CALL_END_DIALOG);
            singleSubscriber.onSuccess(DialogC13655b.this);
        }
    }

    /* renamed from: j.a.u0.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/b$b.class */
    public static final class C13657b<T> implements Action1<DialogC13655b> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC13658c f30615b;

        public C13657b(AbstractC13658c cVar) {
            this.f30615b = cVar;
        }

        /* renamed from: a */
        public final void call(DialogC13655b bVar) {
            DialogC13655b.this.m3731c();
            DialogC13655b.this.setCancelable(true);
            AbstractC13658c cVar = this.f30615b;
            if (cVar != null) {
                C15149k.m383a((Object) bVar, "template");
                cVar.mo3728a(bVar);
            }
        }
    }

    /* renamed from: j.a.u0.b$c */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/b$c.class */
    public interface AbstractC13658c {
        /* renamed from: a */
        void mo3728a(DialogC13655b bVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC13655b(Context context) {
        super(context);
        C15149k.m377b(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC13655b(Context context, AbstractC13658c cVar) {
        super(context);
        C15149k.m377b(context, "context");
        Single.create(new C13656a()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C13657b(cVar), C14081m3.m2611a());
    }

    @Override // p459j.p460a.p569u0.AbstractDialogC13647a
    /* renamed from: a */
    public C13681h mo3710a(C13673f fVar) {
        C13681h.C13682a aVar = new C13681h.C13682a(R$layout.dialog_template_call_end_dialog);
        aVar.m3668c(R$id.iv_main);
        aVar.m3662f(R$id.pb_loading);
        aVar.m3660g(R$id.tv_title);
        aVar.m3670b(R$id.tv_content);
        aVar.m3664e(R$id.tv_positive);
        aVar.m3666d(R$id.tv_negative);
        aVar.m3673a(R$id.iv_close);
        aVar.m3672a("main_scroll_view", R$id.sv_all);
        aVar.m3672a("divider_between_title_and_content", R$id.v_divider_to_bottom_of_content);
        aVar.m3672a("divider_between_positive_btn_and_negative_btn", R$id.v_divider_between_positive_and_negative);
        return aVar.m3674a();
    }
}
