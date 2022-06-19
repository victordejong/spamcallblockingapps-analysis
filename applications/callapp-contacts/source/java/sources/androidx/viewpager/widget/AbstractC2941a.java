package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.viewpager.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/a.class */
public abstract class AbstractC2941a {

    /* renamed from: a */
    private final DataSetObservable f11014a = new DataSetObservable();

    /* renamed from: b */
    private DataSetObserver f11015b;

    /* renamed from: a */
    public Object mo26231a(ViewGroup viewGroup, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    /* renamed from: a */
    public void mo39595a() {
    }

    /* renamed from: a */
    public final void m39594a(DataSetObserver dataSetObserver) {
        this.f11014a.registerObserver(dataSetObserver);
    }

    /* renamed from: a */
    public void mo39593a(Parcelable parcelable, ClassLoader classLoader) {
    }

    /* renamed from: a */
    public void mo39592a(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    public void mo26230a(ViewGroup viewGroup, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    /* renamed from: a */
    public abstract boolean mo26232a(View view, Object obj);

    /* renamed from: b */
    public Parcelable mo39591b() {
        return null;
    }

    /* renamed from: b */
    public final void m39590b(DataSetObserver dataSetObserver) {
        this.f11014a.unregisterObserver(dataSetObserver);
    }

    /* renamed from: c */
    public final void m39589c() {
        synchronized (this) {
            DataSetObserver dataSetObserver = this.f11015b;
            if (dataSetObserver != null) {
                dataSetObserver.onChanged();
            }
        }
        this.f11014a.notifyChanged();
    }

    public abstract int getCount();

    public int getItemPosition$5d527804() {
        return -1;
    }

    public CharSequence getPageTitle(int i) {
        return null;
    }

    public float getPageWidth(int i) {
        return 1.0f;
    }

    public void setPrimaryItem$30510aeb(Object obj) {
    }

    public void setViewPagerObserver(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f11015b = dataSetObserver;
        }
    }
}
