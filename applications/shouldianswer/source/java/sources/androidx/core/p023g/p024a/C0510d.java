package androidx.core.p023g.p024a;

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
import androidx.core.C0404a;
import androidx.core.p023g.p024a.AbstractC0518g;
import com.crashlytics.android.core.CodedOutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.core.g.a.d */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a/d.class */
public class C0510d {

    /* renamed from: d */
    private static int f1811d;

    /* renamed from: b */
    private final AccessibilityNodeInfo f1813b;

    /* renamed from: a */
    public int f1812a = -1;

    /* renamed from: c */
    private int f1814c = -1;

    /* renamed from: androidx.core.g.a.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/d$a.class */
    public static class C0511a {

        /* renamed from: A */
        public static final C0511a f1815A;

        /* renamed from: B */
        public static final C0511a f1816B;

        /* renamed from: C */
        public static final C0511a f1817C;

        /* renamed from: D */
        public static final C0511a f1818D;

        /* renamed from: E */
        public static final C0511a f1819E;

        /* renamed from: F */
        public static final C0511a f1820F;

        /* renamed from: G */
        public static final C0511a f1821G;

        /* renamed from: a */
        public static final C0511a f1822a = new C0511a(1, null);

        /* renamed from: b */
        public static final C0511a f1823b = new C0511a(2, null);

        /* renamed from: c */
        public static final C0511a f1824c = new C0511a(4, null);

        /* renamed from: d */
        public static final C0511a f1825d = new C0511a(8, null);

        /* renamed from: e */
        public static final C0511a f1826e = new C0511a(16, null);

        /* renamed from: f */
        public static final C0511a f1827f = new C0511a(32, null);

        /* renamed from: g */
        public static final C0511a f1828g = new C0511a(64, null);

        /* renamed from: h */
        public static final C0511a f1829h = new C0511a(128, null);

        /* renamed from: i */
        public static final C0511a f1830i = new C0511a(256, null, AbstractC0518g.C0520b.class);

        /* renamed from: j */
        public static final C0511a f1831j = new C0511a(512, null, AbstractC0518g.C0520b.class);

        /* renamed from: k */
        public static final C0511a f1832k = new C0511a(1024, null, AbstractC0518g.C0521c.class);

        /* renamed from: l */
        public static final C0511a f1833l = new C0511a(2048, null, AbstractC0518g.C0521c.class);

        /* renamed from: m */
        public static final C0511a f1834m = new C0511a(CodedOutputStream.DEFAULT_BUFFER_SIZE, null);

        /* renamed from: n */
        public static final C0511a f1835n = new C0511a(8192, null);

        /* renamed from: o */
        public static final C0511a f1836o = new C0511a(16384, null);

        /* renamed from: p */
        public static final C0511a f1837p = new C0511a(32768, null);

        /* renamed from: q */
        public static final C0511a f1838q = new C0511a(65536, null);

        /* renamed from: r */
        public static final C0511a f1839r = new C0511a(131072, null, AbstractC0518g.C0525g.class);

        /* renamed from: s */
        public static final C0511a f1840s = new C0511a(262144, null);

        /* renamed from: t */
        public static final C0511a f1841t = new C0511a(524288, null);

        /* renamed from: u */
        public static final C0511a f1842u = new C0511a(1048576, null);

        /* renamed from: v */
        public static final C0511a f1843v = new C0511a(2097152, null, AbstractC0518g.C0526h.class);

        /* renamed from: w */
        public static final C0511a f1844w;

        /* renamed from: x */
        public static final C0511a f1845x;

        /* renamed from: y */
        public static final C0511a f1846y;

        /* renamed from: z */
        public static final C0511a f1847z;

        /* renamed from: H */
        final Object f1848H;

        /* renamed from: I */
        protected final AbstractC0518g f1849I;

        /* renamed from: J */
        private final int f1850J;

        /* renamed from: K */
        private final CharSequence f1851K;

        /* renamed from: L */
        private final Class<? extends AbstractC0518g.AbstractC0519a> f1852L;

        static {
            f1844w = new C0511a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, 16908342, null, null, null);
            f1845x = new C0511a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, 16908343, null, null, AbstractC0518g.C0523e.class);
            f1846y = new C0511a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, null, null, null);
            f1847z = new C0511a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, 16908345, null, null, null);
            f1815A = new C0511a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, null, null, null);
            f1816B = new C0511a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, 16908347, null, null, null);
            f1817C = new C0511a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, 16908348, null, null, null);
            f1818D = new C0511a(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, null, null, AbstractC0518g.C0524f.class);
            f1819E = new C0511a(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, 16908354, null, null, AbstractC0518g.C0522d.class);
            f1820F = new C0511a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, 16908356, null, null, null);
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction = null;
            if (Build.VERSION.SDK_INT >= 28) {
                accessibilityAction = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
            }
            f1821G = new C0511a(accessibilityAction, 16908357, null, null, null);
        }

        public C0511a(int i, CharSequence charSequence) {
            this(null, i, charSequence, null, null);
        }

        private C0511a(int i, CharSequence charSequence, Class<? extends AbstractC0518g.AbstractC0519a> cls) {
            this(null, i, charSequence, null, cls);
        }

        C0511a(Object obj, int i, CharSequence charSequence, AbstractC0518g abstractC0518g, Class<? extends AbstractC0518g.AbstractC0519a> cls) {
            this.f1850J = i;
            this.f1851K = charSequence;
            this.f1849I = abstractC0518g;
            if (Build.VERSION.SDK_INT < 21 || obj != null) {
                this.f1848H = obj;
            } else {
                this.f1848H = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            }
            this.f1852L = cls;
        }

        /* renamed from: a */
        public int m6379a() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f1848H).getId();
            }
            return 0;
        }

        /* renamed from: a */
        public boolean m6378a(View view, Bundle bundle) {
            Exception e;
            AbstractC0518g.AbstractC0519a abstractC0519a;
            if (this.f1849I != null) {
                AbstractC0518g.AbstractC0519a abstractC0519a2 = null;
                Class<? extends AbstractC0518g.AbstractC0519a> cls = this.f1852L;
                if (cls != null) {
                    try {
                        abstractC0519a2 = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    } catch (Exception e2) {
                        e = e2;
                        abstractC0519a = null;
                    }
                    try {
                        abstractC0519a2.m6369a(bundle);
                    } catch (Exception e3) {
                        abstractC0519a = abstractC0519a2;
                        e = e3;
                        Class<? extends AbstractC0518g.AbstractC0519a> cls2 = this.f1852L;
                        Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: " + (cls2 == null ? "null" : cls2.getName()), e);
                        abstractC0519a2 = abstractC0519a;
                        return this.f1849I.m6370a(view, abstractC0519a2);
                    }
                }
                return this.f1849I.m6370a(view, abstractC0519a2);
            }
            return false;
        }
    }

    /* renamed from: androidx.core.g.a.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/d$b.class */
    public static class C0512b {

        /* renamed from: a */
        final Object f1853a;

        C0512b(Object obj) {
            this.f1853a = obj;
        }

        /* renamed from: a */
        public static C0512b m6377a(int i, int i2, boolean z, int i3) {
            return Build.VERSION.SDK_INT >= 21 ? new C0512b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3)) : Build.VERSION.SDK_INT >= 19 ? new C0512b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new C0512b(null);
        }
    }

    /* renamed from: androidx.core.g.a.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/d$c.class */
    public static class C0513c {

        /* renamed from: a */
        final Object f1854a;

        C0513c(Object obj) {
            this.f1854a = obj;
        }

        /* renamed from: a */
        public static C0513c m6376a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return Build.VERSION.SDK_INT >= 21 ? new C0513c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2)) : Build.VERSION.SDK_INT >= 19 ? new C0513c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z)) : new C0513c(null);
        }
    }

    private C0510d(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f1813b = accessibilityNodeInfo;
    }

    /* renamed from: a */
    private int m6450a(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals(sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = f1811d;
        f1811d = i2 + 1;
        return i2;
    }

    /* renamed from: a */
    public static C0510d m6449a(View view) {
        return m6447a(AccessibilityNodeInfo.obtain(view));
    }

    /* renamed from: a */
    public static C0510d m6447a(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new C0510d(accessibilityNodeInfo);
    }

    /* renamed from: a */
    public static C0510d m6445a(C0510d c0510d) {
        return m6447a(AccessibilityNodeInfo.obtain(c0510d.f1813b));
    }

    /* renamed from: a */
    private List<Integer> m6441a(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f1813b.getExtras().getIntegerArrayList(str);
        ArrayList<Integer> arrayList = integerArrayList;
        if (integerArrayList == null) {
            arrayList = new ArrayList<>();
            this.f1813b.getExtras().putIntegerArrayList(str, arrayList);
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m6453a(int i, boolean z) {
        Bundle m6382w = m6382w();
        if (m6382w != null) {
            m6382w.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (z ? i : 0) | (m6382w.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1))));
        }
    }

    /* renamed from: a */
    private void m6451a(ClickableSpan clickableSpan, Spanned spanned, int i) {
        m6441a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        m6441a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        m6441a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        m6441a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
    }

    /* renamed from: b */
    public static C0510d m6439b() {
        return m6447a(AccessibilityNodeInfo.obtain());
    }

    /* renamed from: b */
    private static String m6438b(int i) {
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
                case CodedOutputStream.DEFAULT_BUFFER_SIZE /* 4096 */:
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
                default:
                    return "ACTION_UNKNOWN";
            }
        }
        return "ACTION_FOCUS";
    }

    /* renamed from: d */
    public static ClickableSpan[] m6421d(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    /* renamed from: e */
    private SparseArray<WeakReference<ClickableSpan>> m6418e(View view) {
        SparseArray<WeakReference<ClickableSpan>> m6414f = m6414f(view);
        SparseArray sparseArray = m6414f;
        if (m6414f == null) {
            sparseArray = new SparseArray();
            view.setTag(C0404a.C0407c.tag_accessibility_clickable_spans, sparseArray);
        }
        return sparseArray;
    }

    /* renamed from: f */
    private SparseArray<WeakReference<ClickableSpan>> m6414f(View view) {
        return (SparseArray) view.getTag(C0404a.C0407c.tag_accessibility_clickable_spans);
    }

    /* renamed from: g */
    private void m6410g(View view) {
        int i;
        SparseArray<WeakReference<ClickableSpan>> m6414f = m6414f(view);
        if (m6414f != null) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (true) {
                if (i2 < m6414f.size()) {
                    if (m6414f.valueAt(i2).get() == null) {
                        arrayList.add(Integer.valueOf(i2));
                    }
                    i2++;
                }
            }
            for (i = 0; i < arrayList.size(); i++) {
                m6414f.remove(((Integer) arrayList.get(i)).intValue());
            }
        }
    }

    /* renamed from: x */
    private boolean m6381x() {
        return !m6441a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    /* renamed from: y */
    private void m6380y() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1813b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.f1813b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.f1813b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.f1813b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    /* renamed from: a */
    public AccessibilityNodeInfo m6456a() {
        return this.f1813b;
    }

    /* renamed from: a */
    public void m6455a(int i) {
        this.f1813b.addAction(i);
    }

    /* renamed from: a */
    public void m6452a(Rect rect) {
        this.f1813b.getBoundsInParent(rect);
    }

    /* renamed from: a */
    public void m6448a(View view, int i) {
        this.f1814c = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1813b.setSource(view, i);
        }
    }

    /* renamed from: a */
    public void m6446a(C0511a c0511a) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1813b.addAction((AccessibilityNodeInfo.AccessibilityAction) c0511a.f1848H);
        }
    }

    /* renamed from: a */
    public void m6444a(CharSequence charSequence) {
        this.f1813b.setPackageName(charSequence);
    }

    /* renamed from: a */
    public void m6443a(CharSequence charSequence, View view) {
        if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 26) {
            return;
        }
        m6380y();
        m6410g(view);
        ClickableSpan[] m6421d = m6421d(charSequence);
        if (m6421d == null || m6421d.length <= 0) {
            return;
        }
        m6382w().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", C0404a.C0407c.accessibility_action_clickable_span);
        SparseArray<WeakReference<ClickableSpan>> m6418e = m6418e(view);
        for (int i = 0; m6421d != null && i < m6421d.length; i++) {
            int m6450a = m6450a(m6421d[i], m6418e);
            m6418e.put(m6450a, new WeakReference<>(m6421d[i]));
            m6451a(m6421d[i], (Spanned) charSequence, m6450a);
        }
    }

    /* renamed from: a */
    public void m6442a(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1813b.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((C0512b) obj).f1853a);
        }
    }

    /* renamed from: a */
    public void m6440a(boolean z) {
        this.f1813b.setCheckable(z);
    }

    /* renamed from: a */
    public boolean m6454a(int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f1813b.performAction(i, bundle);
        }
        return false;
    }

    /* renamed from: b */
    public void m6437b(Rect rect) {
        this.f1813b.setBoundsInParent(rect);
    }

    /* renamed from: b */
    public void m6436b(View view) {
        this.f1814c = -1;
        this.f1813b.setSource(view);
    }

    /* renamed from: b */
    public void m6435b(View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1813b.addChild(view, i);
        }
    }

    /* renamed from: b */
    public void m6433b(CharSequence charSequence) {
        this.f1813b.setClassName(charSequence);
    }

    /* renamed from: b */
    public void m6432b(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1813b.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((C0513c) obj).f1854a);
        }
    }

    /* renamed from: b */
    public void m6431b(boolean z) {
        this.f1813b.setChecked(z);
    }

    /* renamed from: b */
    public boolean m6434b(C0511a c0511a) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f1813b.removeAction((AccessibilityNodeInfo.AccessibilityAction) c0511a.f1848H);
        }
        return false;
    }

    /* renamed from: c */
    public int m6430c() {
        return this.f1813b.getChildCount();
    }

    /* renamed from: c */
    public void m6429c(Rect rect) {
        this.f1813b.getBoundsInScreen(rect);
    }

    /* renamed from: c */
    public void m6428c(View view) {
        this.f1813b.addChild(view);
    }

    /* renamed from: c */
    public void m6427c(View view, int i) {
        this.f1812a = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1813b.setParent(view, i);
        }
    }

    /* renamed from: c */
    public void m6426c(CharSequence charSequence) {
        this.f1813b.setText(charSequence);
    }

    /* renamed from: c */
    public void m6425c(boolean z) {
        this.f1813b.setFocusable(z);
    }

    /* renamed from: d */
    public int m6424d() {
        return this.f1813b.getActions();
    }

    /* renamed from: d */
    public void m6423d(Rect rect) {
        this.f1813b.setBoundsInScreen(rect);
    }

    /* renamed from: d */
    public void m6422d(View view) {
        this.f1812a = -1;
        this.f1813b.setParent(view);
    }

    /* renamed from: d */
    public void m6420d(boolean z) {
        this.f1813b.setFocused(z);
    }

    /* renamed from: e */
    public void m6417e(CharSequence charSequence) {
        this.f1813b.setContentDescription(charSequence);
    }

    /* renamed from: e */
    public void m6416e(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1813b.setVisibleToUser(z);
        }
    }

    /* renamed from: e */
    public boolean m6419e() {
        return this.f1813b.isCheckable();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0510d c0510d = (C0510d) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1813b;
        if (accessibilityNodeInfo == null) {
            if (c0510d.f1813b != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(c0510d.f1813b)) {
            return false;
        }
        return this.f1814c == c0510d.f1814c && this.f1812a == c0510d.f1812a;
    }

    /* renamed from: f */
    public void m6413f(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1813b.setHintText(charSequence);
        } else if (Build.VERSION.SDK_INT < 19) {
        } else {
            this.f1813b.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    /* renamed from: f */
    public void m6412f(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1813b.setAccessibilityFocused(z);
        }
    }

    /* renamed from: f */
    public boolean m6415f() {
        return this.f1813b.isChecked();
    }

    /* renamed from: g */
    public void m6409g(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1813b.setError(charSequence);
        }
    }

    /* renamed from: g */
    public void m6408g(boolean z) {
        this.f1813b.setSelected(z);
    }

    /* renamed from: g */
    public boolean m6411g() {
        return this.f1813b.isFocusable();
    }

    /* renamed from: h */
    public void m6406h(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1813b.setPaneTitle(charSequence);
        } else if (Build.VERSION.SDK_INT < 19) {
        } else {
            this.f1813b.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    /* renamed from: h */
    public void m6405h(boolean z) {
        this.f1813b.setClickable(z);
    }

    /* renamed from: h */
    public boolean m6407h() {
        return this.f1813b.isFocused();
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1813b;
        return accessibilityNodeInfo == null ? 0 : accessibilityNodeInfo.hashCode();
    }

    /* renamed from: i */
    public void m6403i(boolean z) {
        this.f1813b.setLongClickable(z);
    }

    /* renamed from: i */
    public boolean m6404i() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f1813b.isVisibleToUser();
        }
        return false;
    }

    /* renamed from: j */
    public void m6401j(boolean z) {
        this.f1813b.setEnabled(z);
    }

    /* renamed from: j */
    public boolean m6402j() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f1813b.isAccessibilityFocused();
        }
        return false;
    }

    /* renamed from: k */
    public void m6399k(boolean z) {
        this.f1813b.setScrollable(z);
    }

    /* renamed from: k */
    public boolean m6400k() {
        return this.f1813b.isSelected();
    }

    /* renamed from: l */
    public void m6397l(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1813b.setContentInvalid(z);
        }
    }

    /* renamed from: l */
    public boolean m6398l() {
        return this.f1813b.isClickable();
    }

    /* renamed from: m */
    public void m6395m(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1813b.setDismissable(z);
        }
    }

    /* renamed from: m */
    public boolean m6396m() {
        return this.f1813b.isLongClickable();
    }

    /* renamed from: n */
    public void m6393n(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1813b.setScreenReaderFocusable(z);
        } else {
            m6453a(1, z);
        }
    }

    /* renamed from: n */
    public boolean m6394n() {
        return this.f1813b.isEnabled();
    }

    /* renamed from: o */
    public void m6391o(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1813b.setShowingHintText(z);
        } else {
            m6453a(4, z);
        }
    }

    /* renamed from: o */
    public boolean m6392o() {
        return this.f1813b.isPassword();
    }

    /* renamed from: p */
    public void m6389p(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1813b.setHeading(z);
        } else {
            m6453a(2, z);
        }
    }

    /* renamed from: p */
    public boolean m6390p() {
        return this.f1813b.isScrollable();
    }

    /* renamed from: q */
    public CharSequence m6388q() {
        return this.f1813b.getPackageName();
    }

    /* renamed from: r */
    public CharSequence m6387r() {
        return this.f1813b.getClassName();
    }

    /* renamed from: s */
    public CharSequence m6386s() {
        if (m6381x()) {
            List<Integer> m6441a = m6441a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            List<Integer> m6441a2 = m6441a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            List<Integer> m6441a3 = m6441a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            List<Integer> m6441a4 = m6441a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SpannableString spannableString = new SpannableString(TextUtils.substring(this.f1813b.getText(), 0, this.f1813b.getText().length()));
            for (int i = 0; i < m6441a.size(); i++) {
                spannableString.setSpan(new C0505a(m6441a4.get(i).intValue(), this, m6382w().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), m6441a.get(i).intValue(), m6441a2.get(i).intValue(), m6441a3.get(i).intValue());
            }
            return spannableString;
        }
        return this.f1813b.getText();
    }

    /* renamed from: t */
    public CharSequence m6385t() {
        return this.f1813b.getContentDescription();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        m6452a(rect);
        sb.append("; boundsInParent: " + rect);
        m6429c(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(m6388q());
        sb.append("; className: ");
        sb.append(m6387r());
        sb.append("; text: ");
        sb.append(m6386s());
        sb.append("; contentDescription: ");
        sb.append(m6385t());
        sb.append("; viewId: ");
        sb.append(m6383v());
        sb.append("; checkable: ");
        sb.append(m6419e());
        sb.append("; checked: ");
        sb.append(m6415f());
        sb.append("; focusable: ");
        sb.append(m6411g());
        sb.append("; focused: ");
        sb.append(m6407h());
        sb.append("; selected: ");
        sb.append(m6400k());
        sb.append("; clickable: ");
        sb.append(m6398l());
        sb.append("; longClickable: ");
        sb.append(m6396m());
        sb.append("; enabled: ");
        sb.append(m6394n());
        sb.append("; password: ");
        sb.append(m6392o());
        sb.append("; scrollable: " + m6390p());
        sb.append("; [");
        int m6424d = m6424d();
        while (m6424d != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(m6424d);
            int i = m6424d & (numberOfTrailingZeros ^ (-1));
            sb.append(m6438b(numberOfTrailingZeros));
            m6424d = i;
            if (i != 0) {
                sb.append(", ");
                m6424d = i;
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: u */
    public void m6384u() {
        this.f1813b.recycle();
    }

    /* renamed from: v */
    public String m6383v() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f1813b.getViewIdResourceName();
        }
        return null;
    }

    /* renamed from: w */
    public Bundle m6382w() {
        return Build.VERSION.SDK_INT >= 19 ? this.f1813b.getExtras() : new Bundle();
    }
}
