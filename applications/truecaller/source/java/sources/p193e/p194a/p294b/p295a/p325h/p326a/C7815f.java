package p193e.p194a.p294b.p295a.p325h.p326a;

import com.truecaller.bizmon.C3478R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p294b.p295a.p329i.AbstractC7833a;
/* renamed from: e.a.b.a.h.a.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/h/a/f.class */
public final class C7815f implements AbstractC7814e {
    @Override // p193e.p194a.p294b.p295a.p325h.p326a.AbstractC7814e
    /* renamed from: a */
    public AbstractC7833a mo29280a(String str) {
        return str == null || str.length() == 0 ? new AbstractC7833a.C7834a.C7835a(C3478R.string.BusinessProfileOnboarding_PincodeNotEntered) : C22128a.m8648Z0("^[1-9][0-9]{5}$", str) ? AbstractC7833a.C7836b.f24379b : new AbstractC7833a.C7834a(C3478R.string.BusinessProfileOnboarding_PincodeInvalidLength);
    }
}
