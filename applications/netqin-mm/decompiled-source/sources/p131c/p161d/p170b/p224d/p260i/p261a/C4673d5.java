package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzhb;
/* renamed from: c.d.b.d.i.a.d5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/d5.class */
public final class C4673d5 implements AbstractC4840v7 {

    /* renamed from: a */
    public final /* synthetic */ zzhb f17034a;

    public C4673d5(zzhb zzhbVar) {
        this.f17034a = zzhbVar;
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4840v7
    /* renamed from: a */
    public final void mo24872a(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.f17034a.m8974a("auto", "_err", bundle);
        } else {
            this.f17034a.m8973a("auto", "_err", bundle, str);
            throw null;
        }
    }
}
