package com.a.a.a.a.a;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.y;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.d.l;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.q;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/a/b.class */
public class b implements c {

    /* renamed from: a  reason: collision with root package name */
    protected com.bytedance.sdk.openadsdk.core.e.b f6347a;

    /* renamed from: b  reason: collision with root package name */
    protected i f6348b;

    /* renamed from: c  reason: collision with root package name */
    protected String f6349c;
    private WeakReference<Context> f;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f6350d = false;
    protected final AtomicBoolean e = new AtomicBoolean(false);
    private boolean g = false;

    public b(Context context, i iVar, String str) {
        this.f = new WeakReference<>(context);
        this.f6348b = iVar;
        q.c("GPDownLoader", iVar.ag().toString());
        this.f6347a = iVar.Q();
        this.f6349c = str;
        q.c("GPDownLoader", "====tag===".concat(String.valueOf(str)));
        if (n.a() == null) {
            n.a(context);
        }
    }

    private static boolean a(Context context, String str) {
        Intent launchIntentForPackage;
        if (context == null || str == null || TextUtils.isEmpty(str)) {
            return false;
        }
        q.c("GPDownLoader", "gotoGooglePlay :market://details?id=".concat(String.valueOf(str)));
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

    @Override // com.a.a.a.a.a.c
    public boolean a() {
        Intent a2;
        com.bytedance.sdk.openadsdk.core.e.b bVar = this.f6347a;
        if (bVar == null) {
            return false;
        }
        String c2 = bVar.c();
        if (TextUtils.isEmpty(c2) || !af.b(d(), c2) || (a2 = af.a(d(), c2)) == null) {
            return false;
        }
        a2.putExtra("START_ONLY_FOR_ANDROID", true);
        try {
            d().startActivity(a2);
            e.f(d(), this.f6348b, this.f6349c, "click_open", null);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public boolean b() {
        if (this.f6348b.R() == null) {
            return false;
        }
        String a2 = this.f6348b.R().a();
        if (!TextUtils.isEmpty(a2)) {
            Uri parse = Uri.parse(a2);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(parse);
            if (af.a(d(), intent)) {
                if (!(d() instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                try {
                    d().startActivity(intent);
                    e.f(n.a(), this.f6348b, this.f6349c, "open_url_app", null);
                    l.a().a(this.f6348b, this.f6349c);
                    return true;
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        if (this.f6350d && !this.e.get()) {
            return false;
        }
        this.f6350d = true;
        e.f(d(), this.f6348b, this.f6349c, "open_fallback_url", null);
        return false;
    }

    @Override // com.a.a.a.a.a.c
    public final void c() {
        this.g = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Context d() {
        WeakReference<Context> weakReference = this.f;
        return (weakReference == null || weakReference.get() == null) ? n.a() : this.f.get();
    }

    @Override // com.a.a.a.a.a.c
    public final void e() {
        if (d() != null) {
            if (b()) {
                this.e.set(true);
            } else if (!a() && !f() && this.f6348b.Q() == null && this.f6348b.G() != null) {
                y.a(d(), this.f6348b.G(), this.f6348b, af.a(this.f6349c), this.f6349c, true);
            }
        }
    }

    @Override // com.a.a.a.a.a.c
    public final boolean f() {
        this.e.set(true);
        return this.f6347a != null && a(d(), this.f6347a.c());
    }
}
