package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.aa;
import android.support.v4.app.ab;
import android.support.v4.app.ac;
import android.support.v4.app.ad;
import android.support.v4.app.ag;
import android.support.v4.app.y;
import android.support.v4.app.z;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/x.class */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    private static final g f106a;

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$a.class */
    public static final class a extends aa.a {
        public static final aa.a.AbstractC0003a d = new aa.a.AbstractC0003a() { // from class: android.support.v4.app.x.a.1
        };

        /* renamed from: a  reason: collision with root package name */
        public int f107a;

        /* renamed from: b  reason: collision with root package name */
        public CharSequence f108b;
        public PendingIntent c;
        private final Bundle e;
        private final ae[] f;

        @Override // android.support.v4.app.aa.a
        public final int a() {
            return this.f107a;
        }

        @Override // android.support.v4.app.aa.a
        public final CharSequence b() {
            return this.f108b;
        }

        @Override // android.support.v4.app.aa.a
        public final PendingIntent c() {
            return this.c;
        }

        @Override // android.support.v4.app.aa.a
        public final Bundle d() {
            return this.e;
        }

        @Override // android.support.v4.app.aa.a
        public final /* bridge */ /* synthetic */ ag.a[] e() {
            return this.f;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$b.class */
    public static final class b extends p {

        /* renamed from: a  reason: collision with root package name */
        Bitmap f109a;

        /* renamed from: b  reason: collision with root package name */
        Bitmap f110b;
        boolean c;
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$c.class */
    public static final class c extends p {

        /* renamed from: a  reason: collision with root package name */
        CharSequence f111a;
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$d.class */
    public static final class d {
        Notification A;

        /* renamed from: a  reason: collision with root package name */
        public Context f112a;

        /* renamed from: b  reason: collision with root package name */
        public CharSequence f113b;
        public CharSequence c;
        public PendingIntent d;
        PendingIntent e;
        RemoteViews f;
        public Bitmap g;
        public CharSequence h;
        public int i;
        public boolean l;
        public p m;
        public CharSequence n;
        int o;
        int p;
        boolean q;
        String r;
        boolean s;
        String t;
        String w;
        Bundle x;
        boolean k = true;
        public ArrayList<a> u = new ArrayList<>();
        boolean v = false;
        int y = 0;
        int z = 0;
        public Notification B = new Notification();
        int j = 0;
        public ArrayList<String> C = new ArrayList<>();

        public d(Context context) {
            this.f112a = context;
            this.B.when = System.currentTimeMillis();
            this.B.audioStreamType = -1;
        }

        public static CharSequence c(CharSequence charSequence) {
            CharSequence charSequence2;
            if (charSequence == null) {
                charSequence2 = charSequence;
            } else {
                charSequence2 = charSequence;
                if (charSequence.length() > 5120) {
                    charSequence2 = charSequence.subSequence(0, 5120);
                }
            }
            return charSequence2;
        }

        public final d a() {
            this.B.flags |= 16;
            return this;
        }

        public final d a(int i) {
            this.B.icon = i;
            return this;
        }

        public final d a(CharSequence charSequence) {
            this.f113b = c(charSequence);
            return this;
        }

        public final Notification b() {
            g gVar = x.f106a;
            new e();
            return gVar.a(this);
        }

        public final d b(CharSequence charSequence) {
            this.c = c(charSequence);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$e.class */
    public static final class e {
        protected e() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$f.class */
    public static final class f extends p {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<CharSequence> f114a = new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$g.class */
    public interface g {
        Notification a(d dVar);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$h.class */
    static class h extends o {
        h() {
        }

        @Override // android.support.v4.app.x.o, android.support.v4.app.x.n, android.support.v4.app.x.j, android.support.v4.app.x.g
        public Notification a(d dVar) {
            y.a aVar = new y.a(dVar.f112a, dVar.B, dVar.f113b, dVar.c, dVar.h, dVar.f, dVar.i, dVar.d, dVar.e, dVar.g, dVar.o, dVar.p, dVar.q, dVar.k, dVar.l, dVar.j, dVar.n, dVar.v, dVar.C, dVar.x, dVar.r, dVar.s, dVar.t);
            x.a(aVar, dVar.u);
            x.a(aVar, dVar.m);
            return aVar.b();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$i.class */
    static final class i extends h {
        i() {
        }

        @Override // android.support.v4.app.x.h, android.support.v4.app.x.o, android.support.v4.app.x.n, android.support.v4.app.x.j, android.support.v4.app.x.g
        public final Notification a(d dVar) {
            z.a aVar = new z.a(dVar.f112a, dVar.B, dVar.f113b, dVar.c, dVar.h, dVar.f, dVar.i, dVar.d, dVar.e, dVar.g, dVar.o, dVar.p, dVar.q, dVar.k, dVar.l, dVar.j, dVar.n, dVar.v, dVar.w, dVar.C, dVar.x, dVar.y, dVar.z, dVar.A, dVar.r, dVar.s, dVar.t);
            x.a(aVar, dVar.u);
            x.a(aVar, dVar.m);
            return aVar.b();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$j.class */
    static class j implements g {
        j() {
        }

        @Override // android.support.v4.app.x.g
        public Notification a(d dVar) {
            Notification notification = dVar.B;
            notification.setLatestEventInfo(dVar.f112a, dVar.f113b, dVar.c, dVar.d);
            if (dVar.j > 0) {
                notification.flags |= 128;
            }
            return notification;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$k.class */
    static final class k extends j {
        k() {
        }

        @Override // android.support.v4.app.x.j, android.support.v4.app.x.g
        public final Notification a(d dVar) {
            Notification notification = dVar.B;
            Context context = dVar.f112a;
            CharSequence charSequence = dVar.f113b;
            CharSequence charSequence2 = dVar.c;
            PendingIntent pendingIntent = dVar.d;
            PendingIntent pendingIntent2 = dVar.e;
            notification.setLatestEventInfo(context, charSequence, charSequence2, pendingIntent);
            notification.fullScreenIntent = pendingIntent2;
            if (dVar.j > 0) {
                notification.flags |= 128;
            }
            return notification;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$l.class */
    static final class l extends j {
        l() {
        }

        @Override // android.support.v4.app.x.j, android.support.v4.app.x.g
        public final Notification a(d dVar) {
            Context context = dVar.f112a;
            Notification notification = dVar.B;
            CharSequence charSequence = dVar.f113b;
            CharSequence charSequence2 = dVar.c;
            CharSequence charSequence3 = dVar.h;
            RemoteViews remoteViews = dVar.f;
            int i = dVar.i;
            PendingIntent pendingIntent = dVar.d;
            return new Notification.Builder(context).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(dVar.e, (notification.flags & 128) != 0).setLargeIcon(dVar.g).setNumber(i).getNotification();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$m.class */
    static final class m extends j {
        m() {
        }

        @Override // android.support.v4.app.x.j, android.support.v4.app.x.g
        public final Notification a(d dVar) {
            return new ab.a(dVar.f112a, dVar.B, dVar.f113b, dVar.c, dVar.h, dVar.f, dVar.i, dVar.d, dVar.e, dVar.g, dVar.o, dVar.p, dVar.q).b();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$n.class */
    static class n extends j {
        n() {
        }

        @Override // android.support.v4.app.x.j, android.support.v4.app.x.g
        public Notification a(d dVar) {
            ac.a aVar = new ac.a(dVar.f112a, dVar.B, dVar.f113b, dVar.c, dVar.h, dVar.f, dVar.i, dVar.d, dVar.e, dVar.g, dVar.o, dVar.p, dVar.q, dVar.l, dVar.j, dVar.n, dVar.v, dVar.x, dVar.r, dVar.s, dVar.t);
            x.a(aVar, dVar.u);
            x.a(aVar, dVar.m);
            return aVar.b();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$o.class */
    static class o extends n {
        o() {
        }

        @Override // android.support.v4.app.x.n, android.support.v4.app.x.j, android.support.v4.app.x.g
        public Notification a(d dVar) {
            ad.a aVar = new ad.a(dVar.f112a, dVar.B, dVar.f113b, dVar.c, dVar.h, dVar.f, dVar.i, dVar.d, dVar.e, dVar.g, dVar.o, dVar.p, dVar.q, dVar.k, dVar.l, dVar.j, dVar.n, dVar.v, dVar.C, dVar.x, dVar.r, dVar.s, dVar.t);
            x.a(aVar, dVar.u);
            x.a(aVar, dVar.m);
            return aVar.b();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/x$p.class */
    public static abstract class p {
        CharSequence d;
        CharSequence e;
        boolean f = false;
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f106a = new i();
        } else if (Build.VERSION.SDK_INT >= 20) {
            f106a = new h();
        } else if (Build.VERSION.SDK_INT >= 19) {
            f106a = new o();
        } else if (Build.VERSION.SDK_INT >= 16) {
            f106a = new n();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f106a = new m();
        } else if (Build.VERSION.SDK_INT >= 11) {
            f106a = new l();
        } else if (Build.VERSION.SDK_INT >= 9) {
            f106a = new k();
        } else {
            f106a = new j();
        }
    }

    static /* synthetic */ void a(v vVar, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            vVar.a((a) it.next());
        }
    }

    static /* synthetic */ void a(w wVar, p pVar) {
        if (pVar == null) {
            return;
        }
        if (pVar instanceof c) {
            c cVar = (c) pVar;
            ac.a(wVar, cVar.d, cVar.f, cVar.e, cVar.f111a);
        } else if (pVar instanceof f) {
            f fVar = (f) pVar;
            ac.a(wVar, fVar.d, fVar.f, fVar.e, fVar.f114a);
        } else if (pVar instanceof b) {
            b bVar = (b) pVar;
            ac.a(wVar, bVar.d, bVar.f, bVar.e, bVar.f109a, bVar.f110b, bVar.c);
        }
    }
}
