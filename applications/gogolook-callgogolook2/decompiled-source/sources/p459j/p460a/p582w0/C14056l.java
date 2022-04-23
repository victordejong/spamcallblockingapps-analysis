package p459j.p460a.p582w0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import kotlin.Metadata;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\b\u0016\u0018��2\u00020\u0001B\u0011\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u0010\u000b\u001a\u00020\f2\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\fH\u0016J(\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J(\u0010\u001c\u001a\u00020\f2\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\fH\u0016J(\u0010\u001d\u001a\u00020\f2\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\fH\u0016J \u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010!\u001a\u00020\"2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/util/BaseItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "itemDecorationHelper", "Lgogolook/callgogolook2/util/ItemDecorationHelper;", "(Lgogolook/callgogolook2/util/ItemDecorationHelper;)V", "mPaint", "Landroid/graphics/Paint;", "getMPaint", "()Landroid/graphics/Paint;", "mPaint$delegate", "Lkotlin/Lazy;", "getBottomMargin", "", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "vh", "itemPosition", "getItemOffsets", "", "outRect", "Landroid/graphics/Rect;", "view", "Landroid/view/View;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", IapProductRealmObject.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "getSideMargin", "getTopMargin", "onDraw", "canvas", "Landroid/graphics/Canvas;", "shouldDrawShadow", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.l */
/* loaded from: classes3-dex2jar.jar:j/a/w0/l.class */
public class C14056l extends RecyclerView.ItemDecoration {

    /* renamed from: c */
    public static final /* synthetic */ AbstractC14906i[] f31508c;

    /* renamed from: a */
    public final AbstractC14974f f31509a;

    /* renamed from: b */
    public final C14047k2 f31510b;

    /* renamed from: j.a.w0.l$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/l$a.class */
    public static final class C14057a extends AbstractC15150l implements AbstractC15107a<Paint> {

        /* renamed from: a */
        public static final C14057a f31511a = new C14057a();

        public C14057a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Paint invoke() {
            Paint paint = new Paint();
            paint.setColor(C14167t.m2315a(2131099842));
            paint.setAntiAlias(true);
            return paint;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C14056l.class), "mPaint", "getMPaint()Landroid/graphics/Paint;");
        C15131a0.m412a(sVar);
        f31508c = new AbstractC14906i[]{sVar};
    }

    public C14056l() {
        this(null, 1, null);
    }

    public C14056l(C14047k2 k2Var) {
        C15149k.m377b(k2Var, "itemDecorationHelper");
        this.f31510b = k2Var;
        this.f31509a = C14975g.m662a(C14057a.f31511a);
    }

    public /* synthetic */ C14056l(C14047k2 k2Var, int i, C15145g gVar) {
        this((i & 1) != 0 ? new C14047k2(0, 1, null) : k2Var);
    }

    /* renamed from: a */
    public int mo2711a(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(adapter, "adapter");
        C15149k.m377b(viewHolder, "vh");
        return 0;
    }

    /* renamed from: a */
    public final Paint m2713a() {
        AbstractC14974f fVar = this.f31509a;
        AbstractC14906i iVar = f31508c[0];
        return (Paint) fVar.getValue();
    }

    /* renamed from: a */
    public boolean mo2712a(View view, RecyclerView recyclerView) {
        C15149k.m377b(view, "view");
        C15149k.m377b(recyclerView, "parent");
        return true;
    }

    /* renamed from: b */
    public int m2710b(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(adapter, "adapter");
        C15149k.m377b(viewHolder, "vh");
        return 0;
    }

    /* renamed from: c */
    public int mo2709c(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(adapter, "adapter");
        C15149k.m377b(viewHolder, "vh");
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        C15149k.m377b(rect, "outRect");
        C15149k.m377b(view, "view");
        C15149k.m377b(recyclerView, "parent");
        C15149k.m377b(state, IapProductRealmObject.STATE);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(view);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null) {
            C15149k.m383a((Object) adapter, "parent.adapter ?: return");
            if (mo2712a(view, recyclerView)) {
                C15149k.m383a((Object) childViewHolder, "vh");
                rect.set(m2710b(adapter, childViewHolder, childAdapterPosition), mo2709c(adapter, childViewHolder, childAdapterPosition), m2710b(adapter, childViewHolder, childAdapterPosition), this.f31510b.m2723a());
                return;
            }
            rect.set(0, 0, 0, 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        C15149k.m377b(canvas, "canvas");
        C15149k.m377b(recyclerView, "parent");
        C15149k.m377b(state, IapProductRealmObject.STATE);
        this.f31510b.m2722a(canvas, recyclerView, m2713a());
    }
}
