package androidx.core.view.a;

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
import androidx.core.a;
import androidx.core.view.a.f;
import io.objectbox.model.PropertyFlags;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:androidx/core/view/a/c.class */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    private static int f1958d;

    /* renamed from: a  reason: collision with root package name */
    public final AccessibilityNodeInfo f1959a;

    /* renamed from: b  reason: collision with root package name */
    public int f1960b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f1961c = -1;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/a/c$a.class */
    public static final class a {
        public static final a A;
        public static final a B;
        public static final a C;
        public static final a D;
        public static final a E;
        public static final a F;
        public static final a G;
        public static final a H;
        public static final a I;
        public static final a J;
        public static final a K;

        /* renamed from: a  reason: collision with root package name */
        public static final a f1962a = new a(1, null);

        /* renamed from: b  reason: collision with root package name */
        public static final a f1963b = new a(2, null);

        /* renamed from: c  reason: collision with root package name */
        public static final a f1964c = new a(4, null);

        /* renamed from: d  reason: collision with root package name */
        public static final a f1965d = new a(8, null);
        public static final a e = new a(16, null);
        public static final a f = new a(32, null);
        public static final a g = new a(64, null);
        public static final a h = new a(128, null);
        public static final a i = new a((int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL, (CharSequence) null, f.b.class);
        public static final a j = new a(512, (CharSequence) null, f.b.class);
        public static final a k = new a(1024, (CharSequence) null, f.c.class);
        public static final a l = new a(2048, (CharSequence) null, f.c.class);
        public static final a m = new a(4096, null);
        public static final a n = new a(PropertyFlags.UNSIGNED, null);
        public static final a o = new a(16384, null);
        public static final a p = new a(32768, null);
        public static final a q = new a(65536, null);
        public static final a r = new a(131072, (CharSequence) null, f.g.class);
        public static final a s = new a(262144, null);
        public static final a t = new a(524288, null);
        public static final a u = new a(1048576, null);
        public static final a v = new a(2097152, (CharSequence) null, f.h.class);
        public static final a w;
        public static final a x;
        public static final a y;
        public static final a z;
        final Object L;
        public final int M;
        public final Class<? extends f.a> N;
        protected final f O;

        static {
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction = null;
            w = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, 16908342, null, null, null);
            x = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, 16908343, null, null, f.e.class);
            y = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, null, null, null);
            z = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, 16908345, null, null, null);
            A = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, null, null, null);
            B = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, 16908347, null, null, null);
            C = new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, 16908358, null, null, null);
            D = new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, 16908359, null, null, null);
            E = new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, 16908360, null, null, null);
            F = new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, 16908361, null, null, null);
            G = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, 16908348, null, null, null);
            H = new a(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, null, null, f.C0053f.class);
            I = new a(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, 16908354, null, null, f.d.class);
            J = new a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, 16908356, null, null, null);
            if (Build.VERSION.SDK_INT >= 28) {
                accessibilityAction = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
            }
            K = new a(accessibilityAction, 16908357, null, null, null);
        }

        public a(int i2, CharSequence charSequence) {
            this(null, i2, charSequence, null, null);
        }

        public a(int i2, CharSequence charSequence, f fVar) {
            this(null, i2, charSequence, fVar, null);
        }

        private a(int i2, CharSequence charSequence, Class<? extends f.a> cls) {
            this(null, i2, charSequence, null, cls);
        }

        a(Object obj) {
            this(obj, 0, null, null, null);
        }

        public a(Object obj, int i2, CharSequence charSequence, f fVar, Class<? extends f.a> cls) {
            this.M = i2;
            this.O = fVar;
            if (Build.VERSION.SDK_INT < 21 || obj != null) {
                this.L = obj;
            } else {
                this.L = new AccessibilityNodeInfo.AccessibilityAction(i2, charSequence);
            }
            this.N = cls;
        }

        public final int a() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.L).getId();
            }
            return 0;
        }

        public final boolean a(View view, Bundle bundle) {
            if (this.O == null) {
                return false;
            }
            Class<? extends f.a> cls = this.N;
            if (cls != null) {
                try {
                    ((f.a) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0])).f1972a = bundle;
                } catch (Exception e2) {
                    Class<? extends f.a> cls2 = this.N;
                    Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: ".concat(String.valueOf(cls2 == null ? JsonReaderKt.NULL : cls2.getName())), e2);
                }
            }
            return this.O.a(view);
        }

        public final CharSequence b() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.L).getLabel();
            }
            return null;
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            Object obj2 = this.L;
            return obj2 == null ? aVar.L == null : obj2.equals(aVar.L);
        }

        public final int hashCode() {
            Object obj = this.L;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/a/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final Object f1966a;

        public b(Object obj) {
            this.f1966a = obj;
        }

        public static b a(int i, int i2, boolean z, int i3) {
            return Build.VERSION.SDK_INT >= 21 ? new b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, false, i3)) : Build.VERSION.SDK_INT >= 19 ? new b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, false)) : new b(null);
        }
    }

    /* renamed from: androidx.core.view.a.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/a/c$c.class */
    public static final class C0052c {

        /* renamed from: a  reason: collision with root package name */
        final Object f1967a;

        C0052c(Object obj) {
            this.f1967a = obj;
        }

        public static C0052c a(int i, int i2, int i3, int i4, boolean z) {
            return Build.VERSION.SDK_INT >= 21 ? new C0052c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, false, z)) : Build.VERSION.SDK_INT >= 19 ? new C0052c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, false)) : new C0052c(null);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/a/c$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final Object f1968a;

        public d(Object obj) {
            this.f1968a = obj;
        }
    }

    private c(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f1959a = accessibilityNodeInfo;
    }

    @Deprecated
    public c(Object obj) {
        this.f1959a = (AccessibilityNodeInfo) obj;
    }

    public static int a(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals(sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = f1958d;
        f1958d = i2 + 1;
        return i2;
    }

    public static c a() {
        return a(AccessibilityNodeInfo.obtain());
    }

    public static c a(View view) {
        return a(AccessibilityNodeInfo.obtain(view));
    }

    public static c a(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new c(accessibilityNodeInfo);
    }

    public static c a(c cVar) {
        return a(AccessibilityNodeInfo.obtain(cVar.f1959a));
    }

    private static String b(int i) {
        if (i == 1) {
            return "ACTION_FOCUS";
        }
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
            case PropertyFlags.INDEX_PARTIAL_SKIP_NULL /* 256 */:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case PropertyFlags.UNSIGNED /* 8192 */:
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
                            default:
                                return "ACTION_UNKNOWN";
                        }
                }
        }
    }

    public static ClickableSpan[] d(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    public static SparseArray<WeakReference<ClickableSpan>> f(View view) {
        return (SparseArray) view.getTag(a.c.tag_accessibility_clickable_spans);
    }

    private List<a> f() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = Build.VERSION.SDK_INT >= 21 ? this.f1959a.getActionList() : null;
        if (actionList == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = actionList.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(new a(actionList.get(i)));
        }
        return arrayList;
    }

    public final List<Integer> a(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f1959a.getExtras().getIntegerArrayList(str);
        ArrayList<Integer> arrayList = integerArrayList;
        if (integerArrayList == null) {
            arrayList = new ArrayList<>();
            this.f1959a.getExtras().putIntegerArrayList(str, arrayList);
        }
        return arrayList;
    }

    public final void a(int i) {
        this.f1959a.addAction(i);
    }

    public final void a(int i, boolean z) {
        Bundle e = e();
        if (e != null) {
            e.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (z ? i : 0) | (e.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1))));
        }
    }

    @Deprecated
    public final void a(Rect rect) {
        this.f1959a.getBoundsInParent(rect);
    }

    public final void a(View view, int i) {
        this.f1961c = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1959a.setSource(view, i);
        }
    }

    public final void a(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1959a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.L);
        }
    }

    public final void a(CharSequence charSequence) {
        this.f1959a.setPackageName(charSequence);
    }

    public final void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1959a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((b) obj).f1966a);
        }
    }

    public final void a(boolean z) {
        this.f1959a.setCheckable(z);
    }

    @Deprecated
    public final void b(Rect rect) {
        this.f1959a.setBoundsInParent(rect);
    }

    public final void b(View view) {
        this.f1961c = -1;
        this.f1959a.setSource(view);
    }

    public final void b(View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1959a.addChild(view, i);
        }
    }

    public final void b(CharSequence charSequence) {
        this.f1959a.setClassName(charSequence);
    }

    public final void b(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1959a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((C0052c) obj).f1967a);
        }
    }

    public final void b(boolean z) {
        this.f1959a.setFocusable(z);
    }

    public final boolean b() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f1959a.isVisibleToUser();
        }
        return false;
    }

    public final boolean b(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f1959a.removeAction((AccessibilityNodeInfo.AccessibilityAction) aVar.L);
        }
        return false;
    }

    public final void c(Rect rect) {
        this.f1959a.getBoundsInScreen(rect);
    }

    public final void c(View view) {
        this.f1959a.addChild(view);
    }

    public final void c(CharSequence charSequence) {
        this.f1959a.setText(charSequence);
    }

    public final void c(boolean z) {
        this.f1959a.setFocused(z);
    }

    public final boolean c() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f1959a.isAccessibilityFocused();
        }
        return false;
    }

    public final CharSequence d() {
        if (!(!a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty())) {
            return this.f1959a.getText();
        }
        List<Integer> a2 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List<Integer> a3 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List<Integer> a4 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List<Integer> a5 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.f1959a.getText(), 0, this.f1959a.getText().length()));
        for (int i = 0; i < a2.size(); i++) {
            spannableString.setSpan(new androidx.core.view.a.a(a5.get(i).intValue(), this, e().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), a2.get(i).intValue(), a3.get(i).intValue(), a4.get(i).intValue());
        }
        return spannableString;
    }

    public final void d(Rect rect) {
        this.f1959a.setBoundsInScreen(rect);
    }

    public final void d(View view) {
        this.f1960b = -1;
        this.f1959a.setParent(view);
    }

    public final void d(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1959a.setVisibleToUser(z);
        }
    }

    public final Bundle e() {
        return Build.VERSION.SDK_INT >= 19 ? this.f1959a.getExtras() : new Bundle();
    }

    public final void e(View view) {
        this.f1960b = -1;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1959a.setParent(view, -1);
        }
    }

    public final void e(CharSequence charSequence) {
        this.f1959a.setContentDescription(charSequence);
    }

    public final void e(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1959a.setAccessibilityFocused(z);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1959a;
        if (accessibilityNodeInfo == null) {
            if (cVar.f1959a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(cVar.f1959a)) {
            return false;
        }
        return this.f1961c == cVar.f1961c && this.f1960b == cVar.f1960b;
    }

    public final void f(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1959a.setHintText(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.f1959a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    public final void f(boolean z) {
        this.f1959a.setSelected(z);
    }

    public final void g(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1959a.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", charSequence);
        }
    }

    public final void g(boolean z) {
        this.f1959a.setClickable(z);
    }

    public final void h(boolean z) {
        this.f1959a.setLongClickable(z);
    }

    public final int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1959a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public final void i(boolean z) {
        this.f1959a.setEnabled(z);
    }

    public final void j(boolean z) {
        this.f1959a.setScrollable(z);
    }

    public final void k(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1959a.setDismissable(z);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        sb.append("; boundsInParent: ".concat(String.valueOf(rect)));
        c(rect);
        sb.append("; boundsInScreen: ".concat(String.valueOf(rect)));
        sb.append("; packageName: ");
        sb.append(this.f1959a.getPackageName());
        sb.append("; className: ");
        sb.append(this.f1959a.getClassName());
        sb.append("; text: ");
        sb.append(d());
        sb.append("; contentDescription: ");
        sb.append(this.f1959a.getContentDescription());
        sb.append("; viewId: ");
        sb.append(Build.VERSION.SDK_INT >= 18 ? this.f1959a.getViewIdResourceName() : null);
        sb.append("; checkable: ");
        sb.append(this.f1959a.isCheckable());
        sb.append("; checked: ");
        sb.append(this.f1959a.isChecked());
        sb.append("; focusable: ");
        sb.append(this.f1959a.isFocusable());
        sb.append("; focused: ");
        sb.append(this.f1959a.isFocused());
        sb.append("; selected: ");
        sb.append(this.f1959a.isSelected());
        sb.append("; clickable: ");
        sb.append(this.f1959a.isClickable());
        sb.append("; longClickable: ");
        sb.append(this.f1959a.isLongClickable());
        sb.append("; enabled: ");
        sb.append(this.f1959a.isEnabled());
        sb.append("; password: ");
        sb.append(this.f1959a.isPassword());
        sb.append("; scrollable: " + this.f1959a.isScrollable());
        sb.append("; [");
        if (Build.VERSION.SDK_INT >= 21) {
            List<a> f = f();
            for (int i = 0; i < f.size(); i++) {
                a aVar = f.get(i);
                String b2 = b(aVar.a());
                String str = b2;
                if (b2.equals("ACTION_UNKNOWN")) {
                    str = b2;
                    if (aVar.b() != null) {
                        str = aVar.b().toString();
                    }
                }
                sb.append(str);
                if (i != f.size() - 1) {
                    sb.append(", ");
                }
            }
        } else {
            int actions = this.f1959a.getActions();
            while (actions != 0) {
                int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(actions);
                int i2 = actions & (numberOfTrailingZeros ^ (-1));
                sb.append(b(numberOfTrailingZeros));
                actions = i2;
                if (i2 != 0) {
                    sb.append(", ");
                    actions = i2;
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
