package androidx.core.view;

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
import androidx.core.C0707a;
import androidx.core.view.p038a.C0869c;
import androidx.core.view.p038a.C0874d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.core.view.a */
/* loaded from: classes-dex2jar.jar:androidx/core/view/a.class */
public class C0865a {

    /* renamed from: b */
    private static final View.AccessibilityDelegate f3636b = new View.AccessibilityDelegate();

    /* renamed from: a */
    final View.AccessibilityDelegate f3637a;

    /* renamed from: c */
    private final View.AccessibilityDelegate f3638c;

    /* renamed from: androidx.core.view.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/a$a.class */
    public static final class C0866a extends View.AccessibilityDelegate {

        /* renamed from: a */
        final C0865a f3639a;

        C0866a(C0865a c0865a) {
            this.f3639a = c0865a;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f3639a.mo40050b(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            C0874d mo40053a = this.f3639a.mo40053a(view);
            if (mo40053a != null) {
                return (AccessibilityNodeProvider) mo40053a.f3691a;
            }
            return null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f3639a.mo10621d(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            C0869c m44278a = C0869c.m44278a(accessibilityNodeInfo);
            boolean m44151H = C0926v.m44151H(view);
            if (Build.VERSION.SDK_INT >= 28) {
                m44278a.f3644a.setScreenReaderFocusable(m44151H);
            } else {
                m44278a.m44283a(1, m44151H);
            }
            boolean m44149J = C0926v.m44149J(view);
            if (Build.VERSION.SDK_INT >= 28) {
                m44278a.f3644a.setHeading(m44149J);
            } else {
                m44278a.m44283a(2, m44149J);
            }
            CharSequence m44150I = C0926v.m44150I(view);
            if (Build.VERSION.SDK_INT >= 28) {
                m44278a.f3644a.setPaneTitle(m44150I);
            } else if (Build.VERSION.SDK_INT >= 19) {
                m44278a.f3644a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", m44150I);
            }
            this.f3639a.mo9886a(view, m44278a);
            CharSequence text = accessibilityNodeInfo.getText();
            if (Build.VERSION.SDK_INT >= 19 && Build.VERSION.SDK_INT < 26) {
                if (Build.VERSION.SDK_INT >= 19) {
                    m44278a.f3644a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
                    m44278a.f3644a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
                    m44278a.f3644a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
                    m44278a.f3644a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
                }
                SparseArray<WeakReference<ClickableSpan>> m44247f = C0869c.m44247f(view);
                if (m44247f != null) {
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < m44247f.size(); i++) {
                        if (m44247f.valueAt(i).get() == null) {
                            arrayList.add(Integer.valueOf(i));
                        }
                    }
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        m44247f.remove(((Integer) arrayList.get(i2)).intValue());
                    }
                }
                ClickableSpan[] m44254d = C0869c.m44254d(text);
                if (m44254d != null && m44254d.length > 0) {
                    m44278a.m44252e().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", C0707a.C0710c.accessibility_action_clickable_span);
                    SparseArray<WeakReference<ClickableSpan>> m44247f2 = C0869c.m44247f(view);
                    SparseArray<WeakReference<ClickableSpan>> sparseArray = m44247f2;
                    if (m44247f2 == null) {
                        sparseArray = new SparseArray<>();
                        view.setTag(C0707a.C0710c.tag_accessibility_clickable_spans, sparseArray);
                    }
                    for (int i3 = 0; m44254d != null && i3 < m44254d.length; i3++) {
                        int m44281a = C0869c.m44281a(m44254d[i3], sparseArray);
                        sparseArray.put(m44281a, new WeakReference<>(m44254d[i3]));
                        ClickableSpan clickableSpan = m44254d[i3];
                        Spanned spanned = (Spanned) text;
                        m44278a.m44273a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
                        m44278a.m44273a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
                        m44278a.m44273a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
                        m44278a.m44273a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(m44281a));
                    }
                }
            }
            List<C0869c.C0870a> m44287b = C0865a.m44287b(view);
            for (int i4 = 0; i4 < m44287b.size(); i4++) {
                m44278a.m44277a(m44287b.get(i4));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f3639a.mo9962c(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f3639a.mo39917a(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f3639a.mo10179a(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void sendAccessibilityEvent(View view, int i) {
            this.f3639a.mo40052a(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f3639a.mo40051a(view, accessibilityEvent);
        }
    }

    public C0865a() {
        this(f3636b);
    }

    public C0865a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f3638c = accessibilityDelegate;
        this.f3637a = new C0866a(this);
    }

    /* renamed from: b */
    static List<C0869c.C0870a> m44287b(View view) {
        List<C0869c.C0870a> list = (List) view.getTag(C0707a.C0710c.tag_accessibility_actions);
        List<C0869c.C0870a> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: a */
    public C0874d mo40053a(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        if (Build.VERSION.SDK_INT < 16 || (accessibilityNodeProvider = this.f3638c.getAccessibilityNodeProvider(view)) == null) {
            return null;
        }
        return new C0874d(accessibilityNodeProvider);
    }

    /* renamed from: a */
    public void mo40052a(View view, int i) {
        this.f3638c.sendAccessibilityEvent(view, i);
    }

    /* renamed from: a */
    public void mo40051a(View view, AccessibilityEvent accessibilityEvent) {
        this.f3638c.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    /* renamed from: a */
    public void mo9886a(View view, C0869c c0869c) {
        this.f3638c.onInitializeAccessibilityNodeInfo(view, c0869c.f3644a);
    }

    /* renamed from: a */
    public boolean mo10179a(View view, int i, Bundle bundle) {
        boolean z;
        boolean z2;
        List<C0869c.C0870a> m44287b = m44287b(view);
        int i2 = 0;
        while (true) {
            if (i2 >= m44287b.size()) {
                z = false;
                break;
            }
            C0869c.C0870a c0870a = m44287b.get(i2);
            if (c0870a.m44238a() == i) {
                z = c0870a.m44237a(view, bundle);
                break;
            }
            i2++;
        }
        boolean z3 = z;
        if (!z) {
            z3 = z;
            if (Build.VERSION.SDK_INT >= 16) {
                z3 = this.f3638c.performAccessibilityAction(view, i, bundle);
            }
        }
        boolean z4 = z3;
        if (!z3) {
            z4 = z3;
            if (i == C0707a.C0710c.accessibility_action_clickable_span) {
                int i3 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
                SparseArray sparseArray = (SparseArray) view.getTag(C0707a.C0710c.tag_accessibility_clickable_spans);
                boolean z5 = false;
                if (sparseArray != null) {
                    WeakReference weakReference = (WeakReference) sparseArray.get(i3);
                    z5 = false;
                    if (weakReference != null) {
                        ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
                        if (clickableSpan != null) {
                            ClickableSpan[] m44254d = C0869c.m44254d(view.createAccessibilityNodeInfo().getText());
                            for (int i4 = 0; m44254d != null && i4 < m44254d.length; i4++) {
                                if (clickableSpan.equals(m44254d[i4])) {
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

    /* renamed from: a */
    public boolean mo39917a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f3638c.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    /* renamed from: b */
    public boolean mo40050b(View view, AccessibilityEvent accessibilityEvent) {
        return this.f3638c.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: c */
    public void mo9962c(View view, AccessibilityEvent accessibilityEvent) {
        this.f3638c.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: d */
    public void mo10621d(View view, AccessibilityEvent accessibilityEvent) {
        this.f3638c.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
}
