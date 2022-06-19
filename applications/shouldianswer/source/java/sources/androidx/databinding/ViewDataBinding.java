package androidx.databinding;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.C0646b;
import androidx.databinding.p029a.C0643a;
import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0902j;
import androidx.lifecycle.AbstractC0903k;
import androidx.lifecycle.AbstractC0912r;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding.class */
public abstract class ViewDataBinding extends C0642a {

    /* renamed from: a */
    static int f2089a = Build.VERSION.SDK_INT;

    /* renamed from: c */
    private static final int f2090c = 8;

    /* renamed from: d */
    private static final boolean f2091d;

    /* renamed from: e */
    private static final AbstractC0638a f2092e;

    /* renamed from: f */
    private static final AbstractC0638a f2093f;

    /* renamed from: g */
    private static final AbstractC0638a f2094g;

    /* renamed from: h */
    private static final AbstractC0638a f2095h;

    /* renamed from: i */
    private static final C0646b.AbstractC0647a<AbstractC0653h, ViewDataBinding, Void> f2096i;

    /* renamed from: j */
    private static final ReferenceQueue<ViewDataBinding> f2097j;

    /* renamed from: k */
    private static final View.OnAttachStateChangeListener f2098k;

    /* renamed from: b */
    protected final AbstractC0650e f2099b;

    /* renamed from: l */
    private final Runnable f2100l;

    /* renamed from: m */
    private boolean f2101m;

    /* renamed from: n */
    private boolean f2102n;

    /* renamed from: o */
    private C0641d[] f2103o;

    /* renamed from: p */
    private final View f2104p;

    /* renamed from: q */
    private C0646b<AbstractC0653h, ViewDataBinding, Void> f2105q;

    /* renamed from: r */
    private boolean f2106r;

    /* renamed from: s */
    private Choreographer f2107s;

    /* renamed from: t */
    private final Choreographer.FrameCallback f2108t;

    /* renamed from: u */
    private Handler f2109u;

    /* renamed from: v */
    private ViewDataBinding f2110v;

    /* renamed from: w */
    private AbstractC0903k f2111w;

    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$OnStartListener.class */
    static class OnStartListener implements AbstractC0902j {

        /* renamed from: a */
        final WeakReference<ViewDataBinding> f2114a;

        @AbstractC0912r(m5083a = AbstractC0896g.EnumC0897a.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = this.f2114a.get();
            if (viewDataBinding != null) {
                viewDataBinding.m5877a();
            }
        }
    }

    /* renamed from: androidx.databinding.ViewDataBinding$a */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$a.class */
    private interface AbstractC0638a {
    }

    /* renamed from: androidx.databinding.ViewDataBinding$b */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$b.class */
    public static class C0639b {

        /* renamed from: a */
        public final String[][] f2115a;

        /* renamed from: b */
        public final int[][] f2116b;

        /* renamed from: c */
        public final int[][] f2117c;
    }

    /* renamed from: androidx.databinding.ViewDataBinding$c */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$c.class */
    public interface AbstractC0640c<T> {
        /* renamed from: a */
        void m5856a(T t);
    }

    /* renamed from: androidx.databinding.ViewDataBinding$d */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$d.class */
    public static class C0641d<T> extends WeakReference<ViewDataBinding> {

        /* renamed from: a */
        private final AbstractC0640c<T> f2118a;

        /* renamed from: b */
        private T f2119b;

        /* renamed from: a */
        public boolean m5855a() {
            boolean z;
            T t = this.f2119b;
            if (t != null) {
                this.f2118a.m5856a(t);
                z = true;
            } else {
                z = false;
            }
            this.f2119b = null;
            return z;
        }
    }

    static {
        f2091d = f2089a >= 16;
        f2092e = new AbstractC0638a() { // from class: androidx.databinding.ViewDataBinding.1
        };
        f2093f = new AbstractC0638a() { // from class: androidx.databinding.ViewDataBinding.2
        };
        f2094g = new AbstractC0638a() { // from class: androidx.databinding.ViewDataBinding.3
        };
        f2095h = new AbstractC0638a() { // from class: androidx.databinding.ViewDataBinding.4
        };
        f2096i = new C0646b.AbstractC0647a<AbstractC0653h, ViewDataBinding, Void>() { // from class: androidx.databinding.ViewDataBinding.5
            /* renamed from: a */
            public void mo5846a(AbstractC0653h abstractC0653h, ViewDataBinding viewDataBinding, int i, Void r7) {
                if (i == 1) {
                    if (abstractC0653h.m5836a(viewDataBinding)) {
                        return;
                    }
                    viewDataBinding.f2102n = true;
                } else if (i == 2) {
                    abstractC0653h.m5835b(viewDataBinding);
                } else if (i != 3) {
                } else {
                    abstractC0653h.m5834c(viewDataBinding);
                }
            }
        };
        f2097j = new ReferenceQueue<>();
        if (Build.VERSION.SDK_INT < 19) {
            f2098k = null;
        } else {
            f2098k = new View.OnAttachStateChangeListener() { // from class: androidx.databinding.ViewDataBinding.6
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    ViewDataBinding.m5867b(view).f2100l.run();
                    view.removeOnAttachStateChangeListener(this);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                }
            };
        }
    }

    protected ViewDataBinding(AbstractC0650e abstractC0650e, View view, int i) {
        this.f2100l = new Runnable() { // from class: androidx.databinding.ViewDataBinding.7
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    ViewDataBinding.this.f2101m = false;
                }
                ViewDataBinding.m5858i();
                if (Build.VERSION.SDK_INT < 19 || ViewDataBinding.this.f2104p.isAttachedToWindow()) {
                    ViewDataBinding.this.m5877a();
                    return;
                }
                ViewDataBinding.this.f2104p.removeOnAttachStateChangeListener(ViewDataBinding.f2098k);
                ViewDataBinding.this.f2104p.addOnAttachStateChangeListener(ViewDataBinding.f2098k);
            }
        };
        this.f2101m = false;
        this.f2102n = false;
        this.f2099b = abstractC0650e;
        this.f2103o = new C0641d[i];
        this.f2104p = view;
        if (Looper.myLooper() != null) {
            if (f2091d) {
                this.f2107s = Choreographer.getInstance();
                this.f2108t = new Choreographer.FrameCallback() { // from class: androidx.databinding.ViewDataBinding.8
                    @Override // android.view.Choreographer.FrameCallback
                    public void doFrame(long j) {
                        ViewDataBinding.this.f2100l.run();
                    }
                };
                return;
            }
            this.f2108t = null;
            this.f2109u = new Handler(Looper.myLooper());
            return;
        }
        throw new IllegalStateException("DataBinding must be created in view's UI Thread");
    }

    public ViewDataBinding(Object obj, View view, int i) {
        this(m5870a(obj), view, i);
    }

    /* renamed from: a */
    private static int m5875a(ViewGroup viewGroup, int i) {
        String str = (String) viewGroup.getChildAt(i).getTag();
        String substring = str.substring(0, str.length() - 1);
        int length = substring.length();
        int childCount = viewGroup.getChildCount();
        int i2 = i;
        int i3 = i + 1;
        while (i3 < childCount) {
            View childAt = viewGroup.getChildAt(i3);
            String str2 = childAt.getTag() instanceof String ? (String) childAt.getTag() : null;
            int i4 = i2;
            if (str2 != null) {
                i4 = i2;
                if (!str2.startsWith(substring)) {
                    continue;
                } else if (str2.length() == str.length() && str2.charAt(str2.length() - 1) == '0') {
                    return i2;
                } else {
                    i4 = i2;
                    if (m5869a(str2, length)) {
                        i4 = i3;
                    }
                }
            }
            i3++;
            i2 = i4;
        }
        return i2;
    }

    /* renamed from: a */
    private static int m5868a(String str, int i, C0639b c0639b, int i2) {
        CharSequence subSequence = str.subSequence(str.indexOf(47) + 1, str.length() - 2);
        String[] strArr = c0639b.f2115a[i2];
        int length = strArr.length;
        while (i < length) {
            if (TextUtils.equals(subSequence, strArr[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: a */
    private static AbstractC0650e m5870a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof AbstractC0650e)) {
            throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
        }
        return (AbstractC0650e) obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0220 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m5871a(androidx.databinding.AbstractC0650e r7, android.view.View r8, java.lang.Object[] r9, androidx.databinding.ViewDataBinding.C0639b r10, android.util.SparseIntArray r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.databinding.ViewDataBinding.m5871a(androidx.databinding.e, android.view.View, java.lang.Object[], androidx.databinding.ViewDataBinding$b, android.util.SparseIntArray, boolean):void");
    }

    /* renamed from: a */
    private static boolean m5869a(String str, int i) {
        int length = str.length();
        if (length == i) {
            return false;
        }
        for (int i2 = i; i2 < length; i2++) {
            if (!Character.isDigit(str.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static Object[] m5872a(AbstractC0650e abstractC0650e, View view, int i, C0639b c0639b, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i];
        m5871a(abstractC0650e, view, objArr, c0639b, sparseIntArray, true);
        return objArr;
    }

    /* renamed from: b */
    private static int m5864b(String str, int i) {
        int length = str.length();
        int i2 = 0;
        while (i < length) {
            i2 = (i2 * 10) + (str.charAt(i) - '0');
            i++;
        }
        return i2;
    }

    /* renamed from: b */
    static ViewDataBinding m5867b(View view) {
        if (view != null) {
            return (ViewDataBinding) view.getTag(C0643a.C0644a.dataBinding);
        }
        return null;
    }

    /* renamed from: h */
    private void m5859h() {
        if (this.f2106r) {
            m5862e();
        } else if (!mo1716c()) {
        } else {
            this.f2106r = true;
            this.f2102n = false;
            C0646b<AbstractC0653h, ViewDataBinding, Void> c0646b = this.f2105q;
            if (c0646b != null) {
                c0646b.m5851a(this, 1, null);
                if (this.f2102n) {
                    this.f2105q.m5851a(this, 2, null);
                }
            }
            if (!this.f2102n) {
                mo1717b();
                C0646b<AbstractC0653h, ViewDataBinding, Void> c0646b2 = this.f2105q;
                if (c0646b2 != null) {
                    c0646b2.m5851a(this, 3, null);
                }
            }
            this.f2106r = false;
        }
    }

    /* renamed from: i */
    public static void m5858i() {
        while (true) {
            Reference<? extends ViewDataBinding> poll = f2097j.poll();
            if (poll != null) {
                if (poll instanceof C0641d) {
                    ((C0641d) poll).m5855a();
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public void m5877a() {
        ViewDataBinding viewDataBinding = this.f2110v;
        if (viewDataBinding == null) {
            m5859h();
        } else {
            viewDataBinding.m5877a();
        }
    }

    /* renamed from: a */
    public void m5876a(View view) {
        view.setTag(C0643a.C0644a.dataBinding, this);
    }

    /* renamed from: b */
    protected abstract void mo1717b();

    /* renamed from: c */
    public abstract boolean mo1716c();

    /* renamed from: d */
    public View m5863d() {
        return this.f2104p;
    }

    /* renamed from: e */
    public void m5862e() {
        ViewDataBinding viewDataBinding = this.f2110v;
        if (viewDataBinding != null) {
            viewDataBinding.m5862e();
            return;
        }
        AbstractC0903k abstractC0903k = this.f2111w;
        if (abstractC0903k != null && !abstractC0903k.getLifecycle().mo5112a().m5114a(AbstractC0896g.EnumC0898b.STARTED)) {
            return;
        }
        synchronized (this) {
            if (this.f2101m) {
                return;
            }
            this.f2101m = true;
            if (f2091d) {
                this.f2107s.postFrameCallback(this.f2108t);
            } else {
                this.f2109u.post(this.f2100l);
            }
        }
    }
}
