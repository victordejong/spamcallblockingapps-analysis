package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.viewpager.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/a.class */
public abstract class AbstractC1100a {

    /* renamed from: a */
    private final DataSetObservable f3487a = new DataSetObservable();

    /* renamed from: b */
    private DataSetObserver f3488b;

    /* renamed from: a */
    public int m4274a(Object obj) {
        return -1;
    }

    /* renamed from: a */
    public Parcelable mo4284a() {
        return null;
    }

    @Deprecated
    /* renamed from: a */
    public Object m4280a(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    /* renamed from: a */
    public Object mo4276a(ViewGroup viewGroup, int i) {
        return m4280a((View) viewGroup, i);
    }

    /* renamed from: a */
    public void m4283a(DataSetObserver dataSetObserver) {
        this.f3487a.registerObserver(dataSetObserver);
    }

    /* renamed from: a */
    public void mo4282a(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Deprecated
    /* renamed from: a */
    public void m4281a(View view) {
    }

    @Deprecated
    /* renamed from: a */
    public void m4279a(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    /* renamed from: a */
    public void mo4277a(ViewGroup viewGroup) {
        m4281a((View) viewGroup);
    }

    /* renamed from: a */
    public void mo4275a(ViewGroup viewGroup, int i, Object obj) {
        m4279a((View) viewGroup, i, obj);
    }

    /* renamed from: a */
    public abstract boolean mo4278a(View view, Object obj);

    /* renamed from: b */
    public abstract int mo236b();

    /* renamed from: b */
    public CharSequence mo235b(int i) {
        return null;
    }

    /* renamed from: b */
    public void m4273b(DataSetObserver dataSetObserver) {
        this.f3487a.unregisterObserver(dataSetObserver);
    }

    @Deprecated
    /* renamed from: b */
    public void m4272b(View view) {
    }

    @Deprecated
    /* renamed from: b */
    public void m4271b(View view, int i, Object obj) {
    }

    /* renamed from: b */
    public void mo4270b(ViewGroup viewGroup) {
        m4272b((View) viewGroup);
    }

    /* renamed from: b */
    public void mo4269b(ViewGroup viewGroup, int i, Object obj) {
        m4271b((View) viewGroup, i, obj);
    }

    /* renamed from: c */
    public float m4268c(int i) {
        return 1.0f;
    }

    /* renamed from: c */
    public void m4267c(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f3488b = dataSetObserver;
        }
    }
}
