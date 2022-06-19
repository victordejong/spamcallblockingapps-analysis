package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager.class */
public class LinearLayoutManager extends RecyclerView.AbstractC2637i implements RecyclerView.AbstractC2651r.AbstractC2653b {

    /* renamed from: a */
    private C2617c f9870a;

    /* renamed from: b */
    private boolean f9871b;

    /* renamed from: c */
    private boolean f9872c;

    /* renamed from: d */
    private boolean f9873d;

    /* renamed from: e */
    private boolean f9874e;

    /* renamed from: f */
    private boolean f9875f;

    /* renamed from: g */
    private final C2616b f9876g;

    /* renamed from: h */
    private int f9877h;

    /* renamed from: i */
    int f9878i;

    /* renamed from: j */
    AbstractC2694j f9879j;

    /* renamed from: k */
    boolean f9880k;

    /* renamed from: l */
    int f9881l;

    /* renamed from: m */
    int f9882m;

    /* renamed from: n */
    SavedState f9883n;

    /* renamed from: o */
    final C2615a f9884o;

    /* renamed from: z */
    private int[] f9885z;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.LinearLayoutManager.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean mAnchorLayoutFromEnd;
        int mAnchorOffset;
        int mAnchorPosition;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
            this.mAnchorLayoutFromEnd = parcel.readInt() != 1 ? false : true;
        }

        public SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        boolean hasValidAnchor() {
            return this.mAnchorPosition >= 0;
        }

        void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$a.class */
    public static final class C2615a {

        /* renamed from: a */
        AbstractC2694j f9886a;

        /* renamed from: b */
        int f9887b;

        /* renamed from: c */
        int f9888c;

        /* renamed from: d */
        boolean f9889d;

        /* renamed from: e */
        boolean f9890e;

        C2615a() {
            m40512a();
        }

        /* renamed from: a */
        final void m40512a() {
            this.f9887b = -1;
            this.f9888c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f9889d = false;
            this.f9890e = false;
        }

        /* renamed from: a */
        public final void m40511a(View view, int i) {
            int m40076a = this.f9886a.m40076a();
            if (m40076a >= 0) {
                m40509b(view, i);
                return;
            }
            this.f9887b = i;
            if (this.f9889d) {
                int mo40068c = (this.f9886a.mo40068c() - m40076a) - this.f9886a.mo40069b(view);
                this.f9888c = this.f9886a.mo40068c() - mo40068c;
                if (mo40068c <= 0) {
                    return;
                }
                int mo40063e = this.f9886a.mo40063e(view);
                int i2 = this.f9888c;
                int mo40070b = this.f9886a.mo40070b();
                int min = (i2 - mo40063e) - (mo40070b + Math.min(this.f9886a.mo40071a(view) - mo40070b, 0));
                if (min >= 0) {
                    return;
                }
                this.f9888c += Math.min(mo40068c, -min);
                return;
            }
            int mo40071a = this.f9886a.mo40071a(view);
            int mo40070b2 = mo40071a - this.f9886a.mo40070b();
            this.f9888c = mo40071a;
            if (mo40070b2 <= 0) {
                return;
            }
            int mo40063e2 = this.f9886a.mo40063e(view);
            int mo40068c2 = (this.f9886a.mo40068c() - Math.min(0, (this.f9886a.mo40068c() - m40076a) - this.f9886a.mo40069b(view))) - (mo40071a + mo40063e2);
            if (mo40068c2 >= 0) {
                return;
            }
            this.f9888c -= Math.min(mo40070b2, -mo40068c2);
        }

        /* renamed from: b */
        final void m40510b() {
            this.f9888c = this.f9889d ? this.f9886a.mo40068c() : this.f9886a.mo40070b();
        }

        /* renamed from: b */
        public final void m40509b(View view, int i) {
            if (this.f9889d) {
                this.f9888c = this.f9886a.mo40069b(view) + this.f9886a.m40076a();
            } else {
                this.f9888c = this.f9886a.mo40071a(view);
            }
            this.f9887b = i;
        }

        public final String toString() {
            return "AnchorInfo{mPosition=" + this.f9887b + ", mCoordinate=" + this.f9888c + ", mLayoutFromEnd=" + this.f9889d + ", mValid=" + this.f9890e + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$b.class */
    public static final class C2616b {

        /* renamed from: a */
        public int f9891a;

        /* renamed from: b */
        public boolean f9892b;

        /* renamed from: c */
        public boolean f9893c;

        /* renamed from: d */
        public boolean f9894d;

        protected C2616b() {
        }

        /* renamed from: a */
        final void m40508a() {
            this.f9891a = 0;
            this.f9892b = false;
            this.f9893c = false;
            this.f9894d = false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$c.class */
    public static final class C2617c {

        /* renamed from: b */
        int f9896b;

        /* renamed from: c */
        int f9897c;

        /* renamed from: d */
        int f9898d;

        /* renamed from: e */
        int f9899e;

        /* renamed from: f */
        int f9900f;

        /* renamed from: g */
        int f9901g;

        /* renamed from: k */
        int f9905k;

        /* renamed from: m */
        boolean f9907m;

        /* renamed from: a */
        boolean f9895a = true;

        /* renamed from: h */
        int f9902h = 0;

        /* renamed from: i */
        int f9903i = 0;

        /* renamed from: j */
        boolean f9904j = false;

        /* renamed from: l */
        List<RecyclerView.AbstractC2657v> f9906l = null;

        C2617c() {
        }

        /* renamed from: a */
        private View m40507a() {
            int size = this.f9906l.size();
            for (int i = 0; i < size; i++) {
                View view = this.f9906l.get(i).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.f10000c.isRemoved() && this.f9898d == layoutParams.f10000c.getLayoutPosition()) {
                    m40506a(view);
                    return view;
                }
            }
            return null;
        }

        /* renamed from: b */
        private View m40503b(View view) {
            View view2;
            int size = this.f9906l.size();
            View view3 = null;
            int i = Integer.MAX_VALUE;
            int i2 = 0;
            while (true) {
                view2 = view3;
                if (i2 >= size) {
                    break;
                }
                View view4 = this.f9906l.get(i2).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view4.getLayoutParams();
                View view5 = view3;
                int i3 = i;
                if (view4 != view) {
                    view5 = view3;
                    i3 = i;
                    if (!layoutParams.f10000c.isRemoved()) {
                        int layoutPosition = (layoutParams.f10000c.getLayoutPosition() - this.f9898d) * this.f9899e;
                        view5 = view3;
                        i3 = i;
                        if (layoutPosition >= 0) {
                            view5 = view3;
                            i3 = i;
                            if (layoutPosition < i) {
                                view2 = view4;
                                if (layoutPosition == 0) {
                                    break;
                                }
                                i3 = layoutPosition;
                                view5 = view4;
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                i2++;
                view3 = view5;
                i = i3;
            }
            return view2;
        }

        /* renamed from: a */
        public final View m40505a(RecyclerView.C2648o c2648o) {
            if (this.f9906l != null) {
                return m40507a();
            }
            View m40327b = c2648o.m40327b(this.f9898d);
            this.f9898d += this.f9899e;
            return m40327b;
        }

        /* renamed from: a */
        public final void m40506a(View view) {
            View m40503b = m40503b(view);
            if (m40503b == null) {
                this.f9898d = -1;
            } else {
                this.f9898d = ((RecyclerView.LayoutParams) m40503b.getLayoutParams()).f10000c.getLayoutPosition();
            }
        }

        /* renamed from: a */
        public final boolean m40504a(RecyclerView.C2654s c2654s) {
            int i = this.f9898d;
            return i >= 0 && i < c2654s.m40306a();
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.f9878i = 1;
        this.f9872c = false;
        this.f9880k = false;
        this.f9873d = false;
        this.f9874e = true;
        this.f9881l = -1;
        this.f9882m = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.f9883n = null;
        this.f9884o = new C2615a();
        this.f9876g = new C2616b();
        this.f9877h = 2;
        this.f9885z = new int[2];
        setOrientation(i);
        setReverseLayout(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f9878i = 1;
        this.f9872c = false;
        this.f9880k = false;
        this.f9873d = false;
        this.f9874e = true;
        this.f9881l = -1;
        this.f9882m = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.f9883n = null;
        this.f9884o = new C2615a();
        this.f9876g = new C2616b();
        this.f9877h = 2;
        this.f9885z = new int[2];
        RecyclerView.AbstractC2637i.C2641b a = m40390a(context, attributeSet, i, i2);
        setOrientation(a.f10038a);
        setReverseLayout(a.f10040c);
        setStackFromEnd(a.f10041d);
    }

    /* renamed from: a */
    private int m40541a(int i, RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, boolean z) {
        int mo40068c;
        int mo40068c2 = this.f9879j.mo40068c() - i;
        if (mo40068c2 > 0) {
            int i2 = -m40528c(-mo40068c2, c2648o, c2654s);
            if (!z || (mo40068c = this.f9879j.mo40068c() - (i + i2)) <= 0) {
                return i2;
            }
            this.f9879j.mo40072a(mo40068c);
            return mo40068c + i2;
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008e, code lost:
        if (r9.f10079g == false) goto L23;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m40537a(androidx.recyclerview.widget.RecyclerView.C2648o r7, androidx.recyclerview.widget.LinearLayoutManager.C2617c r8, androidx.recyclerview.widget.RecyclerView.C2654s r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.m40537a(androidx.recyclerview.widget.RecyclerView$o, androidx.recyclerview.widget.LinearLayoutManager$c, androidx.recyclerview.widget.RecyclerView$s, boolean):int");
    }

    /* renamed from: a */
    private View m40542a(int i, int i2, boolean z, boolean z2) {
        m40525g();
        int i3 = z ? 24579 : 320;
        return this.f9878i == 0 ? this.f10028r.m40034a(i, i2, i3, 320) : this.f10029s.m40034a(i, i2, i3, 320);
    }

    /* renamed from: a */
    private void m40543a(int i, int i2, boolean z, RecyclerView.C2654s c2654s) {
        int i3;
        this.f9870a.f9907m = m40515o();
        this.f9870a.f9900f = i;
        int[] iArr = this.f9885z;
        boolean z2 = false;
        iArr[0] = 0;
        iArr[1] = 0;
        mo10835a(c2654s, iArr);
        int max = Math.max(0, this.f9885z[0]);
        int max2 = Math.max(0, this.f9885z[1]);
        if (i == 1) {
            z2 = true;
        }
        this.f9870a.f9902h = z2 ? max2 : max;
        C2617c c2617c = this.f9870a;
        if (!z2) {
            max = max2;
        }
        c2617c.f9903i = max;
        if (z2) {
            this.f9870a.f9902h += this.f9879j.mo40062f();
            View childClosestToEnd = getChildClosestToEnd();
            C2617c c2617c2 = this.f9870a;
            int i4 = 1;
            if (this.f9880k) {
                i4 = -1;
            }
            c2617c2.f9899e = i4;
            this.f9870a.f9898d = m40366c(childClosestToEnd) + this.f9870a.f9899e;
            this.f9870a.f9896b = this.f9879j.mo40069b(childClosestToEnd);
            i3 = this.f9879j.mo40069b(childClosestToEnd) - this.f9879j.mo40068c();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.f9870a.f9902h += this.f9879j.mo40070b();
            this.f9870a.f9899e = this.f9880k ? 1 : -1;
            this.f9870a.f9898d = m40366c(childClosestToStart) + this.f9870a.f9899e;
            this.f9870a.f9896b = this.f9879j.mo40071a(childClosestToStart);
            i3 = (-this.f9879j.mo40071a(childClosestToStart)) + this.f9879j.mo40070b();
        }
        this.f9870a.f9897c = i2;
        if (z) {
            this.f9870a.f9897c -= i3;
        }
        this.f9870a.f9901g = i3;
    }

    /* renamed from: a */
    private void m40540a(C2615a c2615a) {
        m40524g(c2615a.f9887b, c2615a.f9888c);
    }

    /* renamed from: a */
    private void m40539a(RecyclerView.C2648o c2648o, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            for (int i3 = i; i3 > i2; i3--) {
                m40391a(i3, c2648o);
            }
            return;
        }
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            }
            m40391a(i2, c2648o);
        }
    }

    /* renamed from: a */
    private void m40538a(RecyclerView.C2648o c2648o, C2617c c2617c) {
        if (!c2617c.f9895a || c2617c.f9907m) {
            return;
        }
        int i = c2617c.f9901g;
        int i2 = c2617c.f9903i;
        if (c2617c.f9900f == -1) {
            int childCount = getChildCount();
            if (i < 0) {
                return;
            }
            int mo40066d = (this.f9879j.mo40066d() - i) + i2;
            if (this.f9880k) {
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (this.f9879j.mo40071a(childAt) < mo40066d || this.f9879j.mo40065d(childAt) < mo40066d) {
                        m40539a(c2648o, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = childCount - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View childAt2 = getChildAt(i5);
                if (this.f9879j.mo40071a(childAt2) < mo40066d || this.f9879j.mo40065d(childAt2) < mo40066d) {
                    m40539a(c2648o, i4, i5);
                    return;
                }
            }
        } else if (i >= 0) {
            int i6 = i - i2;
            int childCount2 = getChildCount();
            if (!this.f9880k) {
                for (int i7 = 0; i7 < childCount2; i7++) {
                    View childAt3 = getChildAt(i7);
                    if (this.f9879j.mo40069b(childAt3) > i6 || this.f9879j.mo40067c(childAt3) > i6) {
                        m40539a(c2648o, 0, i7);
                        return;
                    }
                }
                return;
            }
            int i8 = childCount2 - 1;
            for (int i9 = i8; i9 >= 0; i9--) {
                View childAt4 = getChildAt(i9);
                if (this.f9879j.mo40069b(childAt4) > i6 || this.f9879j.mo40067c(childAt4) > i6) {
                    m40539a(c2648o, i8, i9);
                    return;
                }
            }
        }
    }

    /* renamed from: b */
    private int m40531b(int i, RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, boolean z) {
        int mo40070b = i - this.f9879j.mo40070b();
        if (mo40070b > 0) {
            int i2 = -m40528c(mo40070b, c2648o, c2654s);
            int i3 = i2;
            if (z) {
                int mo40070b2 = (i + i2) - this.f9879j.mo40070b();
                i3 = i2;
                if (mo40070b2 > 0) {
                    this.f9879j.mo40072a(-mo40070b2);
                    i3 = i2 - mo40070b2;
                }
            }
            return i3;
        }
        return 0;
    }

    /* renamed from: b */
    private void m40530b(C2615a c2615a) {
        m40523h(c2615a.f9887b, c2615a.f9888c);
    }

    /* renamed from: c */
    private int m40528c(int i, RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        m40525g();
        this.f9870a.f9895a = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        m40543a(i2, abs, true, c2654s);
        int m40537a = this.f9870a.f9901g + m40537a(c2648o, this.f9870a, c2654s, false);
        if (m40537a < 0) {
            return 0;
        }
        if (abs > m40537a) {
            i = i2 * m40537a;
        }
        this.f9879j.mo40072a(-i);
        this.f9870a.f9905k = i;
        return i;
    }

    /* renamed from: g */
    private void m40524g(int i, int i2) {
        this.f9870a.f9897c = this.f9879j.mo40068c() - i2;
        this.f9870a.f9899e = this.f9880k ? -1 : 1;
        this.f9870a.f9898d = i;
        this.f9870a.f9900f = 1;
        this.f9870a.f9896b = i2;
        this.f9870a.f9901g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.f9880k ? 0 : getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(this.f9880k ? getChildCount() - 1 : 0);
    }

    /* renamed from: h */
    private int m40522h(RecyclerView.C2654s c2654s) {
        if (getChildCount() == 0) {
            return 0;
        }
        m40525g();
        return C2701m.m40047a(c2654s, this.f9879j, m40532a(!this.f9874e), m40529b(!this.f9874e), this, this.f9874e, this.f9880k);
    }

    /* renamed from: h */
    private void m40523h(int i, int i2) {
        this.f9870a.f9897c = i2 - this.f9879j.mo40070b();
        this.f9870a.f9898d = i;
        this.f9870a.f9899e = this.f9880k ? 1 : -1;
        this.f9870a.f9900f = -1;
        this.f9870a.f9896b = i2;
        this.f9870a.f9901g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
    }

    /* renamed from: i */
    private int m40519i(RecyclerView.C2654s c2654s) {
        if (getChildCount() == 0) {
            return 0;
        }
        m40525g();
        return C2701m.m40048a(c2654s, this.f9879j, m40532a(!this.f9874e), m40529b(!this.f9874e), this, this.f9874e);
    }

    /* renamed from: i */
    private View m40520i(int i, int i2) {
        int i3;
        int i4;
        m40525g();
        if (!(i2 > i ? true : i2 < i ? true : false)) {
            return getChildAt(i);
        }
        if (this.f9879j.mo40071a(getChildAt(i)) < this.f9879j.mo40070b()) {
            i4 = 16644;
            i3 = 16388;
        } else {
            i4 = 4161;
            i3 = 4097;
        }
        return this.f9878i == 0 ? this.f10028r.m40034a(i, i2, i4, i3) : this.f10029s.m40034a(i, i2, i4, i3);
    }

    /* renamed from: j */
    private int m40517j(RecyclerView.C2654s c2654s) {
        if (getChildCount() == 0) {
            return 0;
        }
        m40525g();
        return C2701m.m40046b(c2654s, this.f9879j, m40532a(!this.f9874e), m40529b(!this.f9874e), this, this.f9874e);
    }

    /* renamed from: n */
    private void m40516n() {
        boolean z = true;
        if (this.f9878i == 1 || !isLayoutRTL()) {
            z = this.f9872c;
        } else if (this.f9872c) {
            z = false;
        }
        this.f9880k = z;
    }

    /* renamed from: o */
    private boolean m40515o() {
        return this.f9879j.mo40060g() == 0 && this.f9879j.mo40066d() == 0;
    }

    /* renamed from: p */
    private View m40514p() {
        return m40520i(0, getChildCount());
    }

    /* renamed from: q */
    private View m40513q() {
        return m40520i(getChildCount() - 1, -1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public int mo40277a(int i, RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s) {
        if (this.f9878i == 1) {
            return 0;
        }
        return m40528c(i, c2648o, c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public View mo40272a(View view, int i, RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s) {
        int m40527e;
        m40516n();
        if (getChildCount() == 0 || (m40527e = m40527e(i)) == Integer.MIN_VALUE) {
            return null;
        }
        m40525g();
        m40543a(m40527e, (int) (this.f9879j.mo40064e() * 0.33333334f), false, c2654s);
        this.f9870a.f9901g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.f9870a.f9895a = false;
        m40537a(c2648o, this.f9870a, c2654s, true);
        View m40513q = m40527e == -1 ? this.f9880k ? m40513q() : m40514p() : this.f9880k ? m40514p() : m40513q();
        View childClosestToStart = m40527e == -1 ? getChildClosestToStart() : getChildClosestToEnd();
        if (!childClosestToStart.hasFocusable()) {
            return m40513q;
        }
        if (m40513q != null) {
            return childClosestToStart;
        }
        return null;
    }

    /* renamed from: a */
    View mo40534a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, boolean z, boolean z2) {
        int i;
        int i2;
        m40525g();
        int childCount = getChildCount();
        int i3 = -1;
        if (z2) {
            i2 = getChildCount() - 1;
            i = -1;
        } else {
            i3 = childCount;
            i2 = 0;
            i = 1;
        }
        int m40306a = c2654s.m40306a();
        int mo40070b = this.f9879j.mo40070b();
        int mo40068c = this.f9879j.mo40068c();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (true) {
            View view4 = view3;
            if (i2 == i3) {
                return view != null ? view : view2 != null ? view2 : view4;
            }
            View childAt = getChildAt(i2);
            int c = m40366c(childAt);
            int mo40071a = this.f9879j.mo40071a(childAt);
            int mo40069b = this.f9879j.mo40069b(childAt);
            View view5 = view;
            View view6 = view2;
            View view7 = view4;
            if (c >= 0) {
                view5 = view;
                view6 = view2;
                view7 = view4;
                if (c >= m40306a) {
                    continue;
                } else if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).f10000c.isRemoved()) {
                    view5 = view;
                    view6 = view2;
                    view7 = view4;
                    if (view4 == null) {
                        view5 = view;
                        view6 = view2;
                        view7 = childAt;
                    }
                } else {
                    boolean z3 = mo40069b <= mo40070b && mo40071a < mo40070b;
                    boolean z4 = mo40071a >= mo40068c && mo40069b > mo40068c;
                    if (!z3 && !z4) {
                        return childAt;
                    }
                    if (z) {
                        if (!z4) {
                            view5 = view;
                            view6 = view2;
                            view7 = view4;
                            if (view != null) {
                            }
                            view7 = view4;
                            view6 = view2;
                            view5 = childAt;
                        }
                        view5 = view;
                        view6 = childAt;
                        view7 = view4;
                    } else {
                        if (!z3) {
                            view5 = view;
                            view6 = view2;
                            view7 = view4;
                            if (view != null) {
                            }
                            view7 = view4;
                            view6 = view2;
                            view5 = childAt;
                        }
                        view5 = view;
                        view6 = childAt;
                        view7 = view4;
                    }
                }
            }
            i2 += i;
            view = view5;
            view2 = view6;
            view3 = view7;
        }
    }

    /* renamed from: a */
    public final View m40532a(boolean z) {
        return this.f9880k ? m40542a(getChildCount() - 1, -1, z, true) : m40542a(0, getChildCount(), z, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40278a(int i, int i2, RecyclerView.C2654s c2654s, RecyclerView.AbstractC2637i.AbstractC2640a abstractC2640a) {
        if (this.f9878i != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        m40525g();
        m40543a(i > 0 ? 1 : -1, Math.abs(i), true, c2654s);
        mo40533a(c2654s, this.f9870a, abstractC2640a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40392a(int i, RecyclerView.AbstractC2637i.AbstractC2640a abstractC2640a) {
        int i2;
        boolean z;
        SavedState savedState = this.f9883n;
        int i3 = -1;
        if (savedState == null || !savedState.hasValidAnchor()) {
            m40516n();
            boolean z2 = this.f9880k;
            int i4 = this.f9881l;
            z = z2;
            i2 = i4;
            if (i4 == -1) {
                if (z2) {
                    i2 = i - 1;
                    z = z2;
                } else {
                    i2 = 0;
                    z = z2;
                }
            }
        } else {
            z = this.f9883n.mAnchorLayoutFromEnd;
            i2 = this.f9883n.mAnchorPosition;
        }
        if (!z) {
            i3 = 1;
        }
        int i5 = i2;
        for (int i6 = 0; i6 < this.f9877h && i5 >= 0 && i5 < i; i6++) {
            abstractC2640a.mo40092a(i5, 0);
            i5 += i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40274a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f9883n = savedState;
            if (this.f9881l != -1) {
                savedState.invalidateAnchor();
            }
            m40353k();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40269a(AccessibilityEvent accessibilityEvent) {
        super.mo40269a(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(m40521i());
            accessibilityEvent.setToIndex(m40518j());
        }
    }

    /* renamed from: a */
    public void mo40536a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, C2615a c2615a, int i) {
    }

    /* renamed from: a */
    void mo40535a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, C2617c c2617c, C2616b c2616b) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        View m40505a = c2617c.m40505a(c2648o);
        if (m40505a == null) {
            c2616b.f9892b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) m40505a.getLayoutParams();
        if (c2617c.f9906l == null) {
            if (this.f9880k == (c2617c.f9900f == -1)) {
                m40374b(m40505a);
            } else {
                m40373b(m40505a, 0);
            }
        } else {
            if (this.f9880k == (c2617c.f9900f == -1)) {
                m40389a(m40505a);
            } else {
                m40388a(m40505a, 0);
            }
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) m40505a.getLayoutParams();
        Rect m40438f = this.f10027q.m40438f(m40505a);
        int i6 = m40438f.left;
        int i7 = m40438f.right;
        int i8 = m40438f.top;
        int i9 = m40438f.bottom;
        int m40393a = RecyclerView.AbstractC2637i.m40393a(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + layoutParams2.leftMargin + layoutParams2.rightMargin + i6 + i7 + 0, layoutParams2.width, mo31644e());
        int m40393a2 = RecyclerView.AbstractC2637i.m40393a(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + layoutParams2.topMargin + layoutParams2.bottomMargin + i8 + i9 + 0, layoutParams2.height, mo31643f());
        if (m40372b(m40505a, m40393a, m40393a2, layoutParams2)) {
            m40505a.measure(m40393a, m40393a2);
        }
        c2616b.f9891a = this.f9879j.mo40063e(m40505a);
        if (this.f9878i == 1) {
            if (isLayoutRTL()) {
                i4 = getWidth() - getPaddingRight();
                i5 = i4 - this.f9879j.mo40061f(m40505a);
            } else {
                i5 = getPaddingLeft();
                i4 = this.f9879j.mo40061f(m40505a) + i5;
            }
            if (c2617c.f9900f == -1) {
                i2 = c2617c.f9896b;
                i3 = i5;
                i = c2617c.f9896b - c2616b.f9891a;
            } else {
                int i10 = c2617c.f9896b;
                i2 = c2617c.f9896b + c2616b.f9891a;
                i3 = i5;
                i = i10;
            }
        } else {
            i = getPaddingTop();
            i2 = this.f9879j.mo40061f(m40505a) + i;
            if (c2617c.f9900f == -1) {
                i4 = c2617c.f9896b;
                i3 = c2617c.f9896b - c2616b.f9891a;
            } else {
                i3 = c2617c.f9896b;
                i4 = c2617c.f9896b + c2616b.f9891a;
            }
        }
        m40387a(m40505a, i3, i, i4, i2);
        if (layoutParams.f10000c.isRemoved() || layoutParams.f10000c.isUpdated()) {
            c2616b.f9893c = true;
        }
        c2616b.f9894d = m40505a.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public void mo40264a(RecyclerView.C2654s c2654s) {
        super.mo40264a(c2654s);
        this.f9883n = null;
        this.f9881l = -1;
        this.f9882m = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.f9884o.m40512a();
    }

    /* renamed from: a */
    void mo40533a(RecyclerView.C2654s c2654s, C2617c c2617c, RecyclerView.AbstractC2637i.AbstractC2640a abstractC2640a) {
        int i = c2617c.f9898d;
        if (i < 0 || i >= c2654s.m40306a()) {
            return;
        }
        abstractC2640a.mo40092a(i, Math.max(0, c2617c.f9901g));
    }

    /* renamed from: a */
    public void mo10835a(RecyclerView.C2654s c2654s, int[] iArr) {
        int i;
        int i2;
        int mo40064e = c2654s.f10073a != -1 ? this.f9879j.mo40064e() : 0;
        if (this.f9870a.f9900f == -1) {
            i2 = 0;
            i = mo40064e;
        } else {
            i = 0;
            i2 = mo40064e;
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40263a(RecyclerView recyclerView, RecyclerView.C2648o c2648o) {
        super.mo40263a(recyclerView, c2648o);
        if (this.f9875f) {
            m40364c(c2648o);
            c2648o.m40338a();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public void mo10800a(RecyclerView recyclerView, RecyclerView.C2654s c2654s, int i) {
        C2690g c2690g = new C2690g(recyclerView.getContext());
        c2690g.setTargetPosition(i);
        m40378a(c2690g);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40259a(String str) {
        if (this.f9883n == null) {
            super.mo40259a(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public int mo40255b(int i, RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s) {
        if (this.f9878i == 0) {
            return 0;
        }
        return m40528c(i, c2648o, c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public int mo40251b(RecyclerView.C2654s c2654s) {
        return m40517j(c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public final View mo40376b(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int c = i - m40366c(getChildAt(0));
        if (c >= 0 && c < childCount) {
            View childAt = getChildAt(c);
            if (m40366c(childAt) == i) {
                return childAt;
            }
        }
        return super.mo40376b(i);
    }

    /* renamed from: b */
    public final View m40529b(boolean z) {
        return this.f9880k ? m40542a(0, getChildCount(), z, true) : m40542a(getChildCount() - 1, -1, z, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public RecyclerView.LayoutParams mo31646b() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: c */
    public int mo40243c(RecyclerView.C2654s c2654s) {
        return m40517j(c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2651r.AbstractC2653b
    /* renamed from: c */
    public final PointF mo40248c(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        boolean z = false;
        if (i < m40366c(getChildAt(0))) {
            z = true;
        }
        int i2 = 1;
        if (z != this.f9880k) {
            i2 = -1;
        }
        return this.f9878i == 0 ? new PointF(i2, BitmapDescriptorFactory.HUE_RED) : new PointF(BitmapDescriptorFactory.HUE_RED, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0279  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo40244c(androidx.recyclerview.widget.RecyclerView.C2648o r7, androidx.recyclerview.widget.RecyclerView.C2654s r8) {
        /*
            Method dump skipped, instructions count: 2188
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.mo40244c(androidx.recyclerview.widget.RecyclerView$o, androidx.recyclerview.widget.RecyclerView$s):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: c */
    public boolean mo40249c() {
        return this.f9883n == null && this.f9871b == this.f9873d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: d */
    public int mo40238d(RecyclerView.C2654s c2654s) {
        return m40522h(c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: d */
    public final Parcelable mo40241d() {
        SavedState savedState = this.f9883n;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (getChildCount() > 0) {
            m40525g();
            boolean z = this.f9871b ^ this.f9880k;
            savedState2.mAnchorLayoutFromEnd = z;
            if (z) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState2.mAnchorOffset = this.f9879j.mo40068c() - this.f9879j.mo40069b(childClosestToEnd);
                savedState2.mAnchorPosition = m40366c(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                savedState2.mAnchorPosition = m40366c(childClosestToStart);
                savedState2.mAnchorOffset = this.f9879j.mo40071a(childClosestToStart) - this.f9879j.mo40070b();
            }
        } else {
            savedState2.invalidateAnchor();
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: d */
    public final void mo40240d(int i) {
        this.f9881l = i;
        this.f9882m = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        SavedState savedState = this.f9883n;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        m40353k();
    }

    /* renamed from: e */
    public final int m40527e(int i) {
        if (i == 1) {
            return (this.f9878i != 1 && isLayoutRTL()) ? 1 : -1;
        } else if (i == 2) {
            return (this.f9878i != 1 && isLayoutRTL()) ? -1 : 1;
        } else if (i == 17) {
            if (this.f9878i != 0) {
                return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
            return -1;
        } else if (i == 33) {
            if (this.f9878i != 1) {
                return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
            return -1;
        } else if (i == 66) {
            if (this.f9878i != 0) {
                return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
            return 1;
        } else if (i != 130 || this.f9878i != 1) {
            return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        } else {
            return 1;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: e */
    public int mo40235e(RecyclerView.C2654s c2654s) {
        return m40522h(c2654s);
    }

    /* renamed from: e */
    public final void m40526e(int i, int i2) {
        this.f9881l = i;
        this.f9882m = i2;
        SavedState savedState = this.f9883n;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        m40353k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: e */
    public boolean mo31644e() {
        return this.f9878i == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: f */
    public final int mo40233f(RecyclerView.C2654s c2654s) {
        return m40519i(c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: f */
    public boolean mo31643f() {
        return this.f9878i == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: g */
    public final int mo40230g(RecyclerView.C2654s c2654s) {
        return m40519i(c2654s);
    }

    /* renamed from: g */
    public final void m40525g() {
        if (this.f9870a == null) {
            this.f9870a = new C2617c();
        }
    }

    public int getOrientation() {
        return this.f9878i;
    }

    public boolean getStackFromEnd() {
        return this.f9873d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: h */
    final boolean mo40357h() {
        boolean z;
        if (getHeightMode() == 1073741824 || getWidthMode() == 1073741824) {
            return false;
        }
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            }
            ViewGroup.LayoutParams layoutParams = getChildAt(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    /* renamed from: i */
    public final int m40521i() {
        View m40542a = m40542a(0, getChildCount(), false, true);
        if (m40542a == null) {
            return -1;
        }
        return m40366c(m40542a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.f9874e;
    }

    /* renamed from: j */
    public final int m40518j() {
        View m40542a = m40542a(getChildCount() - 1, -1, false, true);
        if (m40542a == null) {
            return -1;
        }
        return m40366c(m40542a);
    }

    public void setOrientation(int i) {
        if (i == 0 || i == 1) {
            mo40259a((String) null);
            if (i == this.f9878i && this.f9879j != null) {
                return;
            }
            AbstractC2694j m40074a = AbstractC2694j.m40074a(this, i);
            this.f9879j = m40074a;
            this.f9884o.f9886a = m40074a;
            this.f9878i = i;
            m40353k();
            return;
        }
        throw new IllegalArgumentException("invalid orientation:".concat(String.valueOf(i)));
    }

    public void setReverseLayout(boolean z) {
        mo40259a((String) null);
        if (z == this.f9872c) {
            return;
        }
        this.f9872c = z;
        m40353k();
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.f9874e = z;
    }

    public void setStackFromEnd(boolean z) {
        mo40259a((String) null);
        if (this.f9873d == z) {
            return;
        }
        this.f9873d = z;
        m40353k();
    }
}
