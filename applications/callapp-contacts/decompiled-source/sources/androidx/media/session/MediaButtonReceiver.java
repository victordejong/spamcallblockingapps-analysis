package androidx.media.session;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media/session/MediaButtonReceiver.class */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* loaded from: classes-dex2jar.jar:androidx/media/session/MediaButtonReceiver$a.class */
    static final class a extends MediaBrowserCompat.b {

        /* renamed from: c  reason: collision with root package name */
        MediaBrowserCompat f2726c;

        /* renamed from: d  reason: collision with root package name */
        private final Context f2727d;
        private final Intent e;
        private final BroadcastReceiver.PendingResult f;

        a(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f2727d = context;
            this.e = intent;
            this.f = pendingResult;
        }

        private void d() {
            this.f2726c.b();
            this.f.finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public final void a() {
            new MediaControllerCompat(this.f2727d, this.f2726c.c()).a((KeyEvent) this.e.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            d();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public final void b() {
            d();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public final void c() {
            d();
        }
    }

    public static ComponentName a(Context context) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers.size() == 1) {
            ResolveInfo resolveInfo = queryBroadcastReceivers.get(0);
            return new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        } else if (queryBroadcastReceivers.size() <= 1) {
            return null;
        } else {
            Log.w("MediaButtonReceiver", "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
            return null;
        }
    }

    private static ComponentName a(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices.size() == 1) {
            ResolveInfo resolveInfo = queryIntentServices.get(0);
            return new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
        } else if (queryIntentServices.isEmpty()) {
            return null;
        } else {
            throw new IllegalStateException("Expected 1 service that handles " + str + ", found " + queryIntentServices.size());
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            new StringBuilder("Ignore unsupported intent: ").append(intent);
            return;
        }
        ComponentName a2 = a(context, "android.intent.action.MEDIA_BUTTON");
        if (a2 != null) {
            intent.setComponent(a2);
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent);
            } else {
                context.startService(intent);
            }
        } else {
            ComponentName a3 = a(context, "android.media.browse.MediaBrowserService");
            if (a3 != null) {
                BroadcastReceiver.PendingResult goAsync = goAsync();
                Context applicationContext = context.getApplicationContext();
                a aVar = new a(applicationContext, intent, goAsync);
                MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, a3, aVar, null);
                aVar.f2726c = mediaBrowserCompat;
                mediaBrowserCompat.a();
                return;
            }
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
    }
}
