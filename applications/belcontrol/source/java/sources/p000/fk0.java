package p000;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import java.lang.ref.WeakReference;
/* renamed from: fk0 */
/* loaded from: classes-dex2jar.jar:fk0.class */
public class fk0 {

    /* renamed from: fk0$a */
    /* loaded from: classes-dex2jar.jar:fk0$a.class */
    public static final class RunnableC1435a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f6643a;

        /* renamed from: b */
        public final /* synthetic */ Bundle f6644b;

        public RunnableC1435a(String str, Bundle bundle) {
            this.f6643a = str;
            this.f6644b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            rj0.h(ui0.e()).g(this.f6643a, this.f6644b);
        }
    }

    /* renamed from: fk0$b */
    /* loaded from: classes-dex2jar.jar:fk0$b.class */
    public static class View$OnClickListenerC1436b implements View.OnClickListener {

        /* renamed from: a */
        public lk0 f6645a;

        /* renamed from: b */
        public WeakReference<View> f6646b;

        /* renamed from: c */
        public WeakReference<View> f6647c;

        /* renamed from: d */
        public View.OnClickListener f6648d;

        /* renamed from: f */
        public boolean f6649f;

        public View$OnClickListenerC1436b(lk0 lk0Var, View view, View view2) {
            this.f6649f = false;
            if (lk0Var == null || view == null || view2 == null) {
                return;
            }
            this.f6648d = qk0.f(view2);
            this.f6645a = lk0Var;
            this.f6646b = new WeakReference<>(view2);
            this.f6647c = new WeakReference<>(view);
            this.f6649f = true;
        }

        public /* synthetic */ View$OnClickListenerC1436b(lk0 lk0Var, View view, View view2, RunnableC1435a runnableC1435a) {
            this(lk0Var, view, view2);
        }

        /* renamed from: a */
        public boolean m1715a() {
            return this.f6649f;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            View.OnClickListener onClickListener = this.f6648d;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            if (this.f6647c.get() == null || this.f6646b.get() == null) {
                return;
            }
            fk0.m1716d(this.f6645a, this.f6647c.get(), this.f6646b.get());
        }
    }

    /* renamed from: fk0$c */
    /* loaded from: classes-dex2jar.jar:fk0$c.class */
    public static class C1437c implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public lk0 f6650a;

        /* renamed from: b */
        public WeakReference<AdapterView> f6651b;

        /* renamed from: c */
        public WeakReference<View> f6652c;

        /* renamed from: d */
        public AdapterView.OnItemClickListener f6653d;

        /* renamed from: f */
        public boolean f6654f;

        public C1437c(lk0 lk0Var, View view, AdapterView adapterView) {
            this.f6654f = false;
            if (lk0Var == null || view == null || adapterView == null) {
                return;
            }
            this.f6653d = adapterView.getOnItemClickListener();
            this.f6650a = lk0Var;
            this.f6651b = new WeakReference<>(adapterView);
            this.f6652c = new WeakReference<>(view);
            this.f6654f = true;
        }

        public /* synthetic */ C1437c(lk0 lk0Var, View view, AdapterView adapterView, RunnableC1435a runnableC1435a) {
            this(lk0Var, view, adapterView);
        }

        /* renamed from: a */
        public boolean m1714a() {
            return this.f6654f;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            AdapterView.OnItemClickListener onItemClickListener = this.f6653d;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(adapterView, view, i, j);
            }
            if (this.f6652c.get() == null || this.f6651b.get() == null) {
                return;
            }
            fk0.m1716d(this.f6650a, this.f6652c.get(), this.f6651b.get());
        }
    }

    /* renamed from: b */
    public static View$OnClickListenerC1436b m1718b(lk0 lk0Var, View view, View view2) {
        return new View$OnClickListenerC1436b(lk0Var, view, view2, null);
    }

    /* renamed from: c */
    public static C1437c m1717c(lk0 lk0Var, View view, AdapterView adapterView) {
        return new C1437c(lk0Var, view, adapterView, null);
    }

    /* renamed from: d */
    public static void m1716d(lk0 lk0Var, View view, View view2) {
        String b = lk0Var.b();
        Bundle f = hk0.f(lk0Var, view, view2);
        if (f.containsKey("_valueToSum")) {
            f.putDouble("_valueToSum", tk0.f(f.getString("_valueToSum")));
        }
        f.putString("_is_fb_codeless", "1");
        ui0.o().execute(new RunnableC1435a(b, f));
    }
}
