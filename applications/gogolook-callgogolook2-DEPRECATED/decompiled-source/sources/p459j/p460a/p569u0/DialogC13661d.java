package p459j.p460a.p569u0;

import android.content.Context;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import kotlin.Metadata;
import p459j.p460a.p569u0.C13673f;
import p459j.p460a.p569u0.C13681h;
import p459j.p460a.p582w0.C14081m3;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \f2\u00020\u0001:\u0002\f\rB\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0014¨\u0006\u000e"}, m815d2 = {"Lgogolook/callgogolook2/template/InAppDialogTemplate;", "Lgogolook/callgogolook2/template/AbstractDialogTemplate;", "context", "Landroid/content/Context;", "loadCallback", "Lgogolook/callgogolook2/template/InAppDialogTemplate$LoadCallback;", "(Landroid/content/Context;Lgogolook/callgogolook2/template/InAppDialogTemplate$LoadCallback;)V", "configuration", "Lgogolook/callgogolook2/template/TemplateConfiguration;", "(Landroid/content/Context;Lgogolook/callgogolook2/template/TemplateConfiguration;)V", "getViewBinder", "Lgogolook/callgogolook2/template/TemplateViewBinder;", "Companion", "LoadCallback", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.u0.d */
/* loaded from: classes3-dex2jar.jar:j/a/u0/d.class */
public final class DialogC13661d extends AbstractDialogC13647a {

    /* renamed from: j.a.u0.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/d$a.class */
    public static final class C13662a<T> implements Single.OnSubscribe<DialogC13661d> {
        public C13662a() {
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super DialogC13661d> singleSubscriber) {
            DialogC13661d.this.m3734a(C13673f.EnumC13678e.IN_APP_DIALOG);
            singleSubscriber.onSuccess(DialogC13661d.this);
        }
    }

    /* renamed from: j.a.u0.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/d$b.class */
    public static final class C13663b<T> implements Action1<DialogC13661d> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC13665d f30621b;

        public C13663b(AbstractC13665d dVar) {
            this.f30621b = dVar;
        }

        /* renamed from: a */
        public final void call(DialogC13661d dVar) {
            DialogC13661d.this.m3731c();
            DialogC13661d.this.setCancelable(false);
            AbstractC13665d dVar2 = this.f30621b;
            if (dVar2 != null) {
                C15149k.m383a((Object) dVar, "template");
                dVar2.mo3707a(dVar);
            }
        }
    }

    /* renamed from: j.a.u0.d$c */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/d$c.class */
    public static final class C13664c {
        public C13664c() {
        }

        public /* synthetic */ C13664c(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.u0.d$d */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/d$d.class */
    public interface AbstractC13665d {
        /* renamed from: a */
        void mo3707a(DialogC13661d dVar);
    }

    static {
        new C13664c(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC13661d(Context context, AbstractC13665d dVar) {
        super(context);
        C15149k.m377b(context, "context");
        Single.create(new C13662a()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C13663b(dVar), C14081m3.m2611a());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC13661d(Context context, C13673f fVar) {
        super(context);
        C15149k.m377b(context, "context");
        C15149k.m377b(fVar, "configuration");
        m3732b(fVar);
        m3731c();
        setCancelable(false);
    }

    @Override // p459j.p460a.p569u0.AbstractDialogC13647a
    /* renamed from: a */
    public C13681h mo3710a(C13673f fVar) {
        C13681h hVar;
        String str = fVar != null ? fVar.f30648b : null;
        if (str == null) {
            hVar = null;
        } else {
            int hashCode = str.hashCode();
            if (hashCode == -1790764928) {
                hVar = null;
                if (str.equals("in_app_dialog")) {
                    C13681h.C13682a aVar = new C13681h.C13682a(R$layout.dialog_template_in_app_with_content_dialog);
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
                    hVar = aVar.m3674a();
                }
            } else if (hashCode != 281219822) {
                hVar = null;
            } else {
                hVar = null;
                if (str.equals("in_app_dialog_full")) {
                    C13681h.C13682a aVar2 = new C13681h.C13682a(R$layout.dialog_template_in_app_full_image_dialog);
                    aVar2.m3668c(R$id.iv_main);
                    aVar2.m3662f(R$id.pb_loading);
                    aVar2.m3664e(R$id.tv_positive);
                    aVar2.m3666d(R$id.tv_negative);
                    aVar2.m3673a(R$id.iv_close);
                    aVar2.m3672a("main_scroll_view", R$id.sv_all);
                    aVar2.m3672a("divider_between_positive_btn_and_negative_btn", R$id.v_divider_between_positive_and_negative);
                    hVar = aVar2.m3674a();
                }
            }
        }
        return hVar;
    }
}
