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
public class LinearLayoutManager extends RecyclerView.i implements RecyclerView.r.b {

    /* renamed from: a  reason: collision with root package name */
    private c f5306a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f5307b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f5308c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f5309d;
    private boolean e;
    private boolean f;
    private final b g;
    private int h;
    int i;
    j j;
    boolean k;
    int l;
    int m;
    SavedState n;
    final a o;
    private int[] z;

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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        j f5310a;

        /* renamed from: b  reason: collision with root package name */
        int f5311b;

        /* renamed from: c  reason: collision with root package name */
        int f5312c;

        /* renamed from: d  reason: collision with root package name */
        boolean f5313d;
        boolean e;

        a() {
            a();
        }

        final void a() {
            this.f5311b = -1;
            this.f5312c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f5313d = false;
            this.e = false;
        }

        public final void a(View view, int i) {
            int a2 = this.f5310a.a();
            if (a2 >= 0) {
                b(view, i);
                return;
            }
            this.f5311b = i;
            if (this.f5313d) {
                int c2 = (this.f5310a.c() - a2) - this.f5310a.b(view);
                this.f5312c = this.f5310a.c() - c2;
                if (c2 > 0) {
                    int e = this.f5310a.e(view);
                    int i2 = this.f5312c;
                    int b2 = this.f5310a.b();
                    int min = (i2 - e) - (b2 + Math.min(this.f5310a.a(view) - b2, 0));
                    if (min < 0) {
                        this.f5312c += Math.min(c2, -min);
                        return;
                    }
                    return;
                }
                return;
            }
            int a3 = this.f5310a.a(view);
            int b3 = a3 - this.f5310a.b();
            this.f5312c = a3;
            if (b3 > 0) {
                int e2 = this.f5310a.e(view);
                int c3 = (this.f5310a.c() - Math.min(0, (this.f5310a.c() - a2) - this.f5310a.b(view))) - (a3 + e2);
                if (c3 < 0) {
                    this.f5312c -= Math.min(b3, -c3);
                }
            }
        }

        final void b() {
            this.f5312c = this.f5313d ? this.f5310a.c() : this.f5310a.b();
        }

        public final void b(View view, int i) {
            if (this.f5313d) {
                this.f5312c = this.f5310a.b(view) + this.f5310a.a();
            } else {
                this.f5312c = this.f5310a.a(view);
            }
            this.f5311b = i;
        }

        public final String toString() {
            return "AnchorInfo{mPosition=" + this.f5311b + ", mCoordinate=" + this.f5312c + ", mLayoutFromEnd=" + this.f5313d + ", mValid=" + this.e + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public int f5314a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f5315b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f5316c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f5317d;

        protected b() {
        }

        final void a() {
            this.f5314a = 0;
            this.f5315b = false;
            this.f5316c = false;
            this.f5317d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$c.class */
    public static final class c {

        /* renamed from: b  reason: collision with root package name */
        int f5319b;

        /* renamed from: c  reason: collision with root package name */
        int f5320c;

        /* renamed from: d  reason: collision with root package name */
        int f5321d;
        int e;
        int f;
        int g;
        int k;
        boolean m;

        /* renamed from: a  reason: collision with root package name */
        boolean f5318a = true;
        int h = 0;
        int i = 0;
        boolean j = false;
        List<RecyclerView.v> l = null;

        c() {
        }

        private View a() {
            int size = this.l.size();
            for (int i = 0; i < size; i++) {
                View view = this.l.get(i).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.f5332c.isRemoved() && this.f5321d == layoutParams.f5332c.getLayoutPosition()) {
                    a(view);
                    return view;
                }
            }
            return null;
        }

        private View b(View view) {
            View view2;
            int size = this.l.size();
            View view3 = null;
            int i = Integer.MAX_VALUE;
            int i2 = 0;
            while (true) {
                view2 = view3;
                if (i2 >= size) {
                    break;
                }
                View view4 = this.l.get(i2).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view4.getLayoutParams();
                view3 = view3;
                i = i;
                if (view4 != view) {
                    view3 = view3;
                    i = i;
                    if (!layoutParams.f5332c.isRemoved()) {
                        int layoutPosition = (layoutParams.f5332c.getLayoutPosition() - this.f5321d) * this.e;
                        view3 = view3;
                        i = i;
                        if (layoutPosition >= 0) {
                            view3 = view3;
                            i = i;
                            if (layoutPosition < i) {
                                view2 = view4;
                                if (layoutPosition == 0) {
                                    break;
                                }
                                i = layoutPosition;
                                view3 = view4;
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
            }
            return view2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final View a(RecyclerView.o oVar) {
            if (this.l != null) {
                return a();
            }
            View b2 = oVar.b(this.f5321d);
            this.f5321d += this.e;
            return b2;
        }

        public final void a(View view) {
            View b2 = b(view);
            if (b2 == null) {
                this.f5321d = -1;
            } else {
                this.f5321d = ((RecyclerView.LayoutParams) b2.getLayoutParams()).f5332c.getLayoutPosition();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean a(RecyclerView.s sVar) {
            int i = this.f5321d;
            return i >= 0 && i < sVar.a();
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.i = 1;
        this.f5308c = false;
        this.k = false;
        this.f5309d = false;
        this.e = true;
        this.l = -1;
        this.m = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.n = null;
        this.o = new a();
        this.g = new b();
        this.h = 2;
        this.z = new int[2];
        setOrientation(i);
        setReverseLayout(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.i = 1;
        this.f5308c = false;
        this.k = false;
        this.f5309d = false;
        this.e = true;
        this.l = -1;
        this.m = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.n = null;
        this.o = new a();
        this.g = new b();
        this.h = 2;
        this.z = new int[2];
        RecyclerView.i.b a2 = a(context, attributeSet, i, i2);
        setOrientation(a2.f5350a);
        setReverseLayout(a2.f5352c);
        setStackFromEnd(a2.f5353d);
    }

    private int a(int i, RecyclerView.o oVar, RecyclerView.s sVar, boolean z) {
        int c2;
        int c3 = this.j.c() - i;
        if (c3 <= 0) {
            return 0;
        }
        int i2 = -c(-c3, oVar, sVar);
        if (!z || (c2 = this.j.c() - (i + i2)) <= 0) {
            return i2;
        }
        this.j.a(c2);
        return c2 + i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008e, code lost:
        if (r9.g == false) goto L_0x0091;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(androidx.recyclerview.widget.RecyclerView.o r7, androidx.recyclerview.widget.LinearLayoutManager.c r8, androidx.recyclerview.widget.RecyclerView.s r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.a(androidx.recyclerview.widget.RecyclerView$o, androidx.recyclerview.widget.LinearLayoutManager$c, androidx.recyclerview.widget.RecyclerView$s, boolean):int");
    }

    private View a(int i, int i2, boolean z, boolean z2) {
        g();
        int i3 = z ? 24579 : 320;
        return this.i == 0 ? this.r.a(i, i2, i3, 320) : this.s.a(i, i2, i3, 320);
    }

    private void a(int i, int i2, boolean z, RecyclerView.s sVar) {
        int i3;
        this.f5306a.m = o();
        this.f5306a.f = i;
        int[] iArr = this.z;
        boolean z2 = false;
        iArr[0] = 0;
        int i4 = 1;
        int i5 = 1;
        iArr[1] = 0;
        a(sVar, iArr);
        int max = Math.max(0, this.z[0]);
        int max2 = Math.max(0, this.z[1]);
        if (i == 1) {
            z2 = true;
        }
        this.f5306a.h = z2 ? max2 : max;
        c cVar = this.f5306a;
        if (!z2) {
            max = max2;
        }
        cVar.i = max;
        if (z2) {
            this.f5306a.h += this.j.f();
            View childClosestToEnd = getChildClosestToEnd();
            c cVar2 = this.f5306a;
            if (this.k) {
                i5 = -1;
            }
            cVar2.e = i5;
            this.f5306a.f5321d = c(childClosestToEnd) + this.f5306a.e;
            this.f5306a.f5319b = this.j.b(childClosestToEnd);
            i3 = this.j.b(childClosestToEnd) - this.j.c();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.f5306a.h += this.j.b();
            c cVar3 = this.f5306a;
            if (!this.k) {
                i4 = -1;
            }
            cVar3.e = i4;
            this.f5306a.f5321d = c(childClosestToStart) + this.f5306a.e;
            this.f5306a.f5319b = this.j.a(childClosestToStart);
            i3 = (-this.j.a(childClosestToStart)) + this.j.b();
        }
        this.f5306a.f5320c = i2;
        if (z) {
            this.f5306a.f5320c -= i3;
        }
        this.f5306a.g = i3;
    }

    private void a(a aVar) {
        g(aVar.f5311b, aVar.f5312c);
    }

    private void a(RecyclerView.o oVar, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                while (true) {
                    i2--;
                    if (i2 >= i) {
                        a(i2, oVar);
                    } else {
                        return;
                    }
                }
            } else {
                for (int i3 = i; i3 > i2; i3--) {
                    a(i3, oVar);
                }
            }
        }
    }

    private void a(RecyclerView.o oVar, c cVar) {
        if (cVar.f5318a && !cVar.m) {
            int i = cVar.g;
            int i2 = cVar.i;
            if (cVar.f == -1) {
                int childCount = getChildCount();
                if (i >= 0) {
                    int d2 = (this.j.d() - i) + i2;
                    if (this.k) {
                        for (int i3 = 0; i3 < childCount; i3++) {
                            View childAt = getChildAt(i3);
                            if (this.j.a(childAt) < d2 || this.j.d(childAt) < d2) {
                                a(oVar, 0, i3);
                                return;
                            }
                        }
                        return;
                    }
                    int i4 = childCount - 1;
                    for (int i5 = i4; i5 >= 0; i5--) {
                        View childAt2 = getChildAt(i5);
                        if (this.j.a(childAt2) < d2 || this.j.d(childAt2) < d2) {
                            a(oVar, i4, i5);
                            return;
                        }
                    }
                }
            } else if (i >= 0) {
                int i6 = i - i2;
                int childCount2 = getChildCount();
                if (this.k) {
                    int i7 = childCount2 - 1;
                    for (int i8 = i7; i8 >= 0; i8--) {
                        View childAt3 = getChildAt(i8);
                        if (this.j.b(childAt3) > i6 || this.j.c(childAt3) > i6) {
                            a(oVar, i7, i8);
                            return;
                        }
                    }
                    return;
                }
                for (int i9 = 0; i9 < childCount2; i9++) {
                    View childAt4 = getChildAt(i9);
                    if (this.j.b(childAt4) > i6 || this.j.c(childAt4) > i6) {
                        a(oVar, 0, i9);
                        return;
                    }
                }
            }
        }
    }

    private int b(int i, RecyclerView.o oVar, RecyclerView.s sVar, boolean z) {
        int b2 = i - this.j.b();
        if (b2 <= 0) {
            return 0;
        }
        int i2 = -c(b2, oVar, sVar);
        int i3 = i2;
        if (z) {
            int b3 = (i + i2) - this.j.b();
            i3 = i2;
            if (b3 > 0) {
                this.j.a(-b3);
                i3 = i2 - b3;
            }
        }
        return i3;
    }

    private void b(a aVar) {
        h(aVar.f5311b, aVar.f5312c);
    }

    private int c(int i, RecyclerView.o oVar, RecyclerView.s sVar) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        g();
        this.f5306a.f5318a = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        a(i2, abs, true, sVar);
        int a2 = this.f5306a.g + a(oVar, this.f5306a, sVar, false);
        if (a2 < 0) {
            return 0;
        }
        if (abs > a2) {
            i = i2 * a2;
        }
        this.j.a(-i);
        this.f5306a.k = i;
        return i;
    }

    private void g(int i, int i2) {
        this.f5306a.f5320c = this.j.c() - i2;
        this.f5306a.e = this.k ? -1 : 1;
        this.f5306a.f5321d = i;
        this.f5306a.f = 1;
        this.f5306a.f5319b = i2;
        this.f5306a.g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.k ? 0 : getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(this.k ? getChildCount() - 1 : 0);
    }

    private int h(RecyclerView.s sVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        g();
        return m.a(sVar, this.j, a(!this.e), b(!this.e), this, this.e, this.k);
    }

    private void h(int i, int i2) {
        this.f5306a.f5320c = i2 - this.j.b();
        this.f5306a.f5321d = i;
        this.f5306a.e = this.k ? 1 : -1;
        this.f5306a.f = -1;
        this.f5306a.f5319b = i2;
        this.f5306a.g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
    }

    private int i(RecyclerView.s sVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        g();
        return m.a(sVar, this.j, a(!this.e), b(!this.e), this, this.e);
    }

    private View i(int i, int i2) {
        int i3;
        int i4;
        g();
        if ((i2 > i ? (char) 1 : i2 < i ? (char) 65535 : (char) 0) == 0) {
            return getChildAt(i);
        }
        if (this.j.a(getChildAt(i)) < this.j.b()) {
            i4 = 16644;
            i3 = 16388;
        } else {
            i4 = 4161;
            i3 = 4097;
        }
        return this.i == 0 ? this.r.a(i, i2, i4, i3) : this.s.a(i, i2, i4, i3);
    }

    private int j(RecyclerView.s sVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        g();
        return m.b(sVar, this.j, a(!this.e), b(!this.e), this, this.e);
    }

    private void n() {
        boolean z = true;
        if (this.i == 1 || !isLayoutRTL()) {
            z = this.f5308c;
        } else if (this.f5308c) {
            z = false;
        }
        this.k = z;
    }

    private boolean o() {
        return this.j.g() == 0 && this.j.d() == 0;
    }

    private View p() {
        return i(0, getChildCount());
    }

    private View q() {
        return i(getChildCount() - 1, -1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int a(int i, RecyclerView.o oVar, RecyclerView.s sVar) {
        if (this.i == 1) {
            return 0;
        }
        return c(i, oVar, sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public View a(View view, int i, RecyclerView.o oVar, RecyclerView.s sVar) {
        int e;
        n();
        if (getChildCount() == 0 || (e = e(i)) == Integer.MIN_VALUE) {
            return null;
        }
        g();
        a(e, (int) (this.j.e() * 0.33333334f), false, sVar);
        this.f5306a.g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.f5306a.f5318a = false;
        a(oVar, this.f5306a, sVar, true);
        View q = e == -1 ? this.k ? q() : p() : this.k ? p() : q();
        View childClosestToStart = e == -1 ? getChildClosestToStart() : getChildClosestToEnd();
        if (!childClosestToStart.hasFocusable()) {
            return q;
        }
        if (q == null) {
            return null;
        }
        return childClosestToStart;
    }

    View a(RecyclerView.o oVar, RecyclerView.s sVar, boolean z, boolean z2) {
        int i;
        int i2;
        g();
        r9 = getChildCount();
        int i3 = -1;
        if (z2) {
            i2 = getChildCount() - 1;
            i = -1;
        } else {
            i2 = 0;
            i = 1;
        }
        int a2 = sVar.a();
        int b2 = this.j.b();
        int c2 = this.j.c();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i2 != i3) {
            View childAt = getChildAt(i2);
            int c3 = c(childAt);
            int a3 = this.j.a(childAt);
            int b3 = this.j.b(childAt);
            view = view;
            view2 = view2;
            view3 = view3;
            if (c3 >= 0) {
                view = view;
                view2 = view2;
                view3 = view3;
                if (c3 >= a2) {
                    continue;
                } else if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).f5332c.isRemoved()) {
                    view = view;
                    view2 = view2;
                    view3 = view3;
                    if (view3 == null) {
                        view = view;
                        view2 = view2;
                        view3 = childAt;
                    }
                } else {
                    boolean z3 = b3 <= b2 && a3 < b2;
                    boolean z4 = a3 >= c2 && b3 > c2;
                    if (!z3 && !z4) {
                        return childAt;
                    }
                    if (z) {
                        if (!z4) {
                            view = view;
                            view2 = view2;
                            view3 = view3;
                            if (view != null) {
                            }
                            view3 = view3;
                            view2 = view2;
                            view = childAt;
                        }
                        view = view;
                        view2 = childAt;
                        view3 = view3;
                    } else {
                        if (!z3) {
                            view = view;
                            view2 = view2;
                            view3 = view3;
                            if (view != null) {
                            }
                            view3 = view3;
                            view2 = view2;
                            view = childAt;
                        }
                        view = view;
                        view2 = childAt;
                        view3 = view3;
                    }
                }
            }
            i2 += i;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final View a(boolean z) {
        return this.k ? a(getChildCount() - 1, -1, z, true) : a(0, getChildCount(), z, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(int i, int i2, RecyclerView.s sVar, RecyclerView.i.a aVar) {
        if (this.i != 0) {
            i = i2;
        }
        if (getChildCount() != 0 && i != 0) {
            g();
            a(i > 0 ? 1 : -1, Math.abs(i), true, sVar);
            a(sVar, this.f5306a, aVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(int i, RecyclerView.i.a aVar) {
        boolean z;
        int i2;
        SavedState savedState = this.n;
        int i3 = -1;
        if (savedState == null || !savedState.hasValidAnchor()) {
            n();
            boolean z2 = this.k;
            int i4 = this.l;
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
            z = this.n.mAnchorLayoutFromEnd;
            i2 = this.n.mAnchorPosition;
        }
        if (!z) {
            i3 = 1;
        }
        for (int i5 = 0; i5 < this.h && i2 >= 0 && i2 < i; i5++) {
            aVar.a(i2, 0);
            i2 += i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.n = savedState;
            if (this.l != -1) {
                savedState.invalidateAnchor();
            }
            k();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(i());
            accessibilityEvent.setToIndex(j());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RecyclerView.o oVar, RecyclerView.s sVar, a aVar, int i) {
    }

    void a(RecyclerView.o oVar, RecyclerView.s sVar, c cVar, b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        View a2 = cVar.a(oVar);
        if (a2 == null) {
            bVar.f5315b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) a2.getLayoutParams();
        if (cVar.l == null) {
            if (this.k == (cVar.f == -1)) {
                b(a2);
            } else {
                b(a2, 0);
            }
        } else {
            if (this.k == (cVar.f == -1)) {
                a(a2);
            } else {
                a(a2, 0);
            }
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) a2.getLayoutParams();
        Rect f = this.q.f(a2);
        int i6 = f.left;
        int i7 = f.right;
        int i8 = f.top;
        int i9 = f.bottom;
        int a3 = RecyclerView.i.a(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + layoutParams2.leftMargin + layoutParams2.rightMargin + i6 + i7 + 0, layoutParams2.width, e());
        int a4 = RecyclerView.i.a(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + layoutParams2.topMargin + layoutParams2.bottomMargin + i8 + i9 + 0, layoutParams2.height, f());
        if (b(a2, a3, a4, layoutParams2)) {
            a2.measure(a3, a4);
        }
        bVar.f5314a = this.j.e(a2);
        if (this.i == 1) {
            if (isLayoutRTL()) {
                i4 = getWidth() - getPaddingRight();
                i5 = i4 - this.j.f(a2);
            } else {
                i5 = getPaddingLeft();
                i4 = this.j.f(a2) + i5;
            }
            if (cVar.f == -1) {
                i2 = cVar.f5319b;
                i = cVar.f5319b - bVar.f5314a;
                i3 = i5;
            } else {
                i = cVar.f5319b;
                i2 = cVar.f5319b + bVar.f5314a;
                i3 = i5;
            }
        } else {
            i = getPaddingTop();
            i2 = this.j.f(a2) + i;
            if (cVar.f == -1) {
                i4 = cVar.f5319b;
                i3 = cVar.f5319b - bVar.f5314a;
            } else {
                i3 = cVar.f5319b;
                i4 = cVar.f5319b + bVar.f5314a;
            }
        }
        a(a2, i3, i, i4, i2);
        if (layoutParams.f5332c.isRemoved() || layoutParams.f5332c.isUpdated()) {
            bVar.f5316c = true;
        }
        bVar.f5317d = a2.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView.s sVar) {
        super.a(sVar);
        this.n = null;
        this.l = -1;
        this.m = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.o.a();
    }

    void a(RecyclerView.s sVar, c cVar, RecyclerView.i.a aVar) {
        int i = cVar.f5321d;
        if (i >= 0 && i < sVar.a()) {
            aVar.a(i, Math.max(0, cVar.g));
        }
    }

    public void a(RecyclerView.s sVar, int[] iArr) {
        int i;
        int i2;
        int e = sVar.f5370a != -1 ? this.j.e() : 0;
        if (this.f5306a.f == -1) {
            i2 = 0;
            i = e;
        } else {
            i = 0;
            i2 = e;
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(RecyclerView recyclerView, RecyclerView.o oVar) {
        super.a(recyclerView, oVar);
        if (this.f) {
            c(oVar);
            oVar.a();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, RecyclerView.s sVar, int i) {
        g gVar = new g(recyclerView.getContext());
        gVar.setTargetPosition(i);
        a(gVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(String str) {
        if (this.n == null) {
            super.a(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int b(int i, RecyclerView.o oVar, RecyclerView.s sVar) {
        if (this.i == 0) {
            return 0;
        }
        return c(i, oVar, sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int b(RecyclerView.s sVar) {
        return j(sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final View b(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int c2 = i - c(getChildAt(0));
        if (c2 >= 0 && c2 < childCount) {
            View childAt = getChildAt(c2);
            if (c(childAt) == i) {
                return childAt;
            }
        }
        return super.b(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final View b(boolean z) {
        return this.k ? a(0, getChildCount(), z, true) : a(getChildCount() - 1, -1, z, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public RecyclerView.LayoutParams b() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int c(RecyclerView.s sVar) {
        return j(sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r.b
    public final PointF c(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        boolean z = false;
        int i2 = 1;
        if (i < c(getChildAt(0))) {
            z = true;
        }
        if (z != this.k) {
            i2 = -1;
        }
        return this.i == 0 ? new PointF(i2, BitmapDescriptorFactory.HUE_RED) : new PointF(BitmapDescriptorFactory.HUE_RED, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0279  */
    @Override // androidx.recyclerview.widget.RecyclerView.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(androidx.recyclerview.widget.RecyclerView.o r7, androidx.recyclerview.widget.RecyclerView.s r8) {
        /*
            Method dump skipped, instructions count: 2188
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.c(androidx.recyclerview.widget.RecyclerView$o, androidx.recyclerview.widget.RecyclerView$s):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean c() {
        return this.n == null && this.f5307b == this.f5309d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int d(RecyclerView.s sVar) {
        return h(sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final Parcelable d() {
        SavedState savedState = this.n;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (getChildCount() > 0) {
            g();
            boolean z = this.f5307b ^ this.k;
            savedState2.mAnchorLayoutFromEnd = z;
            if (z) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState2.mAnchorOffset = this.j.c() - this.j.b(childClosestToEnd);
                savedState2.mAnchorPosition = c(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                savedState2.mAnchorPosition = c(childClosestToStart);
                savedState2.mAnchorOffset = this.j.a(childClosestToStart) - this.j.b();
            }
        } else {
            savedState2.invalidateAnchor();
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void d(int i) {
        this.l = i;
        this.m = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        SavedState savedState = this.n;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int e(int i) {
        if (i == 1) {
            return (this.i != 1 && isLayoutRTL()) ? 1 : -1;
        }
        if (i == 2) {
            return (this.i != 1 && isLayoutRTL()) ? -1 : 1;
        }
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i == 130 && this.i == 1) {
                        return 1;
                    }
                    return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                } else if (this.i == 0) {
                    return 1;
                } else {
                    return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                }
            } else if (this.i == 1) {
                return -1;
            } else {
                return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
        } else if (this.i == 0) {
            return -1;
        } else {
            return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int e(RecyclerView.s sVar) {
        return h(sVar);
    }

    public final void e(int i, int i2) {
        this.l = i;
        this.m = i2;
        SavedState savedState = this.n;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean e() {
        return this.i == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final int f(RecyclerView.s sVar) {
        return i(sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean f() {
        return this.i == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final int g(RecyclerView.s sVar) {
        return i(sVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        if (this.f5306a == null) {
            this.f5306a = new c();
        }
    }

    public int getOrientation() {
        return this.i;
    }

    public boolean getStackFromEnd() {
        return this.f5309d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    final boolean h() {
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

    public final int i() {
        View a2 = a(0, getChildCount(), false, true);
        if (a2 == null) {
            return -1;
        }
        return c(a2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.e;
    }

    public final int j() {
        View a2 = a(getChildCount() - 1, -1, false, true);
        if (a2 == null) {
            return -1;
        }
        return c(a2);
    }

    public void setOrientation(int i) {
        if (i == 0 || i == 1) {
            a((String) null);
            if (i != this.i || this.j == null) {
                j a2 = j.a(this, i);
                this.j = a2;
                this.o.f5310a = a2;
                this.i = i;
                k();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("invalid orientation:".concat(String.valueOf(i)));
    }

    public void setReverseLayout(boolean z) {
        a((String) null);
        if (z != this.f5308c) {
            this.f5308c = z;
            k();
        }
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.e = z;
    }

    public void setStackFromEnd(boolean z) {
        a((String) null);
        if (this.f5309d != z) {
            this.f5309d = z;
            k();
        }
    }
}
