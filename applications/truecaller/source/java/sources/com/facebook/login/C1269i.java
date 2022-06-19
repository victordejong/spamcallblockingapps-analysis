package com.facebook.login;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.razorpay.AnalyticsConstants;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import p1727n3.p1755d.p1756a.AbstractServiceConnectionC25697g;
import p1727n3.p1755d.p1756a.C25695e;
import p1727n3.p1755d.p1756a.C25699h;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0016¨\u0006\f"}, d2 = {"Lcom/facebook/login/CustomTabPrefetchHelper;", "Landroidx/browser/customtabs/CustomTabsServiceConnection;", "()V", "onCustomTabsServiceConnected", "", AnalyticsConstants.NAME, "Landroid/content/ComponentName;", "newClient", "Landroidx/browser/customtabs/CustomTabsClient;", "onServiceDisconnected", "componentName", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.login.i */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/i.class */
public final class C1269i extends AbstractServiceConnectionC25697g {

    /* renamed from: b */
    public static C25695e f3447b;

    /* renamed from: c */
    public static C25699h f3448c;

    /* renamed from: a */
    public static final C1270a f3446a = new C1270a(null);

    /* renamed from: d */
    public static final ReentrantLock f3449d = new ReentrantLock();

    @Metadata(d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\bH\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J\b\u0010\u000e\u001a\u00020\u000bH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lcom/facebook/login/CustomTabPrefetchHelper$Companion;", "", "()V", "client", "Landroidx/browser/customtabs/CustomTabsClient;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "session", "Landroidx/browser/customtabs/CustomTabsSession;", "getPreparedSessionOnce", "mayLaunchUrl", "", "url", "Landroid/net/Uri;", "prepareSession", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.i$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/i$a.class */
    public static final class C1270a {
        public C1270a(f fVar) {
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x004e -> B:8:0x0047). Please submit an issue!!! */
        /* renamed from: a */
        public final void m41558a(Uri uri) {
            l.e(uri, "url");
            m41557b();
            C1269i.f3449d.lock();
            C25699h c25699h = C1269i.f3448c;
            if (c25699h != null) {
                Bundle bundle = new Bundle();
                PendingIntent pendingIntent = c25699h.f71987d;
                if (pendingIntent != null) {
                    bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
                }
                try {
                    c25699h.f71984a.mo3700J(c25699h.f71985b, uri, bundle, null);
                } catch (RemoteException e) {
                }
            }
            C1269i.f3449d.unlock();
        }

        /* renamed from: b */
        public final void m41557b() {
            C25695e c25695e;
            ReentrantLock reentrantLock = C1269i.f3449d;
            reentrantLock.lock();
            if (C1269i.f3448c == null && (c25695e = C1269i.f3447b) != null) {
                C1270a c1270a = C1269i.f3446a;
                C1269i.f3448c = c25695e.m3050b(null);
            }
            reentrantLock.unlock();
        }
    }

    @Override // p1727n3.p1755d.p1756a.AbstractServiceConnectionC25697g
    public void onCustomTabsServiceConnected(ComponentName componentName, C25695e c25695e) {
        C25695e c25695e2;
        l.e(componentName, AnalyticsConstants.NAME);
        l.e(c25695e, "newClient");
        c25695e.m3049c(0L);
        f3447b = c25695e;
        ReentrantLock reentrantLock = f3449d;
        reentrantLock.lock();
        if (f3448c == null && (c25695e2 = f3447b) != null) {
            f3448c = c25695e2.m3050b(null);
        }
        reentrantLock.unlock();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        l.e(componentName, "componentName");
    }
}
