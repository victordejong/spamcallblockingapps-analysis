package com.applovin.impl.mediation.debugger.p045ui.p050d;

import android.support.p012v4.media.C0082b;
import android.text.SpannedString;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c;
/* renamed from: com.applovin.impl.mediation.debugger.ui.d.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/d/e.class */
public class C1176e extends C1169c {
    public C1176e(String str) {
        super(C1169c.EnumC1172b.SECTION);
        this.f4228d = new SpannedString(str);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("SectionListItemViewModel{text=");
        m8752j.append((Object) this.f4228d);
        m8752j.append("}");
        return m8752j.toString();
    }
}
