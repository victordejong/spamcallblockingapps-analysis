package com.p094a.p095a.p096a.p097a.p098a;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4802y;
import com.bytedance.sdk.openadsdk.core.p154e.C4546b;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p164d.C4825l;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.a.a.a.a.a.b */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/a/b.class */
public class C3233b implements AbstractC3234c {

    /* renamed from: a */
    protected C4546b f11646a;

    /* renamed from: b */
    protected C4557i f11647b;

    /* renamed from: c */
    protected String f11648c;

    /* renamed from: f */
    private WeakReference<Context> f11651f;

    /* renamed from: d */
    protected boolean f11649d = false;

    /* renamed from: e */
    protected final AtomicBoolean f11650e = new AtomicBoolean(false);

    /* renamed from: g */
    private boolean f11652g = false;

    public C3233b(Context context, C4557i c4557i, String str) {
        this.f11651f = new WeakReference<>(context);
        this.f11647b = c4557i;
        C5478q.m32109c("GPDownLoader", c4557i.m35196ag().toString());
        this.f11646a = c4557i.m35230Q();
        this.f11648c = str;
        C5478q.m32109c("GPDownLoader", "====tag===".concat(String.valueOf(str)));
        if (C4600n.m34815a() == null) {
            C4600n.m34814a(context);
        }
    }

    /* renamed from: a */
    private static boolean m39096a(Context context, String str) {
        Intent launchIntentForPackage;
        if (context == null || str == null || TextUtils.isEmpty(str)) {
            return false;
        }
        C5478q.m32109c("GPDownLoader", "gotoGooglePlay :market://details?id=".concat(String.valueOf(str)));
        Intent intent = new Intent("android.intent.action.VIEW");
        Uri parse = Uri.parse("market://details?id=".concat(String.valueOf(str)));
        intent.setData(parse);
        for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(intent, 65536)) {
            if (resolveInfo.activityInfo.packageName.equals("com.android.vending") && (launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage("com.android.vending")) != null) {
                launchIntentForPackage.setComponent(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
                launchIntentForPackage.setData(parse);
                if (!(context instanceof Activity)) {
                    launchIntentForPackage.setFlags(268435456);
                }
                context.startActivity(launchIntentForPackage);
                return true;
            }
        }
        try {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=".concat(String.valueOf(str))));
            intent2.setFlags(268435456);
            context.startActivity(intent2);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c
    /* renamed from: a */
    public boolean mo39093a() {
        Intent m32307a;
        C4546b c4546b = this.f11646a;
        if (c4546b == null) {
            return false;
        }
        String m35332c = c4546b.m35332c();
        if (TextUtils.isEmpty(m35332c) || !C5438af.m32292b(m39094d(), m35332c) || (m32307a = C5438af.m32307a(m39094d(), m35332c)) == null) {
            return false;
        }
        m32307a.putExtra("START_ONLY_FOR_ANDROID", true);
        try {
            m39094d().startActivity(m32307a);
            C4811e.m33861f(m39094d(), this.f11647b, this.f11648c, "click_open", null);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    /* renamed from: b */
    public boolean mo39095b() {
        if (this.f11647b.m35229R() != null) {
            String m35285a = this.f11647b.m35229R().m35285a();
            if (!TextUtils.isEmpty(m35285a)) {
                Uri parse = Uri.parse(m35285a);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                if (C5438af.m32308a(m39094d(), intent)) {
                    if (!(m39094d() instanceof Activity)) {
                        intent.addFlags(268435456);
                    }
                    try {
                        m39094d().startActivity(intent);
                        C4811e.m33861f(C4600n.m34815a(), this.f11647b, this.f11648c, "open_url_app", null);
                        C4825l.m33810a().m33809a(this.f11647b, this.f11648c);
                        return true;
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
            if (this.f11649d && !this.f11650e.get()) {
                return false;
            }
            this.f11649d = true;
            C4811e.m33861f(m39094d(), this.f11647b, this.f11648c, "open_fallback_url", null);
            return false;
        }
        return false;
    }

    @Override // com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c
    /* renamed from: c */
    public final void mo39092c() {
        this.f11652g = true;
    }

    /* renamed from: d */
    public final Context m39094d() {
        WeakReference<Context> weakReference = this.f11651f;
        return (weakReference == null || weakReference.get() == null) ? C4600n.m34815a() : this.f11651f.get();
    }

    @Override // com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c
    /* renamed from: e */
    public final void mo39091e() {
        if (m39094d() == null) {
            return;
        }
        if (mo39095b()) {
            this.f11650e.set(true);
        } else if (mo39093a() || mo39090f() || this.f11647b.m35230Q() != null || this.f11647b.m35240G() == null) {
        } else {
            C4802y.m33904a(m39094d(), this.f11647b.m35240G(), this.f11647b, C5438af.m32300a(this.f11648c), this.f11648c, true);
        }
    }

    @Override // com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c
    /* renamed from: f */
    public final boolean mo39090f() {
        this.f11650e.set(true);
        return this.f11646a != null && m39096a(m39094d(), this.f11646a.m35332c());
    }
}
