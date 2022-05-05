package p459j.p460a.p463b0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import kotlin.Metadata;
import p459j.p460a.p463b0.p464q.C11145a;
import p459j.p460a.p463b0.p464q.C11153d;
import p459j.p460a.p463b0.p464q.C11175m;
import p459j.p460a.p463b0.p464q.C11206v;
import p459j.p460a.p463b0.p464q.C11211z;
import p459j.p460a.p463b0.p470w.C11418a;
import p459j.p460a.p463b0.p470w.C11436j;
import p459j.p460a.p463b0.p470w.C11483t;
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
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0012\u001a\u00020\u00042\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0004H\u0016J(\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J(\u0010#\u001a\u00020\u00042\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0004H\u0016J \u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u000b\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\f\u0010\bR\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u000f\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\n\u001a\u0004\b\u0010\u0010\b¨\u0006'"}, m815d2 = {"Lgogolook/callgogolook2/main/LogsPageItemDecoration;", "Lgogolook/callgogolook2/util/BaseItemDecoration;", "()V", "dividerOffset", "", "dividerPaint", "Landroid/graphics/Paint;", "getDividerPaint", "()Landroid/graphics/Paint;", "dividerPaint$delegate", "Lkotlin/Lazy;", "dividerPaintGray", "getDividerPaintGray", "dividerPaintGray$delegate", "dividerShadowOffset", "dividerShadowPaint", "getDividerShadowPaint", "dividerShadowPaint$delegate", "getBottomMargin", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "vh", "itemPosition", "getItemOffsets", "", "outRect", "Landroid/graphics/Rect;", "view", "Landroid/view/View;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", IapProductRealmObject.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "getLeftOffset", "getTopMargin", "onDraw", "canvas", "Landroid/graphics/Canvas;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.i */
/* loaded from: classes2-dex2jar.jar:j/a/b0/i.class */
public final class C11130i extends C14056l {

    /* renamed from: i */
    public static final /* synthetic */ AbstractC14906i[] f25000i;

    /* renamed from: d */
    public final int f25001d = C14047k2.f31499f.m2714d() + C14047k2.f31499f.m2716b();

    /* renamed from: e */
    public final int f25002e = C14047k2.f31499f.m2716b();

    /* renamed from: f */
    public final AbstractC14974f f25003f = C14975g.m662a(C11131a.f25006a);

    /* renamed from: g */
    public final AbstractC14974f f25004g = C14975g.m662a(C11133c.f25008a);

    /* renamed from: h */
    public final AbstractC14974f f25005h = C14975g.m662a(C11132b.f25007a);

    /* renamed from: j.a.b0.i$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/i$a.class */
    public static final class C11131a extends AbstractC15150l implements AbstractC15107a<Paint> {

        /* renamed from: a */
        public static final C11131a f25006a = new C11131a();

        public C11131a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Paint invoke() {
            Paint paint = new Paint();
            paint.setColor(C14167t.m2315a(2131099961));
            paint.setAntiAlias(true);
            return paint;
        }
    }

    /* renamed from: j.a.b0.i$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/i$b.class */
    public static final class C11132b extends AbstractC15150l implements AbstractC15107a<Paint> {

        /* renamed from: a */
        public static final C11132b f25007a = new C11132b();

        public C11132b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Paint invoke() {
            Paint paint = new Paint();
            paint.setColor(C14167t.m2315a(2131099933));
            paint.setAntiAlias(true);
            return paint;
        }
    }

    /* renamed from: j.a.b0.i$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/i$c.class */
    public static final class C11133c extends AbstractC15150l implements AbstractC15107a<Paint> {

        /* renamed from: a */
        public static final C11133c f25008a = new C11133c();

        public C11133c() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Paint invoke() {
            Paint paint = new Paint();
            paint.setColor(C14167t.m2315a(2131099962));
            paint.setAntiAlias(true);
            return paint;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11130i.class), "dividerPaint", "getDividerPaint()Landroid/graphics/Paint;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C11130i.class), "dividerShadowPaint", "getDividerShadowPaint()Landroid/graphics/Paint;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C11130i.class), "dividerPaintGray", "getDividerPaintGray()Landroid/graphics/Paint;");
        C15131a0.m412a(sVar3);
        f25000i = new AbstractC14906i[]{sVar, sVar2, sVar3};
    }

    public C11130i() {
        super(null, 1, null);
    }

    @Override // p459j.p460a.p582w0.C14056l
    /* renamed from: a */
    public int mo2711a(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i) {
        Object obj;
        C15149k.m377b(adapter, "adapter");
        C15149k.m377b(viewHolder, "vh");
        C11175m mVar = (C11175m) (!(adapter instanceof C11175m) ? null : adapter);
        if (mVar != null) {
            obj = mVar;
        } else {
            RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter2 = adapter;
            if (!(adapter instanceof C11483t)) {
                adapter2 = null;
            }
            obj = (C11483t) adapter2;
        }
        return obj != null ? (!(viewHolder instanceof C11418a) && !(viewHolder instanceof C11211z)) ? viewHolder instanceof C11120e ? ((C11120e) viewHolder).m10255b() : C14047k2.f31499f.m2717a() : this.f25001d : 0;
    }

    /* renamed from: a */
    public final int m10245a(RecyclerView.ViewHolder viewHolder) {
        int i;
        if (!(viewHolder instanceof C11436j) && !(viewHolder instanceof C11153d)) {
            i = 0;
            if (viewHolder instanceof C11145a) {
                View view = viewHolder.itemView;
                C15149k.m383a((Object) view, "vh.itemView");
                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R$id.rl_ad_content);
                i = 0;
                if (relativeLayout != null) {
                    i = relativeLayout.getLeft();
                }
            }
        } else {
            View view2 = viewHolder.itemView;
            C15149k.m383a((Object) view2, "vh.itemView");
            LinearLayout linearLayout = (LinearLayout) view2.findViewById(R$id.llNumberInfo);
            i = 0;
            if (linearLayout != null) {
                i = linearLayout.getLeft();
            }
        }
        return i;
    }

    /* renamed from: b */
    public final Paint m10244b() {
        AbstractC14974f fVar = this.f25003f;
        AbstractC14906i iVar = f25000i[0];
        return (Paint) fVar.getValue();
    }

    @Override // p459j.p460a.p582w0.C14056l
    /* renamed from: c */
    public int mo2709c(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i) {
        Boolean bool;
        Integer num;
        C15149k.m377b(adapter, "adapter");
        C15149k.m377b(viewHolder, "vh");
        C11175m mVar = (C11175m) (!(adapter instanceof C11175m) ? null : adapter);
        if (mVar != null) {
            bool = Boolean.valueOf(mVar.m10135b());
        } else {
            RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter2 = adapter;
            if (!(adapter instanceof C11483t)) {
                adapter2 = null;
            }
            C11483t tVar = (C11483t) adapter2;
            bool = tVar != null ? Boolean.valueOf(tVar.m9539c()) : null;
        }
        int i2 = 0;
        boolean booleanValue = bool != null ? bool.booleanValue() : false;
        if (!(viewHolder instanceof C11418a) && !(viewHolder instanceof C11211z) && !(viewHolder instanceof C11206v)) {
            num = null;
            if (viewHolder instanceof C11120e) {
                num = Integer.valueOf(((C11120e) viewHolder).m10254c());
            }
        } else {
            num = null;
            if (i == 0) {
                num = null;
                if (booleanValue) {
                    num = Integer.valueOf(this.f25001d);
                }
            }
        }
        if (num != null) {
            i2 = num.intValue();
        }
        return i2;
    }

    /* renamed from: c */
    public final Paint m10243c() {
        AbstractC14974f fVar = this.f25005h;
        AbstractC14906i iVar = f25000i[2];
        return (Paint) fVar.getValue();
    }

    /* renamed from: d */
    public final Paint m10242d() {
        AbstractC14974f fVar = this.f25004g;
        AbstractC14906i iVar = f25000i[1];
        return (Paint) fVar.getValue();
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
                    float top = childAt.getTop();
                    boolean z = childViewHolder instanceof C11418a;
                    if (z || (childViewHolder instanceof C11211z) || (childViewHolder instanceof C11206v)) {
                        canvas.drawRect(paddingLeft, childAt.getTop() - mo2709c(adapter, childViewHolder, childAdapterPosition), width, top, m10244b());
                        canvas.drawRect(paddingLeft, childAt.getTop() - this.f25002e, width, top, m10242d());
                    }
                    C15149k.m383a((Object) childViewHolder, "viewHolder");
                    int a = mo2711a(adapter, childViewHolder, childAdapterPosition);
                    float bottom = childAt.getBottom();
                    if (!z && !(childViewHolder instanceof C11211z)) {
                        canvas.drawRect(paddingLeft + m10245a(childViewHolder), bottom, width, childAt.getBottom() + a, m10243c());
                    } else {
                        canvas.drawRect(paddingLeft, bottom, width, childAt.getBottom() + a, m10244b());
                        canvas.drawRect(paddingLeft, bottom, width, childAt.getBottom() + this.f25002e, m10242d());
                    }
                }
            }
        }
    }
}
