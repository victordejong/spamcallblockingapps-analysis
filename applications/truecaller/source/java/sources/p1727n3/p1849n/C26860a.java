package p1727n3.p1849n;

import p1727n3.p1849n.AbstractC26868i;
/* renamed from: n3.n.a */
/* loaded from: classes-dex2jar.jar:n3/n/a.class */
public class C26860a implements AbstractC26868i {
    private transient C26875n mCallbacks;

    @Override // p1727n3.p1849n.AbstractC26868i
    public void addOnPropertyChangedCallback(AbstractC26868i.AbstractC26869a abstractC26869a) {
        synchronized (this) {
            if (this.mCallbacks == null) {
                this.mCallbacks = new C26875n();
            }
        }
        this.mCallbacks.m1266a(abstractC26869a);
    }

    public void notifyChange() {
        synchronized (this) {
            C26875n c26875n = this.mCallbacks;
            if (c26875n == null) {
                return;
            }
            c26875n.m1264c(this, 0, null);
        }
    }

    public void notifyPropertyChanged(int i) {
        synchronized (this) {
            C26875n c26875n = this.mCallbacks;
            if (c26875n == null) {
                return;
            }
            c26875n.m1264c(this, i, null);
        }
    }

    @Override // p1727n3.p1849n.AbstractC26868i
    public void removeOnPropertyChangedCallback(AbstractC26868i.AbstractC26869a abstractC26869a) {
        synchronized (this) {
            C26875n c26875n = this.mCallbacks;
            if (c26875n == null) {
                return;
            }
            c26875n.m1261g(abstractC26869a);
        }
    }
}
