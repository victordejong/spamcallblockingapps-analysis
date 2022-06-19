package androidx.media.session;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.support.p008v4.media.MediaBrowserCompat;
import android.support.p008v4.media.session.MediaControllerCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media/session/MediaButtonReceiver.class */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* renamed from: androidx.media.session.MediaButtonReceiver$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/session/MediaButtonReceiver$a.class */
    static final class C1342a extends MediaBrowserCompat.C0021b {

        /* renamed from: c */
        MediaBrowserCompat f5011c;

        /* renamed from: d */
        private final Context f5012d;

        /* renamed from: e */
        private final Intent f5013e;

        /* renamed from: f */
        private final BroadcastReceiver.PendingResult f5014f;

        C1342a(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f5012d = context;
            this.f5013e = intent;
            this.f5014f = pendingResult;
        }

        /* renamed from: d */
        private void m43207d() {
            this.f5011c.m46595b();
            this.f5014f.finish();
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.C0021b
        /* renamed from: a */
        public final void mo41044a() {
            new MediaControllerCompat(this.f5012d, this.f5011c.m46594c()).m46570a((KeyEvent) this.f5013e.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            m43207d();
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.C0021b
        /* renamed from: b */
        public final void mo41043b() {
            m43207d();
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.C0021b
        /* renamed from: c */
        public final void mo41042c() {
            m43207d();
        }
    }

    /* renamed from: a */
    public static ComponentName m43209a(Context context) {
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

    /* renamed from: a */
    private static ComponentName m43208a(Context context, String str) {
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
        ComponentName m43208a = m43208a(context, "android.intent.action.MEDIA_BUTTON");
        if (m43208a != null) {
            intent.setComponent(m43208a);
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent);
                return;
            } else {
                context.startService(intent);
                return;
            }
        }
        ComponentName m43208a2 = m43208a(context, "android.media.browse.MediaBrowserService");
        if (m43208a2 == null) {
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
        BroadcastReceiver.PendingResult goAsync = goAsync();
        Context applicationContext = context.getApplicationContext();
        C1342a c1342a = new C1342a(applicationContext, intent, goAsync);
        MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, m43208a2, c1342a, null);
        c1342a.f5011c = mediaBrowserCompat;
        mediaBrowserCompat.m46596a();
    }
}
