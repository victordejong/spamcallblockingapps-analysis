package androidx.media2.session;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.versionedparcelable.c;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken.class */
public final class SessionToken implements c {

    /* renamed from: a  reason: collision with root package name */
    SessionTokenImpl f4550a;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken$SessionTokenImpl.class */
    interface SessionTokenImpl extends c {
        boolean a();

        int b();

        String c();

        String d();

        ComponentName f();

        int g();

        Bundle h();

        Object i();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken$a.class */
    public interface a {
        void onSessionTokenCreated(MediaSessionCompat.Token token, SessionToken sessionToken);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionToken() {
    }

    public SessionToken(Context context, ComponentName componentName) {
        int i;
        Objects.requireNonNull(context, "context shouldn't be null");
        Objects.requireNonNull(componentName, "serviceComponent shouldn't be null");
        PackageManager packageManager = context.getPackageManager();
        int a2 = a(packageManager, componentName.getPackageName());
        if (a(packageManager, "androidx.media2.session.MediaLibraryService", componentName)) {
            i = 2;
        } else if (a(packageManager, "androidx.media2.session.MediaSessionService", componentName)) {
            i = 1;
        } else if (a(packageManager, "android.media.browse.MediaBrowserService", componentName)) {
            i = 101;
        } else {
            throw new IllegalArgumentException(componentName + " doesn't implement none of MediaSessionService, MediaLibraryService, MediaBrowserService nor MediaBrowserServiceCompat. Use service's full name");
        }
        if (i != 101) {
            this.f4550a = new SessionTokenImplBase(componentName, a2, i);
        } else {
            this.f4550a = new SessionTokenImplLegacy(componentName, a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionToken(SessionTokenImpl sessionTokenImpl) {
        this.f4550a = sessionTokenImpl;
    }

    private static int a(PackageManager packageManager, String str) {
        try {
            return packageManager.getApplicationInfo(str, 0).uid;
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException("Cannot find package ".concat(String.valueOf(str)));
        }
    }

    public static void a(Context context, final MediaSessionCompat.Token token, final a aVar) {
        Objects.requireNonNull(context, "context shouldn't be null");
        Objects.requireNonNull(token, "compatToken shouldn't be null");
        Objects.requireNonNull(aVar, "listener shouldn't be null");
        c session2Token = token.getSession2Token();
        if (session2Token instanceof SessionToken) {
            aVar.onSessionTokenCreated(token, (SessionToken) session2Token);
            return;
        }
        final MediaControllerCompat mediaControllerCompat = new MediaControllerCompat(context, token);
        final String l = mediaControllerCompat.f423a.l();
        final int a2 = a(context.getPackageManager(), l);
        final HandlerThread handlerThread = new HandlerThread("SessionToken");
        handlerThread.start();
        final Handler handler = new Handler(handlerThread.getLooper()) { // from class: androidx.media2.session.SessionToken.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                synchronized (aVar) {
                    if (message.what == 1000) {
                        mediaControllerCompat.a((MediaControllerCompat.a) message.obj);
                        SessionToken sessionToken = new SessionToken(new SessionTokenImplLegacy(token, l, a2, mediaControllerCompat.h()));
                        token.setSession2Token(sessionToken);
                        aVar.onSessionTokenCreated(token, sessionToken);
                        SessionToken.a(handlerThread);
                    }
                }
            }
        };
        MediaControllerCompat.a aVar2 = new MediaControllerCompat.a() { // from class: androidx.media2.session.SessionToken.2
            @Override // android.support.v4.media.session.MediaControllerCompat.a
            public final void a() {
                SessionToken sessionToken;
                synchronized (a.this) {
                    handler.removeMessages(1000);
                    mediaControllerCompat.a(this);
                    if (token.getSession2Token() instanceof SessionToken) {
                        sessionToken = (SessionToken) token.getSession2Token();
                    } else {
                        sessionToken = new SessionToken(new SessionTokenImplLegacy(token, l, a2, mediaControllerCompat.h()));
                        token.setSession2Token(sessionToken);
                    }
                    a.this.onSessionTokenCreated(token, sessionToken);
                    SessionToken.a(handlerThread);
                }
            }
        };
        synchronized (aVar) {
            mediaControllerCompat.a(aVar2, handler);
            handler.sendMessageDelayed(handler.obtainMessage(1000, aVar2), 300L);
        }
    }

    static void a(HandlerThread handlerThread) {
        if (Build.VERSION.SDK_INT >= 18) {
            handlerThread.quitSafely();
        } else {
            handlerThread.quit();
        }
    }

    private static boolean a(PackageManager packageManager, String str, ComponentName componentName) {
        Intent intent = new Intent(str);
        intent.setPackage(componentName.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 128);
        if (queryIntentServices == null) {
            return false;
        }
        for (int i = 0; i < queryIntentServices.size(); i++) {
            ResolveInfo resolveInfo = queryIntentServices.get(i);
            if (!(resolveInfo == null || resolveInfo.serviceInfo == null || !TextUtils.equals(resolveInfo.serviceInfo.name, componentName.getClassName()))) {
                return true;
            }
        }
        return false;
    }

    public final String a() {
        return this.f4550a.c();
    }

    public final int b() {
        return this.f4550a.g();
    }

    public final Bundle c() {
        Bundle h = this.f4550a.h();
        return (h == null || s.a(h)) ? Bundle.EMPTY : new Bundle(h);
    }

    public final boolean d() {
        return this.f4550a.a();
    }

    public final Object e() {
        return this.f4550a.i();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SessionToken)) {
            return false;
        }
        return this.f4550a.equals(((SessionToken) obj).f4550a);
    }

    public final int hashCode() {
        return this.f4550a.hashCode();
    }

    public final String toString() {
        return this.f4550a.toString();
    }
}
