package p459j.p460a.p474c0.p483e.p487d;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14047k2;
import p459j.p460a.p582w0.C14056l;
import p459j.p460a.p582w0.C14167t;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\nH\u0016J(\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J(\u0010\u001a\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\nH\u0016J \u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u001e"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/ui/ScanResultItemDecoration;", "Lgogolook/callgogolook2/util/BaseItemDecoration;", "()V", "dividerPaint", "Landroid/graphics/Paint;", "getDividerPaint", "()Landroid/graphics/Paint;", "dividerPaint$delegate", "Lkotlin/Lazy;", "getBottomMargin", "", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "vh", "itemPosition", "getItemOffsets", "", "outRect", "Landroid/graphics/Rect;", "view", "Landroid/view/View;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", IapProductRealmObject.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "getTopMargin", "onDraw", "canvas", "Landroid/graphics/Canvas;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.d.o */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/o.class */
public final class C11778o extends C14056l {

    /* renamed from: e */
    public static final /* synthetic */ AbstractC14906i[] f26423e;

    /* renamed from: d */
    public final AbstractC14974f f26424d = C14975g.m662a(C11779a.f26425a);

    /* renamed from: j.a.c0.e.d.o$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/o$a.class */
    public static final class C11779a extends AbstractC15150l implements AbstractC15107a<Paint> {

        /* renamed from: a */
        public static final C11779a f26425a = new C11779a();

        public C11779a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Paint invoke() {
            Paint paint = new Paint();
            paint.setColor(C14167t.m2315a(2131100087));
            paint.setAntiAlias(true);
            return paint;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11778o.class), "dividerPaint", "getDividerPaint()Landroid/graphics/Paint;");
        C15131a0.m412a(sVar);
        f26423e = new AbstractC14906i[]{sVar};
    }

    public C11778o() {
        super(null, 1, null);
    }

    @Override // p459j.p460a.p582w0.C14056l
    /* renamed from: a */
    public int mo2711a(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        C15149k.m377b(adapter, "adapter");
        C15149k.m377b(viewHolder, "vh");
        if (viewHolder instanceof C11772j) {
            int i3 = C11777n.f26421a[((C11772j) viewHolder).m8326d().ordinal()];
            i2 = (i3 == 1 || i3 == 2) ? C14047k2.f31499f.m2716b() : super.mo2711a(adapter, viewHolder, i);
        } else {
            i2 = viewHolder instanceof C11812v ? C14047k2.f31499f.m2715c() : super.mo2711a(adapter, viewHolder, i);
        }
        return i2;
    }

    /* renamed from: b */
    public final Paint m8319b() {
        AbstractC14974f fVar = this.f26424d;
        AbstractC14906i iVar = f26423e[0];
        return (Paint) fVar.getValue();
    }

    @Override // p459j.p460a.p582w0.C14056l
    /* renamed from: c */
    public int mo2709c(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(adapter, "adapter");
        C15149k.m377b(viewHolder, "vh");
        return viewHolder instanceof C11812v ? C14047k2.f31499f.m2715c() : super.mo2709c(adapter, viewHolder, i);
    }

    @Override // p459j.p460a.p582w0.C14056l, androidx.recyclerview.widget.RecyclerView.ItemDecoration
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
            C15149k.m383a((Object) childViewHolder, "vh");
            rect.set(m2710b(adapter, childViewHolder, childAdapterPosition), mo2709c(adapter, childViewHolder, childAdapterPosition), m2710b(adapter, childViewHolder, childAdapterPosition), mo2711a(adapter, childViewHolder, childAdapterPosition));
        }
    }

    @Override // p459j.p460a.p582w0.C14056l, androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int childAdapterPosition;
        C15149k.m377b(canvas, "canvas");
        C15149k.m377b(recyclerView, "parent");
        C15149k.m377b(state, IapProductRealmObject.STATE);
        float paddingLeft = recyclerView.getPaddingLeft();
        float width = recyclerView.getWidth() - recyclerView.getPaddingRight();
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null) {
            C15149k.m383a((Object) adapter, "adapter ?: return");
            int childCount = recyclerView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (!(childAt == null || (childAdapterPosition = recyclerView.getChildAdapterPosition(childAt)) == -1)) {
                    RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(childAt);
                    if (childViewHolder instanceof C11772j) {
                        int i2 = C11777n.f26422b[((C11772j) childViewHolder).m8326d().ordinal()];
                        if (i2 == 1 || i2 == 2) {
                            canvas.drawRect(paddingLeft, childAt.getBottom(), width, childAt.getBottom() + mo2711a(adapter, childViewHolder, childAdapterPosition), m8319b());
                        }
                    }
                }
            }
        }
    }
}
