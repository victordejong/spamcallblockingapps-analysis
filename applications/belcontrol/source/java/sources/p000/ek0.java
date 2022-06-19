package p000;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.EditText;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: ek0 */
/* loaded from: classes-dex2jar.jar:ek0.class */
public final class ek0 implements ViewTreeObserver.OnGlobalFocusChangeListener {

    /* renamed from: f */
    public static final Map<Integer, ek0> f6358f = new HashMap();

    /* renamed from: c */
    public WeakReference<Activity> f6361c;

    /* renamed from: a */
    public final Set<String> f6359a = new HashSet();

    /* renamed from: b */
    public final Handler f6360b = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    public AtomicBoolean f6362d = new AtomicBoolean(false);

    /* renamed from: ek0$a */
    /* loaded from: classes-dex2jar.jar:ek0$a.class */
    public class RunnableC1369a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f6363a;

        public RunnableC1369a(View view) {
            ek0.this = r4;
            this.f6363a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = this.f6363a;
            if (!(view instanceof EditText)) {
                return;
            }
            ek0.this.m2137d(view);
        }
    }

    public ek0(Activity activity) {
        this.f6361c = new WeakReference<>(activity);
    }

    /* renamed from: g */
    public static void m2134g(Activity activity) {
        ek0 ek0Var;
        int hashCode = activity.hashCode();
        Map<Integer, ek0> map = f6358f;
        if (!map.containsKey(Integer.valueOf(hashCode))) {
            ek0 ek0Var2 = new ek0(activity);
            map.put(Integer.valueOf(activity.hashCode()), ek0Var2);
            ek0Var = ek0Var2;
        } else {
            ek0Var = map.get(Integer.valueOf(hashCode));
        }
        ek0Var.m2135f();
    }

    /* renamed from: b */
    public final View m2139b() {
        Window window;
        Activity activity = this.f6361c.get();
        if (activity == null || (window = activity.getWindow()) == null) {
            return null;
        }
        return window.getDecorView().getRootView();
    }

    /* renamed from: c */
    public final void m2138c(View view) {
        m2136e(new RunnableC1369a(view));
    }

    /* renamed from: d */
    public final void m2137d(View view) {
        String trim = ((EditText) view).getText().toString().trim();
        if (trim.isEmpty() || this.f6359a.contains(trim) || trim.length() > 100) {
            return;
        }
        this.f6359a.add(trim);
        HashMap hashMap = new HashMap();
        List<String> list = null;
        ArrayList arrayList = null;
        for (dk0 dk0Var : dk0.m2513d()) {
            if (ck0.m5316e(trim, dk0Var.m2512e())) {
                List<String> list2 = list;
                if (list == null) {
                    list2 = ck0.m5320a(view);
                }
                if (!ck0.m5317d(list2, dk0Var.m2515b())) {
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        ViewGroup i = qk0.i(view);
                        if (i != null) {
                            Iterator it = qk0.b(i).iterator();
                            while (true) {
                                arrayList2 = arrayList;
                                if (!it.hasNext()) {
                                    break;
                                }
                                View view2 = (View) it.next();
                                if (view != view2) {
                                    arrayList.addAll(ck0.m5319b(view2));
                                }
                            }
                        } else {
                            list = list2;
                        }
                    }
                    list = list2;
                    arrayList = arrayList2;
                    if (ck0.m5317d(arrayList2, dk0Var.m2515b())) {
                        arrayList = arrayList2;
                    }
                }
                hashMap.put(dk0Var.m2514c(), trim);
                list = list2;
            }
        }
        xj0.m(hashMap);
    }

    /* renamed from: e */
    public final void m2136e(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            this.f6360b.post(runnable);
        }
    }

    /* renamed from: f */
    public final void m2135f() {
        View m2139b;
        if (!this.f6362d.getAndSet(true) && (m2139b = m2139b()) != null) {
            ViewTreeObserver viewTreeObserver = m2139b.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.addOnGlobalFocusChangeListener(this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public void onGlobalFocusChanged(View view, View view2) {
        if (view != null) {
            m2138c(view);
        }
        if (view2 != null) {
            m2138c(view2);
        }
    }
}
