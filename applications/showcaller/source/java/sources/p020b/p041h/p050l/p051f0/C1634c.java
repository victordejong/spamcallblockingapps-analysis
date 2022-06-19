package p020b.p041h.p050l.p051f0;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.p008os.C0622a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p020b.p041h.C1520c;
import p020b.p041h.p050l.p051f0.AbstractC1644f;
/* renamed from: b.h.l.f0.c */
/* loaded from: classes-dex2jar.jar:b/h/l/f0/c.class */
public class C1634c {

    /* renamed from: a */
    private static int f6265a;

    /* renamed from: b */
    private final AccessibilityNodeInfo f6266b;

    /* renamed from: c */
    public int f6267c = -1;

    /* renamed from: d */
    private int f6268d = -1;

    /* renamed from: b.h.l.f0.c$a */
    /* loaded from: classes-dex2jar.jar:b/h/l/f0/c$a.class */
    public static class C1635a {

        /* renamed from: A */
        public static final C1635a f6269A;

        /* renamed from: B */
        public static final C1635a f6270B;

        /* renamed from: C */
        public static final C1635a f6271C;

        /* renamed from: D */
        public static final C1635a f6272D;

        /* renamed from: E */
        public static final C1635a f6273E;

        /* renamed from: F */
        public static final C1635a f6274F;

        /* renamed from: G */
        public static final C1635a f6275G;

        /* renamed from: H */
        public static final C1635a f6276H;

        /* renamed from: I */
        public static final C1635a f6277I;

        /* renamed from: J */
        public static final C1635a f6278J;

        /* renamed from: K */
        public static final C1635a f6279K;

        /* renamed from: L */
        public static final C1635a f6280L;

        /* renamed from: M */
        public static final C1635a f6281M;

        /* renamed from: a */
        public static final C1635a f6282a = new C1635a(1, null);

        /* renamed from: b */
        public static final C1635a f6283b = new C1635a(2, null);

        /* renamed from: c */
        public static final C1635a f6284c = new C1635a(4, null);

        /* renamed from: d */
        public static final C1635a f6285d = new C1635a(8, null);

        /* renamed from: e */
        public static final C1635a f6286e = new C1635a(16, null);

        /* renamed from: f */
        public static final C1635a f6287f = new C1635a(32, null);

        /* renamed from: g */
        public static final C1635a f6288g = new C1635a(64, null);

        /* renamed from: h */
        public static final C1635a f6289h = new C1635a(128, null);

        /* renamed from: i */
        public static final C1635a f6290i = new C1635a(256, (CharSequence) null, AbstractC1644f.C1646b.class);

        /* renamed from: j */
        public static final C1635a f6291j = new C1635a(512, (CharSequence) null, AbstractC1644f.C1646b.class);

        /* renamed from: k */
        public static final C1635a f6292k = new C1635a(1024, (CharSequence) null, AbstractC1644f.C1647c.class);

        /* renamed from: l */
        public static final C1635a f6293l = new C1635a(2048, (CharSequence) null, AbstractC1644f.C1647c.class);

        /* renamed from: m */
        public static final C1635a f6294m = new C1635a(4096, null);

        /* renamed from: n */
        public static final C1635a f6295n = new C1635a(8192, null);

        /* renamed from: o */
        public static final C1635a f6296o = new C1635a(16384, null);

        /* renamed from: p */
        public static final C1635a f6297p = new C1635a(32768, null);

        /* renamed from: q */
        public static final C1635a f6298q = new C1635a(65536, null);

        /* renamed from: r */
        public static final C1635a f6299r = new C1635a(131072, (CharSequence) null, AbstractC1644f.C1651g.class);

        /* renamed from: s */
        public static final C1635a f6300s = new C1635a(262144, null);

        /* renamed from: t */
        public static final C1635a f6301t = new C1635a(524288, null);

        /* renamed from: u */
        public static final C1635a f6302u = new C1635a(1048576, null);

        /* renamed from: v */
        public static final C1635a f6303v = new C1635a(2097152, (CharSequence) null, AbstractC1644f.C1652h.class);

        /* renamed from: w */
        public static final C1635a f6304w;

        /* renamed from: x */
        public static final C1635a f6305x;

        /* renamed from: y */
        public static final C1635a f6306y;

        /* renamed from: z */
        public static final C1635a f6307z;

        /* renamed from: N */
        final Object f6308N;

        /* renamed from: O */
        private final int f6309O;

        /* renamed from: P */
        private final Class<? extends AbstractC1644f.AbstractC1645a> f6310P;

        /* renamed from: Q */
        protected final AbstractC1644f f6311Q;

        static {
            int i = Build.VERSION.SDK_INT;
            f6304w = new C1635a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, 16908342, null, null, null);
            f6305x = new C1635a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, 16908343, null, null, AbstractC1644f.C1649e.class);
            f6306y = new C1635a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, null, null, null);
            f6307z = new C1635a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, 16908345, null, null, null);
            f6269A = new C1635a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, null, null, null);
            f6270B = new C1635a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, 16908347, null, null, null);
            f6271C = new C1635a(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, 16908358, null, null, null);
            f6272D = new C1635a(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, 16908359, null, null, null);
            f6273E = new C1635a(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, 16908360, null, null, null);
            f6274F = new C1635a(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, 16908361, null, null, null);
            f6275G = new C1635a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, 16908348, null, null, null);
            f6276H = new C1635a(i >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, null, null, AbstractC1644f.C1650f.class);
            f6277I = new C1635a(i >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, 16908354, null, null, AbstractC1644f.C1648d.class);
            f6278J = new C1635a(i >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, 16908356, null, null, null);
            f6279K = new C1635a(i >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, 16908357, null, null, null);
            f6280L = new C1635a(i >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, 16908362, null, null, null);
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction = null;
            if (i >= 30) {
                accessibilityAction = AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER;
            }
            f6281M = new C1635a(accessibilityAction, 16908372, null, null, null);
        }

        public C1635a(int i, CharSequence charSequence) {
            this(null, i, charSequence, null, null);
        }

        public C1635a(int i, CharSequence charSequence, AbstractC1644f abstractC1644f) {
            this(null, i, charSequence, abstractC1644f, null);
        }

        private C1635a(int i, CharSequence charSequence, Class<? extends AbstractC1644f.AbstractC1645a> cls) {
            this(null, i, charSequence, null, cls);
        }

        C1635a(Object obj) {
            this(obj, 0, null, null, null);
        }

        C1635a(Object obj, int i, CharSequence charSequence, AbstractC1644f abstractC1644f, Class<? extends AbstractC1644f.AbstractC1645a> cls) {
            this.f6309O = i;
            this.f6311Q = abstractC1644f;
            if (Build.VERSION.SDK_INT < 21 || obj != null) {
                this.f6308N = obj;
            } else {
                this.f6308N = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            }
            this.f6310P = cls;
        }

        /* renamed from: a */
        public C1635a m29442a(CharSequence charSequence, AbstractC1644f abstractC1644f) {
            return new C1635a(null, this.f6309O, charSequence, abstractC1644f, this.f6310P);
        }

        /* renamed from: b */
        public int m29441b() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f6308N).getId();
            }
            return 0;
        }

        /* renamed from: c */
        public CharSequence m29440c() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f6308N).getLabel();
            }
            return null;
        }

        /* renamed from: d */
        public boolean m29439d(View view, Bundle bundle) {
            Exception e;
            AbstractC1644f.AbstractC1645a abstractC1645a;
            if (this.f6311Q != null) {
                AbstractC1644f.AbstractC1645a abstractC1645a2 = null;
                Class<? extends AbstractC1644f.AbstractC1645a> cls = this.f6310P;
                if (cls != null) {
                    try {
                        abstractC1645a2 = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    } catch (Exception e2) {
                        e = e2;
                        abstractC1645a = null;
                    }
                    try {
                        abstractC1645a2.m29428a(bundle);
                    } catch (Exception e3) {
                        abstractC1645a = abstractC1645a2;
                        e = e3;
                        Class<? extends AbstractC1644f.AbstractC1645a> cls2 = this.f6310P;
                        Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: " + (cls2 == null ? "null" : cls2.getName()), e);
                        abstractC1645a2 = abstractC1645a;
                        return this.f6311Q.mo5399a(view, abstractC1645a2);
                    }
                }
                return this.f6311Q.mo5399a(view, abstractC1645a2);
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj != null && (obj instanceof C1635a)) {
                C1635a c1635a = (C1635a) obj;
                Object obj2 = this.f6308N;
                return obj2 == null ? c1635a.f6308N == null : obj2.equals(c1635a.f6308N);
            }
            return false;
        }

        public int hashCode() {
            Object obj = this.f6308N;
            return obj != null ? obj.hashCode() : 0;
        }
    }

    /* renamed from: b.h.l.f0.c$b */
    /* loaded from: classes-dex2jar.jar:b/h/l/f0/c$b.class */
    public static class C1636b {

        /* renamed from: a */
        final Object f6312a;

        C1636b(Object obj) {
            this.f6312a = obj;
        }

        /* renamed from: a */
        public static C1636b m29438a(int i, int i2, boolean z) {
            return Build.VERSION.SDK_INT >= 19 ? new C1636b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new C1636b(null);
        }

        /* renamed from: b */
        public static C1636b m29437b(int i, int i2, boolean z, int i3) {
            int i4 = Build.VERSION.SDK_INT;
            return i4 >= 21 ? new C1636b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3)) : i4 >= 19 ? new C1636b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new C1636b(null);
        }
    }

    /* renamed from: b.h.l.f0.c$c */
    /* loaded from: classes-dex2jar.jar:b/h/l/f0/c$c.class */
    public static class C1637c {

        /* renamed from: a */
        final Object f6313a;

        C1637c(Object obj) {
            this.f6313a = obj;
        }

        /* renamed from: a */
        public static C1637c m29436a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            int i5 = Build.VERSION.SDK_INT;
            return i5 >= 21 ? new C1637c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2)) : i5 >= 19 ? new C1637c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z)) : new C1637c(null);
        }
    }

    /* renamed from: b.h.l.f0.c$d */
    /* loaded from: classes-dex2jar.jar:b/h/l/f0/c$d.class */
    public static class C1638d {

        /* renamed from: a */
        final Object f6314a;

        C1638d(Object obj) {
            this.f6314a = obj;
        }

        /* renamed from: a */
        public static C1638d m29435a(int i, float f, float f2, float f3) {
            return Build.VERSION.SDK_INT >= 19 ? new C1638d(AccessibilityNodeInfo.RangeInfo.obtain(i, f, f2, f3)) : new C1638d(null);
        }
    }

    private C1634c(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f6266b = accessibilityNodeInfo;
    }

    /* renamed from: A */
    private int m29528A(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals(sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = f6265a;
        f6265a = i2 + 1;
        return i2;
    }

    /* renamed from: H0 */
    public static C1634c m29513H0(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new C1634c(accessibilityNodeInfo);
    }

    /* renamed from: O */
    public static C1634c m29506O() {
        return m29513H0(AccessibilityNodeInfo.obtain());
    }

    /* renamed from: P */
    public static C1634c m29505P(View view) {
        return m29513H0(AccessibilityNodeInfo.obtain(view));
    }

    /* renamed from: Q */
    public static C1634c m29504Q(C1634c c1634c) {
        return m29513H0(AccessibilityNodeInfo.obtain(c1634c.f6266b));
    }

    /* renamed from: U */
    private void m29500U(View view) {
        int i;
        SparseArray<WeakReference<ClickableSpan>> m29450w = m29450w(view);
        if (m29450w != null) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (true) {
                if (i2 < m29450w.size()) {
                    if (m29450w.valueAt(i2).get() == null) {
                        arrayList.add(Integer.valueOf(i2));
                    }
                    i2++;
                }
            }
            for (i = 0; i < arrayList.size(); i++) {
                m29450w.remove(((Integer) arrayList.get(i)).intValue());
            }
        }
    }

    /* renamed from: W */
    private void m29498W(int i, boolean z) {
        Bundle m29458s = m29458s();
        if (m29458s != null) {
            m29458s.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (z ? i : 0) | (m29458s.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1))));
        }
    }

    /* renamed from: e */
    private void m29486e(ClickableSpan clickableSpan, Spanned spanned, int i) {
        m29480h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        m29480h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        m29480h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        m29480h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
    }

    /* renamed from: g */
    private void m29482g() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f6266b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.f6266b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.f6266b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.f6266b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    /* renamed from: h */
    private List<Integer> m29480h(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f6266b.getExtras().getIntegerArrayList(str);
        ArrayList<Integer> arrayList = integerArrayList;
        if (integerArrayList == null) {
            arrayList = new ArrayList<>();
            this.f6266b.getExtras().putIntegerArrayList(str, arrayList);
        }
        return arrayList;
    }

    /* renamed from: j */
    private static String m29476j(int i) {
        if (i != 1) {
            if (i == 2) {
                return "ACTION_CLEAR_FOCUS";
            }
            switch (i) {
                case 4:
                    return "ACTION_SELECT";
                case 8:
                    return "ACTION_CLEAR_SELECTION";
                case 16:
                    return "ACTION_CLICK";
                case 32:
                    return "ACTION_LONG_CLICK";
                case 64:
                    return "ACTION_ACCESSIBILITY_FOCUS";
                case 128:
                    return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
                case 256:
                    return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
                case 512:
                    return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
                case 1024:
                    return "ACTION_NEXT_HTML_ELEMENT";
                case 2048:
                    return "ACTION_PREVIOUS_HTML_ELEMENT";
                case 4096:
                    return "ACTION_SCROLL_FORWARD";
                case 8192:
                    return "ACTION_SCROLL_BACKWARD";
                case 16384:
                    return "ACTION_COPY";
                case 32768:
                    return "ACTION_PASTE";
                case 65536:
                    return "ACTION_CUT";
                case 131072:
                    return "ACTION_SET_SELECTION";
                case 262144:
                    return "ACTION_EXPAND";
                case 524288:
                    return "ACTION_COLLAPSE";
                case 2097152:
                    return "ACTION_SET_TEXT";
                case 16908354:
                    return "ACTION_MOVE_WINDOW";
                case 16908372:
                    return "ACTION_IME_ENTER";
                default:
                    switch (i) {
                        case 16908342:
                            return "ACTION_SHOW_ON_SCREEN";
                        case 16908343:
                            return "ACTION_SCROLL_TO_POSITION";
                        case 16908344:
                            return "ACTION_SCROLL_UP";
                        case 16908345:
                            return "ACTION_SCROLL_LEFT";
                        case 16908346:
                            return "ACTION_SCROLL_DOWN";
                        case 16908347:
                            return "ACTION_SCROLL_RIGHT";
                        case 16908348:
                            return "ACTION_CONTEXT_CLICK";
                        case 16908349:
                            return "ACTION_SET_PROGRESS";
                        default:
                            switch (i) {
                                case 16908356:
                                    return "ACTION_SHOW_TOOLTIP";
                                case 16908357:
                                    return "ACTION_HIDE_TOOLTIP";
                                case 16908358:
                                    return "ACTION_PAGE_UP";
                                case 16908359:
                                    return "ACTION_PAGE_DOWN";
                                case 16908360:
                                    return "ACTION_PAGE_LEFT";
                                case 16908361:
                                    return "ACTION_PAGE_RIGHT";
                                case 16908362:
                                    return "ACTION_PRESS_AND_HOLD";
                                default:
                                    return "ACTION_UNKNOWN";
                            }
                    }
            }
        }
        return "ACTION_FOCUS";
    }

    /* renamed from: l */
    private boolean m29472l(int i) {
        Bundle m29458s = m29458s();
        boolean z = false;
        if (m29458s == null) {
            return false;
        }
        if ((m29458s.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i) == i) {
            z = true;
        }
        return z;
    }

    /* renamed from: q */
    public static ClickableSpan[] m29462q(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    /* renamed from: u */
    private SparseArray<WeakReference<ClickableSpan>> m29454u(View view) {
        SparseArray<WeakReference<ClickableSpan>> m29450w = m29450w(view);
        SparseArray sparseArray = m29450w;
        if (m29450w == null) {
            sparseArray = new SparseArray();
            view.setTag(C1520c.tag_accessibility_clickable_spans, sparseArray);
        }
        return sparseArray;
    }

    /* renamed from: w */
    private SparseArray<WeakReference<ClickableSpan>> m29450w(View view) {
        return (SparseArray) view.getTag(C1520c.tag_accessibility_clickable_spans);
    }

    /* renamed from: z */
    private boolean m29444z() {
        return !m29480h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    /* renamed from: A0 */
    public void m29527A0(View view) {
        this.f6268d = -1;
        this.f6266b.setSource(view);
    }

    /* renamed from: B */
    public boolean m29526B() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f6266b.isAccessibilityFocused();
        }
        return false;
    }

    /* renamed from: B0 */
    public void m29525B0(View view, int i) {
        this.f6268d = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f6266b.setSource(view, i);
        }
    }

    /* renamed from: C */
    public boolean m29524C() {
        return this.f6266b.isCheckable();
    }

    /* renamed from: C0 */
    public void m29523C0(CharSequence charSequence) {
        if (C0622a.m33201b()) {
            this.f6266b.setStateDescription(charSequence);
        } else if (Build.VERSION.SDK_INT < 19) {
        } else {
            this.f6266b.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
    }

    /* renamed from: D */
    public boolean m29522D() {
        return this.f6266b.isChecked();
    }

    /* renamed from: D0 */
    public void m29521D0(CharSequence charSequence) {
        this.f6266b.setText(charSequence);
    }

    /* renamed from: E */
    public boolean m29520E() {
        return this.f6266b.isClickable();
    }

    /* renamed from: E0 */
    public void m29519E0(View view) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.f6266b.setTraversalAfter(view);
        }
    }

    /* renamed from: F */
    public boolean m29518F() {
        return this.f6266b.isEnabled();
    }

    /* renamed from: F0 */
    public void m29517F0(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f6266b.setVisibleToUser(z);
        }
    }

    /* renamed from: G */
    public boolean m29516G() {
        return this.f6266b.isFocusable();
    }

    /* renamed from: G0 */
    public AccessibilityNodeInfo m29515G0() {
        return this.f6266b;
    }

    /* renamed from: H */
    public boolean m29514H() {
        return this.f6266b.isFocused();
    }

    /* renamed from: I */
    public boolean m29512I() {
        return this.f6266b.isLongClickable();
    }

    /* renamed from: J */
    public boolean m29511J() {
        return this.f6266b.isPassword();
    }

    /* renamed from: K */
    public boolean m29510K() {
        return this.f6266b.isScrollable();
    }

    /* renamed from: L */
    public boolean m29509L() {
        return this.f6266b.isSelected();
    }

    /* renamed from: M */
    public boolean m29508M() {
        return Build.VERSION.SDK_INT >= 26 ? this.f6266b.isShowingHintText() : m29472l(4);
    }

    /* renamed from: N */
    public boolean m29507N() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f6266b.isVisibleToUser();
        }
        return false;
    }

    /* renamed from: R */
    public boolean m29503R(int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f6266b.performAction(i, bundle);
        }
        return false;
    }

    /* renamed from: S */
    public void m29502S() {
        this.f6266b.recycle();
    }

    /* renamed from: T */
    public boolean m29501T(C1635a c1635a) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f6266b.removeAction((AccessibilityNodeInfo.AccessibilityAction) c1635a.f6308N);
        }
        return false;
    }

    /* renamed from: V */
    public void m29499V(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f6266b.setAccessibilityFocused(z);
        }
    }

    @Deprecated
    /* renamed from: X */
    public void m29497X(Rect rect) {
        this.f6266b.setBoundsInParent(rect);
    }

    /* renamed from: Y */
    public void m29496Y(Rect rect) {
        this.f6266b.setBoundsInScreen(rect);
    }

    /* renamed from: Z */
    public void m29495Z(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f6266b.setCanOpenPopup(z);
        }
    }

    /* renamed from: a */
    public void m29494a(int i) {
        this.f6266b.addAction(i);
    }

    /* renamed from: a0 */
    public void m29493a0(boolean z) {
        this.f6266b.setCheckable(z);
    }

    /* renamed from: b */
    public void m29492b(C1635a c1635a) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f6266b.addAction((AccessibilityNodeInfo.AccessibilityAction) c1635a.f6308N);
        }
    }

    /* renamed from: b0 */
    public void m29491b0(boolean z) {
        this.f6266b.setChecked(z);
    }

    /* renamed from: c */
    public void m29490c(View view) {
        this.f6266b.addChild(view);
    }

    /* renamed from: c0 */
    public void m29489c0(CharSequence charSequence) {
        this.f6266b.setClassName(charSequence);
    }

    /* renamed from: d */
    public void m29488d(View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f6266b.addChild(view, i);
        }
    }

    /* renamed from: d0 */
    public void m29487d0(boolean z) {
        this.f6266b.setClickable(z);
    }

    /* renamed from: e0 */
    public void m29485e0(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f6266b.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((C1636b) obj).f6312a);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C1634c)) {
            return false;
        }
        C1634c c1634c = (C1634c) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f6266b;
        if (accessibilityNodeInfo == null) {
            if (c1634c.f6266b != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(c1634c.f6266b)) {
            return false;
        }
        return this.f6268d == c1634c.f6268d && this.f6267c == c1634c.f6267c;
    }

    /* renamed from: f */
    public void m29484f(CharSequence charSequence, View view) {
        int i = Build.VERSION.SDK_INT;
        if (i < 19 || i >= 26) {
            return;
        }
        m29482g();
        m29500U(view);
        ClickableSpan[] m29462q = m29462q(charSequence);
        if (m29462q == null || m29462q.length <= 0) {
            return;
        }
        m29458s().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", C1520c.accessibility_action_clickable_span);
        SparseArray<WeakReference<ClickableSpan>> m29454u = m29454u(view);
        for (int i2 = 0; i2 < m29462q.length; i2++) {
            int m29528A = m29528A(m29462q[i2], m29454u);
            m29454u.put(m29528A, new WeakReference<>(m29462q[i2]));
            m29486e(m29462q[i2], (Spanned) charSequence, m29528A);
        }
    }

    /* renamed from: f0 */
    public void m29483f0(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f6266b.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((C1637c) obj).f6313a);
        }
    }

    /* renamed from: g0 */
    public void m29481g0(CharSequence charSequence) {
        this.f6266b.setContentDescription(charSequence);
    }

    /* renamed from: h0 */
    public void m29479h0(boolean z) {
        this.f6266b.setEnabled(z);
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f6266b;
        return accessibilityNodeInfo == null ? 0 : accessibilityNodeInfo.hashCode();
    }

    /* renamed from: i */
    public List<C1635a> m29478i() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = Build.VERSION.SDK_INT >= 21 ? this.f6266b.getActionList() : null;
        if (actionList != null) {
            ArrayList arrayList = new ArrayList();
            int size = actionList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(new C1635a(actionList.get(i)));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    /* renamed from: i0 */
    public void m29477i0(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f6266b.setError(charSequence);
        }
    }

    /* renamed from: j0 */
    public void m29475j0(boolean z) {
        this.f6266b.setFocusable(z);
    }

    /* renamed from: k */
    public int m29474k() {
        return this.f6266b.getActions();
    }

    /* renamed from: k0 */
    public void m29473k0(boolean z) {
        this.f6266b.setFocused(z);
    }

    /* renamed from: l0 */
    public void m29471l0(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f6266b.setHeading(z);
        } else {
            m29498W(2, z);
        }
    }

    @Deprecated
    /* renamed from: m */
    public void m29470m(Rect rect) {
        this.f6266b.getBoundsInParent(rect);
    }

    /* renamed from: m0 */
    public void m29469m0(CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f6266b.setHintText(charSequence);
        } else if (i < 19) {
        } else {
            this.f6266b.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    /* renamed from: n */
    public void m29468n(Rect rect) {
        this.f6266b.getBoundsInScreen(rect);
    }

    /* renamed from: n0 */
    public void m29467n0(boolean z) {
        this.f6266b.setLongClickable(z);
    }

    /* renamed from: o */
    public int m29466o() {
        return this.f6266b.getChildCount();
    }

    /* renamed from: o0 */
    public void m29465o0(int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f6266b.setMaxTextLength(i);
        }
    }

    /* renamed from: p */
    public CharSequence m29464p() {
        return this.f6266b.getClassName();
    }

    /* renamed from: p0 */
    public void m29463p0(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f6266b.setMovementGranularities(i);
        }
    }

    /* renamed from: q0 */
    public void m29461q0(CharSequence charSequence) {
        this.f6266b.setPackageName(charSequence);
    }

    /* renamed from: r */
    public CharSequence m29460r() {
        return this.f6266b.getContentDescription();
    }

    /* renamed from: r0 */
    public void m29459r0(CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f6266b.setPaneTitle(charSequence);
        } else if (i < 19) {
        } else {
            this.f6266b.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    /* renamed from: s */
    public Bundle m29458s() {
        return Build.VERSION.SDK_INT >= 19 ? this.f6266b.getExtras() : new Bundle();
    }

    /* renamed from: s0 */
    public void m29457s0(View view) {
        this.f6267c = -1;
        this.f6266b.setParent(view);
    }

    /* renamed from: t */
    public int m29456t() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f6266b.getMovementGranularities();
        }
        return 0;
    }

    /* renamed from: t0 */
    public void m29455t0(View view, int i) {
        this.f6267c = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f6266b.setParent(view, i);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        m29470m(rect);
        sb.append("; boundsInParent: " + rect);
        m29468n(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(m29452v());
        sb.append("; className: ");
        sb.append(m29464p());
        sb.append("; text: ");
        sb.append(m29448x());
        sb.append("; contentDescription: ");
        sb.append(m29460r());
        sb.append("; viewId: ");
        sb.append(m29446y());
        sb.append("; checkable: ");
        sb.append(m29524C());
        sb.append("; checked: ");
        sb.append(m29522D());
        sb.append("; focusable: ");
        sb.append(m29516G());
        sb.append("; focused: ");
        sb.append(m29514H());
        sb.append("; selected: ");
        sb.append(m29509L());
        sb.append("; clickable: ");
        sb.append(m29520E());
        sb.append("; longClickable: ");
        sb.append(m29512I());
        sb.append("; enabled: ");
        sb.append(m29518F());
        sb.append("; password: ");
        sb.append(m29511J());
        sb.append("; scrollable: " + m29510K());
        sb.append("; [");
        if (Build.VERSION.SDK_INT >= 21) {
            List<C1635a> m29478i = m29478i();
            for (int i = 0; i < m29478i.size(); i++) {
                C1635a c1635a = m29478i.get(i);
                String m29476j = m29476j(c1635a.m29441b());
                String str = m29476j;
                if (m29476j.equals("ACTION_UNKNOWN")) {
                    str = m29476j;
                    if (c1635a.m29440c() != null) {
                        str = c1635a.m29440c().toString();
                    }
                }
                sb.append(str);
                if (i != m29478i.size() - 1) {
                    sb.append(", ");
                }
            }
        } else {
            int m29474k = m29474k();
            while (m29474k != 0) {
                int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(m29474k);
                int i2 = m29474k & (numberOfTrailingZeros ^ (-1));
                sb.append(m29476j(numberOfTrailingZeros));
                m29474k = i2;
                if (i2 != 0) {
                    sb.append(", ");
                    m29474k = i2;
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: u0 */
    public void m29453u0(C1638d c1638d) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f6266b.setRangeInfo((AccessibilityNodeInfo.RangeInfo) c1638d.f6314a);
        }
    }

    /* renamed from: v */
    public CharSequence m29452v() {
        return this.f6266b.getPackageName();
    }

    /* renamed from: v0 */
    public void m29451v0(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f6266b.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", charSequence);
        }
    }

    /* renamed from: w0 */
    public void m29449w0(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f6266b.setScreenReaderFocusable(z);
        } else {
            m29498W(1, z);
        }
    }

    /* renamed from: x */
    public CharSequence m29448x() {
        if (m29444z()) {
            List<Integer> m29480h = m29480h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            List<Integer> m29480h2 = m29480h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            List<Integer> m29480h3 = m29480h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            List<Integer> m29480h4 = m29480h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SpannableString spannableString = new SpannableString(TextUtils.substring(this.f6266b.getText(), 0, this.f6266b.getText().length()));
            for (int i = 0; i < m29480h.size(); i++) {
                spannableString.setSpan(new C1632a(m29480h4.get(i).intValue(), this, m29458s().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), m29480h.get(i).intValue(), m29480h2.get(i).intValue(), m29480h3.get(i).intValue());
            }
            return spannableString;
        }
        return this.f6266b.getText();
    }

    /* renamed from: x0 */
    public void m29447x0(boolean z) {
        this.f6266b.setScrollable(z);
    }

    /* renamed from: y */
    public String m29446y() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f6266b.getViewIdResourceName();
        }
        return null;
    }

    /* renamed from: y0 */
    public void m29445y0(boolean z) {
        this.f6266b.setSelected(z);
    }

    /* renamed from: z0 */
    public void m29443z0(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f6266b.setShowingHintText(z);
        } else {
            m29498W(4, z);
        }
    }
}
