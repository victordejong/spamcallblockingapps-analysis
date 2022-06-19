package p163m0;

import android.os.Build;
import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import com.applovin.mediation.C1564R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p174n0.C3694b;
import p174n0.C3698c;
/* renamed from: m0.a */
/* loaded from: classes-dex2jar.jar:m0/a.class */
public class C3546a {

    /* renamed from: c */
    public static final View.AccessibilityDelegate f11714c = new View.AccessibilityDelegate();

    /* renamed from: a */
    public final View.AccessibilityDelegate f11715a;

    /* renamed from: b */
    public final View.AccessibilityDelegate f11716b;

    /* renamed from: m0.a$a */
    /* loaded from: classes-dex2jar.jar:m0/a$a.class */
    public static final class C3547a extends View.AccessibilityDelegate {

        /* renamed from: a */
        public final C3546a f11717a;

        public C3547a(C3546a c3546a) {
            this.f11717a = c3546a;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f11717a.mo2196a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            C3698c mo1183b = this.f11717a.mo1183b(view);
            return mo1183b != null ? (AccessibilityNodeProvider) mo1183b.f12089a : null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f11717a.mo737c(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            Boolean bool;
            Boolean bool2;
            CharSequence charSequence;
            int i;
            C3694b c3694b = new C3694b(accessibilityNodeInfo);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 28) {
                bool = Boolean.valueOf(C3589v.C3602l.m2002d(view));
            } else {
                bool = view.getTag(2131297096);
                if (!Boolean.class.isInstance(bool)) {
                    bool = null;
                }
            }
            Boolean bool3 = (Boolean) bool;
            boolean z = bool3 != null && bool3.booleanValue();
            if (i2 >= 28) {
                accessibilityNodeInfo.setScreenReaderFocusable(z);
            } else {
                c3694b.m1873k(1, z);
            }
            if (i2 >= 28) {
                bool2 = Boolean.valueOf(C3589v.C3602l.m2003c(view));
            } else {
                bool2 = view.getTag(2131297091);
                if (!Boolean.class.isInstance(bool2)) {
                    bool2 = null;
                }
            }
            Boolean bool4 = (Boolean) bool2;
            boolean z2 = bool4 != null && bool4.booleanValue();
            if (i2 >= 28) {
                accessibilityNodeInfo.setHeading(z2);
            } else {
                c3694b.m1873k(2, z2);
            }
            CharSequence m2115i = C3589v.m2115i(view);
            if (i2 >= 28) {
                accessibilityNodeInfo.setPaneTitle(m2115i);
            } else {
                accessibilityNodeInfo.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", m2115i);
            }
            if (i2 >= 30) {
                charSequence = C3589v.C3604n.m1992a(view);
            } else {
                Object tag = view.getTag(C1564R.C1567id.tag_state_description);
                charSequence = null;
                if (CharSequence.class.isInstance(tag)) {
                    charSequence = tag;
                }
            }
            CharSequence charSequence2 = charSequence;
            if (i2 >= 30) {
                accessibilityNodeInfo.setStateDescription(charSequence2);
            } else {
                accessibilityNodeInfo.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence2);
            }
            this.f11717a.mo697d(view, c3694b);
            CharSequence text = accessibilityNodeInfo.getText();
            if (i2 < 26) {
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
                SparseArray sparseArray = (SparseArray) view.getTag(2131297090);
                if (sparseArray != null) {
                    ArrayList arrayList = new ArrayList();
                    for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                        if (((WeakReference) sparseArray.valueAt(i3)).get() == null) {
                            arrayList.add(Integer.valueOf(i3));
                        }
                    }
                    for (int i4 = 0; i4 < arrayList.size(); i4++) {
                        sparseArray.remove(((Integer) arrayList.get(i4)).intValue());
                    }
                }
                ClickableSpan[] m1878f = C3694b.m1878f(text);
                if (m1878f != null && m1878f.length > 0) {
                    c3694b.m1876h().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", 2131296271);
                    SparseArray sparseArray2 = (SparseArray) view.getTag(2131297090);
                    SparseArray sparseArray3 = sparseArray2;
                    if (sparseArray2 == null) {
                        sparseArray3 = new SparseArray();
                        view.setTag(2131297090, sparseArray3);
                    }
                    for (int i5 = 0; i5 < m1878f.length; i5++) {
                        ClickableSpan clickableSpan = m1878f[i5];
                        int i6 = 0;
                        while (true) {
                            if (i6 >= sparseArray3.size()) {
                                i = C3694b.f12069d;
                                C3694b.f12069d = i + 1;
                                break;
                            } else if (clickableSpan.equals((ClickableSpan) ((WeakReference) sparseArray3.valueAt(i6)).get())) {
                                i = sparseArray3.keyAt(i6);
                                break;
                            } else {
                                i6++;
                            }
                        }
                        sparseArray3.put(i, new WeakReference(m1878f[i5]));
                        ClickableSpan clickableSpan2 = m1878f[i5];
                        Spanned spanned = (Spanned) text;
                        c3694b.m1882b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan2)));
                        c3694b.m1882b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan2)));
                        c3694b.m1882b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan2)));
                        c3694b.m1882b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
                    }
                }
            }
            List list = (List) view.getTag(2131297089);
            List list2 = list;
            if (list == null) {
                list2 = Collections.emptyList();
            }
            for (int i7 = 0; i7 < list2.size(); i7++) {
                c3694b.m1883a((C3694b.C3695a) list2.get(i7));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f11717a.mo2195e(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f11717a.mo2194f(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f11717a.mo2193g(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i) {
            this.f11717a.mo2192h(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f11717a.mo2191i(view, accessibilityEvent);
        }
    }

    public C3546a() {
        this.f11715a = f11714c;
        this.f11716b = new C3547a(this);
    }

    public C3546a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f11715a = accessibilityDelegate;
        this.f11716b = new C3547a(this);
    }

    /* renamed from: a */
    public boolean mo2196a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f11715a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: b */
    public C3698c mo1183b(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.f11715a.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new C3698c(accessibilityNodeProvider);
        }
        return null;
    }

    /* renamed from: c */
    public void mo737c(View view, AccessibilityEvent accessibilityEvent) {
        this.f11715a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: d */
    public void mo697d(View view, C3694b c3694b) {
        this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
    }

    /* renamed from: e */
    public void mo2195e(View view, AccessibilityEvent accessibilityEvent) {
        this.f11715a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: f */
    public boolean mo2194f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f11715a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0090, code lost:
        r15 = false;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo2193g(android.view.View r6, int r7, android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p163m0.C3546a.mo2193g(android.view.View, int, android.os.Bundle):boolean");
    }

    /* renamed from: h */
    public void mo2192h(View view, int i) {
        this.f11715a.sendAccessibilityEvent(view, i);
    }

    /* renamed from: i */
    public void mo2191i(View view, AccessibilityEvent accessibilityEvent) {
        this.f11715a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
