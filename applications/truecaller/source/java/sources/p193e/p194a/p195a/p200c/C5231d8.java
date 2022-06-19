package p193e.p194a.p195a.p200c;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.view.TintedTextView;
import p1727n3.p1744b0.p1745a.C25601k;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.z.c.l;
/* renamed from: e.a.a.c.d8 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/d8.class */
public final class C5231d8 extends C25601k.AbstractC25611g {

    /* renamed from: d */
    public final Paint f17945d;

    /* renamed from: e */
    public final Drawable f17946e;

    /* renamed from: f */
    public final Drawable f17947f;

    /* renamed from: g */
    public final int f17948g;

    /* renamed from: h */
    public final int f17949h;

    /* renamed from: i */
    public final int f17950i;

    /* renamed from: j */
    public boolean f17951j;

    /* renamed from: k */
    public View f17952k;

    /* renamed from: l */
    public final AbstractC5232a f17953l;

    /* renamed from: e.a.a.c.d8$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d8$a.class */
    public interface AbstractC5232a {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5231d8(Context context, AbstractC5232a abstractC5232a) {
        super(0, 12);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC5232a, "swipeControllerActions");
        this.f17953l = abstractC5232a;
        Paint paint = new Paint();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f17945d = paint;
        Object obj = C26467a.f74235a;
        this.f17946e = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.ic_action_reply);
        this.f17947f = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.ic_undo_background);
        this.f17948g = C8605o.m28238b(context, 70.0f);
        this.f17949h = C19291g.m13612L(context, C2752R.attr.message_decoratorForeground);
        this.f17950i = C19291g.m13612L(context, C2752R.attr.message_decoratorBackground);
    }

    @Override // p1727n3.p1744b0.p1745a.C25601k.AbstractC25605d
    /* renamed from: b */
    public int mo3151b(int i, int i2) {
        int i3;
        if (this.f17951j) {
            this.f17951j = false;
            i = 0;
        } else {
            int i4 = i & 3158064;
            if (i4 != 0) {
                int i5 = i & (i4 ^ (-1));
                if (i2 == 0) {
                    i3 = i4 >> 2;
                } else {
                    int i6 = i4 >> 1;
                    i5 |= (-3158065) & i6;
                    i3 = (i6 & 3158064) >> 2;
                }
                i = i5 | i3;
            }
        }
        return i;
    }

    @Override // p1727n3.p1744b0.p1745a.C25601k.AbstractC25605d
    /* renamed from: e */
    public int mo3148e(RecyclerView recyclerView, RecyclerView.AbstractC0313c0 abstractC0313c0) {
        l.e(recyclerView, "recyclerView");
        l.e(abstractC0313c0, "viewHolder");
        View view = abstractC0313c0.itemView;
        l.d(view, "viewHolder.itemView");
        this.f17952k = view;
        boolean z = abstractC0313c0 instanceof ViewTreeObserver$OnPreDrawListenerC5184d;
        return (!z || !((ViewTreeObserver$OnPreDrawListenerC5184d) abstractC0313c0).f17788E) ? (!z || !((ViewTreeObserver$OnPreDrawListenerC5184d) abstractC0313c0).f17789J) ? 0 : 1028 : 3084;
    }

    @Override // p1727n3.p1744b0.p1745a.C25601k.AbstractC25605d
    /* renamed from: g */
    public void mo3146g(Canvas canvas, RecyclerView recyclerView, RecyclerView.AbstractC0313c0 abstractC0313c0, float f, float f2, int i, boolean z) {
        View view;
        View view2;
        l.e(canvas, AbstractC2405c.f7629a);
        l.e(recyclerView, "recyclerView");
        l.e(abstractC0313c0, "viewHolder");
        boolean z2 = true;
        if (i == 1) {
            recyclerView.setOnTouchListener(new View$OnTouchListenerC5254e8(this, abstractC0313c0));
        }
        if (f != 0.0f || z) {
            z2 = false;
        }
        if (z2) {
            View view3 = this.f17952k;
            if (view3 == null) {
                l.l(ViewAction.VIEW);
                throw null;
            }
            float right = view3.getRight();
            View view4 = this.f17952k;
            if (view4 == null) {
                l.l(ViewAction.VIEW);
                throw null;
            }
            float top = view4.getTop();
            View view5 = this.f17952k;
            if (view5 == null) {
                l.l(ViewAction.VIEW);
                throw null;
            }
            float right2 = view5.getRight();
            if (this.f17952k == null) {
                l.l(ViewAction.VIEW);
                throw null;
            }
            canvas.drawRect(right + f, top, right2, view2.getBottom(), this.f17945d);
            super.mo3146g(canvas, recyclerView, abstractC0313c0, f, f2, i, z);
            return;
        }
        super.mo3146g(canvas, recyclerView, abstractC0313c0, f, f2, i, z);
        if (f > 0) {
            Drawable drawable = this.f17947f;
            if (drawable != null) {
                drawable.setColorFilter(this.f17950i, PorterDuff.Mode.SRC_IN);
            }
            Drawable drawable2 = this.f17946e;
            if (drawable2 != null) {
                drawable2.setColorFilter(this.f17949h, PorterDuff.Mode.SRC_IN);
            }
            View view6 = this.f17952k;
            if (view6 == null) {
                l.l(ViewAction.VIEW);
                throw null;
            }
            int translationX = (int) (view6.getTranslationX() / 2);
            View view7 = this.f17952k;
            if (view7 == null) {
                l.l(ViewAction.VIEW);
                throw null;
            }
            int top2 = view7.getTop();
            View view8 = this.f17952k;
            if (view8 == null) {
                l.l(ViewAction.VIEW);
                throw null;
            }
            int measuredHeight = (view8.getMeasuredHeight() / 2) + top2;
            Drawable drawable3 = this.f17947f;
            if (drawable3 != null) {
                drawable3.setBounds(translationX - (drawable3.getIntrinsicWidth() / 2), measuredHeight - (this.f17947f.getIntrinsicHeight() / 2), (this.f17947f.getIntrinsicWidth() / 2) + translationX, (this.f17947f.getIntrinsicHeight() / 2) + measuredHeight);
            }
            Drawable drawable4 = this.f17947f;
            if (drawable4 != null) {
                drawable4.draw(canvas);
            }
            Drawable drawable5 = this.f17946e;
            if (drawable5 != null) {
                drawable5.setBounds(translationX - (drawable5.getIntrinsicWidth() / 2), measuredHeight - (this.f17946e.getIntrinsicHeight() / 2), (this.f17946e.getIntrinsicWidth() / 2) + translationX, (this.f17946e.getIntrinsicHeight() / 2) + measuredHeight);
            }
            Drawable drawable6 = this.f17946e;
            if (drawable6 == null) {
                return;
            }
            drawable6.draw(canvas);
        } else if (!(abstractC0313c0 instanceof ViewTreeObserver$OnPreDrawListenerC5184d)) {
        } else {
            TintedTextView tintedTextView = ((ViewTreeObserver$OnPreDrawListenerC5184d) abstractC0313c0).f17785B;
            LinearLayout linearLayout = new LinearLayout(tintedTextView.getContext());
            ViewParent parent = tintedTextView.getParent();
            ViewParent viewParent = parent;
            if (!(parent instanceof ViewGroup)) {
                viewParent = null;
            }
            ViewGroup viewGroup = (ViewGroup) viewParent;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
            linearLayout.addView(tintedTextView);
            linearLayout.measure(View.MeasureSpec.makeMeasureSpec(canvas.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(canvas.getHeight(), 1073741824));
            linearLayout.layout(0, 0, canvas.getWidth(), canvas.getHeight());
            View view9 = this.f17952k;
            if (view9 == null) {
                l.l(ViewAction.VIEW);
                throw null;
            }
            int right3 = view9.getRight();
            View view10 = this.f17952k;
            if (view10 == null) {
                l.l(ViewAction.VIEW);
                throw null;
            }
            int translationX2 = (int) view10.getTranslationX();
            View view11 = this.f17952k;
            if (view11 == null) {
                l.l(ViewAction.VIEW);
                throw null;
            }
            int top3 = view11.getTop();
            if (this.f17952k == null) {
                l.l(ViewAction.VIEW);
                throw null;
            }
            canvas.translate(right3 + translationX2, (view.getMeasuredHeight() / 2) + top3);
            linearLayout.draw(canvas);
        }
    }
}
