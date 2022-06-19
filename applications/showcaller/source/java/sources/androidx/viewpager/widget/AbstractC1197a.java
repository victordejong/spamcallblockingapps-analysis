package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.viewpager.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/a.class */
public abstract class AbstractC1197a {

    /* renamed from: a */
    private final DataSetObservable f5131a = new DataSetObservable();

    /* renamed from: b */
    private DataSetObserver f5132b;

    @Deprecated
    /* renamed from: a */
    public void m30714a(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    /* renamed from: b */
    public void mo27516b(ViewGroup viewGroup, int i, Object obj) {
        m30714a(viewGroup, i, obj);
    }

    @Deprecated
    /* renamed from: c */
    public void m30713c(View view) {
    }

    /* renamed from: d */
    public void mo30712d(ViewGroup viewGroup) {
        m30713c(viewGroup);
    }

    /* renamed from: e */
    public abstract int mo25082e();

    /* renamed from: f */
    public int m30711f(Object obj) {
        return -1;
    }

    /* renamed from: g */
    public CharSequence mo25081g(int i) {
        return null;
    }

    /* renamed from: h */
    public float m30710h(int i) {
        return 1.0f;
    }

    @Deprecated
    /* renamed from: i */
    public Object m30709i(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    /* renamed from: j */
    public Object mo27515j(ViewGroup viewGroup, int i) {
        return m30709i(viewGroup, i);
    }

    /* renamed from: k */
    public abstract boolean mo27514k(View view, Object obj);

    /* renamed from: l */
    public void m30708l() {
        synchronized (this) {
            DataSetObserver dataSetObserver = this.f5132b;
            if (dataSetObserver != null) {
                dataSetObserver.onChanged();
            }
        }
        this.f5131a.notifyChanged();
    }

    /* renamed from: m */
    public void m30707m(DataSetObserver dataSetObserver) {
        this.f5131a.registerObserver(dataSetObserver);
    }

    /* renamed from: n */
    public void mo27513n(Parcelable parcelable, ClassLoader classLoader) {
    }

    /* renamed from: o */
    public Parcelable mo27512o() {
        return null;
    }

    @Deprecated
    /* renamed from: p */
    public void m30706p(View view, int i, Object obj) {
    }

    /* renamed from: q */
    public void mo30705q(ViewGroup viewGroup, int i, Object obj) {
        m30706p(viewGroup, i, obj);
    }

    /* renamed from: r */
    public void m30704r(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f5132b = dataSetObserver;
        }
    }

    @Deprecated
    /* renamed from: s */
    public void m30703s(View view) {
    }

    /* renamed from: t */
    public void mo27511t(ViewGroup viewGroup) {
        m30703s(viewGroup);
    }

    /* renamed from: u */
    public void m30702u(DataSetObserver dataSetObserver) {
        this.f5131a.unregisterObserver(dataSetObserver);
    }
}
