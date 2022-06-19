package p193e.p194a.p294b.p295a.p296a.p304c;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import n3.b0.a.o;
import p1727n3.p1744b0.p1745a.AbstractC25622u;
import p1727n3.p1744b0.p1745a.C25620s;
import p1727n3.p1744b0.p1745a.C25621t;
import s1.z.c.l;
/* renamed from: e.a.b.a.a.c.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/c/c.class */
public final class C7621c extends o {

    /* renamed from: f */
    public AbstractC25622u f23970f;

    /* renamed from: g */
    public AbstractC25622u f23971g;

    /* renamed from: h */
    public final float f23972h;

    public C7621c() {
        this.f23972h = 0.0f;
    }

    public C7621c(float f) {
        this.f23972h = f;
    }

    /* renamed from: h */
    private final View m29472h(RecyclerView.AbstractC0329o abstractC0329o, AbstractC25622u abstractC25622u) {
        int childCount = abstractC0329o.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int mo3125k = abstractC25622u.mo3125k();
        int mo3124l = abstractC25622u.mo3124l() / 2;
        int i = (int) this.f23972h;
        int i2 = Integer.MAX_VALUE;
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = abstractC0329o.getChildAt(i3);
            int abs = Math.abs(((abstractC25622u.mo3133c(childAt) / 2) + abstractC25622u.mo3131e(childAt)) - ((mo3124l + mo3125k) + i));
            int i4 = i2;
            if (abs < i2) {
                view = childAt;
                i4 = abs;
            }
            i3++;
            i2 = i4;
        }
        return view;
    }

    /* renamed from: j */
    private final AbstractC25622u m29470j(RecyclerView.AbstractC0329o abstractC0329o) {
        C25620s c25620s;
        if (this.f23971g == null) {
            this.f23971g = new C25620s(abstractC0329o);
        }
        AbstractC25622u abstractC25622u = this.f23971g;
        if (abstractC25622u != null) {
            c25620s = abstractC25622u;
        } else {
            c25620s = new C25620s(abstractC0329o);
            l.d(c25620s, "OrientationHelper.create…ntalHelper(layoutManager)");
        }
        return c25620s;
    }

    /* renamed from: k */
    private final AbstractC25622u m29469k(RecyclerView.AbstractC0329o abstractC0329o) {
        C25621t c25621t;
        if (this.f23970f == null) {
            this.f23970f = new C25621t(abstractC0329o);
        }
        AbstractC25622u abstractC25622u = this.f23970f;
        if (abstractC25622u != null) {
            c25621t = abstractC25622u;
        } else {
            c25621t = new C25621t(abstractC0329o);
            l.d(c25621t, "OrientationHelper.create…icalHelper(layoutManager)");
        }
        return c25621t;
    }

    /* renamed from: b */
    public int[] m29474b(RecyclerView.AbstractC0329o abstractC0329o, View view) {
        l.e(abstractC0329o, "layoutManager");
        l.e(view, "targetView");
        int[] iArr = new int[2];
        if (abstractC0329o.canScrollHorizontally()) {
            iArr[0] = m29471i(view, m29470j(abstractC0329o));
        } else {
            iArr[0] = 0;
        }
        if (abstractC0329o.canScrollVertically()) {
            iArr[1] = m29471i(view, m29469k(abstractC0329o));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    /* renamed from: d */
    public View m29473d(RecyclerView.AbstractC0329o abstractC0329o) {
        View view;
        l.c(abstractC0329o);
        if (abstractC0329o.canScrollVertically()) {
            return m29472h(abstractC0329o, m29469k(abstractC0329o));
        }
        if (abstractC0329o.canScrollHorizontally()) {
            return m29472h(abstractC0329o, m29470j(abstractC0329o));
        }
        if (abstractC0329o.canScrollVertically()) {
            AbstractC25622u abstractC25622u = ((o) this).d;
            if (abstractC25622u == null || abstractC25622u.f71788a != abstractC0329o) {
                ((o) this).d = new C25621t(abstractC0329o);
            }
            view = h(abstractC0329o, ((o) this).d);
        } else if (abstractC0329o.canScrollHorizontally()) {
            AbstractC25622u abstractC25622u2 = ((o) this).e;
            if (abstractC25622u2 == null || abstractC25622u2.f71788a != abstractC0329o) {
                ((o) this).e = new C25620s(abstractC0329o);
            }
            view = h(abstractC0329o, ((o) this).e);
        } else {
            view = null;
        }
        return view;
    }

    /* renamed from: i */
    public final int m29471i(View view, AbstractC25622u abstractC25622u) {
        int mo3131e = abstractC25622u.mo3131e(view);
        return ((abstractC25622u.mo3133c(view) / 2) + mo3131e) - (((abstractC25622u.mo3124l() / 2) + abstractC25622u.mo3125k()) + ((int) this.f23972h));
    }
}
