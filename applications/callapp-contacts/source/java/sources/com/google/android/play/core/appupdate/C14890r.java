package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.play.core.common.C15001b;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.internal.AbstractC15055bs;
import com.google.android.play.core.internal.C15024ao;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15082r;
import com.google.android.play.core.splitcompat.C15121q;
import com.google.android.play.core.tasks.AbstractC15180d;
import com.google.android.play.core.tasks.C15182f;
import java.io.File;
/* renamed from: com.google.android.play.core.appupdate.r */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/r.class */
public final class C14890r {

    /* renamed from: a */
    static final C15072h f54329a = new C15072h("AppUpdateService");

    /* renamed from: c */
    private static final Intent f54330c = new Intent("com.google.android.play.core.install.BIND_UPDATE_SERVICE").setPackage("com.android.vending");

    /* renamed from: b */
    C15082r<AbstractC15055bs> f54331b;

    /* renamed from: d */
    private final String f54332d;

    /* renamed from: e */
    private final Context f54333e;

    /* renamed from: f */
    private final C14892t f54334f;

    public C14890r(Context context, C14892t c14892t) {
        this.f54332d = context.getPackageName();
        this.f54333e = context;
        this.f54334f = c14892t;
        if (C15024ao.m9585a(context)) {
            this.f54331b = new C15082r<>(C15121q.m9423a(context), f54329a, "AppUpdateService", f54330c, C14884l.f54317a);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ Bundle m9816a(C14890r c14890r, String str) {
        Integer num;
        Bundle bundle = new Bundle();
        bundle.putAll(m9813d());
        bundle.putString("package.name", str);
        try {
            num = Integer.valueOf(c14890r.f54333e.getPackageManager().getPackageInfo(c14890r.f54333e.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            f54329a.m9509b("The current version of the app could not be retrieved", new Object[0]);
            num = null;
        }
        if (num != null) {
            bundle.putInt("app.version.code", num.intValue());
        }
        return bundle;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC14872a m9817a(C14890r c14890r, Bundle bundle, String str) {
        return new C14893u(str, bundle.getInt("version.code", -1), bundle.getInt("update.availability"), bundle.getInt("install.status", 0), bundle.getInt("client.version.staleness", -1) == -1 ? null : Integer.valueOf(bundle.getInt("client.version.staleness")), bundle.getInt("in.app.update.priority", 0), bundle.getLong("bytes.downloaded"), bundle.getLong("total.bytes.to.download"), bundle.getLong("additional.size.required"), C14892t.m9812a(new File(c14890r.f54334f.f54337a.getFilesDir(), "assetpacks")), (PendingIntent) bundle.getParcelable("blocking.intent"), (PendingIntent) bundle.getParcelable("nonblocking.intent"), (PendingIntent) bundle.getParcelable("blocking.destructive.intent"), (PendingIntent) bundle.getParcelable("nonblocking.destructive.intent"));
    }

    /* renamed from: a */
    public static <T> AbstractC15180d<T> m9820a() {
        f54329a.m9509b("onError(%d)", -9);
        return C15182f.m9329a((Exception) new InstallException(-9));
    }

    /* renamed from: d */
    public static Bundle m9813d() {
        Bundle bundle = new Bundle();
        bundle.putAll(C15001b.m9634a("app_update"));
        bundle.putInt("playcore.version.code", 11000);
        return bundle;
    }
}
