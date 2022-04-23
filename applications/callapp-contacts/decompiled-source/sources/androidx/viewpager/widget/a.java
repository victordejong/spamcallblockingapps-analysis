package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private final DataSetObservable f5890a = new DataSetObservable();

    /* renamed from: b  reason: collision with root package name */
    private DataSetObserver f5891b;

    public Object a(ViewGroup viewGroup, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public void a() {
    }

    public final void a(DataSetObserver dataSetObserver) {
        this.f5890a.registerObserver(dataSetObserver);
    }

    public void a(Parcelable parcelable, ClassLoader classLoader) {
    }

    public void a(ViewGroup viewGroup) {
    }

    public void a(ViewGroup viewGroup, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public abstract boolean a(View view, Object obj);

    public Parcelable b() {
        return null;
    }

    public final void b(DataSetObserver dataSetObserver) {
        this.f5890a.unregisterObserver(dataSetObserver);
    }

    public final void c() {
        synchronized (this) {
            DataSetObserver dataSetObserver = this.f5891b;
            if (dataSetObserver != null) {
                dataSetObserver.onChanged();
            }
        }
        this.f5890a.notifyChanged();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setViewPagerObserver(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f5891b = dataSetObserver;
        }
    }
}
