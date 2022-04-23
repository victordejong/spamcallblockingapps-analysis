package p459j.p460a.p463b0.p470w;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.gson.RowInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14985o;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15005e0;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� 12\b\u0012\u0004\u0012\u00020\u00020\u0001:\u000212B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u001f\u001a\u00020\u0011H\u0016J\u0010\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0011H\u0016J\u0018\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0011H\u0016J&\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u00112\f\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\tH\u0016J\u0018\u0010'\u001a\u00020\u00022\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0011H\u0016J\u000e\u0010+\u001a\u00020#2\u0006\u0010,\u001a\u00020-J\u0010\u0010.\u001a\u00020#2\u0006\u0010/\u001a\u00020\nH\u0002J\u0006\u00100\u001a\u00020#R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR-\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00120\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0017\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u00063"}, m815d2 = {"Lgogolook/callgogolook2/main/smslog/SmsLogsPageRecyclerViewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "presenter", "Lgogolook/callgogolook2/main/smslog/SmsLogsPresenter;", "itemEventListener", "Lgogolook/callgogolook2/main/smslog/SmsLogsPageRecyclerViewAdapter$ItemEventListener;", "(Lgogolook/callgogolook2/main/smslog/SmsLogsPresenter;Lgogolook/callgogolook2/main/smslog/SmsLogsPageRecyclerViewAdapter$ItemEventListener;)V", "dataList", "", "Lgogolook/callgogolook2/adapter/ViewData;", "getDataList", "()Ljava/util/List;", "setDataList", "(Ljava/util/List;)V", "delegateAdapterMap", "", "", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "getDelegateAdapterMap", "()Ljava/util/Map;", "delegateAdapterMap$delegate", "Lkotlin/Lazy;", "hasStickyItem", "", "getHasStickyItem", "()Z", "getItemEventListener", "()Lgogolook/callgogolook2/main/smslog/SmsLogsPageRecyclerViewAdapter$ItemEventListener;", "setItemEventListener", "(Lgogolook/callgogolook2/main/smslog/SmsLogsPageRecyclerViewAdapter$ItemEventListener;)V", "getItemCount", "getItemViewType", "position", "onBindViewHolder", "", "holder", "payloads", "", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "refreshSmsLogItem", "smsLog", "Lgogolook/callgogolook2/main/smslog/SmsLogsContract$SmsLog;", "refreshViewData", "viewData", "setSmsLogsUnselected", "Companion", "ItemEventListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.w.t */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/t.class */
public final class C11483t extends RecyclerView.Adapter<C14666a> {

    /* renamed from: e */
    public static final /* synthetic */ AbstractC14906i[] f25652e;

    /* renamed from: a */
    public List<AbstractC12391a> f25655a = new ArrayList();

    /* renamed from: b */
    public final AbstractC14974f f25656b = C14975g.m662a(new C11486c());

    /* renamed from: c */
    public final C11490x f25657c;

    /* renamed from: d */
    public AbstractC11485b f25658d;

    /* renamed from: g */
    public static final C11484a f25654g = new C11484a(null);

    /* renamed from: f */
    public static Map<String, RowInfo> f25653f = new HashMap();

    /* renamed from: j.a.b0.w.t$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/t$a.class */
    public static final class C11484a {
        public C11484a() {
        }

        public /* synthetic */ C11484a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final Map<String, RowInfo> m9535a() {
            return C11483t.f25653f;
        }
    }

    /* renamed from: j.a.b0.w.t$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/t$b.class */
    public interface AbstractC11485b {
        /* renamed from: a */
        void mo9534a();

        /* renamed from: a */
        void mo9533a(C11444n nVar);

        /* renamed from: b */
        void mo9532b(C11444n nVar);
    }

    /* renamed from: j.a.b0.w.t$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/t$c.class */
    public static final class C11486c extends AbstractC15150l implements AbstractC15107a<Map<Integer, ? extends AbstractC11489w>> {
        public C11486c() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Map<Integer, ? extends AbstractC11489w> invoke() {
            return C15005e0.m624a(C14985o.m644a(1, new C11440l(C11483t.this)), C14985o.m644a(0, new C11424f(C11483t.this)), C14985o.m644a(2, new C11420c(C11483t.this)));
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11483t.class), "delegateAdapterMap", "getDelegateAdapterMap()Ljava/util/Map;");
        C15131a0.m412a(sVar);
        f25652e = new AbstractC14906i[]{sVar};
    }

    public C11483t(C11490x xVar, AbstractC11485b bVar) {
        C15149k.m377b(xVar, "presenter");
        C15149k.m377b(bVar, "itemEventListener");
        this.f25657c = xVar;
        this.f25658d = bVar;
    }

    /* renamed from: a */
    public final List<AbstractC12391a> m9546a() {
        return this.f25655a;
    }

    /* renamed from: a */
    public final void m9545a(C11444n nVar) {
        C15149k.m377b(nVar, "smsLog");
        m9544a(new C11439k(0, nVar, 1, null));
    }

    /* renamed from: a */
    public final void m9544a(AbstractC12391a aVar) {
        notifyItemChanged(this.f25655a.indexOf(aVar));
    }

    /* renamed from: a */
    public void onBindViewHolder(C14666a aVar, int i) {
        C15149k.m377b(aVar, "holder");
        onBindViewHolder(aVar, i);
    }

    /* renamed from: a */
    public void onBindViewHolder(C14666a aVar, int i, List<Object> list) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(list, "payloads");
        AbstractC12392b<C14666a> bVar = m9540b().get(Integer.valueOf(getItemViewType(i)));
        if (bVar != null) {
            bVar.mo1119a(aVar, this.f25655a.get(i));
        }
    }

    /* renamed from: a */
    public final void m9541a(List<AbstractC12391a> list) {
        C15149k.m377b(list, "<set-?>");
        this.f25655a = list;
    }

    /* renamed from: b */
    public final Map<Integer, AbstractC12392b<C14666a>> m9540b() {
        AbstractC14974f fVar = this.f25656b;
        AbstractC14906i iVar = f25652e[0];
        return (Map) fVar.getValue();
    }

    /* renamed from: c */
    public final boolean m9539c() {
        return this.f25657c.m9487q();
    }

    /* renamed from: d */
    public final AbstractC11485b m9538d() {
        return this.f25658d;
    }

    /* renamed from: e */
    public final void m9537e() {
        for (AbstractC12391a aVar : this.f25655a) {
            if (aVar.getViewType() == 1) {
                if (aVar != null) {
                    C11439k kVar = (C11439k) aVar;
                    if (kVar.m9632a().m9617l()) {
                        kVar.m9632a().m9628a(false);
                        m9544a(kVar);
                    }
                } else {
                    throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.main.smslog.SmsLogViewData");
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f25655a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.f25655a.get(i).getViewType();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C14666a onCreateViewHolder(ViewGroup viewGroup, int i) {
        C14666a a;
        C15149k.m377b(viewGroup, "parent");
        AbstractC12392b<C14666a> bVar = m9540b().get(Integer.valueOf(i));
        return (bVar == null || (a = bVar.mo1120a(viewGroup)) == null) ? new C11424f(this).mo1120a(viewGroup) : a;
    }
}
