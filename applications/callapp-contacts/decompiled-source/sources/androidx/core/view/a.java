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
import androidx.core.a;
import androidx.core.view.a.c;
import androidx.core.view.a.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/core/view/a.class */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static final View.AccessibilityDelegate f1951b = new View.AccessibilityDelegate();

    /* renamed from: a  reason: collision with root package name */
    final View.AccessibilityDelegate f1952a;

    /* renamed from: c  reason: collision with root package name */
    private final View.AccessibilityDelegate f1953c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/a$a.class */
    public static final class C0051a extends View.AccessibilityDelegate {

        /* renamed from: a  reason: collision with root package name */
        final a f1957a;

        C0051a(a aVar) {
            this.f1957a = aVar;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f1957a.b(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            d a2 = this.f1957a.a(view);
            if (a2 != null) {
                return (AccessibilityNodeProvider) a2.f1969a;
            }
            return null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f1957a.d(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            c a2 = c.a(accessibilityNodeInfo);
            boolean H = v.H(view);
            if (Build.VERSION.SDK_INT >= 28) {
                a2.f1959a.setScreenReaderFocusable(H);
            } else {
                a2.a(1, H);
            }
            boolean J = v.J(view);
            if (Build.VERSION.SDK_INT >= 28) {
                a2.f1959a.setHeading(J);
            } else {
                a2.a(2, J);
            }
            CharSequence I = v.I(view);
            if (Build.VERSION.SDK_INT >= 28) {
                a2.f1959a.setPaneTitle(I);
            } else if (Build.VERSION.SDK_INT >= 19) {
                a2.f1959a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", I);
            }
            this.f1957a.a(view, a2);
            CharSequence text = accessibilityNodeInfo.getText();
            if (Build.VERSION.SDK_INT >= 19 && Build.VERSION.SDK_INT < 26) {
                if (Build.VERSION.SDK_INT >= 19) {
                    a2.f1959a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
                    a2.f1959a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
                    a2.f1959a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
                    a2.f1959a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
                }
                SparseArray<WeakReference<ClickableSpan>> f = c.f(view);
                if (f != null) {
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < f.size(); i++) {
                        if (f.valueAt(i).get() == null) {
                            arrayList.add(Integer.valueOf(i));
                        }
                    }
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        f.remove(((Integer) arrayList.get(i2)).intValue());
                    }
                }
                ClickableSpan[] d2 = c.d(text);
                if (d2 != null && d2.length > 0) {
                    a2.e().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", a.c.accessibility_action_clickable_span);
                    SparseArray<WeakReference<ClickableSpan>> f2 = c.f(view);
                    SparseArray<WeakReference<ClickableSpan>> sparseArray = f2;
                    if (f2 == null) {
                        sparseArray = new SparseArray<>();
                        view.setTag(a.c.tag_accessibility_clickable_spans, sparseArray);
                    }
                    for (int i3 = 0; d2 != null && i3 < d2.length; i3++) {
                        int a3 = c.a(d2[i3], sparseArray);
                        sparseArray.put(a3, new WeakReference<>(d2[i3]));
                        ClickableSpan clickableSpan = d2[i3];
                        Spanned spanned = (Spanned) text;
                        a2.a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
                        a2.a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
                        a2.a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
                        a2.a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(a3));
                    }
                }
            }
            List<c.a> b2 = a.b(view);
            for (int i4 = 0; i4 < b2.size(); i4++) {
                a2.a(b2.get(i4));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f1957a.c(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f1957a.a(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f1957a.a(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void sendAccessibilityEvent(View view, int i) {
            this.f1957a.a(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f1957a.a(view, accessibilityEvent);
        }
    }

    public a() {
        this(f1951b);
    }

    public a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f1953c = accessibilityDelegate;
        this.f1952a = new C0051a(this);
    }

    static List<c.a> b(View view) {
        List<c.a> list = (List) view.getTag(a.c.tag_accessibility_actions);
        List<c.a> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    public d a(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        if (Build.VERSION.SDK_INT < 16 || (accessibilityNodeProvider = this.f1953c.getAccessibilityNodeProvider(view)) == null) {
            return null;
        }
        return new d(accessibilityNodeProvider);
    }

    public void a(View view, int i) {
        this.f1953c.sendAccessibilityEvent(view, i);
    }

    public void a(View view, AccessibilityEvent accessibilityEvent) {
        this.f1953c.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public void a(View view, c cVar) {
        this.f1953c.onInitializeAccessibilityNodeInfo(view, cVar.f1959a);
    }

    public boolean a(View view, int i, Bundle bundle) {
        boolean z;
        boolean z2;
        List<c.a> b2 = b(view);
        int i2 = 0;
        while (true) {
            if (i2 >= b2.size()) {
                z = false;
                break;
            }
            c.a aVar = b2.get(i2);
            if (aVar.a() == i) {
                z = aVar.a(view, bundle);
                break;
            }
            i2++;
        }
        boolean z3 = z;
        if (!z) {
            z3 = z;
            if (Build.VERSION.SDK_INT >= 16) {
                z3 = this.f1953c.performAccessibilityAction(view, i, bundle);
            }
        }
        boolean z4 = z3;
        if (!z3) {
            z4 = z3;
            if (i == a.c.accessibility_action_clickable_span) {
                int i3 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
                SparseArray sparseArray = (SparseArray) view.getTag(a.c.tag_accessibility_clickable_spans);
                z4 = false;
                if (sparseArray != null) {
                    WeakReference weakReference = (WeakReference) sparseArray.get(i3);
                    z4 = false;
                    if (weakReference != null) {
                        ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
                        if (clickableSpan != null) {
                            ClickableSpan[] d2 = c.d(view.createAccessibilityNodeInfo().getText());
                            for (int i4 = 0; d2 != null && i4 < d2.length; i4++) {
                                if (clickableSpan.equals(d2[i4])) {
                                    z2 = true;
                                    break;
                                }
                            }
                        }
                        z2 = false;
                        z4 = false;
                        if (z2) {
                            clickableSpan.onClick(view);
                            z4 = true;
                        }
                    }
                }
            }
        }
        return z4;
    }

    public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f1953c.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean b(View view, AccessibilityEvent accessibilityEvent) {
        return this.f1953c.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.f1953c.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        this.f1953c.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
}
