package p1727n3.p1807k.p1821i;

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
import androidx.core.C0122R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.p1822f0.AbstractC26591d;
import p1727n3.p1807k.p1821i.p1822f0.C26584b;
import p1727n3.p1807k.p1821i.p1822f0.C26588c;
/* renamed from: n3.k.i.a */
/* loaded from: classes-dex2jar.jar:n3/k/i/a.class */
public class C26558a {

    /* renamed from: c */
    public static final View.AccessibilityDelegate f74410c = new View.AccessibilityDelegate();

    /* renamed from: a */
    public final View.AccessibilityDelegate f74411a;

    /* renamed from: b */
    public final View.AccessibilityDelegate f74412b;

    /* renamed from: n3.k.i.a$a */
    /* loaded from: classes-dex2jar.jar:n3/k/i/a$a.class */
    public static final class C26559a extends View.AccessibilityDelegate {

        /* renamed from: a */
        public final C26558a f74413a;

        public C26559a(C26558a c26558a) {
            this.f74413a = c26558a;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f74413a.mo1683a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            C26588c mo1512b = this.f74413a.mo1512b(view);
            return mo1512b != null ? (AccessibilityNodeProvider) mo1512b.f74483a : null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f74413a.mo1511c(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            int i;
            C26584b c26584b = new C26584b(accessibilityNodeInfo);
            AtomicInteger atomicInteger = C26614s.f74505a;
            Boolean m1560d = new C26619t(C0122R.C0124id.tag_screen_reader_focusable, Boolean.class, 28).m1560d(view);
            boolean booleanValue = m1560d == null ? false : m1560d.booleanValue();
            int i2 = Build.VERSION.SDK_INT;
            boolean z = true;
            if (i2 >= 28) {
                c26584b.f74463a.setScreenReaderFocusable(booleanValue);
            } else {
                c26584b.m1618m(1, booleanValue);
            }
            Boolean m1560d2 = new C26622w(C0122R.C0124id.tag_accessibility_heading, Boolean.class, 28).m1560d(view);
            boolean booleanValue2 = m1560d2 == null ? false : m1560d2.booleanValue();
            if (i2 >= 28) {
                c26584b.f74463a.setHeading(booleanValue2);
            } else {
                c26584b.m1618m(2, booleanValue2);
            }
            CharSequence m1574g = C26614s.m1574g(view);
            if (i2 >= 28) {
                c26584b.f74463a.setPaneTitle(m1574g);
            } else {
                c26584b.f74463a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", m1574g);
            }
            CharSequence m1560d3 = new C26621v(C0122R.C0124id.tag_state_description, CharSequence.class, 64, 30).m1560d(view);
            if (i2 < 30) {
                z = false;
            }
            if (z) {
                c26584b.f74463a.setStateDescription(m1560d3);
            } else {
                c26584b.f74463a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", m1560d3);
            }
            this.f74413a.mo1510d(view, c26584b);
            CharSequence text = accessibilityNodeInfo.getText();
            if (i2 < 26) {
                c26584b.f74463a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
                c26584b.f74463a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
                c26584b.f74463a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
                c26584b.f74463a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
                SparseArray sparseArray = (SparseArray) view.getTag(C0122R.C0124id.tag_accessibility_clickable_spans);
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
                ClickableSpan[] m1625f = C26584b.m1625f(text);
                if (m1625f != null && m1625f.length > 0) {
                    c26584b.m1623h().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", C0122R.C0124id.accessibility_action_clickable_span);
                    int i5 = C0122R.C0124id.tag_accessibility_clickable_spans;
                    SparseArray sparseArray2 = (SparseArray) view.getTag(i5);
                    SparseArray sparseArray3 = sparseArray2;
                    if (sparseArray2 == null) {
                        sparseArray3 = new SparseArray();
                        view.setTag(i5, sparseArray3);
                    }
                    for (int i6 = 0; i6 < m1625f.length; i6++) {
                        ClickableSpan clickableSpan = m1625f[i6];
                        int i7 = 0;
                        while (true) {
                            if (i7 >= sparseArray3.size()) {
                                i = C26584b.f74462d;
                                C26584b.f74462d = i + 1;
                                break;
                            } else if (clickableSpan.equals((ClickableSpan) ((WeakReference) sparseArray3.valueAt(i7)).get())) {
                                i = sparseArray3.keyAt(i7);
                                break;
                            } else {
                                i7++;
                            }
                        }
                        sparseArray3.put(i, new WeakReference(m1625f[i6]));
                        ClickableSpan clickableSpan2 = m1625f[i6];
                        Spanned spanned = (Spanned) text;
                        c26584b.m1629b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan2)));
                        c26584b.m1629b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan2)));
                        c26584b.m1629b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan2)));
                        c26584b.m1629b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
                    }
                }
            }
            List list = (List) view.getTag(C0122R.C0124id.tag_accessibility_actions);
            List list2 = list;
            if (list == null) {
                list2 = Collections.emptyList();
            }
            for (int i8 = 0; i8 < list2.size(); i8++) {
                c26584b.m1630a((C26584b.C26585a) list2.get(i8));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f74413a.mo1682e(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f74413a.mo1681f(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f74413a.mo1680g(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i) {
            this.f74413a.mo1679h(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f74413a.mo1678i(view, accessibilityEvent);
        }
    }

    public C26558a() {
        this.f74411a = f74410c;
        this.f74412b = new C26559a(this);
    }

    public C26558a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f74411a = accessibilityDelegate;
        this.f74412b = new C26559a(this);
    }

    /* renamed from: a */
    public boolean mo1683a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f74411a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: b */
    public C26588c mo1512b(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.f74411a.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new C26588c(accessibilityNodeProvider);
        }
        return null;
    }

    /* renamed from: c */
    public void mo1511c(View view, AccessibilityEvent accessibilityEvent) {
        this.f74411a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: d */
    public void mo1510d(View view, C26584b c26584b) {
        this.f74411a.onInitializeAccessibilityNodeInfo(view, c26584b.f74463a);
    }

    /* renamed from: e */
    public void mo1682e(View view, AccessibilityEvent accessibilityEvent) {
        this.f74411a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: f */
    public boolean mo1681f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f74411a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    /* renamed from: g */
    public boolean mo1680g(View view, int i, Bundle bundle) {
        boolean z;
        boolean z2;
        List list = (List) view.getTag(C0122R.C0124id.tag_accessibility_actions);
        List list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        int i2 = 0;
        while (true) {
            if (i2 >= list2.size()) {
                break;
            }
            C26584b.C26585a c26585a = (C26584b.C26585a) list2.get(i2);
            if (c26585a.m1613a() != i) {
                i2++;
            } else if (c26585a.f74480d != null) {
                Class<? extends AbstractC26591d.AbstractC26592a> cls = c26585a.f74479c;
                AbstractC26591d.AbstractC26592a abstractC26592a = null;
                if (cls != null) {
                    try {
                        abstractC26592a = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                        try {
                            Objects.requireNonNull(abstractC26592a);
                        } catch (Exception e) {
                        }
                    } catch (Exception e2) {
                        abstractC26592a = null;
                    }
                }
                z = c26585a.f74480d.mo1609a(view, abstractC26592a);
            }
        }
        z = false;
        boolean z3 = z;
        if (!z) {
            z3 = this.f74411a.performAccessibilityAction(view, i, bundle);
        }
        boolean z4 = z3;
        if (!z3) {
            z4 = z3;
            if (i == C0122R.C0124id.accessibility_action_clickable_span) {
                int i3 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
                SparseArray sparseArray = (SparseArray) view.getTag(C0122R.C0124id.tag_accessibility_clickable_spans);
                boolean z5 = false;
                if (sparseArray != null) {
                    WeakReference weakReference = (WeakReference) sparseArray.get(i3);
                    z5 = false;
                    if (weakReference != null) {
                        ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
                        if (clickableSpan != null) {
                            ClickableSpan[] m1625f = C26584b.m1625f(view.createAccessibilityNodeInfo().getText());
                            for (int i4 = 0; m1625f != null && i4 < m1625f.length; i4++) {
                                if (clickableSpan.equals(m1625f[i4])) {
                                    z2 = true;
                                    break;
                                }
                            }
                        }
                        z2 = false;
                        z5 = false;
                        if (z2) {
                            clickableSpan.onClick(view);
                            z5 = true;
                        }
                    }
                }
                z4 = z5;
            }
        }
        return z4;
    }

    /* renamed from: h */
    public void mo1679h(View view, int i) {
        this.f74411a.sendAccessibilityEvent(view, i);
    }

    /* renamed from: i */
    public void mo1678i(View view, AccessibilityEvent accessibilityEvent) {
        this.f74411a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
