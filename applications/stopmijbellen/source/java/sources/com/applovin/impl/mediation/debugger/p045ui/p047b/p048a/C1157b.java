package com.applovin.impl.mediation.debugger.p045ui.p047b.p048a;

import android.content.Context;
import android.text.SpannedString;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c;
import com.applovin.impl.sdk.C1393i;
/* renamed from: com.applovin.impl.mediation.debugger.ui.b.a.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/b/a/b.class */
public class C1157b extends C1169c {

    /* renamed from: a */
    private final C1393i.C1394a f4163a;

    /* renamed from: o */
    private final Context f4164o;

    /* renamed from: p */
    private final boolean f4165p;

    public C1157b(C1393i.C1394a c1394a, boolean z, Context context) {
        super(C1169c.EnumC1172b.RIGHT_DETAIL);
        this.f4163a = c1394a;
        this.f4164o = context;
        this.f4228d = new SpannedString(c1394a.m5571a());
        this.f4165p = z;
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c
    /* renamed from: b */
    public boolean mo6255b() {
        return true;
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c
    /* renamed from: c_ */
    public SpannedString mo6253c_() {
        return new SpannedString(this.f4163a.m5568b(this.f4164o));
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c
    /* renamed from: d_ */
    public boolean mo6252d_() {
        Boolean m5570a = this.f4163a.m5570a(this.f4164o);
        if (m5570a != null) {
            return m5570a.equals(Boolean.valueOf(this.f4165p));
        }
        return false;
    }
}
