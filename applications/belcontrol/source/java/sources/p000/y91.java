package p000;

import android.os.Bundle;
import java.util.EnumSet;
import p000.n91;
import p000.w91;
/* renamed from: y91 */
/* loaded from: classes3-dex2jar.jar:y91.class */
public class y91 implements x91 {

    /* renamed from: a */
    public static EnumSet<w91.EnumC1708a> f8727a = EnumSet.of(w91.EnumC1708a.INCOMING_CALL, w91.EnumC1708a.INCOMING_SMS, w91.EnumC1708a.INCOMING_MMS, w91.EnumC1708a.NUMBER_DIALED, w91.EnumC1708a.BLOCKED_CALL, w91.EnumC1708a.BLOCKED_SMS, w91.EnumC1708a.BLOCKED_MMS);

    @Override // p000.x91
    /* renamed from: a */
    public void mo93a(Object obj, w91.EnumC1708a enumC1708a, n91.EnumC1484a enumC1484a, Bundle bundle) {
        if (f8727a.contains(enumC1708a)) {
            new z81().m64G(enumC1708a, enumC1484a);
        }
    }

    @Override // p000.x91
    /* renamed from: b */
    public void mo92b(Object obj) {
    }

    @Override // p000.x91
    /* renamed from: c */
    public void mo91c(Object obj, Bundle bundle) {
    }

    @Override // p000.x91
    /* renamed from: d */
    public void mo90d() {
    }

    @Override // p000.x91
    /* renamed from: e */
    public void mo89e(Object obj) {
    }

    @Override // p000.x91
    public void shutdown() {
    }
}
