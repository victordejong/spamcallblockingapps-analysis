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
import android.support.p008v4.media.session.MediaControllerCompat;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.versionedparcelable.AbstractC2922c;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken.class */
public final class SessionToken implements AbstractC2922c {

    /* renamed from: a */
    SessionTokenImpl f8763a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken$SessionTokenImpl.class */
    public interface SessionTokenImpl extends AbstractC2922c {
        /* renamed from: a */
        boolean mo41106a();

        /* renamed from: b */
        int mo41105b();

        /* renamed from: c */
        String mo41104c();

        /* renamed from: d */
        String mo41103d();

        /* renamed from: f */
        ComponentName mo41102f();

        /* renamed from: g */
        int mo41101g();

        /* renamed from: h */
        Bundle mo41100h();

        /* renamed from: i */
        Object mo41099i();
    }

    /* renamed from: androidx.media2.session.SessionToken$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken$a.class */
    public interface AbstractC2216a {
        void onSessionTokenCreated(MediaSessionCompat.Token token, SessionToken sessionToken);
    }

    public SessionToken() {
    }

    public SessionToken(Context context, ComponentName componentName) {
        int i;
        Objects.requireNonNull(context, "context shouldn't be null");
        Objects.requireNonNull(componentName, "serviceComponent shouldn't be null");
        PackageManager packageManager = context.getPackageManager();
        int m41113a = m41113a(packageManager, componentName.getPackageName());
        if (m41112a(packageManager, "androidx.media2.session.MediaLibraryService", componentName)) {
            i = 2;
        } else if (m41112a(packageManager, "androidx.media2.session.MediaSessionService", componentName)) {
            i = 1;
        } else if (!m41112a(packageManager, "android.media.browse.MediaBrowserService", componentName)) {
            throw new IllegalArgumentException(componentName + " doesn't implement none of MediaSessionService, MediaLibraryService, MediaBrowserService nor MediaBrowserServiceCompat. Use service's full name");
        } else {
            i = 101;
        }
        if (i != 101) {
            this.f8763a = new SessionTokenImplBase(componentName, m41113a, i);
        } else {
            this.f8763a = new SessionTokenImplLegacy(componentName, m41113a);
        }
    }

    public SessionToken(SessionTokenImpl sessionTokenImpl) {
        this.f8763a = sessionTokenImpl;
    }

    /* renamed from: a */
    private static int m41113a(PackageManager packageManager, String str) {
        try {
            return packageManager.getApplicationInfo(str, 0).uid;
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException("Cannot find package ".concat(String.valueOf(str)));
        }
    }

    /* renamed from: a */
    public static void m41114a(Context context, final MediaSessionCompat.Token token, final AbstractC2216a abstractC2216a) {
        Objects.requireNonNull(context, "context shouldn't be null");
        Objects.requireNonNull(token, "compatToken shouldn't be null");
        Objects.requireNonNull(abstractC2216a, "listener shouldn't be null");
        AbstractC2922c session2Token = token.getSession2Token();
        if (session2Token instanceof SessionToken) {
            abstractC2216a.onSessionTokenCreated(token, (SessionToken) session2Token);
            return;
        }
        final MediaControllerCompat mediaControllerCompat = new MediaControllerCompat(context, token);
        final String mo46544l = mediaControllerCompat.f78a.mo46544l();
        final int m41113a = m41113a(context.getPackageManager(), mo46544l);
        final HandlerThread handlerThread = new HandlerThread("SessionToken");
        handlerThread.start();
        final Handler handler = new Handler(handlerThread.getLooper()) { // from class: androidx.media2.session.SessionToken.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                synchronized (abstractC2216a) {
                    if (message.what != 1000) {
                        return;
                    }
                    mediaControllerCompat.m46572a((MediaControllerCompat.AbstractC0050a) message.obj);
                    SessionToken sessionToken = new SessionToken(new SessionTokenImplLegacy(token, mo46544l, m41113a, mediaControllerCompat.m46563h()));
                    token.setSession2Token(sessionToken);
                    abstractC2216a.onSessionTokenCreated(token, sessionToken);
                    SessionToken.m41111a(handlerThread);
                }
            }
        };
        MediaControllerCompat.AbstractC0050a abstractC0050a = new MediaControllerCompat.AbstractC0050a() { // from class: androidx.media2.session.SessionToken.2
            @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
            /* renamed from: a */
            public final void mo41041a() {
                SessionToken sessionToken;
                synchronized (abstractC2216a) {
                    handler.removeMessages(1000);
                    mediaControllerCompat.m46572a(this);
                    if (token.getSession2Token() instanceof SessionToken) {
                        sessionToken = (SessionToken) token.getSession2Token();
                    } else {
                        sessionToken = new SessionToken(new SessionTokenImplLegacy(token, mo46544l, m41113a, mediaControllerCompat.m46563h()));
                        token.setSession2Token(sessionToken);
                    }
                    abstractC2216a.onSessionTokenCreated(token, sessionToken);
                    SessionToken.m41111a(handlerThread);
                }
            }
        };
        synchronized (abstractC2216a) {
            mediaControllerCompat.m46571a(abstractC0050a, handler);
            handler.sendMessageDelayed(handler.obtainMessage(1000, abstractC0050a), 300L);
        }
    }

    /* renamed from: a */
    static void m41111a(HandlerThread handlerThread) {
        if (Build.VERSION.SDK_INT >= 18) {
            handlerThread.quitSafely();
        } else {
            handlerThread.quit();
        }
    }

    /* renamed from: a */
    private static boolean m41112a(PackageManager packageManager, String str, ComponentName componentName) {
        Intent intent = new Intent(str);
        intent.setPackage(componentName.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 128);
        if (queryIntentServices != null) {
            for (int i = 0; i < queryIntentServices.size(); i++) {
                ResolveInfo resolveInfo = queryIntentServices.get(i);
                if (resolveInfo != null && resolveInfo.serviceInfo != null && TextUtils.equals(resolveInfo.serviceInfo.name, componentName.getClassName())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: a */
    public final String m41115a() {
        return this.f8763a.mo41104c();
    }

    /* renamed from: b */
    public final int m41110b() {
        return this.f8763a.mo41101g();
    }

    /* renamed from: c */
    public final Bundle m41109c() {
        Bundle mo41100h = this.f8763a.mo41100h();
        return (mo41100h == null || C2481s.m40803a(mo41100h)) ? Bundle.EMPTY : new Bundle(mo41100h);
    }

    /* renamed from: d */
    public final boolean m41108d() {
        return this.f8763a.mo41106a();
    }

    /* renamed from: e */
    public final Object m41107e() {
        return this.f8763a.mo41099i();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SessionToken)) {
            return false;
        }
        return this.f8763a.equals(((SessionToken) obj).f8763a);
    }

    public final int hashCode() {
        return this.f8763a.hashCode();
    }

    public final String toString() {
        return this.f8763a.toString();
    }
}
