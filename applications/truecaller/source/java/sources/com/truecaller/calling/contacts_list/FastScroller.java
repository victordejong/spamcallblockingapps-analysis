package com.truecaller.calling.contacts_list;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.p183ui.view.TintedImageView;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.d0.i;
import s1.d0.j;
import s1.g;
import s1.z.b.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u00101\u001a\u000200\u0012\u0006\u00103\u001a\u000202¢\u0006\u0004\b4\u00105J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\r\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\tR\u0016\u0010\u0012\u001a\u00020\u00108\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000f\u0010\u0011R$\u0010\u0018\u001a\u0010\u0012\f\u0012\n \u0015*\u0004\u0018\u00010\u00140\u00140\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\"\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R$\u0010$\u001a\u0010\u0012\f\u0012\n \u0015*\u0004\u0018\u00010\"0\"0\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u0017R\u0016\u0010'\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010(\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010&R$\u0010+\u001a\u0010\u0012\f\u0012\n \u0015*\u0004\u0018\u00010)0)0\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010\u0017R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b-\u0010.¨\u00066"}, d2 = {"Lcom/truecaller/calling/contacts_list/FastScroller;", "Landroid/widget/RelativeLayout;", "", "y", "Ls1/s;", "setRecyclerViewPosition", "(F)V", "setContainerAndScrollBarPosition", "a", "()V", "Landroid/view/MotionEvent;", "event", "", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", C22021b.f61237c, "Landroidx/recyclerview/widget/RecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Ls1/g;", "Landroid/widget/FrameLayout;", "kotlin.jvm.PlatformType", "f", "Ls1/g;", "fastScrollerBubbleView", "Lkotlin/Function1;", "", "", "d", "Ls1/z/b/l;", "indexByPosition", "i", "Z", "isDragStarted", "Landroid/widget/TextView;", "g", "fastScrollerBubbleTextView", "h", "I", "itemsCount", "touchTargetWidth", "Lcom/truecaller/ui/view/TintedImageView;", "e", "fastScrollerBarView", "Landroidx/recyclerview/widget/LinearLayoutManager;", AbstractC2405c.f7629a, "Landroidx/recyclerview/widget/LinearLayoutManager;", "layoutManager", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/contacts_list/FastScroller.class */
public final class FastScroller extends RelativeLayout {

    /* renamed from: j */
    public static final /* synthetic */ int f10698j = 0;

    /* renamed from: a */
    public final int f10699a;

    /* renamed from: b */
    public RecyclerView f10700b;

    /* renamed from: c */
    public LinearLayoutManager f10701c;

    /* renamed from: d */
    public l<? super Integer, String> f10702d;

    /* renamed from: e */
    public final g<TintedImageView> f10703e = C19286f.m13660s(this, C2752R.C2754id.fast_scroller_bar);

    /* renamed from: f */
    public final g<FrameLayout> f10704f = C19286f.m13660s(this, C2752R.C2754id.fast_scroller_bubble);

    /* renamed from: g */
    public final g<TextView> f10705g = C19286f.m13660s(this, C2752R.C2754id.fast_scroller_bubble_text);

    /* renamed from: h */
    public int f10706h;

    /* renamed from: i */
    public boolean f10707i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FastScroller(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(attributeSet, "attrs");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2752R.styleable.FastScroller, 0, 0);
        s1.z.c.l.d(obtainStyledAttributes, "context.obtainStyledAttr…eable.FastScroller, 0, 0)");
        this.f10699a = obtainStyledAttributes.getDimensionPixelSize(0, 100);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(context).inflate(C2752R.layout.view_fast_scroller_contacts, (ViewGroup) this, true);
    }

    private final void setContainerAndScrollBarPosition(float f) {
        Object value = this.f10703e.getValue();
        s1.z.c.l.d(value, "fastScrollerBarView.value");
        int height = ((TintedImageView) value).getHeight();
        Object value2 = this.f10704f.getValue();
        s1.z.c.l.d(value2, "fastScrollerBubbleView.value");
        int height2 = ((FrameLayout) value2).getHeight();
        Object value3 = this.f10703e.getValue();
        s1.z.c.l.d(value3, "fastScrollerBarView.value");
        TintedImageView tintedImageView = (TintedImageView) value3;
        int i = height / 2;
        tintedImageView.setY(j.e((int) (f - i), new i(0, getHeight() - height)));
        Object value4 = this.f10704f.getValue();
        s1.z.c.l.d(value4, "fastScrollerBubbleView.value");
        ((FrameLayout) value4).setY(j.e((int) (f - height2), new i(0, (getHeight() - height2) - i)));
    }

    private final void setRecyclerViewPosition(float f) {
        if (this.f10706h > 0) {
            int i = this.f10706h;
            int e = j.e((int) ((f / getHeight()) * i), j.j(0, i));
            LinearLayoutManager linearLayoutManager = this.f10701c;
            if (linearLayoutManager == null) {
                s1.z.c.l.l("layoutManager");
                throw null;
            }
            linearLayoutManager.scrollToPositionWithOffset(e, 0);
            Object value = this.f10705g.getValue();
            s1.z.c.l.d(value, "fastScrollerBubbleTextView.value");
            TextView textView = (TextView) value;
            l<? super Integer, String> lVar = this.f10702d;
            if (lVar == null) {
                s1.z.c.l.l("indexByPosition");
                throw null;
            }
            textView.setText((CharSequence) lVar.d(Integer.valueOf(e)));
            StringBuilder sb = new StringBuilder();
            sb.append("cl: indexByPosition, group = ");
            Object value2 = this.f10705g.getValue();
            s1.z.c.l.d(value2, "fastScrollerBubbleTextView.value");
            sb.append(((TextView) value2).getText());
            sb.toString();
        }
    }

    /* renamed from: a */
    public final void m35757a() {
        LinearLayoutManager linearLayoutManager = this.f10701c;
        if (linearLayoutManager == null) {
            s1.z.c.l.l("layoutManager");
            throw null;
        }
        int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        LinearLayoutManager linearLayoutManager2 = this.f10701c;
        if (linearLayoutManager2 == null) {
            s1.z.c.l.l("layoutManager");
            throw null;
        }
        int findFirstVisibleItemPosition = linearLayoutManager2.findFirstVisibleItemPosition();
        boolean z = true;
        RecyclerView recyclerView = this.f10700b;
        if (recyclerView == null) {
            s1.z.c.l.l("recyclerView");
            throw null;
        }
        RecyclerView.AbstractC0317g adapter = recyclerView.getAdapter();
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        this.f10706h = itemCount;
        if (itemCount <= (findLastVisibleItemPosition - findFirstVisibleItemPosition) + 1) {
            z = false;
        }
        C19286f.m13683U(this, z);
        m35756b();
    }

    /* renamed from: b */
    public final void m35756b() {
        if (!this.f10707i) {
            RecyclerView recyclerView = this.f10700b;
            if (recyclerView == null) {
                s1.z.c.l.l("recyclerView");
                throw null;
            }
            int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
            RecyclerView recyclerView2 = this.f10700b;
            if (recyclerView2 == null) {
                s1.z.c.l.l("recyclerView");
                throw null;
            }
            setContainerAndScrollBarPosition(getHeight() * (computeVerticalScrollOffset / recyclerView2.computeVerticalScrollRange()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003d, code lost:
        r8 = true;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.calling.contacts_list.FastScroller.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
