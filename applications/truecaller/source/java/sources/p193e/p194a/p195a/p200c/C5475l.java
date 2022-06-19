package p193e.p194a.p195a.p200c;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p417k.C8502h;
import s1.n;
import s1.z.c.l;
/* renamed from: e.a.a.c.l */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/l.class */
public final class C5475l extends RecyclerView.AbstractC0328n {

    /* renamed from: a */
    public final View f18607a;

    /* renamed from: b */
    public final TextView f18608b;

    /* renamed from: c */
    public final int f18609c;

    /* renamed from: d */
    public final Paint f18610d;

    /* renamed from: e */
    public final int f18611e;

    /* renamed from: e.a.a.c.l$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/l$b.class */
    public interface AbstractC5476b {
        /* renamed from: B */
        boolean mo33070B();

        /* renamed from: F */
        String mo33069F();
    }

    public C5475l(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        View inflate = LayoutInflater.from(context).inflate(C2752R.layout.view_list_header_conversation, (ViewGroup) null);
        inflate.setLayoutParams(new RecyclerView.C0334p(-1, this.f18609c));
        inflate.setLayoutDirection(C8502h.m28437a() ? 1 : 0);
        this.f18607a = inflate;
        this.f18608b = (TextView) inflate.findViewById(2131364133);
        this.f18609c = context.getResources().getDimensionPixelSize(C2752R.dimen.list_conversation_header_height);
        Paint paint = new Paint();
        paint.setColor(0);
        paint.setStyle(Paint.Style.FILL);
        this.f18610d = paint;
        this.f18611e = context.getResources().getDimensionPixelSize(2131166403);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        l.e(rect, "outRect");
        l.e(view, ViewAction.VIEW);
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        super.getItemOffsets(rect, view, recyclerView, c0347z);
        RecyclerView.AbstractC0313c0 childViewHolder = recyclerView.getChildViewHolder(view);
        if (!(childViewHolder instanceof AbstractC5476b)) {
            childViewHolder = null;
        }
        AbstractC5476b abstractC5476b = (AbstractC5476b) childViewHolder;
        if (abstractC5476b == null || abstractC5476b.mo33069F() == null) {
            return;
        }
        this.f18607a.measure(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f18609c, 1073741824));
        rect.setEmpty();
        int i = rect.top;
        View view2 = this.f18607a;
        l.d(view2, "headerView");
        rect.top = view2.getMeasuredHeight() + i;
        RecyclerView.AbstractC0313c0 childViewHolder2 = recyclerView.getChildViewHolder(view);
        if (!(childViewHolder2 instanceof AbstractC5476b)) {
            childViewHolder2 = null;
        }
        AbstractC5476b abstractC5476b2 = (AbstractC5476b) childViewHolder2;
        if (abstractC5476b2 == null || !abstractC5476b2.mo33070B()) {
            return;
        }
        rect.top += this.f18611e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        String mo33069F;
        l.e(canvas, AbstractC2405c.f7629a);
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        super.onDraw(canvas, recyclerView, c0347z);
        n m3978P1 = C25225a.m3978P1(new a(1, recyclerView));
        n m3978P12 = C25225a.m3978P1(new a(0, this));
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            RecyclerView.AbstractC0313c0 childViewHolder = recyclerView.getChildViewHolder(childAt);
            RecyclerView.AbstractC0313c0 abstractC0313c0 = childViewHolder;
            if (!(childViewHolder instanceof AbstractC5476b)) {
                abstractC0313c0 = null;
            }
            AbstractC5476b abstractC5476b = (AbstractC5476b) abstractC0313c0;
            if (abstractC5476b != null && (mo33069F = abstractC5476b.mo33069F()) != null) {
                TextView textView = this.f18608b;
                l.d(textView, "headerTextView");
                textView.setText(mo33069F);
                canvas.save();
                View view = this.f18607a;
                view.invalidate();
                view.measure(((Number) m3978P1.getValue()).intValue(), ((Number) m3978P12.getValue()).intValue());
                View view2 = this.f18607a;
                l.d(view2, "headerView");
                int measuredWidth = view2.getMeasuredWidth();
                View view3 = this.f18607a;
                l.d(view3, "headerView");
                view.layout(0, 0, measuredWidth, view3.getMeasuredHeight());
                l.d(childAt, "child");
                canvas.translate(0.0f, childAt.getTop() - view.getHeight());
                canvas.drawRect(childAt.getLeft(), 0.0f, childAt.getRight(), view.getHeight(), this.f18610d);
                view.draw(canvas);
                canvas.restore();
            }
        }
    }
}
