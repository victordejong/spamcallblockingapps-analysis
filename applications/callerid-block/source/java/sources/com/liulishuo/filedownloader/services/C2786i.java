package com.liulishuo.filedownloader.services;

import android.annotation.TargetApi;
import android.app.Notification;
import android.content.Context;
import p092e.p096e.p097a.C3016c0;
import p092e.p096e.p097a.p102h0.C3062d;
@TargetApi(26)
/* renamed from: com.liulishuo.filedownloader.services.i */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/i.class */
public class C2786i {

    /* renamed from: a */
    private int f11552a;

    /* renamed from: b */
    private String f11553b;

    /* renamed from: c */
    private String f11554c;

    /* renamed from: d */
    private Notification f11555d;

    /* renamed from: e */
    private boolean f11556e;

    /* renamed from: com.liulishuo.filedownloader.services.i$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/i$b.class */
    public static class C2788b {

        /* renamed from: a */
        private int f11557a;

        /* renamed from: b */
        private String f11558b;

        /* renamed from: c */
        private String f11559c;

        /* renamed from: d */
        private Notification f11560d;

        /* renamed from: e */
        private boolean f11561e;

        /* renamed from: a */
        public C2786i m1723a() {
            C2786i c2786i = new C2786i();
            String str = this.f11558b;
            String str2 = str;
            if (str == null) {
                str2 = "filedownloader_channel";
            }
            c2786i.m1726i(str2);
            String str3 = this.f11559c;
            String str4 = str3;
            if (str3 == null) {
                str4 = "Filedownloader";
            }
            c2786i.m1725j(str4);
            int i = this.f11557a;
            int i2 = i;
            if (i == 0) {
                i2 = 17301506;
            }
            c2786i.m1724k(i2);
            c2786i.m1728g(this.f11561e);
            c2786i.m1727h(this.f11560d);
            return c2786i;
        }

        /* renamed from: b */
        public C2788b m1722b(boolean z) {
            this.f11561e = z;
            return this;
        }
    }

    private C2786i() {
    }

    /* renamed from: a */
    private Notification m1734a(Context context) {
        String string = context.getString(C3016c0.default_filedownloader_notification_title);
        String string2 = context.getString(C3016c0.default_filedownloader_notification_content);
        Notification.Builder builder = new Notification.Builder(context, this.f11553b);
        builder.setContentTitle(string).setContentText(string2).setSmallIcon(17301506);
        return builder.build();
    }

    /* renamed from: b */
    public Notification m1733b(Context context) {
        if (this.f11555d == null) {
            if (C3062d.f12682a) {
                C3062d.m414a(this, "build default notification", new Object[0]);
            }
            this.f11555d = m1734a(context);
        }
        return this.f11555d;
    }

    /* renamed from: c */
    public String m1732c() {
        return this.f11553b;
    }

    /* renamed from: d */
    public String m1731d() {
        return this.f11554c;
    }

    /* renamed from: e */
    public int m1730e() {
        return this.f11552a;
    }

    /* renamed from: f */
    public boolean m1729f() {
        return this.f11556e;
    }

    /* renamed from: g */
    public void m1728g(boolean z) {
        this.f11556e = z;
    }

    /* renamed from: h */
    public void m1727h(Notification notification) {
        this.f11555d = notification;
    }

    /* renamed from: i */
    public void m1726i(String str) {
        this.f11553b = str;
    }

    /* renamed from: j */
    public void m1725j(String str) {
        this.f11554c = str;
    }

    /* renamed from: k */
    public void m1724k(int i) {
        this.f11552a = i;
    }

    public String toString() {
        return "ForegroundServiceConfig{notificationId=" + this.f11552a + ", notificationChannelId='" + this.f11553b + "', notificationChannelName='" + this.f11554c + "', notification=" + this.f11555d + ", needRecreateChannelId=" + this.f11556e + '}';
    }
}
