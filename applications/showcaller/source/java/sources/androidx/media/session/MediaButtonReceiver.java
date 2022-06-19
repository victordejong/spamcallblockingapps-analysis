package androidx.media.session;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.RemoteException;
import android.support.p003v4.media.MediaBrowserCompat;
import android.support.p003v4.media.session.MediaControllerCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media/session/MediaButtonReceiver.class */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* renamed from: androidx.media.session.MediaButtonReceiver$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/session/MediaButtonReceiver$a.class */
    private static class C0883a extends MediaBrowserCompat.C0012b {

        /* renamed from: c */
        private final Context f3886c;

        /* renamed from: d */
        private final Intent f3887d;

        /* renamed from: e */
        private final BroadcastReceiver.PendingResult f3888e;

        /* renamed from: f */
        private MediaBrowserCompat f3889f;

        C0883a(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f3886c = context;
            this.f3887d = intent;
            this.f3888e = pendingResult;
        }

        /* renamed from: e */
        private void m32229e() {
            this.f3889f.m35934b();
            this.f3888e.finish();
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.C0012b
        /* renamed from: a */
        public void mo32232a() {
            try {
                new MediaControllerCompat(this.f3886c, this.f3889f.m35933c()).m35856a((KeyEvent) this.f3887d.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            } catch (RemoteException e) {
                Log.e("MediaButtonReceiver", "Failed to create a media controller", e);
            }
            m32229e();
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.C0012b
        /* renamed from: b */
        public void mo32231b() {
            m32229e();
        }

        @Override // android.support.p003v4.media.MediaBrowserCompat.C0012b
        /* renamed from: c */
        public void mo32230c() {
            m32229e();
        }

        /* renamed from: f */
        void m32228f(MediaBrowserCompat mediaBrowserCompat) {
            this.f3889f = mediaBrowserCompat;
        }
    }

    /* renamed from: a */
    private static ComponentName m32234a(Context context, String str) {
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

    /* renamed from: b */
    private static void m32233b(Context context, Intent intent) {
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
        ComponentName m32234a = m32234a(context, "android.intent.action.MEDIA_BUTTON");
        if (m32234a != null) {
            intent.setComponent(m32234a);
            m32233b(context, intent);
            return;
        }
        ComponentName m32234a2 = m32234a(context, "android.media.browse.MediaBrowserService");
        if (m32234a2 == null) {
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
        BroadcastReceiver.PendingResult goAsync = goAsync();
        Context applicationContext = context.getApplicationContext();
        C0883a c0883a = new C0883a(applicationContext, intent, goAsync);
        MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, m32234a2, c0883a, null);
        c0883a.m32228f(mediaBrowserCompat);
        mediaBrowserCompat.m35935a();
    }
}
