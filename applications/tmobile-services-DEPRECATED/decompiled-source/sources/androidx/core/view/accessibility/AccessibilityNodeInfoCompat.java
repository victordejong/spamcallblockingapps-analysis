package androidx.core.view.accessibility;

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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.C0189R;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.firebase.appindexing.Indexable;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.http2.Http2;
/* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityNodeInfoCompat.class */
public class AccessibilityNodeInfoCompat {

    /* renamed from: d */
    private static int f3326d;

    /* renamed from: a */
    private final AccessibilityNodeInfo f3327a;
    @RestrictTo

    /* renamed from: b */
    public int f3328b = -1;

    /* renamed from: c */
    private int f3329c = -1;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat.class */
    public static class AccessibilityActionCompat {

        /* renamed from: e */
        public static final AccessibilityActionCompat f3330e = new AccessibilityActionCompat(1, null);

        /* renamed from: f */
        public static final AccessibilityActionCompat f3331f = new AccessibilityActionCompat(2, null);

        /* renamed from: g */
        public static final AccessibilityActionCompat f3332g = new AccessibilityActionCompat(16, null);

        /* renamed from: h */
        public static final AccessibilityActionCompat f3333h = new AccessibilityActionCompat(CodedOutputStream.DEFAULT_BUFFER_SIZE, null);

        /* renamed from: i */
        public static final AccessibilityActionCompat f3334i = new AccessibilityActionCompat(8192, null);

        /* renamed from: j */
        public static final AccessibilityActionCompat f3335j = new AccessibilityActionCompat(262144, null);

        /* renamed from: k */
        public static final AccessibilityActionCompat f3336k = new AccessibilityActionCompat(524288, null);

        /* renamed from: l */
        public static final AccessibilityActionCompat f3337l = new AccessibilityActionCompat(1048576, null);

        /* renamed from: m */
        public static final AccessibilityActionCompat f3338m;

        /* renamed from: n */
        public static final AccessibilityActionCompat f3339n;

        /* renamed from: o */
        public static final AccessibilityActionCompat f3340o;

        /* renamed from: a */
        final Object f3341a;

        /* renamed from: b */
        private final int f3342b;

        /* renamed from: c */
        private final Class<? extends AccessibilityViewCommand.CommandArguments> f3343c;
        @RestrictTo

        /* renamed from: d */
        protected final AccessibilityViewCommand f3344d;

        static {
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction = null;
            new AccessibilityActionCompat(4, null);
            new AccessibilityActionCompat(8, null);
            new AccessibilityActionCompat(32, null);
            new AccessibilityActionCompat(64, null);
            new AccessibilityActionCompat(128, null);
            new AccessibilityActionCompat(Indexable.MAX_URL_LENGTH, null, AccessibilityViewCommand.MoveAtGranularityArguments.class);
            new AccessibilityActionCompat(512, null, AccessibilityViewCommand.MoveAtGranularityArguments.class);
            new AccessibilityActionCompat(1024, null, AccessibilityViewCommand.MoveHtmlArguments.class);
            new AccessibilityActionCompat(2048, null, AccessibilityViewCommand.MoveHtmlArguments.class);
            new AccessibilityActionCompat(Http2.INITIAL_MAX_FRAME_SIZE, null);
            new AccessibilityActionCompat(32768, null);
            new AccessibilityActionCompat(65536, null);
            new AccessibilityActionCompat(131072, null, AccessibilityViewCommand.SetSelectionArguments.class);
            new AccessibilityActionCompat(2097152, null, AccessibilityViewCommand.SetTextArguments.class);
            new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, 16908342, null, null, null);
            new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, 16908343, null, null, AccessibilityViewCommand.ScrollToPositionArguments.class);
            f3338m = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, null, null, null);
            new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, 16908345, null, null, null);
            f3339n = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, null, null, null);
            new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, 16908347, null, null, null);
            new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, 16908358, null, null, null);
            new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, 16908359, null, null, null);
            new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, 16908360, null, null, null);
            new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, 16908361, null, null, null);
            new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, 16908348, null, null, null);
            f3340o = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, null, null, AccessibilityViewCommand.SetProgressArguments.class);
            new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, 16908354, null, null, AccessibilityViewCommand.MoveWindowArguments.class);
            new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, 16908356, null, null, null);
            if (Build.VERSION.SDK_INT >= 28) {
                accessibilityAction = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
            }
            new AccessibilityActionCompat(accessibilityAction, 16908357, null, null, null);
        }

        public AccessibilityActionCompat(int i, CharSequence charSequence) {
            this(null, i, charSequence, null, null);
        }

        private AccessibilityActionCompat(int i, CharSequence charSequence, Class<? extends AccessibilityViewCommand.CommandArguments> cls) {
            this(null, i, charSequence, null, cls);
        }

        AccessibilityActionCompat(Object obj) {
            this(obj, 0, null, null, null);
        }

        AccessibilityActionCompat(Object obj, int i, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand, Class<? extends AccessibilityViewCommand.CommandArguments> cls) {
            this.f3342b = i;
            this.f3344d = accessibilityViewCommand;
            if (Build.VERSION.SDK_INT < 21 || obj != null) {
                this.f3341a = obj;
            } else {
                this.f3341a = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            }
            this.f3343c = cls;
        }

        @RestrictTo
        /* renamed from: a */
        public AccessibilityActionCompat m18979a(CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            return new AccessibilityActionCompat(null, this.f3342b, charSequence, accessibilityViewCommand, this.f3343c);
        }

        /* renamed from: b */
        public int m18978b() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f3341a).getId();
            }
            return 0;
        }

        /* renamed from: c */
        public CharSequence m18977c() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f3341a).getLabel();
            }
            return null;
        }

        @RestrictTo
        /* renamed from: d */
        public boolean m18976d(View view, Bundle bundle) {
            Exception e;
            if (this.f3344d == null) {
                return false;
            }
            AccessibilityViewCommand.CommandArguments commandArguments = null;
            commandArguments = null;
            Class<? extends AccessibilityViewCommand.CommandArguments> cls = this.f3343c;
            if (cls != null) {
                try {
                    commandArguments = (AccessibilityViewCommand.CommandArguments) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception e2) {
                    e = e2;
                }
                try {
                    commandArguments.m18961a(bundle);
                } catch (Exception e3) {
                    e = e3;
                    commandArguments = commandArguments;
                    Class<? extends AccessibilityViewCommand.CommandArguments> cls2 = this.f3343c;
                    String name = cls2 == null ? "null" : cls2.getName();
                    Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: " + name, e);
                    return this.f3344d.mo10380a(view, commandArguments);
                }
            }
            return this.f3344d.mo10380a(view, commandArguments);
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == null || !(obj instanceof AccessibilityActionCompat)) {
                return false;
            }
            AccessibilityActionCompat accessibilityActionCompat = (AccessibilityActionCompat) obj;
            Object obj2 = this.f3341a;
            return obj2 == null ? accessibilityActionCompat.f3341a == null : obj2.equals(accessibilityActionCompat.f3341a);
        }

        public int hashCode() {
            Object obj = this.f3341a;
            return obj != null ? obj.hashCode() : 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat.class */
    public static class CollectionInfoCompat {

        /* renamed from: a */
        final Object f3345a;

        CollectionInfoCompat(Object obj) {
            this.f3345a = obj;
        }

        /* renamed from: a */
        public static CollectionInfoCompat m18975a(int i, int i2, boolean z) {
            return Build.VERSION.SDK_INT >= 19 ? new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new CollectionInfoCompat(null);
        }

        /* renamed from: b */
        public static CollectionInfoCompat m18974b(int i, int i2, boolean z, int i3) {
            int i4 = Build.VERSION.SDK_INT;
            return i4 >= 21 ? new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3)) : i4 >= 19 ? new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new CollectionInfoCompat(null);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat.class */
    public static class CollectionItemInfoCompat {

        /* renamed from: a */
        final Object f3346a;

        CollectionItemInfoCompat(Object obj) {
            this.f3346a = obj;
        }

        /* renamed from: a */
        public static CollectionItemInfoCompat m18973a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            int i5 = Build.VERSION.SDK_INT;
            return i5 >= 21 ? new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2)) : i5 >= 19 ? new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z)) : new CollectionItemInfoCompat(null);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat.class */
    public static class RangeInfoCompat {

        /* renamed from: a */
        final Object f3347a;

        RangeInfoCompat(Object obj) {
            this.f3347a = obj;
        }

        /* renamed from: a */
        public static RangeInfoCompat m18972a(int i, float f, float f2, float f3) {
            return Build.VERSION.SDK_INT >= 19 ? new RangeInfoCompat(AccessibilityNodeInfo.RangeInfo.obtain(i, f, f2, f3)) : new RangeInfoCompat(null);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat.class */
    public static final class TouchDelegateInfoCompat {
    }

    private AccessibilityNodeInfoCompat(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f3327a = accessibilityNodeInfo;
    }

    /* renamed from: A */
    private int m19064A(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals(sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = f3326d;
        f3326d = i2 + 1;
        return i2;
    }

    /* renamed from: G0 */
    public static AccessibilityNodeInfoCompat m19051G0(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        return new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
    }

    /* renamed from: O */
    public static AccessibilityNodeInfoCompat m19043O() {
        return m19051G0(AccessibilityNodeInfo.obtain());
    }

    /* renamed from: P */
    public static AccessibilityNodeInfoCompat m19042P(View view) {
        return m19051G0(AccessibilityNodeInfo.obtain(view));
    }

    /* renamed from: Q */
    public static AccessibilityNodeInfoCompat m19041Q(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        return m19051G0(AccessibilityNodeInfo.obtain(accessibilityNodeInfoCompat.f3327a));
    }

    /* renamed from: U */
    private void m19037U(View view) {
        SparseArray<WeakReference<ClickableSpan>> w = m18987w(view);
        if (w != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < w.size(); i++) {
                if (w.valueAt(i).get() == null) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                w.remove(((Integer) arrayList.get(i2)).intValue());
            }
        }
    }

    /* renamed from: W */
    private void m19035W(int i, boolean z) {
        Bundle s = m18995s();
        if (s != null) {
            s.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (z ? i : 0) | (s.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1))));
        }
    }

    /* renamed from: e */
    private void m19023e(ClickableSpan clickableSpan, Spanned spanned, int i) {
        m19017h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        m19017h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        m19017h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        m19017h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
    }

    /* renamed from: g */
    private void m19019g() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3327a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.f3327a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.f3327a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.f3327a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    /* renamed from: h */
    private List<Integer> m19017h(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f3327a.getExtras().getIntegerArrayList(str);
        ArrayList<Integer> arrayList = integerArrayList;
        if (integerArrayList == null) {
            arrayList = new ArrayList<>();
            this.f3327a.getExtras().putIntegerArrayList(str, arrayList);
        }
        return arrayList;
    }

    /* renamed from: j */
    private static String m19013j(int i) {
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
            case Indexable.MAX_URL_LENGTH /* 256 */:
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
            case Http2.INITIAL_MAX_FRAME_SIZE /* 16384 */:
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

    /* renamed from: l */
    private boolean m19009l(int i) {
        Bundle s = m18995s();
        boolean z = false;
        if (s == null) {
            return false;
        }
        if ((s.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i) == i) {
            z = true;
        }
        return z;
    }

    @RestrictTo
    /* renamed from: q */
    public static ClickableSpan[] m18999q(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    /* renamed from: u */
    private SparseArray<WeakReference<ClickableSpan>> m18991u(View view) {
        SparseArray<WeakReference<ClickableSpan>> w = m18987w(view);
        SparseArray<WeakReference<ClickableSpan>> sparseArray = w;
        if (w == null) {
            sparseArray = new SparseArray<>();
            view.setTag(C0189R.C0192id.tag_accessibility_clickable_spans, sparseArray);
        }
        return sparseArray;
    }

    /* renamed from: w */
    private SparseArray<WeakReference<ClickableSpan>> m18987w(View view) {
        return (SparseArray) view.getTag(C0189R.C0192id.tag_accessibility_clickable_spans);
    }

    /* renamed from: z */
    private boolean m18981z() {
        return !m19017h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    /* renamed from: A0 */
    public void m19063A0(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f3327a.setShowingHintText(z);
        } else {
            m19035W(4, z);
        }
    }

    /* renamed from: B */
    public boolean m19062B() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f3327a.isAccessibilityFocused();
        }
        return false;
    }

    /* renamed from: B0 */
    public void m19061B0(View view) {
        this.f3329c = -1;
        this.f3327a.setSource(view);
    }

    /* renamed from: C */
    public boolean m19060C() {
        return this.f3327a.isCheckable();
    }

    /* renamed from: C0 */
    public void m19059C0(View view, int i) {
        this.f3329c = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3327a.setSource(view, i);
        }
    }

    /* renamed from: D */
    public boolean m19058D() {
        return this.f3327a.isChecked();
    }

    /* renamed from: D0 */
    public void m19057D0(CharSequence charSequence) {
        this.f3327a.setText(charSequence);
    }

    /* renamed from: E */
    public boolean m19056E() {
        return this.f3327a.isClickable();
    }

    /* renamed from: E0 */
    public void m19055E0(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3327a.setVisibleToUser(z);
        }
    }

    /* renamed from: F */
    public boolean m19054F() {
        return this.f3327a.isEnabled();
    }

    /* renamed from: F0 */
    public AccessibilityNodeInfo m19053F0() {
        return this.f3327a;
    }

    /* renamed from: G */
    public boolean m19052G() {
        return this.f3327a.isFocusable();
    }

    /* renamed from: H */
    public boolean m19050H() {
        return this.f3327a.isFocused();
    }

    /* renamed from: I */
    public boolean m19049I() {
        return this.f3327a.isLongClickable();
    }

    /* renamed from: J */
    public boolean m19048J() {
        return this.f3327a.isPassword();
    }

    /* renamed from: K */
    public boolean m19047K() {
        return this.f3327a.isScrollable();
    }

    /* renamed from: L */
    public boolean m19046L() {
        return this.f3327a.isSelected();
    }

    /* renamed from: M */
    public boolean m19045M() {
        return Build.VERSION.SDK_INT >= 26 ? this.f3327a.isShowingHintText() : m19009l(4);
    }

    /* renamed from: N */
    public boolean m19044N() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f3327a.isVisibleToUser();
        }
        return false;
    }

    /* renamed from: R */
    public boolean m19040R(int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f3327a.performAction(i, bundle);
        }
        return false;
    }

    /* renamed from: S */
    public void m19039S() {
        this.f3327a.recycle();
    }

    /* renamed from: T */
    public boolean m19038T(AccessibilityActionCompat accessibilityActionCompat) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f3327a.removeAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.f3341a);
        }
        return false;
    }

    /* renamed from: V */
    public void m19036V(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3327a.setAccessibilityFocused(z);
        }
    }

    @Deprecated
    /* renamed from: X */
    public void m19034X(Rect rect) {
        this.f3327a.setBoundsInParent(rect);
    }

    /* renamed from: Y */
    public void m19033Y(Rect rect) {
        this.f3327a.setBoundsInScreen(rect);
    }

    /* renamed from: Z */
    public void m19032Z(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3327a.setCanOpenPopup(z);
        }
    }

    /* renamed from: a */
    public void m19031a(int i) {
        this.f3327a.addAction(i);
    }

    /* renamed from: a0 */
    public void m19030a0(boolean z) {
        this.f3327a.setCheckable(z);
    }

    /* renamed from: b */
    public void m19029b(AccessibilityActionCompat accessibilityActionCompat) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f3327a.addAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.f3341a);
        }
    }

    /* renamed from: b0 */
    public void m19028b0(boolean z) {
        this.f3327a.setChecked(z);
    }

    /* renamed from: c */
    public void m19027c(View view) {
        this.f3327a.addChild(view);
    }

    /* renamed from: c0 */
    public void m19026c0(CharSequence charSequence) {
        this.f3327a.setClassName(charSequence);
    }

    /* renamed from: d */
    public void m19025d(View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3327a.addChild(view, i);
        }
    }

    /* renamed from: d0 */
    public void m19024d0(boolean z) {
        this.f3327a.setClickable(z);
    }

    /* renamed from: e0 */
    public void m19022e0(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3327a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((CollectionInfoCompat) obj).f3345a);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessibilityNodeInfoCompat)) {
            return false;
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f3327a;
        if (accessibilityNodeInfo == null) {
            if (accessibilityNodeInfoCompat.f3327a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(accessibilityNodeInfoCompat.f3327a)) {
            return false;
        }
        return this.f3329c == accessibilityNodeInfoCompat.f3329c && this.f3328b == accessibilityNodeInfoCompat.f3328b;
    }

    @RestrictTo
    /* renamed from: f */
    public void m19021f(CharSequence charSequence, View view) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19 && i < 26) {
            m19019g();
            m19037U(view);
            ClickableSpan[] q = m18999q(charSequence);
            if (q != null && q.length > 0) {
                m18995s().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", C0189R.C0192id.accessibility_action_clickable_span);
                SparseArray<WeakReference<ClickableSpan>> u = m18991u(view);
                for (int i2 = 0; q != null && i2 < q.length; i2++) {
                    int A = m19064A(q[i2], u);
                    u.put(A, new WeakReference<>(q[i2]));
                    m19023e(q[i2], (Spanned) charSequence, A);
                }
            }
        }
    }

    /* renamed from: f0 */
    public void m19020f0(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3327a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((CollectionItemInfoCompat) obj).f3346a);
        }
    }

    /* renamed from: g0 */
    public void m19018g0(CharSequence charSequence) {
        this.f3327a.setContentDescription(charSequence);
    }

    /* renamed from: h0 */
    public void m19016h0(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3327a.setDismissable(z);
        }
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f3327a;
        return accessibilityNodeInfo == null ? 0 : accessibilityNodeInfo.hashCode();
    }

    /* renamed from: i */
    public List<AccessibilityActionCompat> m19015i() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = Build.VERSION.SDK_INT >= 21 ? this.f3327a.getActionList() : null;
        if (actionList == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = actionList.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(new AccessibilityActionCompat(actionList.get(i)));
        }
        return arrayList;
    }

    /* renamed from: i0 */
    public void m19014i0(boolean z) {
        this.f3327a.setEnabled(z);
    }

    /* renamed from: j0 */
    public void m19012j0(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f3327a.setError(charSequence);
        }
    }

    /* renamed from: k */
    public int m19011k() {
        return this.f3327a.getActions();
    }

    /* renamed from: k0 */
    public void m19010k0(boolean z) {
        this.f3327a.setFocusable(z);
    }

    /* renamed from: l0 */
    public void m19008l0(boolean z) {
        this.f3327a.setFocused(z);
    }

    @Deprecated
    /* renamed from: m */
    public void m19007m(Rect rect) {
        this.f3327a.getBoundsInParent(rect);
    }

    /* renamed from: m0 */
    public void m19006m0(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f3327a.setHeading(z);
        } else {
            m19035W(2, z);
        }
    }

    /* renamed from: n */
    public void m19005n(Rect rect) {
        this.f3327a.getBoundsInScreen(rect);
    }

    /* renamed from: n0 */
    public void m19004n0(@Nullable CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f3327a.setHintText(charSequence);
        } else if (i >= 19) {
            this.f3327a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    /* renamed from: o */
    public int m19003o() {
        return this.f3327a.getChildCount();
    }

    /* renamed from: o0 */
    public void m19002o0(boolean z) {
        this.f3327a.setLongClickable(z);
    }

    /* renamed from: p */
    public CharSequence m19001p() {
        return this.f3327a.getClassName();
    }

    /* renamed from: p0 */
    public void m19000p0(int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f3327a.setMaxTextLength(i);
        }
    }

    /* renamed from: q0 */
    public void m18998q0(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3327a.setMovementGranularities(i);
        }
    }

    /* renamed from: r */
    public CharSequence m18997r() {
        return this.f3327a.getContentDescription();
    }

    /* renamed from: r0 */
    public void m18996r0(CharSequence charSequence) {
        this.f3327a.setPackageName(charSequence);
    }

    /* renamed from: s */
    public Bundle m18995s() {
        return Build.VERSION.SDK_INT >= 19 ? this.f3327a.getExtras() : new Bundle();
    }

    /* renamed from: s0 */
    public void m18994s0(@Nullable CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f3327a.setPaneTitle(charSequence);
        } else if (i >= 19) {
            this.f3327a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    /* renamed from: t */
    public int m18993t() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f3327a.getMovementGranularities();
        }
        return 0;
    }

    /* renamed from: t0 */
    public void m18992t0(View view) {
        this.f3328b = -1;
        this.f3327a.setParent(view);
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        m19007m(rect);
        sb.append("; boundsInParent: " + rect);
        m19005n(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(m18989v());
        sb.append("; className: ");
        sb.append(m19001p());
        sb.append("; text: ");
        sb.append(m18985x());
        sb.append("; contentDescription: ");
        sb.append(m18997r());
        sb.append("; viewId: ");
        sb.append(m18983y());
        sb.append("; checkable: ");
        sb.append(m19060C());
        sb.append("; checked: ");
        sb.append(m19058D());
        sb.append("; focusable: ");
        sb.append(m19052G());
        sb.append("; focused: ");
        sb.append(m19050H());
        sb.append("; selected: ");
        sb.append(m19046L());
        sb.append("; clickable: ");
        sb.append(m19056E());
        sb.append("; longClickable: ");
        sb.append(m19049I());
        sb.append("; enabled: ");
        sb.append(m19054F());
        sb.append("; password: ");
        sb.append(m19048J());
        sb.append("; scrollable: " + m19047K());
        sb.append("; [");
        if (Build.VERSION.SDK_INT >= 21) {
            List<AccessibilityActionCompat> i = m19015i();
            for (int i2 = 0; i2 < i.size(); i2++) {
                AccessibilityActionCompat accessibilityActionCompat = i.get(i2);
                String j = m19013j(accessibilityActionCompat.m18978b());
                String str = j;
                if (j.equals("ACTION_UNKNOWN")) {
                    str = j;
                    if (accessibilityActionCompat.m18977c() != null) {
                        str = accessibilityActionCompat.m18977c().toString();
                    }
                }
                sb.append(str);
                if (i2 != i.size() - 1) {
                    sb.append(", ");
                }
            }
        } else {
            int k = m19011k();
            while (k != 0) {
                int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(k);
                int i3 = k & (numberOfTrailingZeros ^ (-1));
                sb.append(m19013j(numberOfTrailingZeros));
                k = i3;
                if (i3 != 0) {
                    sb.append(", ");
                    k = i3;
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: u0 */
    public void m18990u0(View view, int i) {
        this.f3328b = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3327a.setParent(view, i);
        }
    }

    /* renamed from: v */
    public CharSequence m18989v() {
        return this.f3327a.getPackageName();
    }

    /* renamed from: v0 */
    public void m18988v0(RangeInfoCompat rangeInfoCompat) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3327a.setRangeInfo((AccessibilityNodeInfo.RangeInfo) rangeInfoCompat.f3347a);
        }
    }

    /* renamed from: w0 */
    public void m18986w0(@Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3327a.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", charSequence);
        }
    }

    /* renamed from: x */
    public CharSequence m18985x() {
        if (!m18981z()) {
            return this.f3327a.getText();
        }
        List<Integer> h = m19017h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List<Integer> h2 = m19017h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List<Integer> h3 = m19017h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List<Integer> h4 = m19017h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.f3327a.getText(), 0, this.f3327a.getText().length()));
        for (int i = 0; i < h.size(); i++) {
            spannableString.setSpan(new AccessibilityClickableSpanCompat(h4.get(i).intValue(), this, m18995s().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), h.get(i).intValue(), h2.get(i).intValue(), h3.get(i).intValue());
        }
        return spannableString;
    }

    /* renamed from: x0 */
    public void m18984x0(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f3327a.setScreenReaderFocusable(z);
        } else {
            m19035W(1, z);
        }
    }

    /* renamed from: y */
    public String m18983y() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f3327a.getViewIdResourceName();
        }
        return null;
    }

    /* renamed from: y0 */
    public void m18982y0(boolean z) {
        this.f3327a.setScrollable(z);
    }

    /* renamed from: z0 */
    public void m18980z0(boolean z) {
        this.f3327a.setSelected(z);
    }
}
