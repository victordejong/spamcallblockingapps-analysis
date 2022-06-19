package p126i6;

import android.support.p012v4.media.C0082b;
import p104g6.C2905a;
import p191o6.C3929m;
/* renamed from: i6.d */
/* loaded from: classes-dex2jar.jar:i6/d.class */
public final class C3124d extends AbstractC3125e {

    /* renamed from: b */
    public static final C2905a f10564b = C2905a.m2869b();

    /* renamed from: a */
    public final C3929m f10565a;

    public C3124d(C3929m c3929m) {
        this.f10565a = c3929m;
    }

    @Override // p126i6.AbstractC3125e
    /* renamed from: a */
    public boolean mo2594a() {
        boolean z;
        if (!m2595e(this.f10565a, 0)) {
            C2905a c2905a = f10564b;
            StringBuilder m8752j = C0082b.m8752j("Invalid Trace:");
            m8752j.append(this.f10565a.m1608N());
            c2905a.m2866e(m8752j.toString());
            return false;
        }
        C3929m c3929m = this.f10565a;
        if (c3929m.m1613I() > 0) {
            z = true;
            break;
        }
        for (C3929m c3929m2 : c3929m.m1606P()) {
            if (c3929m2.m1613I() > 0) {
                z = true;
                break;
            }
        }
        z = false;
        if (!z || m2596d(this.f10565a, 0)) {
            return true;
        }
        C2905a c2905a2 = f10564b;
        StringBuilder m8752j2 = C0082b.m8752j("Invalid Counters for Trace:");
        m8752j2.append(this.f10565a.m1608N());
        c2905a2.m2866e(m8752j2.toString());
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c5 A[SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2596d(p191o6.C3929m r6, int r7) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p126i6.C3124d.m2596d(o6.m, int):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0092  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2595e(p191o6.C3929m r6, int r7) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p126i6.C3124d.m2595e(o6.m, int):boolean");
    }
}
