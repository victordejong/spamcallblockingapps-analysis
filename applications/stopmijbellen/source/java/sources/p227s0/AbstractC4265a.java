package p227s0;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.gms.common.api.Api;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import p163m0.C3546a;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.C3694b;
import p174n0.C3698c;
import p226s.C4264h;
import p227s0.C4269b;
/* renamed from: s0.a */
/* loaded from: classes-dex2jar.jar:s0/a.class */
public abstract class AbstractC4265a extends C3546a {

    /* renamed from: n */
    public static final Rect f13370n = new Rect(Api.BaseClientBuilder.API_PRIORITY_OTHER, Api.BaseClientBuilder.API_PRIORITY_OTHER, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: o */
    public static final C4269b.AbstractC4270a<C3694b> f13371o = new C4266a();

    /* renamed from: p */
    public static final C4269b.AbstractC4271b<C4264h<C3694b>, C3694b> f13372p = new C4267b();

    /* renamed from: h */
    public final AccessibilityManager f13377h;

    /* renamed from: i */
    public final View f13378i;

    /* renamed from: j */
    public C4268c f13379j;

    /* renamed from: d */
    public final Rect f13373d = new Rect();

    /* renamed from: e */
    public final Rect f13374e = new Rect();

    /* renamed from: f */
    public final Rect f13375f = new Rect();

    /* renamed from: g */
    public final int[] f13376g = new int[2];

    /* renamed from: k */
    public int f13380k = Integer.MIN_VALUE;

    /* renamed from: l */
    public int f13381l = Integer.MIN_VALUE;

    /* renamed from: m */
    public int f13382m = Integer.MIN_VALUE;

    /* renamed from: s0.a$a */
    /* loaded from: classes-dex2jar.jar:s0/a$a.class */
    public class C4266a implements C4269b.AbstractC4270a<C3694b> {
        /* renamed from: a */
        public void m1172a(Object obj, Rect rect) {
            ((C3694b) obj).f12070a.getBoundsInParent(rect);
        }
    }

    /* renamed from: s0.a$b */
    /* loaded from: classes-dex2jar.jar:s0/a$b.class */
    public class C4267b implements C4269b.AbstractC4271b<C4264h<C3694b>, C3694b> {
    }

    /* renamed from: s0.a$c */
    /* loaded from: classes-dex2jar.jar:s0/a$c.class */
    public class C4268c extends C3698c {
        public C4268c() {
            AbstractC4265a.this = r4;
        }

        @Override // p174n0.C3698c
        /* renamed from: a */
        public C3694b mo1171a(int i) {
            return new C3694b(AccessibilityNodeInfo.obtain(AbstractC4265a.this.m1177o(i).f12070a));
        }

        @Override // p174n0.C3698c
        /* renamed from: b */
        public C3694b mo1170b(int i) {
            int i2 = i == 2 ? AbstractC4265a.this.f13380k : AbstractC4265a.this.f13381l;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return new C3694b(AccessibilityNodeInfo.obtain(AbstractC4265a.this.m1177o(i2).f12070a));
        }

        @Override // p174n0.C3698c
        /* renamed from: c */
        public boolean mo1169c(int i, int i2, Bundle bundle) {
            boolean z;
            int i3;
            AbstractC4265a abstractC4265a = AbstractC4265a.this;
            if (i != -1) {
                z = true;
                if (i2 == 1) {
                    z = abstractC4265a.m1174r(i);
                } else if (i2 == 2) {
                    z = abstractC4265a.m1181k(i);
                } else if (i2 != 64) {
                    z = i2 != 128 ? abstractC4265a.mo1176p(i, i2, bundle) : abstractC4265a.m1182j(i);
                } else if (!abstractC4265a.f13377h.isEnabled() || !abstractC4265a.f13377h.isTouchExplorationEnabled() || (i3 = abstractC4265a.f13380k) == i) {
                    z = false;
                } else {
                    if (i3 != Integer.MIN_VALUE) {
                        abstractC4265a.m1182j(i3);
                    }
                    abstractC4265a.f13380k = i;
                    abstractC4265a.f13378i.invalidate();
                    abstractC4265a.m1173s(i, 32768);
                }
            } else {
                View view = abstractC4265a.f13378i;
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                z = C3589v.C3593d.m2084j(view, i2, bundle);
            }
            return z;
        }
    }

    public AbstractC4265a(View view) {
        if (view != null) {
            this.f13378i = view;
            this.f13377h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (C3589v.C3593d.m2091c(view) != 0) {
                return;
            }
            C3589v.C3593d.m2075s(view, 1);
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    @Override // p163m0.C3546a
    /* renamed from: b */
    public C3698c mo1183b(View view) {
        if (this.f13379j == null) {
            this.f13379j = new C4268c();
        }
        return this.f13379j;
    }

    @Override // p163m0.C3546a
    /* renamed from: c */
    public void mo737c(View view, AccessibilityEvent accessibilityEvent) {
        this.f11715a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // p163m0.C3546a
    /* renamed from: d */
    public void mo697d(View view, C3694b c3694b) {
        this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
        Chip.C1718b c1718b = (Chip.C1718b) this;
        c3694b.f12070a.setCheckable(Chip.this.m4703f());
        c3694b.f12070a.setClickable(Chip.this.isClickable());
        c3694b.f12070a.setClassName(Chip.this.getAccessibilityClassName());
        CharSequence text = Chip.this.getText();
        if (Build.VERSION.SDK_INT >= 23) {
            c3694b.f12070a.setText(text);
        } else {
            c3694b.f12070a.setContentDescription(text);
        }
    }

    /* renamed from: j */
    public final boolean m1182j(int i) {
        if (this.f13380k == i) {
            this.f13380k = Integer.MIN_VALUE;
            this.f13378i.invalidate();
            m1173s(i, 65536);
            return true;
        }
        return false;
    }

    /* renamed from: k */
    public final boolean m1181k(int i) {
        if (this.f13381l != i) {
            return false;
        }
        this.f13381l = Integer.MIN_VALUE;
        Chip.C1718b c1718b = (Chip.C1718b) this;
        if (i == 1) {
            Chip chip = Chip.this;
            chip.f6417m = false;
            chip.refreshDrawableState();
        }
        m1173s(i, 8);
        return true;
    }

    /* renamed from: l */
    public final C3694b m1180l(int i) {
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        C3694b c3694b = new C3694b(obtain);
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        obtain.setClassName("android.view.View");
        Rect rect = f13370n;
        obtain.setBoundsInParent(rect);
        obtain.setBoundsInScreen(rect);
        c3694b.m1869o(this.f13378i);
        mo1175q(i, c3694b);
        if (c3694b.m1875i() == null && c3694b.m1877g() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        obtain.getBoundsInParent(this.f13374e);
        if (this.f13374e.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int m1880d = c3694b.m1880d();
        if ((m1880d & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((m1880d & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        obtain.setPackageName(this.f13378i.getContext().getPackageName());
        View view = this.f13378i;
        c3694b.f12072c = i;
        obtain.setSource(view, i);
        if (this.f13380k == i) {
            obtain.setAccessibilityFocused(true);
            obtain.addAction(128);
        } else {
            obtain.setAccessibilityFocused(false);
            obtain.addAction(64);
        }
        boolean z = this.f13381l == i;
        if (z) {
            obtain.addAction(2);
        } else if (obtain.isFocusable()) {
            obtain.addAction(1);
        }
        obtain.setFocused(z);
        this.f13378i.getLocationOnScreen(this.f13376g);
        obtain.getBoundsInScreen(this.f13373d);
        if (this.f13373d.equals(rect)) {
            obtain.getBoundsInParent(this.f13373d);
            if (c3694b.f12071b != -1) {
                AccessibilityNodeInfo obtain2 = AccessibilityNodeInfo.obtain();
                int i2 = c3694b.f12071b;
                while (true) {
                    int i3 = i2;
                    if (i3 == -1) {
                        break;
                    }
                    obtain2.setParent(this.f13378i, -1);
                    obtain2.setBoundsInParent(f13370n);
                    Chip.C1718b c1718b = (Chip.C1718b) this;
                    CharSequence charSequence = "";
                    if (i3 == 1) {
                        CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
                        if (closeIconContentDescription != null) {
                            obtain2.setContentDescription(closeIconContentDescription);
                        } else {
                            CharSequence text = Chip.this.getText();
                            Context context = Chip.this.getContext();
                            if (!TextUtils.isEmpty(text)) {
                                charSequence = text;
                            }
                            obtain2.setContentDescription(context.getString(2131820884, charSequence).trim());
                        }
                        obtain2.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
                        obtain2.addAction((AccessibilityNodeInfo.AccessibilityAction) C3694b.C3695a.f12075g.f12083a);
                        obtain2.setEnabled(Chip.this.isEnabled());
                    } else {
                        obtain2.setContentDescription("");
                        obtain2.setBoundsInParent(Chip.f6406v);
                    }
                    obtain2.getBoundsInParent(this.f13374e);
                    Rect rect2 = this.f13373d;
                    Rect rect3 = this.f13374e;
                    rect2.offset(rect3.left, rect3.top);
                    i2 = -1;
                }
                obtain2.recycle();
            }
            this.f13373d.offset(this.f13376g[0] - this.f13378i.getScrollX(), this.f13376g[1] - this.f13378i.getScrollY());
        }
        if (this.f13378i.getLocalVisibleRect(this.f13375f)) {
            this.f13375f.offset(this.f13376g[0] - this.f13378i.getScrollX(), this.f13376g[1] - this.f13378i.getScrollY());
            if (this.f13373d.intersect(this.f13375f)) {
                c3694b.f12070a.setBoundsInScreen(this.f13373d);
                Rect rect4 = this.f13373d;
                boolean z2 = false;
                if (rect4 != null) {
                    if (rect4.isEmpty()) {
                        z2 = false;
                    } else if (this.f13378i.getWindowVisibility() != 0) {
                        z2 = false;
                    } else {
                        ViewParent parent = this.f13378i.getParent();
                        while (true) {
                            ViewParent viewParent = parent;
                            if (viewParent instanceof View) {
                                View view2 = (View) viewParent;
                                z2 = false;
                                if (view2.getAlpha() <= 0.0f) {
                                    break;
                                } else if (view2.getVisibility() != 0) {
                                    z2 = false;
                                    break;
                                } else {
                                    parent = view2.getParent();
                                }
                            } else {
                                z2 = false;
                                if (viewParent != null) {
                                    z2 = true;
                                }
                            }
                        }
                    }
                }
                if (z2) {
                    c3694b.f12070a.setVisibleToUser(true);
                }
            }
        }
        return c3694b;
    }

    /* renamed from: m */
    public abstract void mo1179m(List<Integer> list);

    /* JADX WARN: Code restructure failed: missing block: B:72:0x027f, code lost:
        if (((r0 * r0) + ((r0 * 13) * r0)) < ((r0 * r0) + ((r0 * 13) * r0))) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:123:0x029a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0290  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1178n(int r7, android.graphics.Rect r8) {
        /*
            Method dump skipped, instructions count: 957
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p227s0.AbstractC4265a.m1178n(int, android.graphics.Rect):boolean");
    }

    /* renamed from: o */
    public C3694b m1177o(int i) {
        if (i == -1) {
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(this.f13378i);
            C3694b c3694b = new C3694b(obtain);
            View view = this.f13378i;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            view.onInitializeAccessibilityNodeInfo(obtain);
            ArrayList arrayList = new ArrayList();
            mo1179m(arrayList);
            if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
                throw new RuntimeException("Views cannot have both real and virtual children");
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                c3694b.f12070a.addChild(this.f13378i, ((Integer) arrayList.get(i2)).intValue());
            }
            return c3694b;
        }
        return m1180l(i);
    }

    /* renamed from: p */
    public abstract boolean mo1176p(int i, int i2, Bundle bundle);

    /* renamed from: q */
    public abstract void mo1175q(int i, C3694b c3694b);

    /* renamed from: r */
    public final boolean m1174r(int i) {
        int i2;
        if ((this.f13378i.isFocused() || this.f13378i.requestFocus()) && (i2 = this.f13381l) != i) {
            if (i2 != Integer.MIN_VALUE) {
                m1181k(i2);
            }
            if (i == Integer.MIN_VALUE) {
                return false;
            }
            this.f13381l = i;
            Chip.C1718b c1718b = (Chip.C1718b) this;
            if (i == 1) {
                Chip chip = Chip.this;
                chip.f6417m = true;
                chip.refreshDrawableState();
            }
            m1173s(i, 8);
            return true;
        }
        return false;
    }

    /* renamed from: s */
    public final boolean m1173s(int i, int i2) {
        ViewParent parent;
        AccessibilityEvent accessibilityEvent;
        if (i == Integer.MIN_VALUE || !this.f13377h.isEnabled() || (parent = this.f13378i.getParent()) == null) {
            return false;
        }
        if (i != -1) {
            accessibilityEvent = AccessibilityEvent.obtain(i2);
            C3694b m1177o = m1177o(i);
            accessibilityEvent.getText().add(m1177o.m1875i());
            accessibilityEvent.setContentDescription(m1177o.m1877g());
            accessibilityEvent.setScrollable(m1177o.f12070a.isScrollable());
            accessibilityEvent.setPassword(m1177o.f12070a.isPassword());
            accessibilityEvent.setEnabled(m1177o.m1874j());
            accessibilityEvent.setChecked(m1177o.f12070a.isChecked());
            if (accessibilityEvent.getText().isEmpty() && accessibilityEvent.getContentDescription() == null) {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
            accessibilityEvent.setClassName(m1177o.m1879e());
            accessibilityEvent.setSource(this.f13378i, i);
            accessibilityEvent.setPackageName(this.f13378i.getContext().getPackageName());
        } else {
            accessibilityEvent = AccessibilityEvent.obtain(i2);
            this.f13378i.onInitializeAccessibilityEvent(accessibilityEvent);
        }
        return parent.requestSendAccessibilityEvent(this.f13378i, accessibilityEvent);
    }
}
