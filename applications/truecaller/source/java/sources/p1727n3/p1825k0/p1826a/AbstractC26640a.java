package p1727n3.p1825k0.p1826a;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: n3.k0.a.a */
/* loaded from: classes-dex2jar.jar:n3/k0/a/a.class */
public abstract class AbstractC26640a {

    /* renamed from: a */
    public final DataSetObservable f74570a = new DataSetObservable();

    /* renamed from: b */
    public DataSetObserver f74571b;

    /* renamed from: a */
    public abstract void mo1177a(ViewGroup viewGroup, int i, Object obj);

    /* renamed from: b */
    public void mo1149b(ViewGroup viewGroup) {
    }

    /* renamed from: c */
    public abstract int mo1537c();

    /* renamed from: d */
    public CharSequence m1536d(int i) {
        return null;
    }

    /* renamed from: e */
    public float mo1535e(int i) {
        return 1.0f;
    }

    /* renamed from: f */
    public abstract Object mo1534f(ViewGroup viewGroup, int i);

    /* renamed from: g */
    public abstract boolean mo1148g(View view, Object obj);

    /* renamed from: h */
    public void m1533h() {
        synchronized (this) {
            DataSetObserver dataSetObserver = this.f74571b;
            if (dataSetObserver != null) {
                dataSetObserver.onChanged();
            }
        }
        this.f74570a.notifyChanged();
    }

    /* renamed from: i */
    public void mo1147i(Parcelable parcelable, ClassLoader classLoader) {
    }

    /* renamed from: j */
    public Parcelable mo1146j() {
        return null;
    }

    /* renamed from: k */
    public void mo1145k(ViewGroup viewGroup, int i, Object obj) {
    }

    /* renamed from: l */
    public void mo1144l(ViewGroup viewGroup) {
    }
}
