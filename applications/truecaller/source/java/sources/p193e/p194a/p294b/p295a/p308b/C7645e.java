package p193e.p194a.p294b.p295a.p308b;

import com.huawei.hms.opendevice.AbstractC2405c;
import kotlin.Metadata;
import p1727n3.p1849n.AbstractC26868i;
import p1727n3.p1849n.C26875n;
import p1727n3.p1868v.AbstractC27040y0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0013\u0010\u000eJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\b\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Le/a/b/a/b/e;", "Ln3/v/y0;", "Ln3/n/i;", "Ln3/n/i$a;", "callback", "Ls1/s;", "addOnPropertyChangedCallback", "(Ln3/n/i$a;)V", "removeOnPropertyChangedCallback", "", "fieldId", AbstractC2405c.f7629a, "(I)V", "onCleared", "()V", "Ln3/n/n;", "a", "Ln3/n/n;", "mCallbacks", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.b.e */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/b/e.class */
public class C7645e extends AbstractC27040y0 implements AbstractC26868i {

    /* renamed from: a */
    public transient C26875n f24017a;

    @Override // p1727n3.p1849n.AbstractC26868i
    public void addOnPropertyChangedCallback(AbstractC26868i.AbstractC26869a abstractC26869a) {
        l.e(abstractC26869a, "callback");
        synchronized (this) {
            if (this.f24017a == null) {
                this.f24017a = new C26875n();
            }
        }
        C26875n c26875n = this.f24017a;
        if (c26875n != null) {
            c26875n.m1266a(abstractC26869a);
        }
    }

    /* renamed from: c */
    public final void m29460c(int i) {
        synchronized (this) {
            C26875n c26875n = this.f24017a;
            if (c26875n == null) {
                return;
            }
            c26875n.m1264c(this, i, null);
        }
    }

    @Override // p1727n3.p1868v.AbstractC27040y0
    public void onCleared() {
        super.onCleared();
        C26875n c26875n = this.f24017a;
        if (c26875n != null) {
            synchronized (c26875n) {
                if (c26875n.f75132d == 0) {
                    c26875n.f75129a.clear();
                } else if (!c26875n.f75129a.isEmpty()) {
                    int size = c26875n.f75129a.size();
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        c26875n.m1259i(size);
                    }
                }
            }
        }
        this.f24017a = null;
    }

    @Override // p1727n3.p1849n.AbstractC26868i
    public void removeOnPropertyChangedCallback(AbstractC26868i.AbstractC26869a abstractC26869a) {
        l.e(abstractC26869a, "callback");
        synchronized (this) {
            C26875n c26875n = this.f24017a;
            if (c26875n == null) {
                return;
            }
            c26875n.m1261g(abstractC26869a);
        }
    }
}
