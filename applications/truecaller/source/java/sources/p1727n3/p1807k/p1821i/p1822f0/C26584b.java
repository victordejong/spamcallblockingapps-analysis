package p1727n3.p1807k.p1821i.p1822f0;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p1727n3.p1807k.p1821i.p1822f0.AbstractC26591d;
/* renamed from: n3.k.i.f0.b */
/* loaded from: classes-dex2jar.jar:n3/k/i/f0/b.class */
public class C26584b {

    /* renamed from: d */
    public static int f74462d;

    /* renamed from: a */
    public final AccessibilityNodeInfo f74463a;

    /* renamed from: b */
    public int f74464b = -1;

    /* renamed from: c */
    public int f74465c = -1;

    /* renamed from: n3.k.i.f0.b$a */
    /* loaded from: classes-dex2jar.jar:n3/k/i/f0/b$a.class */
    public static class C26585a {

        /* renamed from: e */
        public static final C26585a f74466e = new C26585a(1, null);

        /* renamed from: f */
        public static final C26585a f74467f = new C26585a(2, null);

        /* renamed from: g */
        public static final C26585a f74468g = new C26585a(16, null);

        /* renamed from: h */
        public static final C26585a f74469h = new C26585a(4096, null);

        /* renamed from: i */
        public static final C26585a f74470i = new C26585a(8192, null);

        /* renamed from: j */
        public static final C26585a f74471j = new C26585a(262144, null);

        /* renamed from: k */
        public static final C26585a f74472k = new C26585a(524288, null);

        /* renamed from: l */
        public static final C26585a f74473l = new C26585a(1048576, null);

        /* renamed from: m */
        public static final C26585a f74474m;

        /* renamed from: n */
        public static final C26585a f74475n;

        /* renamed from: o */
        public static final C26585a f74476o;

        /* renamed from: a */
        public final Object f74477a;

        /* renamed from: b */
        public final int f74478b;

        /* renamed from: c */
        public final Class<? extends AbstractC26591d.AbstractC26592a> f74479c;

        /* renamed from: d */
        public final AbstractC26591d f74480d;

        static {
            new AccessibilityNodeInfo.AccessibilityAction(4, null);
            new AccessibilityNodeInfo.AccessibilityAction(8, null);
            new AccessibilityNodeInfo.AccessibilityAction(32, null);
            new AccessibilityNodeInfo.AccessibilityAction(64, null);
            new AccessibilityNodeInfo.AccessibilityAction(128, null);
            new AccessibilityNodeInfo.AccessibilityAction(256, null);
            new AccessibilityNodeInfo.AccessibilityAction(512, null);
            new AccessibilityNodeInfo.AccessibilityAction(1024, null);
            new AccessibilityNodeInfo.AccessibilityAction(2048, null);
            new AccessibilityNodeInfo.AccessibilityAction(16384, null);
            new AccessibilityNodeInfo.AccessibilityAction(32768, null);
            new AccessibilityNodeInfo.AccessibilityAction(65536, null);
            new AccessibilityNodeInfo.AccessibilityAction(131072, null);
            new AccessibilityNodeInfo.AccessibilityAction(2097152, null);
            int i = Build.VERSION.SDK_INT;
            if (AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908342, null);
            }
            if (AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908343, null);
            }
            f74474m = new C26585a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, 16908344, null, null, null);
            if (AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908345, null);
            }
            f74475n = new C26585a(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, 16908346, null, null, null);
            if (AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908347, null);
            }
            if ((i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null) == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908358, null);
            }
            if ((i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null) == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908359, null);
            }
            if ((i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null) == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908360, null);
            }
            if ((i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null) == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908361, null);
            }
            if (AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908348, null);
            }
            f74476o = new C26585a(i >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, null, null, AbstractC26591d.C26593b.class);
            if ((i >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null) == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908354, null);
            }
            if ((i >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null) == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908356, null);
            }
            if ((i >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null) == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908357, null);
            }
            if ((i >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null) == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908362, null);
            }
            if ((i >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null) == null) {
                new AccessibilityNodeInfo.AccessibilityAction(16908372, null);
            }
        }

        public C26585a(int i, CharSequence charSequence) {
            this(null, i, null, null, null);
        }

        public C26585a(Object obj, int i, CharSequence charSequence, AbstractC26591d abstractC26591d, Class<? extends AbstractC26591d.AbstractC26592a> cls) {
            this.f74478b = i;
            this.f74480d = abstractC26591d;
            if (obj == null) {
                this.f74477a = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            } else {
                this.f74477a = obj;
            }
            this.f74479c = cls;
        }

        /* renamed from: a */
        public int m1613a() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f74477a).getId();
        }

        /* renamed from: b */
        public CharSequence m1612b() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f74477a).getLabel();
        }

        public boolean equals(Object obj) {
            if (obj != null && (obj instanceof C26585a)) {
                C26585a c26585a = (C26585a) obj;
                Object obj2 = this.f74477a;
                return obj2 == null ? c26585a.f74477a == null : obj2.equals(c26585a.f74477a);
            }
            return false;
        }

        public int hashCode() {
            Object obj = this.f74477a;
            return obj != null ? obj.hashCode() : 0;
        }
    }

    /* renamed from: n3.k.i.f0.b$b */
    /* loaded from: classes-dex2jar.jar:n3/k/i/f0/b$b.class */
    public static class C26586b {

        /* renamed from: a */
        public final Object f74481a;

        public C26586b(Object obj) {
            this.f74481a = obj;
        }

        /* renamed from: a */
        public static C26586b m1611a(int i, int i2, boolean z, int i3) {
            return new C26586b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3));
        }
    }

    /* renamed from: n3.k.i.f0.b$c */
    /* loaded from: classes-dex2jar.jar:n3/k/i/f0/b$c.class */
    public static class C26587c {

        /* renamed from: a */
        public final Object f74482a;

        public C26587c(Object obj) {
            this.f74482a = obj;
        }

        /* renamed from: a */
        public static C26587c m1610a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return new C26587c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
        }
    }

    public C26584b(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f74463a = accessibilityNodeInfo;
    }

    /* renamed from: c */
    public static String m1628c(int i) {
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

    /* renamed from: f */
    public static ClickableSpan[] m1625f(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    /* renamed from: a */
    public void m1630a(C26585a c26585a) {
        this.f74463a.addAction((AccessibilityNodeInfo.AccessibilityAction) c26585a.f74477a);
    }

    /* renamed from: b */
    public final List<Integer> m1629b(String str) {
        ArrayList<Integer> integerArrayList = this.f74463a.getExtras().getIntegerArrayList(str);
        ArrayList<Integer> arrayList = integerArrayList;
        if (integerArrayList == null) {
            arrayList = new ArrayList<>();
            this.f74463a.getExtras().putIntegerArrayList(str, arrayList);
        }
        return arrayList;
    }

    /* renamed from: d */
    public int m1627d() {
        return this.f74463a.getActions();
    }

    /* renamed from: e */
    public CharSequence m1626e() {
        return this.f74463a.getClassName();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C26584b)) {
            return false;
        }
        C26584b c26584b = (C26584b) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f74463a;
        if (accessibilityNodeInfo == null) {
            if (c26584b.f74463a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(c26584b.f74463a)) {
            return false;
        }
        return this.f74465c == c26584b.f74465c && this.f74464b == c26584b.f74464b;
    }

    /* renamed from: g */
    public CharSequence m1624g() {
        return this.f74463a.getContentDescription();
    }

    /* renamed from: h */
    public Bundle m1623h() {
        return this.f74463a.getExtras();
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f74463a;
        return accessibilityNodeInfo == null ? 0 : accessibilityNodeInfo.hashCode();
    }

    /* renamed from: i */
    public CharSequence m1622i() {
        if (!m1629b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty()) {
            List<Integer> m1629b = m1629b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            List<Integer> m1629b2 = m1629b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            List<Integer> m1629b3 = m1629b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            List<Integer> m1629b4 = m1629b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SpannableString spannableString = new SpannableString(TextUtils.substring(this.f74463a.getText(), 0, this.f74463a.getText().length()));
            for (int i = 0; i < m1629b.size(); i++) {
                spannableString.setSpan(new C26583a(m1629b4.get(i).intValue(), this, m1623h().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), m1629b.get(i).intValue(), m1629b2.get(i).intValue(), m1629b3.get(i).intValue());
            }
            return spannableString;
        }
        return this.f74463a.getText();
    }

    /* renamed from: j */
    public boolean m1621j() {
        return this.f74463a.isEnabled();
    }

    /* renamed from: k */
    public boolean m1620k() {
        return this.f74463a.isFocusable();
    }

    /* renamed from: l */
    public boolean m1619l(C26585a c26585a) {
        return this.f74463a.removeAction((AccessibilityNodeInfo.AccessibilityAction) c26585a.f74477a);
    }

    /* renamed from: m */
    public final void m1618m(int i, boolean z) {
        Bundle m1623h = m1623h();
        if (m1623h != null) {
            m1623h.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (z ? i : 0) | (m1623h.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1))));
        }
    }

    /* renamed from: n */
    public void m1617n(Object obj) {
        this.f74463a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((C26586b) obj).f74481a);
    }

    /* renamed from: o */
    public void m1616o(Object obj) {
        this.f74463a.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) ((C26587c) obj).f74482a);
    }

    /* renamed from: p */
    public void m1615p(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f74463a.setHintText(charSequence);
        } else {
            this.f74463a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    /* renamed from: q */
    public void m1614q(View view) {
        this.f74464b = -1;
        this.f74463a.setParent(view);
    }

    public String toString() {
        int i;
        ArrayList arrayList;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        this.f74463a.getBoundsInParent(rect);
        sb.append("; boundsInParent: " + rect);
        this.f74463a.getBoundsInScreen(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(this.f74463a.getPackageName());
        sb.append("; className: ");
        sb.append(m1626e());
        sb.append("; text: ");
        sb.append(m1622i());
        sb.append("; contentDescription: ");
        sb.append(m1624g());
        sb.append("; viewId: ");
        sb.append(this.f74463a.getViewIdResourceName());
        sb.append("; checkable: ");
        sb.append(this.f74463a.isCheckable());
        sb.append("; checked: ");
        sb.append(this.f74463a.isChecked());
        sb.append("; focusable: ");
        sb.append(m1620k());
        sb.append("; focused: ");
        sb.append(this.f74463a.isFocused());
        sb.append("; selected: ");
        sb.append(this.f74463a.isSelected());
        sb.append("; clickable: ");
        sb.append(this.f74463a.isClickable());
        sb.append("; longClickable: ");
        sb.append(this.f74463a.isLongClickable());
        sb.append("; enabled: ");
        sb.append(m1621j());
        sb.append("; password: ");
        sb.append(this.f74463a.isPassword());
        sb.append("; scrollable: " + this.f74463a.isScrollable());
        sb.append("; [");
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = this.f74463a.getActionList();
        if (actionList != null) {
            ArrayList arrayList2 = new ArrayList();
            int size = actionList.size();
            int i2 = 0;
            while (true) {
                i = 0;
                arrayList = arrayList2;
                if (i2 >= size) {
                    break;
                }
                arrayList2.add(new C26585a(actionList.get(i2), 0, null, null, null));
                i2++;
            }
        } else {
            arrayList = Collections.emptyList();
            i = 0;
        }
        while (i < arrayList.size()) {
            C26585a c26585a = (C26585a) arrayList.get(i);
            String m1628c = m1628c(c26585a.m1613a());
            String str = m1628c;
            if (m1628c.equals("ACTION_UNKNOWN")) {
                str = m1628c;
                if (c26585a.m1612b() != null) {
                    str = c26585a.m1612b().toString();
                }
            }
            sb.append(str);
            if (i != arrayList.size() - 1) {
                sb.append(", ");
            }
            i++;
        }
        sb.append("]");
        return sb.toString();
    }
}
