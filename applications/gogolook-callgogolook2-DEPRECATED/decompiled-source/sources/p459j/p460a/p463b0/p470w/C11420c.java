package p459j.p460a.p463b0.p470w;

import android.view.View;
import android.view.ViewGroup;
import gogolook.callgogolook2.R$layout;
import kotlin.Metadata;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, m815d2 = {"Lgogolook/callgogolook2/main/smslog/DefaultSettingViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/main/smslog/SmsLogsPageViewTypeDelegateAdapter;", "adapter", "Lgogolook/callgogolook2/main/smslog/SmsLogsPageRecyclerViewAdapter;", "(Lgogolook/callgogolook2/main/smslog/SmsLogsPageRecyclerViewAdapter;)V", "onBindViewHolder", "", "holder", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.w.c */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/c.class */
public final class C11420c extends AbstractC11489w {

    /* renamed from: j.a.b0.w.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/c$a.class */
    public static final class View$OnClickListenerC11421a implements View.OnClickListener {
        public View$OnClickListenerC11421a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C11420c.this.m9529a().m9538d().mo9534a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11420c(C11483t tVar) {
        super(tVar);
        C15149k.m377b(tVar, "adapter");
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C11418a(viewGroup, R$layout.sms_log_suggest_settings);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        if (aVar2.getViewType() == 2 && (aVar instanceof C11418a)) {
            ((C11418a) aVar).itemView.setOnClickListener(new View$OnClickListenerC11421a());
        }
    }
}
