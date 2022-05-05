package p459j.p460a.p512h0;

import android.service.notification.StatusBarNotification;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.h0.c */
/* loaded from: classes3-dex2jar.jar:j/a/h0/c.class */
public final class C12397c {

    /* renamed from: a */
    public static final C12397c f27972a = new C12397c();

    /* renamed from: a */
    public final C12396b m6244a(StatusBarNotification statusBarNotification) {
        C15149k.m377b(statusBarNotification, "sbn");
        String packageName = statusBarNotification.getPackageName();
        return (packageName != null && packageName.hashCode() == -1521143749 && packageName.equals("jp.naver.line.android")) ? new C12393a(statusBarNotification) : new C12396b(statusBarNotification);
    }
}
