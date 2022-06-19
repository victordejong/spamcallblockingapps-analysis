package androidx.core.view.p038a;

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
import androidx.core.C0707a;
import androidx.core.view.p038a.AbstractC0878f;
import io.objectbox.model.PropertyFlags;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: androidx.core.view.a.c */
/* loaded from: classes-dex2jar.jar:androidx/core/view/a/c.class */
public final class C0869c {

    /* renamed from: d */
    private static int f3643d;

    /* renamed from: a */
    public final AccessibilityNodeInfo f3644a;

    /* renamed from: b */
    public int f3645b = -1;

    /* renamed from: c */
    private int f3646c = -1;

    /* renamed from: androidx.core.view.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/a/c$a.class */
    public static final class C0870a {

        /* renamed from: A */
        public static final C0870a f3647A;

        /* renamed from: B */
        public static final C0870a f3648B;

        /* renamed from: C */
        public static final C0870a f3649C;

        /* renamed from: D */
        public static final C0870a f3650D;

        /* renamed from: E */
        public static final C0870a f3651E;

        /* renamed from: F */
        public static final C0870a f3652F;

        /* renamed from: G */
        public static final C0870a f3653G;

        /* renamed from: H */
        public static final C0870a f3654H;

        /* renamed from: I */
        public static final C0870a f3655I;

        /* renamed from: J */
        public static final C0870a f3656J;

        /* renamed from: K */
        public static final C0870a f3657K;

        /* renamed from: a */
        public static final C0870a f3658a = new C0870a(1, null);

        /* renamed from: b */
        public static final C0870a f3659b = new C0870a(2, null);

        /* renamed from: c */
        public static final C0870a f3660c = new C0870a(4, null);

        /* renamed from: d */
        public static final C0870a f3661d = new C0870a(8, null);

        /* renamed from: e */
        public static final C0870a f3662e = new C0870a(16, null);

        /* renamed from: f */
        public static final C0870a f3663f = new C0870a(32, null);

        /* renamed from: g */
        public static final C0870a f3664g = new C0870a(64, null);

        /* renamed from: h */
        public static final C0870a f3665h = new C0870a(128, null);

        /* renamed from: i */
        public static final C0870a f3666i = new C0870a((int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL, (CharSequence) null, AbstractC0878f.C0880b.class);

        /* renamed from: j */
        public static final C0870a f3667j = new C0870a(512, (CharSequence) null, AbstractC0878f.C0880b.class);

        /* renamed from: k */
        public static final C0870a f3668k = new C0870a(1024, (CharSequence) null, AbstractC0878f.C0881c.class);

        /* renamed from: l */
        public static final C0870a f3669l = new C0870a(2048, (CharSequence) null, AbstractC0878f.C0881c.class);

        /* renamed from: m */
        public static final C0870a f3670m = new C0870a(4096, null);

        /* renamed from: n */
        public static final C0870a f3671n = new C0870a(PropertyFlags.UNSIGNED, null);

        /* renamed from: o */
        public static final C0870a f3672o = new C0870a(16384, null);

        /* renamed from: p */
        public static final C0870a f3673p = new C0870a(32768, null);

        /* renamed from: q */
        public static final C0870a f3674q = new C0870a(65536, null);

        /* renamed from: r */
        public static final C0870a f3675r = new C0870a(131072, (CharSequence) null, AbstractC0878f.C0885g.class);

        /* renamed from: s */
        public static final C0870a f3676s = new C0870a(262144, null);

        /* renamed from: t */
        public static final C0870a f3677t = new C0870a(524288, null);

        /* renamed from: u */
        public static final C0870a f3678u = new C0870a(1048576, null);

        /* renamed from: v */
        public static final C0870a f3679v = new C0870a(2097152, (CharSequence) null, AbstractC0878f.C0886h.class);

        /* renamed from: w */
        public static final C0870a f3680w;

        /* renamed from: x */
        public static final C0870a f3681x;

        /* renamed from: y */
        public static final C0870a f3682y;

        /* renamed from: z */
        public static final C0870a f3683z;

        /* renamed from: L */
        final Object f3684L;

        /* renamed from: M */
        public final int f3685M;

        /* renamed from: N */
        public final Class<? extends AbstractC0878f.AbstractC0879a> f3686N;

        /* renamed from: O */
        protected final AbstractC0878f f3687O;

        static {
            f3680w = new C0870a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, 16908342, null, null, null);
            f3681x = new C0870a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, 16908343, null, null, AbstractC0878f.C0883e.class);
            f3682y = new C0870a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, null, null, null);
            f3683z = new C0870a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, 16908345, null, null, null);
            f3647A = new C0870a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, null, null, null);
            f3648B = new C0870a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, 16908347, null, null, null);
            f3649C = new C0870a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, 16908358, null, null, null);
            f3650D = new C0870a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, 16908359, null, null, null);
            f3651E = new C0870a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, 16908360, null, null, null);
            f3652F = new C0870a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, 16908361, null, null, null);
            f3653G = new C0870a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, 16908348, null, null, null);
            f3654H = new C0870a(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, null, null, AbstractC0878f.C0884f.class);
            f3655I = new C0870a(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, 16908354, null, null, AbstractC0878f.C0882d.class);
            f3656J = new C0870a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, 16908356, null, null, null);
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction = null;
            if (Build.VERSION.SDK_INT >= 28) {
                accessibilityAction = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
            }
            f3657K = new C0870a(accessibilityAction, 16908357, null, null, null);
        }

        public C0870a(int i, CharSequence charSequence) {
            this(null, i, charSequence, null, null);
        }

        public C0870a(int i, CharSequence charSequence, AbstractC0878f abstractC0878f) {
            this(null, i, charSequence, abstractC0878f, null);
        }

        private C0870a(int i, CharSequence charSequence, Class<? extends AbstractC0878f.AbstractC0879a> cls) {
            this(null, i, charSequence, null, cls);
        }

        C0870a(Object obj) {
            this(obj, 0, null, null, null);
        }

        public C0870a(Object obj, int i, CharSequence charSequence, AbstractC0878f abstractC0878f, Class<? extends AbstractC0878f.AbstractC0879a> cls) {
            this.f3685M = i;
            this.f3687O = abstractC0878f;
            if (Build.VERSION.SDK_INT < 21 || obj != null) {
                this.f3684L = obj;
            } else {
                this.f3684L = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            }
            this.f3686N = cls;
        }

        /* renamed from: a */
        public final int m44238a() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f3684L).getId();
            }
            return 0;
        }

        /* renamed from: a */
        public final boolean m44237a(View view, Bundle bundle) {
            if (this.f3687O != null) {
                Class<? extends AbstractC0878f.AbstractC0879a> cls = this.f3686N;
                if (cls != null) {
                    try {
                        cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]).f3694a = bundle;
                    } catch (Exception e) {
                        Class<? extends AbstractC0878f.AbstractC0879a> cls2 = this.f3686N;
                        Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: ".concat(String.valueOf(cls2 == null ? JsonReaderKt.NULL : cls2.getName())), e);
                    }
                }
                return this.f3687O.mo11089a(view);
            }
            return false;
        }

        /* renamed from: b */
        public final CharSequence m44236b() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f3684L).getLabel();
            }
            return null;
        }

        public final boolean equals(Object obj) {
            if (obj != null && (obj instanceof C0870a)) {
                C0870a c0870a = (C0870a) obj;
                Object obj2 = this.f3684L;
                return obj2 == null ? c0870a.f3684L == null : obj2.equals(c0870a.f3684L);
            }
            return false;
        }

        public final int hashCode() {
            Object obj = this.f3684L;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }
    }

    /* renamed from: androidx.core.view.a.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/a/c$b.class */
    public static final class C0871b {

        /* renamed from: a */
        final Object f3688a;

        public C0871b(Object obj) {
            this.f3688a = obj;
        }

        /* renamed from: a */
        public static C0871b m44235a(int i, int i2, boolean z, int i3) {
            return Build.VERSION.SDK_INT >= 21 ? new C0871b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, false, i3)) : Build.VERSION.SDK_INT >= 19 ? new C0871b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, false)) : new C0871b(null);
        }
    }

    /* renamed from: androidx.core.view.a.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/a/c$c.class */
    public static final class C0872c {

        /* renamed from: a */
        final Object f3689a;

        C0872c(Object obj) {
            this.f3689a = obj;
        }

        /* renamed from: a */
        public static C0872c m44234a(int i, int i2, int i3, int i4, boolean z) {
            return Build.VERSION.SDK_INT >= 21 ? new C0872c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, false, z)) : Build.VERSION.SDK_INT >= 19 ? new C0872c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, false)) : new C0872c(null);
        }
    }

    /* renamed from: androidx.core.view.a.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/a/c$d.class */
    public static final class C0873d {

        /* renamed from: a */
        public final Object f3690a;

        public C0873d(Object obj) {
            this.f3690a = obj;
        }
    }

    private C0869c(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f3644a = accessibilityNodeInfo;
    }

    @Deprecated
    public C0869c(Object obj) {
        this.f3644a = (AccessibilityNodeInfo) obj;
    }

    /* renamed from: a */
    public static int m44281a(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals(sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = f3643d;
        f3643d = i2 + 1;
        return i2;
    }

    /* renamed from: a */
    public static C0869c m44285a() {
        return m44278a(AccessibilityNodeInfo.obtain());
    }

    /* renamed from: a */
    public static C0869c m44280a(View view) {
        return m44278a(AccessibilityNodeInfo.obtain(view));
    }

    /* renamed from: a */
    public static C0869c m44278a(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new C0869c(accessibilityNodeInfo);
    }

    /* renamed from: a */
    public static C0869c m44276a(C0869c c0869c) {
        return m44278a(AccessibilityNodeInfo.obtain(c0869c.f3644a));
    }

    /* renamed from: b */
    private static String m44270b(int i) {
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
        return "ACTION_FOCUS";
    }

    /* renamed from: d */
    public static ClickableSpan[] m44254d(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    /* renamed from: f */
    public static SparseArray<WeakReference<ClickableSpan>> m44247f(View view) {
        return (SparseArray) view.getTag(C0707a.C0710c.tag_accessibility_clickable_spans);
    }

    /* renamed from: f */
    private List<C0870a> m44248f() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = Build.VERSION.SDK_INT >= 21 ? this.f3644a.getActionList() : null;
        if (actionList != null) {
            ArrayList arrayList = new ArrayList();
            int size = actionList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(new C0870a(actionList.get(i)));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    /* renamed from: a */
    public final List<Integer> m44273a(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f3644a.getExtras().getIntegerArrayList(str);
        ArrayList<Integer> arrayList = integerArrayList;
        if (integerArrayList == null) {
            arrayList = new ArrayList<>();
            this.f3644a.getExtras().putIntegerArrayList(str, arrayList);
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m44284a(int i) {
        this.f3644a.addAction(i);
    }

    /* renamed from: a */
    public final void m44283a(int i, boolean z) {
        Bundle m44252e = m44252e();
        if (m44252e != null) {
            m44252e.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (z ? i : 0) | (m44252e.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1))));
        }
    }

    @Deprecated
    /* renamed from: a */
    public final void m44282a(Rect rect) {
        this.f3644a.getBoundsInParent(rect);
    }

    /* renamed from: a */
    public final void m44279a(View view, int i) {
        this.f3646c = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3644a.setSource(view, i);
        }
    }

    /* renamed from: a */
    public final void m44277a(C0870a c0870a) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f3644a.addAction((AccessibilityNodeInfo.AccessibilityAction) c0870a.f3684L);
        }
    }

    /* renamed from: a */
    public final void m44275a(CharSequence charSequence) {
        this.f3644a.setPackageName(charSequence);
    }

    /* renamed from: a */
    public final void m44274a(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3644a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((C0871b) obj).f3688a);
        }
    }

    /* renamed from: a */
    public final void m44272a(boolean z) {
        this.f3644a.setCheckable(z);
    }

    @Deprecated
    /* renamed from: b */
    public final void m44269b(Rect rect) {
        this.f3644a.setBoundsInParent(rect);
    }

    /* renamed from: b */
    public final void m44268b(View view) {
        this.f3646c = -1;
        this.f3644a.setSource(view);
    }

    /* renamed from: b */
    public final void m44267b(View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3644a.addChild(view, i);
        }
    }

    /* renamed from: b */
    public final void m44265b(CharSequence charSequence) {
        this.f3644a.setClassName(charSequence);
    }

    /* renamed from: b */
    public final void m44264b(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3644a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((C0872c) obj).f3689a);
        }
    }

    /* renamed from: b */
    public final void m44263b(boolean z) {
        this.f3644a.setFocusable(z);
    }

    /* renamed from: b */
    public final boolean m44271b() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f3644a.isVisibleToUser();
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m44266b(C0870a c0870a) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f3644a.removeAction((AccessibilityNodeInfo.AccessibilityAction) c0870a.f3684L);
        }
        return false;
    }

    /* renamed from: c */
    public final void m44261c(Rect rect) {
        this.f3644a.getBoundsInScreen(rect);
    }

    /* renamed from: c */
    public final void m44260c(View view) {
        this.f3644a.addChild(view);
    }

    /* renamed from: c */
    public final void m44259c(CharSequence charSequence) {
        this.f3644a.setText(charSequence);
    }

    /* renamed from: c */
    public final void m44258c(boolean z) {
        this.f3644a.setFocused(z);
    }

    /* renamed from: c */
    public final boolean m44262c() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f3644a.isAccessibilityFocused();
        }
        return false;
    }

    /* renamed from: d */
    public final CharSequence m44257d() {
        if (!m44273a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty()) {
            List<Integer> m44273a = m44273a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            List<Integer> m44273a2 = m44273a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            List<Integer> m44273a3 = m44273a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            List<Integer> m44273a4 = m44273a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SpannableString spannableString = new SpannableString(TextUtils.substring(this.f3644a.getText(), 0, this.f3644a.getText().length()));
            for (int i = 0; i < m44273a.size(); i++) {
                spannableString.setSpan(new C0867a(m44273a4.get(i).intValue(), this, m44252e().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), m44273a.get(i).intValue(), m44273a2.get(i).intValue(), m44273a3.get(i).intValue());
            }
            return spannableString;
        }
        return this.f3644a.getText();
    }

    /* renamed from: d */
    public final void m44256d(Rect rect) {
        this.f3644a.setBoundsInScreen(rect);
    }

    /* renamed from: d */
    public final void m44255d(View view) {
        this.f3645b = -1;
        this.f3644a.setParent(view);
    }

    /* renamed from: d */
    public final void m44253d(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3644a.setVisibleToUser(z);
        }
    }

    /* renamed from: e */
    public final Bundle m44252e() {
        return Build.VERSION.SDK_INT >= 19 ? this.f3644a.getExtras() : new Bundle();
    }

    /* renamed from: e */
    public final void m44251e(View view) {
        this.f3645b = -1;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3644a.setParent(view, -1);
        }
    }

    /* renamed from: e */
    public final void m44250e(CharSequence charSequence) {
        this.f3644a.setContentDescription(charSequence);
    }

    /* renamed from: e */
    public final void m44249e(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3644a.setAccessibilityFocused(z);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C0869c)) {
            return false;
        }
        C0869c c0869c = (C0869c) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f3644a;
        if (accessibilityNodeInfo == null) {
            if (c0869c.f3644a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(c0869c.f3644a)) {
            return false;
        }
        return this.f3646c == c0869c.f3646c && this.f3645b == c0869c.f3645b;
    }

    /* renamed from: f */
    public final void m44246f(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f3644a.setHintText(charSequence);
        } else if (Build.VERSION.SDK_INT < 19) {
        } else {
            this.f3644a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    /* renamed from: f */
    public final void m44245f(boolean z) {
        this.f3644a.setSelected(z);
    }

    /* renamed from: g */
    public final void m44244g(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3644a.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", charSequence);
        }
    }

    /* renamed from: g */
    public final void m44243g(boolean z) {
        this.f3644a.setClickable(z);
    }

    /* renamed from: h */
    public final void m44242h(boolean z) {
        this.f3644a.setLongClickable(z);
    }

    public final int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f3644a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    /* renamed from: i */
    public final void m44241i(boolean z) {
        this.f3644a.setEnabled(z);
    }

    /* renamed from: j */
    public final void m44240j(boolean z) {
        this.f3644a.setScrollable(z);
    }

    /* renamed from: k */
    public final void m44239k(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3644a.setDismissable(z);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        m44282a(rect);
        sb.append("; boundsInParent: ".concat(String.valueOf(rect)));
        m44261c(rect);
        sb.append("; boundsInScreen: ".concat(String.valueOf(rect)));
        sb.append("; packageName: ");
        sb.append(this.f3644a.getPackageName());
        sb.append("; className: ");
        sb.append(this.f3644a.getClassName());
        sb.append("; text: ");
        sb.append(m44257d());
        sb.append("; contentDescription: ");
        sb.append(this.f3644a.getContentDescription());
        sb.append("; viewId: ");
        sb.append(Build.VERSION.SDK_INT >= 18 ? this.f3644a.getViewIdResourceName() : null);
        sb.append("; checkable: ");
        sb.append(this.f3644a.isCheckable());
        sb.append("; checked: ");
        sb.append(this.f3644a.isChecked());
        sb.append("; focusable: ");
        sb.append(this.f3644a.isFocusable());
        sb.append("; focused: ");
        sb.append(this.f3644a.isFocused());
        sb.append("; selected: ");
        sb.append(this.f3644a.isSelected());
        sb.append("; clickable: ");
        sb.append(this.f3644a.isClickable());
        sb.append("; longClickable: ");
        sb.append(this.f3644a.isLongClickable());
        sb.append("; enabled: ");
        sb.append(this.f3644a.isEnabled());
        sb.append("; password: ");
        sb.append(this.f3644a.isPassword());
        sb.append("; scrollable: " + this.f3644a.isScrollable());
        sb.append("; [");
        if (Build.VERSION.SDK_INT >= 21) {
            List<C0870a> m44248f = m44248f();
            for (int i = 0; i < m44248f.size(); i++) {
                C0870a c0870a = m44248f.get(i);
                String m44270b = m44270b(c0870a.m44238a());
                String str = m44270b;
                if (m44270b.equals("ACTION_UNKNOWN")) {
                    str = m44270b;
                    if (c0870a.m44236b() != null) {
                        str = c0870a.m44236b().toString();
                    }
                }
                sb.append(str);
                if (i != m44248f.size() - 1) {
                    sb.append(", ");
                }
            }
        } else {
            int actions = this.f3644a.getActions();
            while (actions != 0) {
                int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(actions);
                int i2 = actions & (numberOfTrailingZeros ^ (-1));
                sb.append(m44270b(numberOfTrailingZeros));
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
