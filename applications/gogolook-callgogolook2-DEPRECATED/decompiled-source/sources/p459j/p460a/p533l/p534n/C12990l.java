package p459j.p460a.p533l.p534n;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$string;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14206w4;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15029u;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� 22\b\u0012\u0004\u0012\u00020\u00020\u0001:\u000223B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0002\u0010\u0006J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u0019\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0002\u0010'J\b\u0010(\u001a\u00020#H\u0016J\u0010\u0010)\u001a\u00020#2\u0006\u0010\"\u001a\u00020#H\u0016J\u0012\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020\u0005H\u0002J\u0018\u0010-\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00022\u0006\u0010\"\u001a\u00020#H\u0016J\u0018\u0010.\u001a\u00020\u00022\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020#H\u0016R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\f\u001a\u0004\b\u000e\u0010\nR\u001b\u0010\u0010\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0011\u0010\nR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R4\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u0006¨\u00064"}, m815d2 = {"Lgogolook/callgogolook2/block/blocklog/SmsBlockLogsRecyclerViewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "data", "", "Lgogolook/callgogolook2/block/blocklog/SmsBlockLogContract$SmsBlockLog;", "(Ljava/util/List;)V", "dateToday", "", "getDateToday", "()J", "dateToday$delegate", "Lkotlin/Lazy;", "dateWeekday", "getDateWeekday", "dateWeekday$delegate", "dateYesterday", "getDateYesterday", "dateYesterday$delegate", "onSmsLogsListItemClickListener", "Lgogolook/callgogolook2/block/blocklog/SmsBlockLogsRecyclerViewAdapter$OnSmsBlockLogsItemClickListener;", "getOnSmsLogsListItemClickListener", "()Lgogolook/callgogolook2/block/blocklog/SmsBlockLogsRecyclerViewAdapter$OnSmsBlockLogsItemClickListener;", "setOnSmsLogsListItemClickListener", "(Lgogolook/callgogolook2/block/blocklog/SmsBlockLogsRecyclerViewAdapter$OnSmsBlockLogsItemClickListener;)V", C13032a.f29462d, "smsBlockLogs", "getSmsBlockLogs", "()Ljava/util/List;", "setSmsBlockLogs", "bind", "", "holder", "Lgogolook/callgogolook2/block/blocklog/BlockLogsPageLogsItemViewHolder;", "position", "", "getDateString", "", "date", "(Ljava/lang/Long;)Ljava/lang/CharSequence;", "getItemCount", "getItemViewType", "getSmsContent", "", "smsBlockLog", "onBindViewHolder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "Companion", "OnSmsBlockLogsItemClickListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.l.n.l */
/* loaded from: classes2-dex2jar.jar:j/a/l/n/l.class */
public final class C12990l extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: f */
    public static final /* synthetic */ AbstractC14906i[] f29374f;

    /* renamed from: a */
    public AbstractC12992b f29375a;

    /* renamed from: b */
    public List<C12977h> f29376b;

    /* renamed from: c */
    public final AbstractC14974f f29377c = C14975g.m662a(C12993c.f29380a);

    /* renamed from: d */
    public final AbstractC14974f f29378d = C14975g.m662a(C12995e.f29382a);

    /* renamed from: e */
    public final AbstractC14974f f29379e = C14975g.m662a(C12994d.f29381a);

    /* renamed from: j.a.l.n.l$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/l$a.class */
    public static final class C12991a {
        public C12991a() {
        }

        public /* synthetic */ C12991a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.l.n.l$b */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/l$b.class */
    public interface AbstractC12992b {
        /* renamed from: a */
        void mo4855a(C12977h hVar);

        /* renamed from: b */
        void mo4854b(C12977h hVar);
    }

    /* renamed from: j.a.l.n.l$c */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/l$c.class */
    public static final class C12993c extends AbstractC15150l implements AbstractC15107a<Long> {

        /* renamed from: a */
        public static final C12993c f29380a = new C12993c();

        public C12993c() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Long invoke() {
            return C14123p4.m2426c();
        }
    }

    /* renamed from: j.a.l.n.l$d */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/l$d.class */
    public static final class C12994d extends AbstractC15150l implements AbstractC15107a<Long> {

        /* renamed from: a */
        public static final C12994d f29381a = new C12994d();

        public C12994d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Long invoke() {
            return C14123p4.m2450a();
        }
    }

    /* renamed from: j.a.l.n.l$e */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/l$e.class */
    public static final class C12995e extends AbstractC15150l implements AbstractC15107a<Long> {

        /* renamed from: a */
        public static final C12995e f29382a = new C12995e();

        public C12995e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Long invoke() {
            return C14123p4.m2421d();
        }
    }

    /* renamed from: j.a.l.n.l$f */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/l$f.class */
    public static final class View$OnLongClickListenerC12996f implements View.OnLongClickListener {

        /* renamed from: b */
        public final /* synthetic */ int f29384b;

        public View$OnLongClickListenerC12996f(int i) {
            this.f29384b = i;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            AbstractC12992b d = C12990l.this.m4857d();
            if (d == null) {
                return true;
            }
            List<C12977h> e = C12990l.this.m4856e();
            d.mo4854b(e != null ? (C12977h) C15029u.m541a((List<? extends Object>) e, this.f29384b) : null);
            return true;
        }
    }

    /* renamed from: j.a.l.n.l$g */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/l$g.class */
    public static final class View$OnClickListenerC12997g implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ int f29386b;

        public View$OnClickListenerC12997g(int i) {
            this.f29386b = i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC12992b d = C12990l.this.m4857d();
            if (d != null) {
                List<C12977h> e = C12990l.this.m4856e();
                d.mo4855a(e != null ? (C12977h) C15029u.m541a((List<? extends Object>) e, this.f29386b) : null);
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12990l.class), "dateToday", "getDateToday()J");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C12990l.class), "dateYesterday", "getDateYesterday()J");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C12990l.class), "dateWeekday", "getDateWeekday()J");
        C15131a0.m412a(sVar3);
        f29374f = new AbstractC14906i[]{sVar, sVar2, sVar3};
        new C12991a(null);
    }

    public C12990l(List<C12977h> list) {
        m4860a(list);
    }

    /* renamed from: a */
    public final long m4865a() {
        AbstractC14974f fVar = this.f29377c;
        AbstractC14906i iVar = f29374f[0];
        return ((Number) fVar.getValue()).longValue();
    }

    /* renamed from: a */
    public final CharSequence m4861a(Long l) {
        return (l == null || l.longValue() == -1) ? null : l.longValue() > m4865a() ? C14123p4.m2420d(l.longValue()) : l.longValue() > m4858c() ? C14206w4.m2225a((int) R$string.calllog_session_yesterday) : C14123p4.m2419e(l.longValue());
    }

    /* renamed from: a */
    public final String m4863a(C12977h hVar) {
        String e = hVar.m4890e();
        return !(e == null || e.length() == 0) ? hVar.m4890e() : C12205r.m6808e(hVar.m4891d()) ? C14206w4.m2225a((int) R$string.main_filter_mms) : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0332  */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, j.a.l.n.e] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4864a(p459j.p460a.p533l.p534n.C12965e r7, int r8) {
        /*
            Method dump skipped, instructions count: 826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p533l.p534n.C12990l.m4864a(j.a.l.n.e, int):void");
    }

    /* renamed from: a */
    public final void m4862a(AbstractC12992b bVar) {
        this.f29375a = bVar;
    }

    /* renamed from: a */
    public final void m4860a(List<C12977h> list) {
        this.f29376b = list;
        notifyDataSetChanged();
    }

    /* renamed from: b */
    public final long m4859b() {
        AbstractC14974f fVar = this.f29379e;
        AbstractC14906i iVar = f29374f[2];
        return ((Number) fVar.getValue()).longValue();
    }

    /* renamed from: c */
    public final long m4858c() {
        AbstractC14974f fVar = this.f29378d;
        AbstractC14906i iVar = f29374f[1];
        return ((Number) fVar.getValue()).longValue();
    }

    /* renamed from: d */
    public final AbstractC12992b m4857d() {
        return this.f29375a;
    }

    /* renamed from: e */
    public final List<C12977h> m4856e() {
        return this.f29376b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<C12977h> list = this.f29376b;
        return list != null ? list.size() : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        List<C12977h> list;
        C12977h hVar;
        C12977h hVar2;
        if (i == 0) {
            return 1;
        }
        if (i <= 0 || (list = this.f29376b) == null || (hVar = list.get(i)) == null) {
            return 0;
        }
        List<C12977h> list2 = this.f29376b;
        long f = (list2 == null || (hVar2 = list2.get(i - 1)) == null) ? 0L : hVar2.m4889f();
        long f2 = hVar.m4889f() + 1;
        long a = m4865a();
        if (f2 <= a && f >= a) {
            return 1;
        }
        long c = m4858c();
        if (f2 <= c && f >= c) {
            return 1;
        }
        long b = m4859b();
        return (f2 <= b && f >= b) ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(viewHolder, "holder");
        if (viewHolder instanceof C12965e) {
            viewHolder.itemView.setOnLongClickListener(new View$OnLongClickListenerC12996f(i));
            viewHolder.itemView.setOnClickListener(new View$OnClickListenerC12997g(i));
            m4864a((C12965e) viewHolder, i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        return i != 1 ? new C12965e(viewGroup, false) : new C12965e(viewGroup, true);
    }
}
