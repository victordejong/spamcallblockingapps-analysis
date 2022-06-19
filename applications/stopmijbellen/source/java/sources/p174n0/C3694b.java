package p174n0;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.gms.ads.AdRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import me.zhanghai.android.materialprogressbar.C3681R;
import p174n0.AbstractC3702d;
/* renamed from: n0.b */
/* loaded from: classes-dex2jar.jar:n0/b.class */
public class C3694b {

    /* renamed from: d */
    public static int f12069d;

    /* renamed from: a */
    public final AccessibilityNodeInfo f12070a;

    /* renamed from: b */
    public int f12071b = -1;

    /* renamed from: c */
    public int f12072c = -1;

    /* renamed from: n0.b$a */
    /* loaded from: classes-dex2jar.jar:n0/b$a.class */
    public static class C3695a {

        /* renamed from: e */
        public static final C3695a f12073e = new C3695a(1, null);

        /* renamed from: f */
        public static final C3695a f12074f = new C3695a(2, null);

        /* renamed from: g */
        public static final C3695a f12075g = new C3695a(16, null);

        /* renamed from: h */
        public static final C3695a f12076h = new C3695a(4096, null);

        /* renamed from: i */
        public static final C3695a f12077i = new C3695a(8192, null);

        /* renamed from: j */
        public static final C3695a f12078j = new C3695a(262144, null);

        /* renamed from: k */
        public static final C3695a f12079k = new C3695a(524288, null);

        /* renamed from: l */
        public static final C3695a f12080l = new C3695a(1048576, null);

        /* renamed from: m */
        public static final C3695a f12081m;

        /* renamed from: n */
        public static final C3695a f12082n;

        /* renamed from: a */
        public final Object f12083a;

        /* renamed from: b */
        public final int f12084b;

        /* renamed from: c */
        public final Class<? extends AbstractC3702d.AbstractC3703a> f12085c;

        /* renamed from: d */
        public final AbstractC3702d f12086d;

        static {
            new C3695a(4, null);
            new C3695a(8, null);
            new C3695a(32, null);
            new C3695a(64, null);
            new C3695a(128, null);
            new C3695a(256, null, AbstractC3702d.C3704b.class);
            new C3695a(AdRequest.MAX_CONTENT_URL_LENGTH, null, AbstractC3702d.C3704b.class);
            new C3695a(1024, null, AbstractC3702d.C3705c.class);
            new C3695a(2048, null, AbstractC3702d.C3705c.class);
            new C3695a(16384, null);
            new C3695a(32768, null);
            new C3695a(65536, null);
            new C3695a(131072, null, AbstractC3702d.C3709g.class);
            new C3695a(2097152, null, AbstractC3702d.C3710h.class);
            int i = Build.VERSION.SDK_INT;
            new C3695a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, 16908342, null, null, null);
            new C3695a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, 16908343, null, null, AbstractC3702d.C3707e.class);
            f12081m = new C3695a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, null, null, null);
            new C3695a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, 16908345, null, null, null);
            f12082n = new C3695a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, null, null, null);
            new C3695a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, 16908347, null, null, null);
            new C3695a(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, 16908358, null, null, null);
            new C3695a(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, 16908359, null, null, null);
            new C3695a(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, 16908360, null, null, null);
            new C3695a(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, 16908361, null, null, null);
            new C3695a(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, 16908348, null, null, null);
            new C3695a(i >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, null, null, AbstractC3702d.C3708f.class);
            new C3695a(i >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, 16908354, null, null, AbstractC3702d.C3706d.class);
            new C3695a(i >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, 16908356, null, null, null);
            new C3695a(i >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, 16908357, null, null, null);
            new C3695a(i >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, 16908362, null, null, null);
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction = null;
            if (i >= 30) {
                accessibilityAction = AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER;
            }
            new C3695a(accessibilityAction, 16908372, null, null, null);
        }

        public C3695a(int i, CharSequence charSequence) {
            this(null, i, null, null, null);
        }

        public C3695a(int i, CharSequence charSequence, Class<? extends AbstractC3702d.AbstractC3703a> cls) {
            this(null, i, null, null, cls);
        }

        public C3695a(Object obj, int i, CharSequence charSequence, AbstractC3702d abstractC3702d, Class<? extends AbstractC3702d.AbstractC3703a> cls) {
            this.f12084b = i;
            this.f12086d = abstractC3702d;
            if (obj == null) {
                this.f12083a = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            } else {
                this.f12083a = obj;
            }
            this.f12085c = cls;
        }

        /* renamed from: a */
        public int m1868a() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f12083a).getId();
        }

        /* renamed from: b */
        public CharSequence m1867b() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f12083a).getLabel();
        }

        public boolean equals(Object obj) {
            if (obj != null && (obj instanceof C3695a)) {
                C3695a c3695a = (C3695a) obj;
                Object obj2 = this.f12083a;
                return obj2 == null ? c3695a.f12083a == null : obj2.equals(c3695a.f12083a);
            }
            return false;
        }

        public int hashCode() {
            Object obj = this.f12083a;
            return obj != null ? obj.hashCode() : 0;
        }
    }

    /* renamed from: n0.b$b */
    /* loaded from: classes-dex2jar.jar:n0/b$b.class */
    public static class C3696b {

        /* renamed from: a */
        public final Object f12087a;

        public C3696b(Object obj) {
            this.f12087a = obj;
        }

        /* renamed from: a */
        public static C3696b m1866a(int i, int i2, boolean z, int i3) {
            return new C3696b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3));
        }
    }

    /* renamed from: n0.b$c */
    /* loaded from: classes-dex2jar.jar:n0/b$c.class */
    public static class C3697c {

        /* renamed from: a */
        public final Object f12088a;

        public C3697c(Object obj) {
            this.f12088a = obj;
        }

        /* renamed from: a */
        public static C3697c m1865a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return new C3697c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
        }
    }

    public C3694b(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f12070a = accessibilityNodeInfo;
    }

    /* renamed from: c */
    public static String m1881c(int i) {
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
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                    return "ACTION_LONG_CLICK";
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    return "ACTION_ACCESSIBILITY_FOCUS";
                case 128:
                    return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
                case 256:
                    return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
                case AdRequest.MAX_CONTENT_URL_LENGTH /* 512 */:
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
    public static ClickableSpan[] m1878f(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    /* renamed from: a */
    public void m1883a(C3695a c3695a) {
        this.f12070a.addAction((AccessibilityNodeInfo.AccessibilityAction) c3695a.f12083a);
    }

    /* renamed from: b */
    public final List<Integer> m1882b(String str) {
        ArrayList<Integer> integerArrayList = this.f12070a.getExtras().getIntegerArrayList(str);
        ArrayList<Integer> arrayList = integerArrayList;
        if (integerArrayList == null) {
            arrayList = new ArrayList<>();
            this.f12070a.getExtras().putIntegerArrayList(str, arrayList);
        }
        return arrayList;
    }

    /* renamed from: d */
    public int m1880d() {
        return this.f12070a.getActions();
    }

    /* renamed from: e */
    public CharSequence m1879e() {
        return this.f12070a.getClassName();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C3694b)) {
            return false;
        }
        C3694b c3694b = (C3694b) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f12070a;
        if (accessibilityNodeInfo == null) {
            if (c3694b.f12070a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(c3694b.f12070a)) {
            return false;
        }
        return this.f12072c == c3694b.f12072c && this.f12071b == c3694b.f12071b;
    }

    /* renamed from: g */
    public CharSequence m1877g() {
        return this.f12070a.getContentDescription();
    }

    /* renamed from: h */
    public Bundle m1876h() {
        return this.f12070a.getExtras();
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f12070a;
        return accessibilityNodeInfo == null ? 0 : accessibilityNodeInfo.hashCode();
    }

    /* renamed from: i */
    public CharSequence m1875i() {
        if (!m1882b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty()) {
            List<Integer> m1882b = m1882b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            List<Integer> m1882b2 = m1882b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            List<Integer> m1882b3 = m1882b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            List<Integer> m1882b4 = m1882b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SpannableString spannableString = new SpannableString(TextUtils.substring(this.f12070a.getText(), 0, this.f12070a.getText().length()));
            for (int i = 0; i < m1882b.size(); i++) {
                spannableString.setSpan(new C3693a(m1882b4.get(i).intValue(), this, m1876h().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), m1882b.get(i).intValue(), m1882b2.get(i).intValue(), m1882b3.get(i).intValue());
            }
            return spannableString;
        }
        return this.f12070a.getText();
    }

    /* renamed from: j */
    public boolean m1874j() {
        return this.f12070a.isEnabled();
    }

    /* renamed from: k */
    public final void m1873k(int i, boolean z) {
        Bundle m1876h = m1876h();
        if (m1876h != null) {
            m1876h.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (z ? i : 0) | (m1876h.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1))));
        }
    }

    /* renamed from: l */
    public void m1872l(Object obj) {
        this.f12070a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((C3696b) obj).f12087a);
    }

    /* renamed from: m */
    public void m1871m(Object obj) {
        this.f12070a.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) ((C3697c) obj).f12088a);
    }

    /* renamed from: n */
    public void m1870n(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f12070a.setHintText(charSequence);
        } else {
            this.f12070a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    /* renamed from: o */
    public void m1869o(View view) {
        this.f12071b = -1;
        this.f12070a.setParent(view);
    }

    public String toString() {
        int i;
        ArrayList arrayList;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        this.f12070a.getBoundsInParent(rect);
        sb.append("; boundsInParent: " + rect);
        this.f12070a.getBoundsInScreen(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(this.f12070a.getPackageName());
        sb.append("; className: ");
        sb.append(m1879e());
        sb.append("; text: ");
        sb.append(m1875i());
        sb.append("; contentDescription: ");
        sb.append(m1877g());
        sb.append("; viewId: ");
        sb.append(this.f12070a.getViewIdResourceName());
        sb.append("; checkable: ");
        sb.append(this.f12070a.isCheckable());
        sb.append("; checked: ");
        sb.append(this.f12070a.isChecked());
        sb.append("; focusable: ");
        sb.append(this.f12070a.isFocusable());
        sb.append("; focused: ");
        sb.append(this.f12070a.isFocused());
        sb.append("; selected: ");
        sb.append(this.f12070a.isSelected());
        sb.append("; clickable: ");
        sb.append(this.f12070a.isClickable());
        sb.append("; longClickable: ");
        sb.append(this.f12070a.isLongClickable());
        sb.append("; enabled: ");
        sb.append(m1874j());
        sb.append("; password: ");
        sb.append(this.f12070a.isPassword());
        sb.append("; scrollable: " + this.f12070a.isScrollable());
        sb.append("; [");
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = this.f12070a.getActionList();
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
                arrayList2.add(new C3695a(actionList.get(i2), 0, null, null, null));
                i2++;
            }
        } else {
            arrayList = Collections.emptyList();
            i = 0;
        }
        while (i < arrayList.size()) {
            C3695a c3695a = (C3695a) arrayList.get(i);
            String m1881c = m1881c(c3695a.m1868a());
            String str = m1881c;
            if (m1881c.equals("ACTION_UNKNOWN")) {
                str = m1881c;
                if (c3695a.m1867b() != null) {
                    str = c3695a.m1867b().toString();
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
