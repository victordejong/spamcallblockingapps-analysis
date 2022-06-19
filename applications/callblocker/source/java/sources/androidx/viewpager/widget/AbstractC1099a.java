package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.viewpager.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/a.class */
public abstract class AbstractC1099a {

    /* renamed from: a */
    private final DataSetObservable f3788a = new DataSetObservable();

    /* renamed from: b */
    private DataSetObserver f3789b;

    /* renamed from: a */
    public int m18052a(Object obj) {
        return -1;
    }

    /* renamed from: a */
    public Parcelable mo18062a() {
        return null;
    }

    @Deprecated
    /* renamed from: a */
    public Object m18058a(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    /* renamed from: a */
    public Object mo18054a(ViewGroup viewGroup, int i) {
        return m18058a((View) viewGroup, i);
    }

    /* renamed from: a */
    public void m18061a(DataSetObserver dataSetObserver) {
        this.f3788a.registerObserver(dataSetObserver);
    }

    /* renamed from: a */
    public void mo18060a(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Deprecated
    /* renamed from: a */
    public void m18059a(View view) {
    }

    @Deprecated
    /* renamed from: a */
    public void m18057a(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    /* renamed from: a */
    public void mo18055a(ViewGroup viewGroup) {
        m18059a((View) viewGroup);
    }

    /* renamed from: a */
    public void mo18053a(ViewGroup viewGroup, int i, Object obj) {
        m18057a((View) viewGroup, i, obj);
    }

    /* renamed from: a */
    public abstract boolean mo18056a(View view, Object obj);

    /* renamed from: b */
    public abstract int mo868b();

    /* renamed from: b */
    public void m18051b(DataSetObserver dataSetObserver) {
        this.f3788a.unregisterObserver(dataSetObserver);
    }

    @Deprecated
    /* renamed from: b */
    public void m18050b(View view) {
    }

    @Deprecated
    /* renamed from: b */
    public void m18049b(View view, int i, Object obj) {
    }

    /* renamed from: b */
    public void mo18048b(ViewGroup viewGroup) {
        m18050b((View) viewGroup);
    }

    /* renamed from: b */
    public void mo18047b(ViewGroup viewGroup, int i, Object obj) {
        m18049b((View) viewGroup, i, obj);
    }

    /* renamed from: c */
    public CharSequence m18046c(int i) {
        return null;
    }

    /* renamed from: c */
    public void m18045c(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f3789b = dataSetObserver;
        }
    }

    /* renamed from: d */
    public float m18044d(int i) {
        return 1.0f;
    }
}
