package androidx.core.p026h.p027a;

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
import androidx.core.C0433a;
import androidx.core.p026h.p027a.AbstractC0561f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.core.h.a.c */
/* loaded from: classes-dex2jar.jar:androidx/core/h/a/c.class */
public class C0553c {

    /* renamed from: d */
    private static int f2020d = 0;

    /* renamed from: b */
    private final AccessibilityNodeInfo f2022b;

    /* renamed from: a */
    public int f2021a = -1;

    /* renamed from: c */
    private int f2023c = -1;

    /* renamed from: androidx.core.h.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/a/c$a.class */
    public static class C0554a {

        /* renamed from: A */
        public static final C0554a f2024A;

        /* renamed from: B */
        public static final C0554a f2025B;

        /* renamed from: C */
        public static final C0554a f2026C;

        /* renamed from: D */
        public static final C0554a f2027D;

        /* renamed from: E */
        public static final C0554a f2028E;

        /* renamed from: F */
        public static final C0554a f2029F;

        /* renamed from: G */
        public static final C0554a f2030G;

        /* renamed from: a */
        public static final C0554a f2031a = new C0554a(1, null);

        /* renamed from: b */
        public static final C0554a f2032b = new C0554a(2, null);

        /* renamed from: c */
        public static final C0554a f2033c = new C0554a(4, null);

        /* renamed from: d */
        public static final C0554a f2034d = new C0554a(8, null);

        /* renamed from: e */
        public static final C0554a f2035e = new C0554a(16, null);

        /* renamed from: f */
        public static final C0554a f2036f = new C0554a(32, null);

        /* renamed from: g */
        public static final C0554a f2037g = new C0554a(64, null);

        /* renamed from: h */
        public static final C0554a f2038h = new C0554a(128, null);

        /* renamed from: i */
        public static final C0554a f2039i = new C0554a(256, null, AbstractC0561f.C0563b.class);

        /* renamed from: j */
        public static final C0554a f2040j = new C0554a(512, null, AbstractC0561f.C0563b.class);

        /* renamed from: k */
        public static final C0554a f2041k = new C0554a(1024, null, AbstractC0561f.C0564c.class);

        /* renamed from: l */
        public static final C0554a f2042l = new C0554a(2048, null, AbstractC0561f.C0564c.class);

        /* renamed from: m */
        public static final C0554a f2043m = new C0554a(4096, null);

        /* renamed from: n */
        public static final C0554a f2044n = new C0554a(8192, null);

        /* renamed from: o */
        public static final C0554a f2045o = new C0554a(16384, null);

        /* renamed from: p */
        public static final C0554a f2046p = new C0554a(32768, null);

        /* renamed from: q */
        public static final C0554a f2047q = new C0554a(65536, null);

        /* renamed from: r */
        public static final C0554a f2048r = new C0554a(131072, null, AbstractC0561f.C0568g.class);

        /* renamed from: s */
        public static final C0554a f2049s = new C0554a(262144, null);

        /* renamed from: t */
        public static final C0554a f2050t = new C0554a(524288, null);

        /* renamed from: u */
        public static final C0554a f2051u = new C0554a(1048576, null);

        /* renamed from: v */
        public static final C0554a f2052v = new C0554a(2097152, null, AbstractC0561f.C0569h.class);

        /* renamed from: w */
        public static final C0554a f2053w;

        /* renamed from: x */
        public static final C0554a f2054x;

        /* renamed from: y */
        public static final C0554a f2055y;

        /* renamed from: z */
        public static final C0554a f2056z;

        /* renamed from: H */
        final Object f2057H;

        /* renamed from: I */
        protected final AbstractC0561f f2058I;

        /* renamed from: J */
        private final int f2059J;

        /* renamed from: K */
        private final CharSequence f2060K;

        /* renamed from: L */
        private final Class<? extends AbstractC0561f.AbstractC0562a> f2061L;

        static {
            f2053w = new C0554a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, 16908342, null, null, null);
            f2054x = new C0554a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, 16908343, null, null, AbstractC0561f.C0566e.class);
            f2055y = new C0554a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, null, null, null);
            f2056z = new C0554a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, 16908345, null, null, null);
            f2024A = new C0554a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, null, null, null);
            f2025B = new C0554a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, 16908347, null, null, null);
            f2026C = new C0554a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, 16908348, null, null, null);
            f2027D = new C0554a(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, null, null, AbstractC0561f.C0567f.class);
            f2028E = new C0554a(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, 16908354, null, null, AbstractC0561f.C0565d.class);
            f2029F = new C0554a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, 16908356, null, null, null);
            f2030G = new C0554a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, 16908357, null, null, null);
        }

        public C0554a(int i, CharSequence charSequence) {
            this(null, i, charSequence, null, null);
        }

        private C0554a(int i, CharSequence charSequence, Class<? extends AbstractC0561f.AbstractC0562a> cls) {
            this(null, i, charSequence, null, cls);
        }

        C0554a(Object obj, int i, CharSequence charSequence, AbstractC0561f abstractC0561f, Class<? extends AbstractC0561f.AbstractC0562a> cls) {
            this.f2059J = i;
            this.f2060K = charSequence;
            this.f2058I = abstractC0561f;
            if (Build.VERSION.SDK_INT < 21 || obj != null) {
                this.f2057H = obj;
            } else {
                this.f2057H = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            }
            this.f2061L = cls;
        }

        /* renamed from: a */
        public int m20454a() {
            return Build.VERSION.SDK_INT >= 21 ? ((AccessibilityNodeInfo.AccessibilityAction) this.f2057H).getId() : 0;
        }

        /* renamed from: a */
        public C0554a m20452a(CharSequence charSequence, AbstractC0561f abstractC0561f) {
            return new C0554a(null, this.f2059J, charSequence, abstractC0561f, this.f2061L);
        }

        /* renamed from: a */
        public boolean m20453a(View view, Bundle bundle) {
            Exception e;
            AbstractC0561f.AbstractC0562a abstractC0562a;
            boolean z = false;
            if (this.f2058I != null) {
                if (this.f2061L != null) {
                    try {
                        AbstractC0561f.AbstractC0562a newInstance = this.f2061L.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                        try {
                            newInstance.m20444a(bundle);
                            abstractC0562a = newInstance;
                        } catch (Exception e2) {
                            abstractC0562a = newInstance;
                            e = e2;
                            Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: " + (this.f2061L == null ? "null" : this.f2061L.getName()), e);
                            z = this.f2058I.mo3522a(view, abstractC0562a);
                            return z;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        abstractC0562a = null;
                    }
                } else {
                    abstractC0562a = null;
                }
                z = this.f2058I.mo3522a(view, abstractC0562a);
            }
            return z;
        }
    }

    /* renamed from: androidx.core.h.a.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/a/c$b.class */
    public static class C0555b {

        /* renamed from: a */
        final Object f2062a;

        C0555b(Object obj) {
            this.f2062a = obj;
        }

        /* renamed from: a */
        public static C0555b m20451a(int i, int i2, boolean z, int i3) {
            return Build.VERSION.SDK_INT >= 21 ? new C0555b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3)) : Build.VERSION.SDK_INT >= 19 ? new C0555b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new C0555b(null);
        }
    }

    /* renamed from: androidx.core.h.a.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/a/c$c.class */
    public static class C0556c {

        /* renamed from: a */
        final Object f2063a;

        C0556c(Object obj) {
            this.f2063a = obj;
        }

        /* renamed from: a */
        public static C0556c m20450a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return Build.VERSION.SDK_INT >= 21 ? new C0556c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2)) : Build.VERSION.SDK_INT >= 19 ? new C0556c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z)) : new C0556c(null);
        }
    }

    private C0553c(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f2022b = accessibilityNodeInfo;
    }

    /* renamed from: a */
    private int m20520a(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        int i;
        if (sparseArray != null) {
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                if (clickableSpan.equals(sparseArray.valueAt(i2).get())) {
                    i = sparseArray.keyAt(i2);
                    break;
                }
            }
        }
        i = f2020d;
        f2020d = i + 1;
        return i;
    }

    /* renamed from: a */
    public static C0553c m20519a(View view) {
        return m20517a(AccessibilityNodeInfo.obtain(view));
    }

    /* renamed from: a */
    public static C0553c m20517a(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new C0553c(accessibilityNodeInfo);
    }

    /* renamed from: a */
    public static C0553c m20515a(C0553c c0553c) {
        return m20517a(AccessibilityNodeInfo.obtain(c0553c.f2022b));
    }

    /* renamed from: a */
    private List<Integer> m20511a(String str) {
        ArrayList<Integer> arrayList;
        if (Build.VERSION.SDK_INT < 19) {
            arrayList = new ArrayList<>();
        } else {
            ArrayList<Integer> integerArrayList = this.f2022b.getExtras().getIntegerArrayList(str);
            arrayList = integerArrayList;
            if (integerArrayList == null) {
                arrayList = new ArrayList<>();
                this.f2022b.getExtras().putIntegerArrayList(str, arrayList);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m20523a(int i, boolean z) {
        Bundle m20458u = m20458u();
        if (m20458u != null) {
            m20458u.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (m20458u.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1))) | (z ? i : 0));
        }
    }

    /* renamed from: a */
    private void m20521a(ClickableSpan clickableSpan, Spanned spanned, int i) {
        m20511a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        m20511a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        m20511a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        m20511a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
    }

    /* renamed from: b */
    public static C0553c m20509b() {
        return m20517a(AccessibilityNodeInfo.obtain());
    }

    /* renamed from: b */
    private boolean m20508b(int i) {
        boolean z = false;
        Bundle m20458u = m20458u();
        if (m20458u != null && (m20458u.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i) == i) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    private SparseArray<WeakReference<ClickableSpan>> m20498c(View view) {
        SparseArray<WeakReference<ClickableSpan>> m20492d = m20492d(view);
        SparseArray sparseArray = m20492d;
        if (m20492d == null) {
            sparseArray = new SparseArray();
            view.setTag(C0433a.C0436c.tag_accessibility_clickable_spans, sparseArray);
        }
        return sparseArray;
    }

    /* renamed from: c */
    private static String m20500c(int i) {
        String str;
        switch (i) {
            case 1:
                str = "ACTION_FOCUS";
                break;
            case 2:
                str = "ACTION_CLEAR_FOCUS";
                break;
            case 4:
                str = "ACTION_SELECT";
                break;
            case 8:
                str = "ACTION_CLEAR_SELECTION";
                break;
            case 16:
                str = "ACTION_CLICK";
                break;
            case 32:
                str = "ACTION_LONG_CLICK";
                break;
            case 64:
                str = "ACTION_ACCESSIBILITY_FOCUS";
                break;
            case 128:
                str = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
                break;
            case 256:
                str = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
                break;
            case 512:
                str = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
                break;
            case 1024:
                str = "ACTION_NEXT_HTML_ELEMENT";
                break;
            case 2048:
                str = "ACTION_PREVIOUS_HTML_ELEMENT";
                break;
            case 4096:
                str = "ACTION_SCROLL_FORWARD";
                break;
            case 8192:
                str = "ACTION_SCROLL_BACKWARD";
                break;
            case 16384:
                str = "ACTION_COPY";
                break;
            case 32768:
                str = "ACTION_PASTE";
                break;
            case 65536:
                str = "ACTION_CUT";
                break;
            case 131072:
                str = "ACTION_SET_SELECTION";
                break;
            default:
                str = "ACTION_UNKNOWN";
                break;
        }
        return str;
    }

    /* renamed from: d */
    private SparseArray<WeakReference<ClickableSpan>> m20492d(View view) {
        return (SparseArray) view.getTag(C0433a.C0436c.tag_accessibility_clickable_spans);
    }

    /* renamed from: d */
    public static ClickableSpan[] m20491d(CharSequence charSequence) {
        return charSequence instanceof Spanned ? (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class) : null;
    }

    /* renamed from: e */
    private void m20488e(View view) {
        int i;
        SparseArray<WeakReference<ClickableSpan>> m20492d = m20492d(view);
        if (m20492d != null) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (true) {
                if (i2 < m20492d.size()) {
                    if (m20492d.valueAt(i2).get() == null) {
                        arrayList.add(Integer.valueOf(i2));
                    }
                    i2++;
                }
            }
            for (i = 0; i < arrayList.size(); i++) {
                m20492d.remove(((Integer) arrayList.get(i)).intValue());
            }
        }
    }

    /* renamed from: w */
    private boolean m20456w() {
        return !m20511a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    /* renamed from: x */
    private void m20455x() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2022b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.f2022b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.f2022b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.f2022b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    /* renamed from: a */
    public AccessibilityNodeInfo m20526a() {
        return this.f2022b;
    }

    /* renamed from: a */
    public void m20525a(int i) {
        this.f2022b.addAction(i);
    }

    /* renamed from: a */
    public void m20522a(Rect rect) {
        this.f2022b.getBoundsInParent(rect);
    }

    /* renamed from: a */
    public void m20518a(View view, int i) {
        this.f2023c = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2022b.setSource(view, i);
        }
    }

    /* renamed from: a */
    public void m20516a(C0554a c0554a) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f2022b.addAction((AccessibilityNodeInfo.AccessibilityAction) c0554a.f2057H);
        }
    }

    /* renamed from: a */
    public void m20514a(CharSequence charSequence) {
        this.f2022b.setPackageName(charSequence);
    }

    /* renamed from: a */
    public void m20513a(CharSequence charSequence, View view) {
        if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 26) {
            return;
        }
        m20455x();
        m20488e(view);
        ClickableSpan[] m20491d = m20491d(charSequence);
        if (m20491d == null || m20491d.length <= 0) {
            return;
        }
        m20458u().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", C0433a.C0436c.accessibility_action_clickable_span);
        SparseArray<WeakReference<ClickableSpan>> m20498c = m20498c(view);
        for (int i = 0; m20491d != null && i < m20491d.length; i++) {
            int m20520a = m20520a(m20491d[i], m20498c);
            m20498c.put(m20520a, new WeakReference<>(m20491d[i]));
            m20521a(m20491d[i], (Spanned) charSequence, m20520a);
        }
    }

    /* renamed from: a */
    public void m20512a(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2022b.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((C0555b) obj).f2062a);
        }
    }

    /* renamed from: a */
    public void m20510a(boolean z) {
        this.f2022b.setCheckable(z);
    }

    /* renamed from: a */
    public boolean m20524a(int i, Bundle bundle) {
        return Build.VERSION.SDK_INT >= 16 ? this.f2022b.performAction(i, bundle) : false;
    }

    /* renamed from: b */
    public void m20507b(Rect rect) {
        this.f2022b.setBoundsInParent(rect);
    }

    /* renamed from: b */
    public void m20506b(View view) {
        this.f2021a = -1;
        this.f2022b.setParent(view);
    }

    /* renamed from: b */
    public void m20505b(View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2022b.addChild(view, i);
        }
    }

    /* renamed from: b */
    public void m20504b(CharSequence charSequence) {
        this.f2022b.setClassName(charSequence);
    }

    /* renamed from: b */
    public void m20503b(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2022b.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((C0556c) obj).f2063a);
        }
    }

    /* renamed from: b */
    public void m20502b(boolean z) {
        this.f2022b.setChecked(z);
    }

    /* renamed from: c */
    public int m20501c() {
        return this.f2022b.getChildCount();
    }

    /* renamed from: c */
    public void m20499c(Rect rect) {
        this.f2022b.getBoundsInScreen(rect);
    }

    /* renamed from: c */
    public void m20497c(View view, int i) {
        this.f2021a = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2022b.setParent(view, i);
        }
    }

    /* renamed from: c */
    public void m20496c(CharSequence charSequence) {
        this.f2022b.setText(charSequence);
    }

    /* renamed from: c */
    public void m20495c(boolean z) {
        this.f2022b.setFocusable(z);
    }

    /* renamed from: d */
    public int m20494d() {
        return this.f2022b.getActions();
    }

    /* renamed from: d */
    public void m20493d(Rect rect) {
        this.f2022b.setBoundsInScreen(rect);
    }

    /* renamed from: d */
    public void m20490d(boolean z) {
        this.f2022b.setFocused(z);
    }

    /* renamed from: e */
    public void m20487e(CharSequence charSequence) {
        this.f2022b.setContentDescription(charSequence);
    }

    /* renamed from: e */
    public void m20486e(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2022b.setVisibleToUser(z);
        }
    }

    /* renamed from: e */
    public boolean m20489e() {
        return this.f2022b.isCheckable();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L9
        L7:
            r0 = r5
            return r0
        L9:
            r0 = r4
            if (r0 != 0) goto L12
            r0 = 0
            r5 = r0
            goto L7
        L12:
            r0 = r3
            java.lang.Class r0 = r0.getClass()
            r1 = r4
            java.lang.Class r1 = r1.getClass()
            if (r0 == r1) goto L22
            r0 = 0
            r5 = r0
            goto L7
        L22:
            r0 = r4
            androidx.core.h.a.c r0 = (androidx.core.p026h.p027a.C0553c) r0
            r4 = r0
            r0 = r3
            android.view.accessibility.AccessibilityNodeInfo r0 = r0.f2022b
            if (r0 != 0) goto L3a
            r0 = r4
            android.view.accessibility.AccessibilityNodeInfo r0 = r0.f2022b
            if (r0 == 0) goto L4d
            r0 = 0
            r5 = r0
            goto L7
        L3a:
            r0 = r3
            android.view.accessibility.AccessibilityNodeInfo r0 = r0.f2022b
            r1 = r4
            android.view.accessibility.AccessibilityNodeInfo r1 = r1.f2022b
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L4d
            r0 = 0
            r5 = r0
            goto L7
        L4d:
            r0 = r3
            int r0 = r0.f2023c
            r1 = r4
            int r1 = r1.f2023c
            if (r0 == r1) goto L5d
            r0 = 0
            r5 = r0
            goto L7
        L5d:
            r0 = r3
            int r0 = r0.f2021a
            r1 = r4
            int r1 = r1.f2021a
            if (r0 == r1) goto L7
            r0 = 0
            r5 = r0
            goto L7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.p026h.p027a.C0553c.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public void m20484f(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2022b.setHintText(charSequence);
        } else if (Build.VERSION.SDK_INT < 19) {
        } else {
            this.f2022b.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    /* renamed from: f */
    public void m20483f(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2022b.setAccessibilityFocused(z);
        }
    }

    /* renamed from: f */
    public boolean m20485f() {
        return this.f2022b.isChecked();
    }

    /* renamed from: g */
    public void m20481g(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f2022b.setError(charSequence);
        }
    }

    /* renamed from: g */
    public void m20480g(boolean z) {
        this.f2022b.setClickable(z);
    }

    /* renamed from: g */
    public boolean m20482g() {
        return this.f2022b.isFocusable();
    }

    /* renamed from: h */
    public void m20478h(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2022b.setPaneTitle(charSequence);
        } else if (Build.VERSION.SDK_INT < 19) {
        } else {
            this.f2022b.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    /* renamed from: h */
    public void m20477h(boolean z) {
        this.f2022b.setEnabled(z);
    }

    /* renamed from: h */
    public boolean m20479h() {
        return this.f2022b.isFocused();
    }

    public int hashCode() {
        return this.f2022b == null ? 0 : this.f2022b.hashCode();
    }

    /* renamed from: i */
    public void m20475i(boolean z) {
        this.f2022b.setScrollable(z);
    }

    /* renamed from: i */
    public boolean m20476i() {
        return this.f2022b.isSelected();
    }

    /* renamed from: j */
    public void m20473j(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2022b.setContentInvalid(z);
        }
    }

    /* renamed from: j */
    public boolean m20474j() {
        return this.f2022b.isClickable();
    }

    /* renamed from: k */
    public void m20471k(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2022b.setDismissable(z);
        }
    }

    /* renamed from: k */
    public boolean m20472k() {
        return this.f2022b.isLongClickable();
    }

    /* renamed from: l */
    public void m20469l(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2022b.setScreenReaderFocusable(z);
        } else {
            m20523a(1, z);
        }
    }

    /* renamed from: l */
    public boolean m20470l() {
        return this.f2022b.isEnabled();
    }

    /* renamed from: m */
    public void m20467m(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2022b.setShowingHintText(z);
        } else {
            m20523a(4, z);
        }
    }

    /* renamed from: m */
    public boolean m20468m() {
        return this.f2022b.isPassword();
    }

    /* renamed from: n */
    public void m20465n(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2022b.setHeading(z);
        } else {
            m20523a(2, z);
        }
    }

    /* renamed from: n */
    public boolean m20466n() {
        return this.f2022b.isScrollable();
    }

    /* renamed from: o */
    public CharSequence m20464o() {
        return this.f2022b.getPackageName();
    }

    /* renamed from: p */
    public CharSequence m20463p() {
        return this.f2022b.getClassName();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* renamed from: q */
    public CharSequence m20462q() {
        SpannableString text;
        if (m20456w()) {
            List<Integer> m20511a = m20511a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            List<Integer> m20511a2 = m20511a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            List<Integer> m20511a3 = m20511a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            List<Integer> m20511a4 = m20511a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            text = new SpannableString(TextUtils.substring(this.f2022b.getText(), 0, this.f2022b.getText().length()));
            for (int i = 0; i < m20511a.size(); i++) {
                text.setSpan(new C0551a(m20511a4.get(i).intValue(), this, m20458u().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), m20511a.get(i).intValue(), m20511a2.get(i).intValue(), m20511a3.get(i).intValue());
            }
        } else {
            text = this.f2022b.getText();
        }
        return text;
    }

    /* renamed from: r */
    public CharSequence m20461r() {
        return this.f2022b.getContentDescription();
    }

    /* renamed from: s */
    public void m20460s() {
        this.f2022b.recycle();
    }

    /* renamed from: t */
    public String m20459t() {
        return Build.VERSION.SDK_INT >= 18 ? this.f2022b.getViewIdResourceName() : null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        m20522a(rect);
        sb.append("; boundsInParent: " + rect);
        m20499c(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ").append(m20464o());
        sb.append("; className: ").append(m20463p());
        sb.append("; text: ").append(m20462q());
        sb.append("; contentDescription: ").append(m20461r());
        sb.append("; viewId: ").append(m20459t());
        sb.append("; checkable: ").append(m20489e());
        sb.append("; checked: ").append(m20485f());
        sb.append("; focusable: ").append(m20482g());
        sb.append("; focused: ").append(m20479h());
        sb.append("; selected: ").append(m20476i());
        sb.append("; clickable: ").append(m20474j());
        sb.append("; longClickable: ").append(m20472k());
        sb.append("; enabled: ").append(m20470l());
        sb.append("; password: ").append(m20468m());
        sb.append("; scrollable: " + m20466n());
        sb.append("; [");
        int m20494d = m20494d();
        while (m20494d != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(m20494d);
            int i = m20494d & (numberOfTrailingZeros ^ (-1));
            sb.append(m20500c(numberOfTrailingZeros));
            m20494d = i;
            if (i != 0) {
                sb.append(", ");
                m20494d = i;
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: u */
    public Bundle m20458u() {
        return Build.VERSION.SDK_INT >= 19 ? this.f2022b.getExtras() : new Bundle();
    }

    /* renamed from: v */
    public boolean m20457v() {
        return Build.VERSION.SDK_INT >= 26 ? this.f2022b.isShowingHintText() : m20508b(4);
    }
}
