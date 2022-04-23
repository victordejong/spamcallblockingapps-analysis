package com.a.a.a.a.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.d.l;
import com.bytedance.sdk.openadsdk.utils.af;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/a/a.class */
public final class a extends b {
    public a(Context context, i iVar, String str) {
        super(context, iVar, str);
    }

    @Override // com.a.a.a.a.a.b, com.a.a.a.a.a.c
    public final boolean a() {
        Intent a2;
        if (this.f6347a == null) {
            return false;
        }
        try {
            String c2 = this.f6347a.c();
            if (TextUtils.isEmpty(c2) || (a2 = af.a(d(), c2)) == null) {
                return false;
            }
            a2.putExtra("START_ONLY_FOR_ANDROID", true);
            if (!(d() instanceof Activity)) {
                a2.addFlags(268435456);
            }
            d().startActivity(a2);
            e.f(d(), this.f6348b, this.f6349c, "click_open", null);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // com.a.a.a.a.a.b
    public final boolean b() {
        if (this.f6348b.R() == null) {
            return false;
        }
        try {
            String a2 = this.f6348b.R().a();
            if (!TextUtils.isEmpty(a2)) {
                Uri parse = Uri.parse(a2);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                if (!(d() instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                d().startActivity(intent);
                e.f(n.a(), this.f6348b, this.f6349c, "open_url_app", null);
                l.a().a(this.f6348b, this.f6349c);
                return true;
            } else if (this.f6350d && !this.e.get()) {
                return false;
            } else {
                this.f6350d = true;
                e.f(d(), this.f6348b, this.f6349c, "open_fallback_url", null);
                return false;
            }
        } catch (Throwable th) {
            return false;
        }
    }
}
