package p459j.p460a.p463b0.p464q;

import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.gogolook.commonlib.view.IconFontTextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import gogolook.callgogolook2.view.MetaphorBadgeLayout;
import gogolook.callgogolook2.view.RoundImageView;
import gogolook.callgogolook2.view.SizedTextView;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001f\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0002¢\u0006\u0002\u0010\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010!\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\"H\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u000b\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\f\u0010\b¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/main/calllog/CallLogViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/main/calllog/CallLogsPageViewTypeDelegateAdapter;", "adapter", "Lgogolook/callgogolook2/main/calllog/CallLogsPageRecyclerViewAdapter;", "(Lgogolook/callgogolook2/main/calllog/CallLogsPageRecyclerViewAdapter;)V", "MISSED_CALL_COLOR", "", "getMISSED_CALL_COLOR", "()I", "MISSED_CALL_COLOR$delegate", "Lkotlin/Lazy;", "NON_MISSED_CALL_COLOR", "getNON_MISSED_CALL_COLOR", "NON_MISSED_CALL_COLOR$delegate", "getDesc", "", "logsGroungRealmObject", "Lgogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject;", "getResIdByType", "type", LogsGroupRealmObject.BLOCKED, "", "(Ljava/lang/Integer;Z)I", "onBindViewHolder", "", "holder", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "Lgogolook/callgogolook2/main/calllog/CallLogItemViewHolder;", "parent", "Landroid/view/ViewGroup;", "setCallLogItem", "Lgogolook/callgogolook2/main/calllog/CallLogViewData;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.q.f */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/f.class */
public final class C11157f extends AbstractC11183p {

    /* renamed from: d */
    public static final /* synthetic */ AbstractC14906i[] f25068d;

    /* renamed from: b */
    public final AbstractC14974f f25069b = C14975g.m662a(C11158a.f25071a);

    /* renamed from: c */
    public final AbstractC14974f f25070c = C14975g.m662a(C11159b.f25072a);

    /* renamed from: j.a.b0.q.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/f$a.class */
    public static final class C11158a extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C11158a f25071a = new C11158a();

        public C11158a() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return C14167t.m2315a(2131100007);
        }
    }

    /* renamed from: j.a.b0.q.f$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/f$b.class */
    public static final class C11159b extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C11159b f25072a = new C11159b();

        public C11159b() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return C14167t.m2315a(2131100120);
        }
    }

    /* renamed from: j.a.b0.q.f$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/f$c.class */
    public static final class View$OnLongClickListenerC11160c implements View.OnLongClickListener {

        /* renamed from: b */
        public final /* synthetic */ C11156e f25074b;

        public View$OnLongClickListenerC11160c(C11156e eVar) {
            this.f25074b = eVar;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            C11157f.this.m10116a().m10134c().mo10126c(this.f25074b.m10168a());
            return true;
        }
    }

    /* renamed from: j.a.b0.q.f$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/f$d.class */
    public static final class View$OnClickListenerC11161d implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C11156e f25076b;

        public View$OnClickListenerC11161d(C11156e eVar) {
            this.f25076b = eVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C11157f.this.m10116a().m10134c().mo10129a(this.f25076b.m10168a());
        }
    }

    /* renamed from: j.a.b0.q.f$e */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/f$e.class */
    public static final class View$OnClickListenerC11162e implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ LogsGroupRealmObject f25078b;

        public View$OnClickListenerC11162e(C11153d dVar, LogsGroupRealmObject logsGroupRealmObject) {
            this.f25078b = logsGroupRealmObject;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C11157f.this.m10116a().m10134c().mo10127b(this.f25078b);
        }
    }

    /* renamed from: j.a.b0.q.f$f */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/f$f.class */
    public static final class RunnableC11163f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C11153d f25079a;

        /* renamed from: b */
        public final /* synthetic */ LogsGroupRealmObject f25080b;

        public RunnableC11163f(C11157f fVar, C11153d dVar, LogsGroupRealmObject logsGroupRealmObject) {
            this.f25079a = dVar;
            this.f25080b = logsGroupRealmObject;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C11052i.m10328e().m10340a(this.f25080b.getE164(), this.f25079a.m10170e(), 0, EnumC11047e.CallLog);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11157f.class), "MISSED_CALL_COLOR", "getMISSED_CALL_COLOR()I");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C11157f.class), "NON_MISSED_CALL_COLOR", "getNON_MISSED_CALL_COLOR()I");
        C15131a0.m412a(sVar2);
        f25068d = new AbstractC14906i[]{sVar, sVar2};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11157f(C11175m mVar) {
        super(mVar);
        C15149k.m377b(mVar, "adapter");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
        if (r5 != false) goto L_0x0017;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008e, code lost:
        if (r5 != false) goto L_0x0017;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m10164a(java.lang.Integer r4, boolean r5) {
        /*
            r3 = this;
            r0 = 2131230986(0x7f08010a, float:1.807804E38)
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L_0x000a
            goto L_0x0023
        L_0x000a:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 17
            if (r0 != r1) goto L_0x0023
            r0 = r5
            if (r0 == 0) goto L_0x001d
        L_0x0017:
            r0 = 2131230982(0x7f080106, float:1.8078032E38)
            r6 = r0
            goto L_0x00b3
        L_0x001d:
            r0 = 2131231385(0x7f080299, float:1.807885E38)
            r6 = r0
            goto L_0x00b3
        L_0x0023:
            r0 = r4
            if (r0 != 0) goto L_0x002a
            goto L_0x0036
        L_0x002a:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 33
            if (r0 != r1) goto L_0x0036
            goto L_0x0046
        L_0x0036:
            r0 = r4
            if (r0 != 0) goto L_0x003d
            goto L_0x004d
        L_0x003d:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 65
            if (r0 != r1) goto L_0x004d
        L_0x0046:
            r0 = r5
            if (r0 == 0) goto L_0x00b3
            goto L_0x0017
        L_0x004d:
            r0 = r4
            if (r0 != 0) goto L_0x0054
            goto L_0x006a
        L_0x0054:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 18
            if (r0 != r1) goto L_0x006a
            r0 = r5
            if (r0 == 0) goto L_0x0064
            goto L_0x0017
        L_0x0064:
            r0 = 2131231386(0x7f08029a, float:1.8078852E38)
            r6 = r0
            goto L_0x00b3
        L_0x006a:
            r0 = r4
            if (r0 != 0) goto L_0x0071
            goto L_0x007d
        L_0x0071:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 34
            if (r0 != r1) goto L_0x007d
            goto L_0x008d
        L_0x007d:
            r0 = r4
            if (r0 != 0) goto L_0x0084
            goto L_0x0094
        L_0x0084:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 66
            if (r0 != r1) goto L_0x0094
        L_0x008d:
            r0 = r5
            if (r0 == 0) goto L_0x00b3
            goto L_0x0017
        L_0x0094:
            r0 = r4
            if (r0 != 0) goto L_0x009b
            goto L_0x00b1
        L_0x009b:
            r0 = r4
            int r0 = r0.intValue()
            r1 = 19
            if (r0 != r1) goto L_0x00b1
            r0 = r5
            if (r0 == 0) goto L_0x00ab
            goto L_0x0017
        L_0x00ab:
            r0 = 2131230984(0x7f080108, float:1.8078036E38)
            r6 = r0
            goto L_0x00b3
        L_0x00b1:
            r0 = 0
            r6 = r0
        L_0x00b3:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p464q.C11157f.m10164a(java.lang.Integer, boolean):int");
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C11153d(viewGroup, R$layout.call_log_list_view_log_item);
    }

    /* renamed from: a */
    public final String m10167a(LogsGroupRealmObject logsGroupRealmObject) {
        String str;
        LogsGroupRealmObject.C5082a aVar = LogsGroupRealmObject.Companion;
        Integer type = logsGroupRealmObject.getType();
        int i = -1;
        if (aVar.m26399d(type != null ? type.intValue() : -1)) {
            String content = logsGroupRealmObject.getContent();
            if (TextUtils.isEmpty(content)) {
                str = C14206w4.m2225a((int) R$string.main_sms_notshow_fix);
            } else {
                str = C14206w4.m2225a((int) R$string.main_filter_sms) + " : " + content;
            }
            return str;
        }
        LogsGroupRealmObject.C5082a aVar2 = LogsGroupRealmObject.Companion;
        Integer type2 = logsGroupRealmObject.getType();
        if (aVar2.m26401b(type2 != null ? type2.intValue() : -1)) {
            return C14206w4.m2225a((int) R$string.main_filter_mms);
        }
        LogsGroupRealmObject.C5082a aVar3 = LogsGroupRealmObject.Companion;
        Integer type3 = logsGroupRealmObject.getType();
        if (type3 != null) {
            i = type3.intValue();
        }
        if (aVar3.m26402a(i)) {
        }
        return null;
    }

    /* renamed from: a */
    public final void m10166a(C11153d dVar, C11156e eVar) {
        Integer type;
        Integer type2;
        Integer type3;
        LogsGroupRealmObject a = eVar.m10168a();
        dVar.m10169f();
        View view = dVar.itemView;
        C15149k.m383a((Object) view, "holder.itemView");
        MetaphorBadgeLayout metaphorBadgeLayout = (MetaphorBadgeLayout) view.findViewById(R$id.mbl_metaphor);
        if (metaphorBadgeLayout != null) {
            ImageView a2 = metaphorBadgeLayout.m25913a();
            View view2 = dVar.itemView;
            C15149k.m383a((Object) view2, "holder.itemView");
            MetaphorBadgeLayout metaphorBadgeLayout2 = (MetaphorBadgeLayout) view2.findViewById(R$id.mbl_metaphor);
            if (metaphorBadgeLayout2 != null) {
                RoundImageView b = metaphorBadgeLayout2.m25911b();
                SizedTextView sizedTextView = (SizedTextView) view.findViewById(R$id.tvDate);
                Integer type4 = a.getType();
                sizedTextView.setTextColor((type4 != null && type4.intValue() == 19) ? m10163b() : m10162c());
                SizedTextView sizedTextView2 = (SizedTextView) view.findViewById(R$id.tvDate);
                C15149k.m383a((Object) sizedTextView2, "tvDate");
                sizedTextView2.setText(C14123p4.m2440a(a.getDate()));
                ((SizedTextView) view.findViewById(R$id.tvDate)).setCompoundDrawablesWithIntrinsicBounds(m10164a(a.getType(), false), 0, 0, 0);
                IconFontTextView iconFontTextView = (IconFontTextView) view.findViewById(R$id.iftvCall);
                if (C14108o4.m2496a(a.getNumber(), C14108o4.EnumC14110b.OTHERS)) {
                    C15149k.m383a((Object) iconFontTextView, "it");
                    iconFontTextView.setVisibility(4);
                    iconFontTextView.setEnabled(false);
                } else {
                    C15149k.m383a((Object) iconFontTextView, "it");
                    iconFontTextView.setVisibility(0);
                    iconFontTextView.setEnabled(true);
                    iconFontTextView.setOnClickListener(new View$OnClickListenerC11162e(dVar, a));
                }
                a2.setVisibility(8);
                if (a.getContact_id() > 0) {
                    CallUtils.m26576a(b, a2, (RowInfo) null, String.valueOf(a.getContact_id()), CallUtils.EnumC4993l.MAIN_CALL_LOG_FRAGMENT);
                } else {
                    b.setImageResource(C13909c.m3071b().m3077v().m3069a());
                }
                if (TextUtils.isEmpty(a.getNumber())) {
                    dVar.m10172c(a.getNumber());
                    dVar.m10174b(a.getE164());
                    SizedTextView sizedTextView3 = (SizedTextView) view.findViewById(R$id.stvNumber);
                    C15149k.m383a((Object) sizedTextView3, "stvNumber");
                    sizedTextView3.setText(C11175m.f25094f.m10131a(a.getContactName(), a.getE164()));
                    ((SizedTextView) view.findViewById(R$id.stvNumber)).setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.llSecondaryNumberInfo);
                    C15149k.m383a((Object) linearLayout, "llSecondaryNumberInfo");
                    linearLayout.setVisibility(8);
                    SizedTextView sizedTextView4 = (SizedTextView) view.findViewById(R$id.stvContent);
                    C15149k.m383a((Object) sizedTextView4, "stvContent");
                    sizedTextView4.setVisibility(8);
                    Integer type5 = a.getType();
                    if ((type5 != null && type5.intValue() == 33) || (((type = a.getType()) != null && type.intValue() == 34) || (((type2 = a.getType()) != null && type2.intValue() == 65) || ((type3 = a.getType()) != null && type3.intValue() == 66)))) {
                        String a3 = m10167a(a);
                        if (!TextUtils.isEmpty(a3)) {
                            SizedTextView sizedTextView5 = (SizedTextView) view.findViewById(R$id.stvContent);
                            C15149k.m383a((Object) sizedTextView5, "stvContent");
                            sizedTextView5.setText(a3);
                            SizedTextView sizedTextView6 = (SizedTextView) view.findViewById(R$id.stvContent);
                            C15149k.m383a((Object) sizedTextView6, "stvContent");
                            sizedTextView6.setVisibility(0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                dVar.m10172c(a.getNumber());
                dVar.m10174b(a.getE164());
                dVar.m10180a(a.getContact_id());
                dVar.m10178a(a.getContactName());
                dVar.m10179a((CharSequence) m10167a(a));
                Integer type6 = a.getType();
                dVar.m10175b(type6 != null ? type6.intValue() : -1);
                SizedTextView sizedTextView7 = (SizedTextView) view.findViewById(R$id.stvNumber);
                C15149k.m383a((Object) sizedTextView7, "stvNumber");
                sizedTextView7.setText(a.getNumber());
                NumberInfo a4 = C11052i.m10328e().m10339a(a.getE164(), false);
                if (a4 != null) {
                    dVar.m10170e().mo1836b(a.getE164(), a4);
                    return;
                }
                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R$id.llSecondaryNumberInfo);
                C15149k.m383a((Object) linearLayout2, "llSecondaryNumberInfo");
                linearLayout2.setVisibility(0);
                SizedTextView sizedTextView8 = (SizedTextView) view.findViewById(R$id.stvSecondaryNumberInfoFirstItem);
                C15149k.m383a((Object) sizedTextView8, "stvSecondaryNumberInfoFirstItem");
                sizedTextView8.setVisibility(8);
                SizedTextView sizedTextView9 = (SizedTextView) view.findViewById(R$id.stvSecondaryNumberInfoSecondItem);
                C15149k.m383a((Object) sizedTextView9, "stvSecondaryNumberInfoSecondItem");
                sizedTextView9.setVisibility(8);
                SizedTextView sizedTextView10 = (SizedTextView) view.findViewById(R$id.stvContent);
                C15149k.m383a((Object) sizedTextView10, "stvContent");
                sizedTextView10.setVisibility(8);
                if (view.getId() < 0) {
                    new Handler().postDelayed(new RunnableC11163f(this, dVar, a), 500L);
                } else {
                    C11052i.m10328e().m10340a(a.getE164(), dVar.m10170e(), 0, EnumC11047e.CallLog);
                }
            } else {
                throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.view.MetaphorBadgeLayout");
            }
        } else {
            throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.view.MetaphorBadgeLayout");
        }
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        if (aVar2.getViewType() == 1 && (aVar instanceof C11153d)) {
            C11156e eVar = (C11156e) aVar2;
            View view = aVar.itemView;
            view.setOnLongClickListener(new View$OnLongClickListenerC11160c(eVar));
            view.setOnClickListener(new View$OnClickListenerC11161d(eVar));
            m10166a((C11153d) aVar, eVar);
        }
    }

    /* renamed from: b */
    public final int m10163b() {
        AbstractC14974f fVar = this.f25069b;
        AbstractC14906i iVar = f25068d[0];
        return ((Number) fVar.getValue()).intValue();
    }

    /* renamed from: c */
    public final int m10162c() {
        AbstractC14974f fVar = this.f25070c;
        AbstractC14906i iVar = f25068d[1];
        return ((Number) fVar.getValue()).intValue();
    }
}
