package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.viewpager.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/a.class */
public abstract class AbstractC0533a {

    /* renamed from: a */
    private final DataSetObservable f2879a = new DataSetObservable();

    @Deprecated
    /* renamed from: a */
    public void m11874a(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    /* renamed from: b */
    public void mo67b(ViewGroup viewGroup, int i, Object obj) {
        m11874a(viewGroup, i, obj);
        throw null;
    }

    @Deprecated
    /* renamed from: c */
    public void m11873c(View view) {
    }

    /* renamed from: d */
    public void m11872d(ViewGroup viewGroup) {
        m11873c(viewGroup);
    }

    /* renamed from: e */
    public abstract int mo66e();

    /* renamed from: f */
    public int m11871f(Object obj) {
        return -1;
    }

    /* renamed from: g */
    public CharSequence m11870g(int i) {
        return null;
    }

    /* renamed from: h */
    public float m11869h(int i) {
        return 1.0f;
    }

    @Deprecated
    /* renamed from: i */
    public Object m11868i(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    /* renamed from: j */
    public Object mo65j(ViewGroup viewGroup, int i) {
        m11868i(viewGroup, i);
        throw null;
    }

    /* renamed from: k */
    public abstract boolean mo64k(View view, Object obj);

    /* renamed from: l */
    public void m11867l(DataSetObserver dataSetObserver) {
        this.f2879a.registerObserver(dataSetObserver);
    }

    /* renamed from: m */
    public void m11866m(Parcelable parcelable, ClassLoader classLoader) {
    }

    /* renamed from: n */
    public Parcelable m11865n() {
        return null;
    }

    @Deprecated
    /* renamed from: o */
    public void m11864o(View view, int i, Object obj) {
    }

    /* renamed from: p */
    public void m11863p(ViewGroup viewGroup, int i, Object obj) {
        m11864o(viewGroup, i, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m11862q(DataSetObserver dataSetObserver) {
        synchronized (this) {
        }
    }

    @Deprecated
    /* renamed from: r */
    public void m11861r(View view) {
    }

    /* renamed from: s */
    public void m11860s(ViewGroup viewGroup) {
        m11861r(viewGroup);
    }

    /* renamed from: t */
    public void m11859t(DataSetObserver dataSetObserver) {
        this.f2879a.unregisterObserver(dataSetObserver);
    }
}
