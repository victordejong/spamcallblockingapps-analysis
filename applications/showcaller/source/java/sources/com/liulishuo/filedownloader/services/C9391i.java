package com.liulishuo.filedownloader.services;

import android.annotation.TargetApi;
import android.app.Notification;
import android.content.Context;
import p078c.p122d.p123a.C1992d0;
import p078c.p122d.p123a.p128i0.C2036d;
@TargetApi(26)
/* renamed from: com.liulishuo.filedownloader.services.i */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/i.class */
public class C9391i {

    /* renamed from: a */
    private int f40144a;

    /* renamed from: b */
    private String f40145b;

    /* renamed from: c */
    private String f40146c;

    /* renamed from: d */
    private Notification f40147d;

    /* renamed from: e */
    private boolean f40148e;

    /* renamed from: com.liulishuo.filedownloader.services.i$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/i$b.class */
    public static class C9393b {

        /* renamed from: a */
        private int f40149a;

        /* renamed from: b */
        private String f40150b;

        /* renamed from: c */
        private String f40151c;

        /* renamed from: d */
        private Notification f40152d;

        /* renamed from: e */
        private boolean f40153e;

        /* renamed from: a */
        public C9391i m740a() {
            C9391i c9391i = new C9391i();
            String str = this.f40150b;
            String str2 = str;
            if (str == null) {
                str2 = "filedownloader_channel";
            }
            c9391i.m743i(str2);
            String str3 = this.f40151c;
            String str4 = str3;
            if (str3 == null) {
                str4 = "Filedownloader";
            }
            c9391i.m742j(str4);
            int i = this.f40149a;
            int i2 = i;
            if (i == 0) {
                i2 = 17301506;
            }
            c9391i.m741k(i2);
            c9391i.m745g(this.f40153e);
            c9391i.m744h(this.f40152d);
            return c9391i;
        }

        /* renamed from: b */
        public C9393b m739b(boolean z) {
            this.f40153e = z;
            return this;
        }
    }

    private C9391i() {
    }

    /* renamed from: a */
    private Notification m751a(Context context) {
        String string = context.getString(C1992d0.default_filedownloader_notification_title);
        String string2 = context.getString(C1992d0.default_filedownloader_notification_content);
        Notification.Builder builder = new Notification.Builder(context, this.f40145b);
        builder.setContentTitle(string).setContentText(string2).setSmallIcon(17301506);
        return builder.build();
    }

    /* renamed from: b */
    public Notification m750b(Context context) {
        if (this.f40147d == null) {
            if (C2036d.f7151a) {
                C2036d.m28253a(this, "build default notification", new Object[0]);
            }
            this.f40147d = m751a(context);
        }
        return this.f40147d;
    }

    /* renamed from: c */
    public String m749c() {
        return this.f40145b;
    }

    /* renamed from: d */
    public String m748d() {
        return this.f40146c;
    }

    /* renamed from: e */
    public int m747e() {
        return this.f40144a;
    }

    /* renamed from: f */
    public boolean m746f() {
        return this.f40148e;
    }

    /* renamed from: g */
    public void m745g(boolean z) {
        this.f40148e = z;
    }

    /* renamed from: h */
    public void m744h(Notification notification) {
        this.f40147d = notification;
    }

    /* renamed from: i */
    public void m743i(String str) {
        this.f40145b = str;
    }

    /* renamed from: j */
    public void m742j(String str) {
        this.f40146c = str;
    }

    /* renamed from: k */
    public void m741k(int i) {
        this.f40144a = i;
    }

    public String toString() {
        return "ForegroundServiceConfig{notificationId=" + this.f40144a + ", notificationChannelId='" + this.f40145b + "', notificationChannelName='" + this.f40146c + "', notification=" + this.f40147d + ", needRecreateChannelId=" + this.f40148e + '}';
    }
}
