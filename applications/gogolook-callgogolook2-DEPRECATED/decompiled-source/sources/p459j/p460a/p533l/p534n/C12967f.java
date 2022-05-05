package p459j.p460a.p533l.p534n;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p533l.C12942i;
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
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� 22\b\u0012\u0004\u0012\u00020\u00020\u0001:\u000223B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0002\u0010\u0006J\u0012\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0002J\u0019\u0010\"\u001a\u0004\u0018\u00010\u001f2\b\u0010#\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0002\u0010$J\b\u0010%\u001a\u00020&H\u0016J\u0010\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020&H\u0016J\u0018\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00022\u0006\u0010(\u001a\u00020&H\u0016J\u0018\u0010,\u001a\u00020\u00022\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020&H\u0016J\u0018\u00100\u001a\u00020*2\u0006\u0010+\u001a\u0002012\u0006\u0010(\u001a\u00020&H\u0002R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\f\u001a\u0004\b\u000e\u0010\nR\u001b\u0010\u0010\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0011\u0010\nR4\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0006R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u00064"}, m815d2 = {"Lgogolook/callgogolook2/block/blocklog/BlockLogsPageRecyclerViewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "data", "", "Lgogolook/callgogolook2/realm/obj/block/BlockLogRealmObject;", "(Ljava/util/List;)V", "dateToday", "", "getDateToday", "()J", "dateToday$delegate", "Lkotlin/Lazy;", "dateWeekday", "getDateWeekday", "dateWeekday$delegate", "dateYesterday", "getDateYesterday", "dateYesterday$delegate", C13032a.f29462d, "logs", "getLogs", "()Ljava/util/List;", "setLogs", "onLogsListItemClickListener", "Lgogolook/callgogolook2/block/blocklog/BlockLogsPageRecyclerViewAdapter$OnBlockLogsItemClickListener;", "getOnLogsListItemClickListener", "()Lgogolook/callgogolook2/block/blocklog/BlockLogsPageRecyclerViewAdapter$OnBlockLogsItemClickListener;", "setOnLogsListItemClickListener", "(Lgogolook/callgogolook2/block/blocklog/BlockLogsPageRecyclerViewAdapter$OnBlockLogsItemClickListener;)V", "getBlockCause", "", "cause", "", "getDateString", "date", "(Ljava/lang/Long;)Ljava/lang/CharSequence;", "getItemCount", "", "getItemViewType", "position", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setLogItem", "Lgogolook/callgogolook2/block/blocklog/BlockLogsPageLogsItemViewHolder;", "Companion", "OnBlockLogsItemClickListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.l.n.f */
/* loaded from: classes2-dex2jar.jar:j/a/l/n/f.class */
public final class C12967f extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: f */
    public static final /* synthetic */ AbstractC14906i[] f29335f;

    /* renamed from: a */
    public AbstractC12969b f29336a;

    /* renamed from: b */
    public List<? extends BlockLogRealmObject> f29337b;

    /* renamed from: c */
    public final AbstractC14974f f29338c = C14975g.m662a(C12970c.f29341a);

    /* renamed from: d */
    public final AbstractC14974f f29339d = C14975g.m662a(C12972e.f29343a);

    /* renamed from: e */
    public final AbstractC14974f f29340e = C14975g.m662a(C12971d.f29342a);

    /* renamed from: j.a.l.n.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/f$a.class */
    public static final class C12968a {
        public C12968a() {
        }

        public /* synthetic */ C12968a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.l.n.f$b */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/f$b.class */
    public interface AbstractC12969b {
        /* renamed from: a */
        void mo4896a(BlockLogRealmObject blockLogRealmObject);

        /* renamed from: b */
        void mo4895b(BlockLogRealmObject blockLogRealmObject);
    }

    /* renamed from: j.a.l.n.f$c */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/f$c.class */
    public static final class C12970c extends AbstractC15150l implements AbstractC15107a<Long> {

        /* renamed from: a */
        public static final C12970c f29341a = new C12970c();

        public C12970c() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Long invoke() {
            return C14123p4.m2426c();
        }
    }

    /* renamed from: j.a.l.n.f$d */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/f$d.class */
    public static final class C12971d extends AbstractC15150l implements AbstractC15107a<Long> {

        /* renamed from: a */
        public static final C12971d f29342a = new C12971d();

        public C12971d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Long invoke() {
            return C14123p4.m2450a();
        }
    }

    /* renamed from: j.a.l.n.f$e */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/f$e.class */
    public static final class C12972e extends AbstractC15150l implements AbstractC15107a<Long> {

        /* renamed from: a */
        public static final C12972e f29343a = new C12972e();

        public C12972e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Long invoke() {
            return C14123p4.m2421d();
        }
    }

    /* renamed from: j.a.l.n.f$f */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/f$f.class */
    public static final class View$OnLongClickListenerC12973f implements View.OnLongClickListener {

        /* renamed from: b */
        public final /* synthetic */ int f29345b;

        public View$OnLongClickListenerC12973f(int i) {
            this.f29345b = i;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            AbstractC12969b e = C12967f.this.m4897e();
            if (e == null) {
                return true;
            }
            List<BlockLogRealmObject> d = C12967f.this.m4898d();
            e.mo4895b(d != null ? (BlockLogRealmObject) C15029u.m541a((List<? extends Object>) d, this.f29345b) : null);
            return true;
        }
    }

    /* renamed from: j.a.l.n.f$g */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/f$g.class */
    public static final class View$OnClickListenerC12974g implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ int f29347b;

        public View$OnClickListenerC12974g(int i) {
            this.f29347b = i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC12969b e = C12967f.this.m4897e();
            if (e != null) {
                List<BlockLogRealmObject> d = C12967f.this.m4898d();
                e.mo4896a(d != null ? (BlockLogRealmObject) C15029u.m541a((List<? extends Object>) d, this.f29347b) : null);
            }
        }
    }

    /* renamed from: j.a.l.n.f$h */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/f$h.class */
    public static final class RunnableC12975h implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C12965e f29348a;

        /* renamed from: b */
        public final /* synthetic */ BlockLogRealmObject f29349b;

        public RunnableC12975h(C12967f fVar, C12965e eVar, BlockLogRealmObject blockLogRealmObject) {
            this.f29348a = eVar;
            this.f29349b = blockLogRealmObject;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C11052i.m10328e().m10340a(this.f29349b.get_number(), this.f29348a.m4910b(), 0, EnumC11047e.CallLog);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12967f.class), "dateToday", "getDateToday()J");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C12967f.class), "dateYesterday", "getDateYesterday()J");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C12967f.class), "dateWeekday", "getDateWeekday()J");
        C15131a0.m412a(sVar3);
        f29335f = new AbstractC14906i[]{sVar, sVar2, sVar3};
        new C12968a(null);
    }

    public C12967f(List<? extends BlockLogRealmObject> list) {
        m4901a(list);
    }

    /* renamed from: a */
    public final long m4906a() {
        AbstractC14974f fVar = this.f29338c;
        AbstractC14906i iVar = f29335f[0];
        return ((Number) fVar.getValue()).longValue();
    }

    /* renamed from: a */
    public final CharSequence m4903a(Long l) {
        return l == null ? null : l.longValue() == -1 ? null : l.longValue() > m4906a() ? C14123p4.m2420d(l.longValue()) : l.longValue() > m4899c() ? C14206w4.m2225a((int) R$string.calllog_session_yesterday) : C14123p4.m2419e(l.longValue());
    }

    /* renamed from: a */
    public final CharSequence m4902a(String str) {
        String a = C12942i.m4964a(str);
        C15149k.m383a((Object) a, "BlockResult.getBlockCause(cause)");
        return a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0305  */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, j.a.l.n.e] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4905a(p459j.p460a.p533l.p534n.C12965e r8, int r9) {
        /*
            Method dump skipped, instructions count: 783
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p533l.p534n.C12967f.m4905a(j.a.l.n.e, int):void");
    }

    /* renamed from: a */
    public final void m4904a(AbstractC12969b bVar) {
        this.f29336a = bVar;
    }

    /* renamed from: a */
    public final void m4901a(List<? extends BlockLogRealmObject> list) {
        this.f29337b = list;
        notifyDataSetChanged();
    }

    /* renamed from: b */
    public final long m4900b() {
        AbstractC14974f fVar = this.f29340e;
        AbstractC14906i iVar = f29335f[2];
        return ((Number) fVar.getValue()).longValue();
    }

    /* renamed from: c */
    public final long m4899c() {
        AbstractC14974f fVar = this.f29339d;
        AbstractC14906i iVar = f29335f[1];
        return ((Number) fVar.getValue()).longValue();
    }

    /* renamed from: d */
    public final List<BlockLogRealmObject> m4898d() {
        return this.f29337b;
    }

    /* renamed from: e */
    public final AbstractC12969b m4897e() {
        return this.f29336a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<? extends BlockLogRealmObject> list = this.f29337b;
        return list != null ? list.size() : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        List<? extends BlockLogRealmObject> list;
        BlockLogRealmObject blockLogRealmObject;
        BlockLogRealmObject blockLogRealmObject2;
        if (i == 0) {
            return 1;
        }
        if (i <= 0 || (list = this.f29337b) == null || (blockLogRealmObject = (BlockLogRealmObject) list.get(i)) == null) {
            return 0;
        }
        List<? extends BlockLogRealmObject> list2 = this.f29337b;
        long j = (list2 == null || (blockLogRealmObject2 = (BlockLogRealmObject) list2.get(i - 1)) == null) ? 0L : blockLogRealmObject2.get_createtime();
        long j2 = blockLogRealmObject.get_createtime() + 1;
        long a = m4906a();
        if (j2 <= a && j >= a) {
            return 1;
        }
        long c = m4899c();
        if (j2 <= c && j >= c) {
            return 1;
        }
        long b = m4900b();
        return (j2 <= b && j >= b) ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(viewHolder, "holder");
        if (viewHolder instanceof C12965e) {
            View view = viewHolder.itemView;
            if (view != null) {
                view.setOnLongClickListener(new View$OnLongClickListenerC12973f(i));
            }
            View view2 = viewHolder.itemView;
            if (view2 != null) {
                view2.setOnClickListener(new View$OnClickListenerC12974g(i));
            }
            m4905a((C12965e) viewHolder, i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        return i != 1 ? new C12965e(viewGroup, false) : new C12965e(viewGroup, true);
    }
}
