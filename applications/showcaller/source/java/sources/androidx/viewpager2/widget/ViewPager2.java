package androidx.viewpager2.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.C0978j;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.AbstractC1198a;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.AbstractC1644f;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p077u.C1814a;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2.class */
public final class ViewPager2 extends ViewGroup {

    /* renamed from: d */
    static boolean f5135d = true;

    /* renamed from: h */
    int f5139h;

    /* renamed from: k */
    private LinearLayoutManager f5142k;

    /* renamed from: m */
    private Parcelable f5144m;

    /* renamed from: n */
    RecyclerView f5145n;

    /* renamed from: o */
    private C0978j f5146o;

    /* renamed from: p */
    C1222e f5147p;

    /* renamed from: q */
    private C1219b f5148q;

    /* renamed from: r */
    private C1220c f5149r;

    /* renamed from: s */
    private C1221d f5150s;

    /* renamed from: x */
    AbstractC1204e f5155x;

    /* renamed from: e */
    private final Rect f5136e = new Rect();

    /* renamed from: f */
    private final Rect f5137f = new Rect();

    /* renamed from: g */
    private C1219b f5138g = new C1219b(3);

    /* renamed from: i */
    boolean f5140i = false;

    /* renamed from: j */
    private RecyclerView.AbstractC0912i f5141j = new C1200a();

    /* renamed from: l */
    private int f5143l = -1;

    /* renamed from: t */
    private RecyclerView.AbstractC0915l f5151t = null;

    /* renamed from: u */
    private boolean f5152u = false;

    /* renamed from: v */
    private boolean f5153v = true;

    /* renamed from: w */
    private int f5154w = -1;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1199a();

        /* renamed from: d */
        int f5156d;

        /* renamed from: e */
        int f5157e;

        /* renamed from: f */
        Parcelable f5158f;

        /* renamed from: androidx.viewpager2.widget.ViewPager2$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$SavedState$a.class */
        static final class C1199a implements Parcelable.ClassLoaderCreator<SavedState> {
            C1199a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, classLoader) : new SavedState(parcel);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcel parcel) {
            super(parcel);
            m30686a(parcel, null);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m30686a(parcel, classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: a */
        private void m30686a(Parcel parcel, ClassLoader classLoader) {
            this.f5156d = parcel.readInt();
            this.f5157e = parcel.readInt();
            this.f5158f = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f5156d);
            parcel.writeInt(this.f5157e);
            parcel.writeParcelable(this.f5158f, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager2.widget.ViewPager2$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$a.class */
    public class C1200a extends AbstractC1206g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1200a() {
            super(null);
            ViewPager2.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: a */
        public void mo22252a() {
            ViewPager2 viewPager2 = ViewPager2.this;
            viewPager2.f5140i = true;
            viewPager2.f5147p.m30629l();
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$b.class */
    public class C1201b extends AbstractC1208i {
        C1201b() {
            ViewPager2.this = r4;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1208i
        /* renamed from: a */
        public void mo30643a(int i) {
            if (i == 0) {
                ViewPager2.this.m30687l();
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1208i
        /* renamed from: c */
        public void mo30641c(int i) {
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.f5139h != i) {
                viewPager2.f5139h = i;
                viewPager2.f5155x.mo30660q();
            }
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$c.class */
    public class C1202c extends AbstractC1208i {
        C1202c() {
            ViewPager2.this = r4;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1208i
        /* renamed from: c */
        public void mo30641c(int i) {
            ViewPager2.this.clearFocus();
            if (ViewPager2.this.hasFocus()) {
                ViewPager2.this.f5145n.requestFocus(2);
            }
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$d */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$d.class */
    public class C1203d implements RecyclerView.AbstractC0926p {
        C1203d() {
            ViewPager2.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0926p
        /* renamed from: a */
        public void mo30682a(View view) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0926p
        /* renamed from: b */
        public void mo30681b(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1 && ((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                return;
            }
            throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$e.class */
    public abstract class AbstractC1204e {
        private AbstractC1204e() {
            ViewPager2.this = r4;
        }

        /* synthetic */ AbstractC1204e(ViewPager2 viewPager2, C1200a c1200a) {
            this();
        }

        /* renamed from: a */
        boolean mo30671a() {
            return false;
        }

        /* renamed from: b */
        boolean mo30680b(int i) {
            return false;
        }

        /* renamed from: c */
        boolean mo30670c(int i, Bundle bundle) {
            return false;
        }

        /* renamed from: d */
        boolean mo30679d() {
            return false;
        }

        /* renamed from: e */
        void mo30669e(RecyclerView.Adapter<?> adapter) {
        }

        /* renamed from: f */
        void mo30668f(RecyclerView.Adapter<?> adapter) {
        }

        /* renamed from: g */
        String mo30667g() {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: h */
        void mo30666h(C1219b c1219b, RecyclerView recyclerView) {
        }

        /* renamed from: i */
        void mo30665i(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        /* renamed from: j */
        void mo30678j(C1634c c1634c) {
        }

        /* renamed from: k */
        boolean mo30677k(int i) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: l */
        boolean mo30664l(int i, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: m */
        void mo30663m() {
        }

        /* renamed from: n */
        CharSequence mo30676n() {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: o */
        void mo30662o(AccessibilityEvent accessibilityEvent) {
        }

        /* renamed from: p */
        void mo30661p() {
        }

        /* renamed from: q */
        void mo30660q() {
        }

        /* renamed from: r */
        void mo30659r() {
        }

        /* renamed from: s */
        void mo30658s() {
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$f.class */
    public class C1205f extends AbstractC1204e {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1205f() {
            super(r5, null);
            ViewPager2.this = r5;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: b */
        public boolean mo30680b(int i) {
            return (i == 8192 || i == 4096) && !ViewPager2.this.m30694e();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: d */
        public boolean mo30679d() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: j */
        public void mo30678j(C1634c c1634c) {
            if (!ViewPager2.this.m30694e()) {
                c1634c.m29501T(C1634c.C1635a.f6295n);
                c1634c.m29501T(C1634c.C1635a.f6294m);
                c1634c.m29447x0(false);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: k */
        public boolean mo30677k(int i) {
            if (mo30680b(i)) {
                return false;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: n */
        public CharSequence mo30676n() {
            if (mo30679d()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.viewpager2.widget.ViewPager2$g */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$g.class */
    public static abstract class AbstractC1206g extends RecyclerView.AbstractC0912i {
        private AbstractC1206g() {
        }

        /* synthetic */ AbstractC1206g(C1200a c1200a) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: b */
        public final void mo22251b(int i, int i2) {
            mo22252a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: c */
        public final void mo30675c(int i, int i2, Object obj) {
            mo22252a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: d */
        public final void mo22250d(int i, int i2) {
            mo22252a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
        /* renamed from: e */
        public final void mo22249e(int i, int i2) {
            mo22252a();
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$h */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$h.class */
    public class C1207h extends LinearLayoutManager {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1207h(Context context) {
            super(context);
            ViewPager2.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
        /* renamed from: N0 */
        public void mo30674N0(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, C1634c c1634c) {
            super.mo30674N0(c0932u, c0938y, c1634c);
            ViewPager2.this.f5155x.mo30678j(c1634c);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        /* renamed from: N1 */
        public void mo4987N1(RecyclerView.C0938y c0938y, int[] iArr) {
            int offscreenPageLimit = ViewPager2.this.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.mo4987N1(c0938y, iArr);
                return;
            }
            int pageSize = ViewPager2.this.getPageSize() * offscreenPageLimit;
            iArr[0] = pageSize;
            iArr[1] = pageSize;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
        /* renamed from: h1 */
        public boolean mo30673h1(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, int i, Bundle bundle) {
            return ViewPager2.this.f5155x.mo30680b(i) ? ViewPager2.this.f5155x.mo30677k(i) : super.mo30673h1(c0932u, c0938y, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
        /* renamed from: s1 */
        public boolean mo30672s1(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            return false;
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$i.class */
    public static abstract class AbstractC1208i {
        /* renamed from: a */
        public void mo30643a(int i) {
        }

        /* renamed from: b */
        public void mo30642b(int i, float f, int i2) {
        }

        /* renamed from: c */
        public void mo30641c(int i) {
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$j */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$j.class */
    public class C1209j extends AbstractC1204e {

        /* renamed from: b */
        private final AbstractC1644f f5166b = new C1210a();

        /* renamed from: c */
        private final AbstractC1644f f5167c = new C1211b();

        /* renamed from: d */
        private RecyclerView.AbstractC0912i f5168d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.viewpager2.widget.ViewPager2$j$a */
        /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$j$a.class */
        public class C1210a implements AbstractC1644f {
            C1210a() {
                C1209j.this = r4;
            }

            @Override // p020b.p041h.p050l.p051f0.AbstractC1644f
            /* renamed from: a */
            public boolean mo5399a(View view, AbstractC1644f.AbstractC1645a abstractC1645a) {
                C1209j.this.m30655v(((ViewPager2) view).getCurrentItem() + 1);
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.viewpager2.widget.ViewPager2$j$b */
        /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$j$b.class */
        public class C1211b implements AbstractC1644f {
            C1211b() {
                C1209j.this = r4;
            }

            @Override // p020b.p041h.p050l.p051f0.AbstractC1644f
            /* renamed from: a */
            public boolean mo5399a(View view, AbstractC1644f.AbstractC1645a abstractC1645a) {
                C1209j.this.m30655v(((ViewPager2) view).getCurrentItem() - 1);
                return true;
            }
        }

        /* renamed from: androidx.viewpager2.widget.ViewPager2$j$c */
        /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$j$c.class */
        class C1212c extends AbstractC1206g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C1212c() {
                super(null);
                C1209j.this = r4;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0912i
            /* renamed from: a */
            public void mo22252a() {
                C1209j.this.m30654w();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1209j() {
            super(r6, null);
            ViewPager2.this = r6;
        }

        /* renamed from: t */
        private void m30657t(AccessibilityNodeInfo accessibilityNodeInfo) {
            int i;
            int i2;
            if (ViewPager2.this.getAdapter() == null) {
                i2 = 0;
            } else if (ViewPager2.this.getOrientation() != 1) {
                i = ViewPager2.this.getAdapter().mo4501d();
                i2 = 0;
                C1634c.m29513H0(accessibilityNodeInfo).m29485e0(C1634c.C1636b.m29437b(i2, i, false, 0));
            } else {
                i2 = ViewPager2.this.getAdapter().mo4501d();
            }
            i = 0;
            C1634c.m29513H0(accessibilityNodeInfo).m29485e0(C1634c.C1636b.m29437b(i2, i, false, 0));
        }

        /* renamed from: u */
        private void m30656u(AccessibilityNodeInfo accessibilityNodeInfo) {
            int mo4501d;
            RecyclerView.Adapter adapter = ViewPager2.this.getAdapter();
            if (adapter == null || (mo4501d = adapter.mo4501d()) == 0 || !ViewPager2.this.m30694e()) {
                return;
            }
            if (ViewPager2.this.f5139h > 0) {
                accessibilityNodeInfo.addAction(8192);
            }
            if (ViewPager2.this.f5139h < mo4501d - 1) {
                accessibilityNodeInfo.addAction(4096);
            }
            accessibilityNodeInfo.setScrollable(true);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: a */
        public boolean mo30671a() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: c */
        public boolean mo30670c(int i, Bundle bundle) {
            return i == 8192 || i == 4096;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: e */
        public void mo30669e(RecyclerView.Adapter<?> adapter) {
            m30654w();
            if (adapter != null) {
                adapter.m31960x(this.f5168d);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: f */
        public void mo30668f(RecyclerView.Adapter<?> adapter) {
            if (adapter != null) {
                adapter.m31958z(this.f5168d);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: g */
        public String mo30667g() {
            if (mo30671a()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: h */
        public void mo30666h(C1219b c1219b, RecyclerView recyclerView) {
            C1679w.m29347B0(recyclerView, 2);
            this.f5168d = new C1212c();
            if (C1679w.m29350A(ViewPager2.this) == 0) {
                C1679w.m29347B0(ViewPager2.this, 1);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: i */
        public void mo30665i(AccessibilityNodeInfo accessibilityNodeInfo) {
            m30657t(accessibilityNodeInfo);
            if (Build.VERSION.SDK_INT >= 16) {
                m30656u(accessibilityNodeInfo);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: l */
        public boolean mo30664l(int i, Bundle bundle) {
            if (mo30670c(i, bundle)) {
                m30655v(i == 8192 ? ViewPager2.this.getCurrentItem() - 1 : ViewPager2.this.getCurrentItem() + 1);
                return true;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: m */
        public void mo30663m() {
            m30654w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: o */
        public void mo30662o(AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName(mo30667g());
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: p */
        public void mo30661p() {
            m30654w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: q */
        public void mo30660q() {
            m30654w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: r */
        public void mo30659r() {
            m30654w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1204e
        /* renamed from: s */
        public void mo30658s() {
            m30654w();
            if (Build.VERSION.SDK_INT < 21) {
                ViewPager2.this.sendAccessibilityEvent(2048);
            }
        }

        /* renamed from: v */
        void m30655v(int i) {
            if (ViewPager2.this.m30694e()) {
                ViewPager2.this.m30690i(i, true);
            }
        }

        /* renamed from: w */
        void m30654w() {
            int mo4501d;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i = 16908360;
            C1679w.m29285l0(viewPager2, 16908360);
            C1679w.m29285l0(viewPager2, 16908361);
            C1679w.m29285l0(viewPager2, 16908358);
            C1679w.m29285l0(viewPager2, 16908359);
            if (ViewPager2.this.getAdapter() == null || (mo4501d = ViewPager2.this.getAdapter().mo4501d()) == 0 || !ViewPager2.this.m30694e()) {
                return;
            }
            if (ViewPager2.this.getOrientation() != 0) {
                if (ViewPager2.this.f5139h < mo4501d - 1) {
                    C1679w.m29281n0(viewPager2, new C1634c.C1635a(16908359, null), null, this.f5166b);
                }
                if (ViewPager2.this.f5139h <= 0) {
                    return;
                }
                C1679w.m29281n0(viewPager2, new C1634c.C1635a(16908358, null), null, this.f5167c);
                return;
            }
            boolean m30695d = ViewPager2.this.m30695d();
            int i2 = m30695d ? 16908360 : 16908361;
            if (m30695d) {
                i = 16908361;
            }
            if (ViewPager2.this.f5139h < mo4501d - 1) {
                C1679w.m29281n0(viewPager2, new C1634c.C1635a(i2, null), null, this.f5166b);
            }
            if (ViewPager2.this.f5139h <= 0) {
                return;
            }
            C1679w.m29281n0(viewPager2, new C1634c.C1635a(i, null), null, this.f5167c);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$k */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$k.class */
    public interface AbstractC1213k {
        /* renamed from: a */
        void m30653a(View view, float f);
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$l */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$l.class */
    public class C1214l extends C0978j {
        C1214l() {
            ViewPager2.this = r4;
        }

        @Override // androidx.recyclerview.widget.C0978j, androidx.recyclerview.widget.AbstractC0984n
        /* renamed from: f */
        public View mo30652f(RecyclerView.AbstractC0921o abstractC0921o) {
            return ViewPager2.this.m30696c() ? null : super.mo30652f(abstractC0921o);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$m */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$m.class */
    public class C1215m extends RecyclerView {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1215m(Context context) {
            super(context);
            ViewPager2.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public CharSequence getAccessibilityClassName() {
            return ViewPager2.this.f5155x.mo30679d() ? ViewPager2.this.f5155x.mo30676n() : super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(ViewPager2.this.f5139h);
            accessibilityEvent.setToIndex(ViewPager2.this.f5139h);
            ViewPager2.this.f5155x.mo30662o(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.m30694e() && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.m30694e() && super.onTouchEvent(motionEvent);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$n */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$n.class */
    public static class RunnableC1216n implements Runnable {

        /* renamed from: d */
        private final int f5175d;

        /* renamed from: e */
        private final RecyclerView f5176e;

        RunnableC1216n(int i, RecyclerView recyclerView) {
            this.f5175d = i;
            this.f5176e = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5176e.m31998q1(this.f5175d);
        }
    }

    public ViewPager2(Context context) {
        super(context);
        m30697b(context, null);
    }

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m30697b(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m30697b(context, attributeSet);
    }

    /* renamed from: a */
    private RecyclerView.AbstractC0926p m30698a() {
        return new C1203d();
    }

    /* renamed from: b */
    private void m30697b(Context context, AttributeSet attributeSet) {
        this.f5155x = f5135d ? new C1209j() : new C1205f();
        C1215m c1215m = new C1215m(context);
        this.f5145n = c1215m;
        c1215m.setId(C1679w.m29288k());
        this.f5145n.setDescendantFocusability(131072);
        C1207h c1207h = new C1207h(context);
        this.f5142k = c1207h;
        this.f5145n.setLayoutManager(c1207h);
        this.f5145n.setScrollingTouchSlop(1);
        m30689j(context, attributeSet);
        this.f5145n.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f5145n.m32021j(m30698a());
        C1222e c1222e = new C1222e(this);
        this.f5147p = c1222e;
        this.f5149r = new C1220c(this, c1222e, this.f5145n);
        C1214l c1214l = new C1214l();
        this.f5146o = c1214l;
        c1214l.m31340b(this.f5145n);
        this.f5145n.m32015l(this.f5147p);
        C1219b c1219b = new C1219b(3);
        this.f5148q = c1219b;
        this.f5147p.m30626o(c1219b);
        C1201b c1201b = new C1201b();
        C1202c c1202c = new C1202c();
        this.f5148q.m30646d(c1201b);
        this.f5148q.m30646d(c1202c);
        this.f5155x.mo30666h(this.f5148q, this.f5145n);
        this.f5148q.m30646d(this.f5138g);
        C1221d c1221d = new C1221d(this.f5142k);
        this.f5150s = c1221d;
        this.f5148q.m30646d(c1221d);
        RecyclerView recyclerView = this.f5145n;
        attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
    }

    /* renamed from: f */
    private void m30693f(RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.m31960x(this.f5141j);
        }
    }

    /* renamed from: h */
    private void m30691h() {
        RecyclerView.Adapter adapter;
        if (this.f5143l == -1 || (adapter = getAdapter()) == null) {
            return;
        }
        Parcelable parcelable = this.f5144m;
        if (parcelable != null) {
            if (adapter instanceof AbstractC1198a) {
                ((AbstractC1198a) adapter).m30699b(parcelable);
            }
            this.f5144m = null;
        }
        int max = Math.max(0, Math.min(this.f5143l, adapter.mo4501d() - 1));
        this.f5139h = max;
        this.f5143l = -1;
        this.f5145n.m32022i1(max);
        this.f5155x.mo30663m();
    }

    /* renamed from: j */
    private void m30689j(Context context, AttributeSet attributeSet) {
        int[] iArr = C1814a.ViewPager2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        }
        try {
            setOrientation(obtainStyledAttributes.getInt(C1814a.ViewPager2_android_orientation, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: k */
    private void m30688k(RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.m31958z(this.f5141j);
        }
    }

    /* renamed from: c */
    public boolean m30696c() {
        return this.f5149r.m30644a();
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        return this.f5145n.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return this.f5145n.canScrollVertically(i);
    }

    /* renamed from: d */
    public boolean m30695d() {
        boolean z = true;
        if (this.f5142k.m31834Z() != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i = ((SavedState) parcelable).f5156d;
            sparseArray.put(this.f5145n.getId(), sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        m30691h();
    }

    /* renamed from: e */
    public boolean m30694e() {
        return this.f5153v;
    }

    /* renamed from: g */
    public void m30692g() {
        if (this.f5150s.m30640d() == null) {
            return;
        }
        double m30634g = this.f5147p.m30634g();
        int i = (int) m30634g;
        float f = (float) (m30634g - i);
        this.f5150s.mo30642b(i, f, Math.round(getPageSize() * f));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return this.f5155x.mo30671a() ? this.f5155x.mo30667g() : super.getAccessibilityClassName();
    }

    public RecyclerView.Adapter getAdapter() {
        return this.f5145n.getAdapter();
    }

    public int getCurrentItem() {
        return this.f5139h;
    }

    public int getItemDecorationCount() {
        return this.f5145n.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f5154w;
    }

    public int getOrientation() {
        return this.f5142k.m32127m2();
    }

    int getPageSize() {
        int i;
        int i2;
        RecyclerView recyclerView = this.f5145n;
        if (getOrientation() == 0) {
            i2 = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            i = recyclerView.getPaddingRight();
        } else {
            i2 = recyclerView.getHeight() - recyclerView.getPaddingTop();
            i = recyclerView.getPaddingBottom();
        }
        return i2 - i;
    }

    public int getScrollState() {
        return this.f5147p.m30633h();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v48, types: [double] */
    /* renamed from: i */
    void m30690i(int i, boolean z) {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter == null) {
            if (this.f5143l == -1) {
                return;
            }
            this.f5143l = Math.max(i, 0);
        } else if (adapter.mo4501d() <= 0) {
        } else {
            int min = Math.min(Math.max(i, 0), adapter.mo4501d() - 1);
            if (min == this.f5139h && this.f5147p.m30631j()) {
                return;
            }
            int i2 = this.f5139h;
            if (min == i2 && z) {
                return;
            }
            char c = i2;
            this.f5139h = min;
            this.f5155x.mo30660q();
            if (!this.f5147p.m30631j()) {
                c = this.f5147p.m30634g();
            }
            this.f5147p.m30628m(min, z);
            if (!z) {
                this.f5145n.m32022i1(min);
                return;
            }
            double d = min;
            if (Math.abs(d - c) <= 3.0d) {
                this.f5145n.m31998q1(min);
                return;
            }
            this.f5145n.m32022i1(d > c ? min - 3 : min + 3);
            RecyclerView recyclerView = this.f5145n;
            recyclerView.post(new RunnableC1216n(min, recyclerView));
        }
    }

    /* renamed from: l */
    void m30687l() {
        C0978j c0978j = this.f5146o;
        if (c0978j != null) {
            View mo30652f = c0978j.mo30652f(this.f5142k);
            if (mo30652f == null) {
                return;
            }
            int m31816h0 = this.f5142k.m31816h0(mo30652f);
            if (m31816h0 != this.f5139h && getScrollState() == 0) {
                this.f5148q.mo30641c(m31816h0);
            }
            this.f5140i = false;
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f5155x.mo30665i(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.f5145n.getMeasuredWidth();
        int measuredHeight = this.f5145n.getMeasuredHeight();
        this.f5136e.left = getPaddingLeft();
        this.f5136e.right = (i3 - i) - getPaddingRight();
        this.f5136e.top = getPaddingTop();
        this.f5136e.bottom = (i4 - i2) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.f5136e, this.f5137f);
        RecyclerView recyclerView = this.f5145n;
        Rect rect = this.f5137f;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f5140i) {
            m30687l();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        measureChild(this.f5145n, i, i2);
        int measuredWidth = this.f5145n.getMeasuredWidth();
        int measuredHeight = this.f5145n.getMeasuredHeight();
        int measuredState = this.f5145n.getMeasuredState();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        setMeasuredDimension(ViewGroup.resolveSizeAndState(Math.max(measuredWidth + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, measuredState), ViewGroup.resolveSizeAndState(Math.max(measuredHeight + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f5143l = savedState.f5157e;
        this.f5144m = savedState.f5158f;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f5156d = this.f5145n.getId();
        int i = this.f5143l;
        int i2 = i;
        if (i == -1) {
            i2 = this.f5139h;
        }
        savedState.f5157e = i2;
        Parcelable parcelable = this.f5144m;
        if (parcelable != null) {
            savedState.f5158f = parcelable;
        } else {
            RecyclerView.Adapter adapter = this.f5145n.getAdapter();
            if (adapter instanceof AbstractC1198a) {
                savedState.f5158f = ((AbstractC1198a) adapter).m30700a();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(ViewPager2.class.getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        return this.f5155x.mo30670c(i, bundle) ? this.f5155x.mo30664l(i, bundle) : super.performAccessibilityAction(i, bundle);
    }

    public void setAdapter(RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = this.f5145n.getAdapter();
        this.f5155x.mo30668f(adapter2);
        m30688k(adapter2);
        this.f5145n.setAdapter(adapter);
        this.f5139h = 0;
        m30691h();
        this.f5155x.mo30669e(adapter);
        m30693f(adapter);
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    public void setCurrentItem(int i, boolean z) {
        if (!m30696c()) {
            m30690i(i, z);
            return;
        }
        throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.f5155x.mo30661p();
    }

    public void setOffscreenPageLimit(int i) {
        if (i >= 1 || i == -1) {
            this.f5154w = i;
            this.f5145n.requestLayout();
            return;
        }
        throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
    }

    public void setOrientation(int i) {
        this.f5142k.m32114z2(i);
        this.f5155x.mo30659r();
    }

    public void setPageTransformer(AbstractC1213k abstractC1213k) {
        if (abstractC1213k != null) {
            if (!this.f5152u) {
                this.f5151t = this.f5145n.getItemAnimator();
                this.f5152u = true;
            }
            this.f5145n.setItemAnimator(null);
        } else if (this.f5152u) {
            this.f5145n.setItemAnimator(this.f5151t);
            this.f5151t = null;
            this.f5152u = false;
        }
        if (abstractC1213k == this.f5150s.m30640d()) {
            return;
        }
        this.f5150s.m30639e(abstractC1213k);
        m30692g();
    }

    public void setUserInputEnabled(boolean z) {
        this.f5153v = z;
        this.f5155x.mo30658s();
    }
}
