package androidx.p045j;

import android.os.IBinder;
/* renamed from: androidx.j.ak */
/* loaded from: classes-dex2jar.jar:androidx/j/ak.class */
class C0805ak implements AbstractC0807am {

    /* renamed from: a */
    private final IBinder f2594a;

    public C0805ak(IBinder iBinder) {
        this.f2594a = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0805ak) && ((C0805ak) obj).f2594a.equals(this.f2594a);
    }

    public int hashCode() {
        return this.f2594a.hashCode();
    }
}
