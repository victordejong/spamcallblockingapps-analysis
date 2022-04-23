package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.play.core.common.b;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.internal.ao;
import com.google.android.play.core.internal.bs;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.splitcompat.q;
import com.google.android.play.core.tasks.d;
import com.google.android.play.core.tasks.f;
import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/r.class */
final class r {

    /* renamed from: a  reason: collision with root package name */
    static final h f31055a = new h("AppUpdateService");

    /* renamed from: c  reason: collision with root package name */
    private static final Intent f31056c = new Intent("com.google.android.play.core.install.BIND_UPDATE_SERVICE").setPackage("com.android.vending");

    /* renamed from: b  reason: collision with root package name */
    com.google.android.play.core.internal.r<bs> f31057b;

    /* renamed from: d  reason: collision with root package name */
    private final String f31058d;
    private final Context e;
    private final t f;

    public r(Context context, t tVar) {
        this.f31058d = context.getPackageName();
        this.e = context;
        this.f = tVar;
        if (ao.a(context)) {
            this.f31057b = new com.google.android.play.core.internal.r<>(q.a(context), f31055a, "AppUpdateService", f31056c, l.f31044a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Bundle a(r rVar, String str) {
        Integer num;
        Bundle bundle = new Bundle();
        bundle.putAll(d());
        bundle.putString("package.name", str);
        try {
            num = Integer.valueOf(rVar.e.getPackageManager().getPackageInfo(rVar.e.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            f31055a.b("The current version of the app could not be retrieved", new Object[0]);
            num = null;
        }
        if (num != null) {
            bundle.putInt("app.version.code", num.intValue());
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ a a(r rVar, Bundle bundle, String str) {
        return new u(str, bundle.getInt("version.code", -1), bundle.getInt("update.availability"), bundle.getInt("install.status", 0), bundle.getInt("client.version.staleness", -1) == -1 ? null : Integer.valueOf(bundle.getInt("client.version.staleness")), bundle.getInt("in.app.update.priority", 0), bundle.getLong("bytes.downloaded"), bundle.getLong("total.bytes.to.download"), bundle.getLong("additional.size.required"), t.a(new File(rVar.f.f31061a.getFilesDir(), "assetpacks")), (PendingIntent) bundle.getParcelable("blocking.intent"), (PendingIntent) bundle.getParcelable("nonblocking.intent"), (PendingIntent) bundle.getParcelable("blocking.destructive.intent"), (PendingIntent) bundle.getParcelable("nonblocking.destructive.intent"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> d<T> a() {
        f31055a.b("onError(%d)", -9);
        return f.a((Exception) new InstallException(-9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle d() {
        Bundle bundle = new Bundle();
        bundle.putAll(b.a("app_update"));
        bundle.putInt("playcore.version.code", 11000);
        return bundle;
    }
}
