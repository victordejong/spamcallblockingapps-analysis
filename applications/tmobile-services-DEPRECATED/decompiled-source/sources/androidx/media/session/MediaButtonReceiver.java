package androidx.media.session;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.RemoteException;
import android.support.p001v4.media.MediaBrowserCompat;
import android.support.p001v4.media.session.MediaControllerCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.RestrictTo;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media/session/MediaButtonReceiver.class */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* loaded from: classes-dex2jar.jar:androidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback.class */
    private static class MediaButtonConnectionCallback extends MediaBrowserCompat.ConnectionCallback {

        /* renamed from: a */
        private final Context f4314a;

        /* renamed from: b */
        private final Intent f4315b;

        /* renamed from: c */
        private final BroadcastReceiver.PendingResult f4316c;

        /* renamed from: d */
        private MediaBrowserCompat f4317d;

        MediaButtonConnectionCallback(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f4314a = context;
            this.f4315b = intent;
            this.f4316c = pendingResult;
        }

        /* renamed from: a */
        private void m17959a() {
            this.f4317d.disconnect();
            this.f4316c.finish();
        }

        /* renamed from: b */
        void m17958b(MediaBrowserCompat mediaBrowserCompat) {
            this.f4317d = mediaBrowserCompat;
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnected() {
            try {
                new MediaControllerCompat(this.f4314a, this.f4317d.getSessionToken()).dispatchMediaButtonEvent((KeyEvent) this.f4315b.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            } catch (RemoteException e) {
                Log.e("MediaButtonReceiver", "Failed to create a media controller", e);
            }
            m17959a();
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnectionFailed() {
            m17959a();
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnectionSuspended() {
            m17959a();
        }
    }

    @RestrictTo
    /* renamed from: a */
    public static ComponentName m17962a(Context context) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers.size() == 1) {
            ActivityInfo activityInfo = queryBroadcastReceivers.get(0).activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        } else if (queryBroadcastReceivers.size() <= 1) {
            return null;
        } else {
            Log.w("MediaButtonReceiver", "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
            return null;
        }
    }

    /* renamed from: b */
    private static ComponentName m17961b(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices.size() == 1) {
            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
            return new ComponentName(serviceInfo.packageName, serviceInfo.name);
        } else if (queryIntentServices.isEmpty()) {
            return null;
        } else {
            throw new IllegalStateException("Expected 1 service that handles " + str + ", found " + queryIntentServices.size());
        }
    }

    /* renamed from: c */
    private static void m17960c(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            Log.d("MediaButtonReceiver", "Ignore unsupported intent: " + intent);
            return;
        }
        ComponentName b = m17961b(context, "android.intent.action.MEDIA_BUTTON");
        if (b != null) {
            intent.setComponent(b);
            m17960c(context, intent);
            return;
        }
        ComponentName b2 = m17961b(context, "android.media.browse.MediaBrowserService");
        if (b2 != null) {
            BroadcastReceiver.PendingResult goAsync = goAsync();
            Context applicationContext = context.getApplicationContext();
            MediaButtonConnectionCallback mediaButtonConnectionCallback = new MediaButtonConnectionCallback(applicationContext, intent, goAsync);
            MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, b2, mediaButtonConnectionCallback, null);
            mediaButtonConnectionCallback.m17958b(mediaBrowserCompat);
            mediaBrowserCompat.connect();
            return;
        }
        throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
    }
}
