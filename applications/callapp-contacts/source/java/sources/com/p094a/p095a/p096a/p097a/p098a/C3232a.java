package com.p094a.p095a.p096a.p097a.p098a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p164d.C4825l;
import com.bytedance.sdk.openadsdk.utils.C5438af;
/* renamed from: com.a.a.a.a.a.a */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/a/a.class */
public final class C3232a extends C3233b {
    public C3232a(Context context, C4557i c4557i, String str) {
        super(context, c4557i, str);
    }

    @Override // com.p094a.p095a.p096a.p097a.p098a.C3233b, com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c
    /* renamed from: a */
    public final boolean mo39093a() {
        Intent m32307a;
        if (this.f11646a == null) {
            return false;
        }
        try {
            String m35332c = this.f11646a.m35332c();
            if (TextUtils.isEmpty(m35332c) || (m32307a = C5438af.m32307a(m39094d(), m35332c)) == null) {
                return false;
            }
            m32307a.putExtra("START_ONLY_FOR_ANDROID", true);
            if (!(m39094d() instanceof Activity)) {
                m32307a.addFlags(268435456);
            }
            m39094d().startActivity(m32307a);
            C4811e.m33861f(m39094d(), this.f11647b, this.f11648c, "click_open", null);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // com.p094a.p095a.p096a.p097a.p098a.C3233b
    /* renamed from: b */
    public final boolean mo39095b() {
        if (this.f11647b.m35229R() != null) {
            try {
                String m35285a = this.f11647b.m35229R().m35285a();
                if (TextUtils.isEmpty(m35285a)) {
                    if (this.f11649d && !this.f11650e.get()) {
                        return false;
                    }
                    this.f11649d = true;
                    C4811e.m33861f(m39094d(), this.f11647b, this.f11648c, "open_fallback_url", null);
                    return false;
                }
                Uri parse = Uri.parse(m35285a);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                if (!(m39094d() instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                m39094d().startActivity(intent);
                C4811e.m33861f(C4600n.m34815a(), this.f11647b, this.f11648c, "open_url_app", null);
                C4825l.m33810a().m33809a(this.f11647b, this.f11648c);
                return true;
            } catch (Throwable th) {
                return false;
            }
        }
        return false;
    }
}
