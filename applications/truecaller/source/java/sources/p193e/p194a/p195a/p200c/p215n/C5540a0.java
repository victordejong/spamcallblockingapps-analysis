package p193e.p194a.p195a.p200c.p215n;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.Objects;
import p1727n3.p1807k.p1809b.C26467a;
import s1.z.c.l;
/* renamed from: e.a.a.c.n.a0 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n/a0.class */
public final class C5540a0 extends RecyclerView.AbstractC0328n {

    /* renamed from: a */
    public final Drawable f18737a;

    /* renamed from: b */
    public final int f18738b;

    public C5540a0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.message_details_report_divider);
        l.c(m1789b);
        this.f18737a = m1789b;
        this.f18738b = (int) context.getResources().getDimension(2131165612);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        l.e(canvas, "canvas");
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        int i = this.f18738b;
        int width = recyclerView.getWidth();
        int paddingRight = recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            l.d(childAt, "child");
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.C0334p) layoutParams)).bottomMargin;
            this.f18737a.setBounds(i, bottom, width - paddingRight, this.f18737a.getIntrinsicHeight() + bottom);
            this.f18737a.draw(canvas);
        }
    }
}
