package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraCaptureSession;
import java.util.List;
import java.util.Objects;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q;
import p1727n3.p1758e.p1767b.p1768j1.C26004r;
/* renamed from: n3.e.a.e.q1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/q1.class */
public final class C25849q1 {
    /* renamed from: a */
    public static void m2965a(AbstractC26002q abstractC26002q, List<CameraCaptureSession.CaptureCallback> list) {
        if (abstractC26002q instanceof C26004r) {
            Objects.requireNonNull((C26004r) abstractC26002q);
            throw null;
        } else if (abstractC26002q instanceof C25846p1) {
            list.add(((C25846p1) abstractC26002q).f72293a);
        } else {
            list.add(new C25843o1(abstractC26002q));
        }
    }
}
