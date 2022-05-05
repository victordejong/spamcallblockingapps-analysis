package p459j.p460a.p463b0.p470w;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.view.MetaphorBadgeLayout;
import gogolook.callgogolook2.view.RoundImageView;
import gogolook.callgogolook2.view.SizedTextView;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u0010H\u0002¨\u0006\u0011"}, m815d2 = {"Lgogolook/callgogolook2/main/smslog/SmsLogViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/main/smslog/SmsLogsPageViewTypeDelegateAdapter;", "adapter", "Lgogolook/callgogolook2/main/smslog/SmsLogsPageRecyclerViewAdapter;", "(Lgogolook/callgogolook2/main/smslog/SmsLogsPageRecyclerViewAdapter;)V", "onBindViewHolder", "", "holder", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "setSmsLogItem", "Lgogolook/callgogolook2/main/smslog/SmsLogItemViewHolder;", "Lgogolook/callgogolook2/main/smslog/SmsLogViewData;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.w.l */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/l.class */
public final class C11440l extends AbstractC11489w {

    /* renamed from: j.a.b0.w.l$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/l$a.class */
    public static final class View$OnLongClickListenerC11441a implements View.OnLongClickListener {

        /* renamed from: b */
        public final /* synthetic */ C11439k f25575b;

        public View$OnLongClickListenerC11441a(C11439k kVar) {
            this.f25575b = kVar;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            C11440l.this.m9529a().m9538d().mo9532b(this.f25575b.m9632a());
            return true;
        }
    }

    /* renamed from: j.a.b0.w.l$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/l$b.class */
    public static final class View$OnClickListenerC11442b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C11439k f25577b;

        public View$OnClickListenerC11442b(C11439k kVar) {
            this.f25577b = kVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C11440l.this.m9529a().m9538d().mo9533a(this.f25577b.m9632a());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11440l(C11483t tVar) {
        super(tVar);
        C15149k.m377b(tVar, "adapter");
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C11436j(viewGroup, R$layout.sms_log_list_view_item);
    }

    /* renamed from: a */
    public final void m9631a(C11436j jVar, C11439k kVar) {
        jVar.m9633e();
        jVar.m9638a(kVar.m9632a());
        View view = jVar.itemView;
        MetaphorBadgeLayout metaphorBadgeLayout = (MetaphorBadgeLayout) view.findViewById(R$id.mbl_metaphor);
        if (metaphorBadgeLayout != null) {
            RoundImageView b = metaphorBadgeLayout.m25911b();
            View view2 = jVar.itemView;
            C15149k.m383a((Object) view2, "holder.itemView");
            MetaphorBadgeLayout metaphorBadgeLayout2 = (MetaphorBadgeLayout) view2.findViewById(R$id.mbl_metaphor);
            if (metaphorBadgeLayout2 != null) {
                metaphorBadgeLayout2.m25913a().setVisibility(8);
                b.setImageResource(kVar.m9632a().m9617l() ? R$drawable.ic_sms_select : kVar.m9632a().m9618k() ? R$drawable.ic_metaphor_group : C13909c.m3071b().m3077v().m3069a());
                SizedTextView sizedTextView = (SizedTextView) view.findViewById(R$id.tvDate);
                C15149k.m383a((Object) sizedTextView, "tvDate");
                sizedTextView.setText(C14123p4.m2440a(Long.valueOf(kVar.m9632a().m9620i())));
                SizedTextView sizedTextView2 = (SizedTextView) view.findViewById(R$id.stvUnreadCount);
                sizedTextView2.setText(String.valueOf(kVar.m9632a().m9619j()));
                sizedTextView2.setVisibility(kVar.m9632a().m9619j() > 0 ? 0 : 8);
                if (TextUtils.isEmpty(kVar.m9632a().m9623f())) {
                    if (kVar.m9632a().m9618k()) {
                        SizedTextView sizedTextView3 = (SizedTextView) view.findViewById(R$id.stvNumber);
                        C15149k.m383a((Object) sizedTextView3, "stvNumber");
                        sizedTextView3.setText(kVar.m9632a().m9625d());
                        LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.llSecondaryNumberInfo);
                        C15149k.m383a((Object) linearLayout, "llSecondaryNumberInfo");
                        linearLayout.setVisibility(0);
                        SizedTextView sizedTextView4 = (SizedTextView) view.findViewById(R$id.stvSecondaryNumberInfoFirstItem);
                        sizedTextView4.setText(C14206w4.m2225a((int) R$string.sms_log_group_message_second_row));
                        sizedTextView4.setVisibility(0);
                        SizedTextView sizedTextView5 = (SizedTextView) view.findViewById(R$id.stvSecondaryNumberInfoSecondItem);
                        C15149k.m383a((Object) sizedTextView5, "stvSecondaryNumberInfoSecondItem");
                        sizedTextView5.setVisibility(8);
                    } else {
                        SizedTextView sizedTextView6 = (SizedTextView) view.findViewById(R$id.stvNumber);
                        C15149k.m383a((Object) sizedTextView6, "stvNumber");
                        sizedTextView6.setText(C14206w4.m2225a((int) R$string.unknown_sender));
                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R$id.llSecondaryNumberInfo);
                        C15149k.m383a((Object) linearLayout2, "llSecondaryNumberInfo");
                        linearLayout2.setVisibility(8);
                    }
                    ((SizedTextView) view.findViewById(R$id.stvNumber)).setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
                } else {
                    NumberInfo a = C11052i.m10328e().m10339a(kVar.m9632a().m9623f(), false);
                    if (a != null) {
                        jVar.m9634d().mo1836b(kVar.m9632a().m9624e(), a);
                    } else {
                        C11052i.m10328e().m10340a(kVar.m9632a().m9624e(), jVar.m9634d(), 0, EnumC11047e.SmsLog);
                    }
                }
                SizedTextView sizedTextView7 = (SizedTextView) view.findViewById(R$id.stvContent);
                sizedTextView7.setText(C12205r.m6807f(kVar.m9632a().m9622g()) ? C14206w4.m2225a((int) R$string.main_filter_mms) : kVar.m9632a().m9621h());
                sizedTextView7.setTextColor(ContextCompat.getColor(sizedTextView7.getContext(), kVar.m9632a().m9619j() > 0 ? 2131100116 : 2131100120));
                sizedTextView7.setVisibility(0);
                return;
            }
            throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.view.MetaphorBadgeLayout");
        }
        throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.view.MetaphorBadgeLayout");
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        if (1 == aVar2.getViewType() && (aVar instanceof C11436j)) {
            C11439k kVar = (C11439k) aVar2;
            View view = aVar.itemView;
            view.setOnLongClickListener(new View$OnLongClickListenerC11441a(kVar));
            view.setOnClickListener(new View$OnClickListenerC11442b(kVar));
            m9631a((C11436j) aVar, kVar);
        }
    }
}
