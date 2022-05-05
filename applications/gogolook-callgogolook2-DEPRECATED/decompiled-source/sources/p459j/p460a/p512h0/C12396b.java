package p459j.p460a.p512h0;

import android.app.Notification;
import android.service.notification.StatusBarNotification;
import java.util.List;
import p459j.p460a.p582w0.C14188u2;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.h0.b */
/* loaded from: classes3-dex2jar.jar:j/a/h0/b.class */
public class C12396b {

    /* renamed from: a */
    public final String f27966a;

    /* renamed from: b */
    public final CharSequence f27967b;

    /* renamed from: c */
    public final CharSequence f27968c;

    /* renamed from: d */
    public final String f27969d;

    /* renamed from: e */
    public final List<String> f27970e;

    /* renamed from: f */
    public final boolean f27971f;

    public C12396b(StatusBarNotification statusBarNotification) {
        C15149k.m377b(statusBarNotification, "sbn");
        String packageName = statusBarNotification.getPackageName();
        C15149k.m383a((Object) packageName, "sbn.packageName");
        this.f27966a = packageName;
        C14188u2 u2Var = C14188u2.f31712a;
        Notification notification = statusBarNotification.getNotification();
        C15149k.m383a((Object) notification, "sbn.notification");
        String b = u2Var.m2278b(notification);
        this.f27967b = b == null ? "" : b;
        C14188u2 u2Var2 = C14188u2.f31712a;
        Notification notification2 = statusBarNotification.getNotification();
        C15149k.m383a((Object) notification2, "sbn.notification");
        String a = u2Var2.m2283a(notification2);
        this.f27968c = a == null ? "" : a;
        String str = statusBarNotification.getNotification().category;
        this.f27969d = str == null ? "" : str;
        this.f27970e = C15021m.m565a();
    }

    /* renamed from: a */
    public final String m6250a() {
        return this.f27969d;
    }

    /* renamed from: b */
    public boolean mo6249b() {
        return this.f27971f;
    }

    /* renamed from: c */
    public final String m6248c() {
        return this.f27966a;
    }

    /* renamed from: d */
    public final CharSequence m6247d() {
        return this.f27968c;
    }

    /* renamed from: e */
    public final CharSequence m6246e() {
        return this.f27967b;
    }

    /* renamed from: f */
    public List<String> mo6245f() {
        return this.f27970e;
    }
}
