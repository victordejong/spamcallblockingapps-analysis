package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.g;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/core/app/h.class */
public final class h implements f {

    /* renamed from: a  reason: collision with root package name */
    final Notification.Builder f1753a;

    /* renamed from: b  reason: collision with root package name */
    final g.e f1754b;

    /* renamed from: c  reason: collision with root package name */
    RemoteViews f1755c;

    /* renamed from: d  reason: collision with root package name */
    RemoteViews f1756d;
    final List<Bundle> e = new ArrayList();
    final Bundle f = new Bundle();
    int g;
    RemoteViews h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g.e eVar) {
        Notification.BubbleMetadata bubbleMetadata;
        this.f1754b = eVar;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1753a = new Notification.Builder(eVar.f1736a, eVar.I);
        } else {
            this.f1753a = new Notification.Builder(eVar.f1736a);
        }
        Notification notification = eVar.P;
        boolean z = false;
        this.f1753a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, eVar.h).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(eVar.f1739d).setContentText(eVar.e).setContentInfo(eVar.j).setContentIntent(eVar.f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(eVar.g, (notification.flags & 128) != 0).setLargeIcon(eVar.i).setNumber(eVar.k).setProgress(eVar.r, eVar.s, eVar.t);
        if (Build.VERSION.SDK_INT < 21) {
            this.f1753a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1753a.setSubText(eVar.p).setUsesChronometer(eVar.n).setPriority(eVar.l);
            Iterator<g.a> it2 = eVar.f1737b.iterator();
            while (it2.hasNext()) {
                a(it2.next());
            }
            if (eVar.B != null) {
                this.f.putAll(eVar.B);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (eVar.x) {
                    this.f.putBoolean("android.support.localOnly", true);
                }
                if (eVar.u != null) {
                    this.f.putString("android.support.groupKey", eVar.u);
                    if (eVar.v) {
                        this.f.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f.putBoolean("android.support.useSideChannel", true);
                    }
                }
                if (eVar.w != null) {
                    this.f.putString("android.support.sortKey", eVar.w);
                }
            }
            this.f1755c = eVar.F;
            this.f1756d = eVar.G;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1753a.setShowWhen(eVar.m);
            if (Build.VERSION.SDK_INT < 21 && eVar.R != null && !eVar.R.isEmpty()) {
                this.f.putStringArray("android.people", (String[]) eVar.R.toArray(new String[eVar.R.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f1753a.setLocalOnly(eVar.x).setGroup(eVar.u).setGroupSummary(eVar.v).setSortKey(eVar.w);
            this.g = eVar.M;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1753a.setCategory(eVar.A).setColor(eVar.C).setVisibility(eVar.D).setPublicVersion(eVar.E).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it3 = eVar.R.iterator();
            while (it3.hasNext()) {
                this.f1753a.addPerson(it3.next());
            }
            this.h = eVar.H;
            if (eVar.f1738c.size() > 0) {
                Bundle bundle = eVar.a().getBundle("android.car.EXTENSIONS");
                Bundle bundle2 = bundle == null ? new Bundle() : bundle;
                Bundle bundle3 = new Bundle();
                for (int i = 0; i < eVar.f1738c.size(); i++) {
                    bundle3.putBundle(Integer.toString(i), i.a(eVar.f1738c.get(i)));
                }
                bundle2.putBundle("invisible_actions", bundle3);
                eVar.a().putBundle("android.car.EXTENSIONS", bundle2);
                this.f.putBundle("android.car.EXTENSIONS", bundle2);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1753a.setExtras(eVar.B).setRemoteInputHistory(eVar.q);
            if (eVar.F != null) {
                this.f1753a.setCustomContentView(eVar.F);
            }
            if (eVar.G != null) {
                this.f1753a.setCustomBigContentView(eVar.G);
            }
            if (eVar.H != null) {
                this.f1753a.setCustomHeadsUpContentView(eVar.H);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1753a.setBadgeIconType(eVar.J).setShortcutId(eVar.K).setTimeoutAfter(eVar.L).setGroupAlertBehavior(eVar.M);
            if (eVar.z) {
                this.f1753a.setColorized(eVar.y);
            }
            if (!TextUtils.isEmpty(eVar.I)) {
                this.f1753a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1753a.setAllowSystemGeneratedContextualActions(eVar.N);
            Notification.Builder builder = this.f1753a;
            g.d dVar = eVar.O;
            if (dVar == null) {
                bubbleMetadata = null;
            } else {
                Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setAutoExpandBubble((dVar.f & 1) != 0).setDeleteIntent(dVar.f1733b).setIcon(dVar.f1734c.c()).setIntent(dVar.f1732a).setSuppressNotification((dVar.f & 2) != 0 ? true : z);
                if (dVar.f1735d != 0) {
                    suppressNotification.setDesiredHeight(dVar.f1735d);
                }
                if (dVar.e != 0) {
                    suppressNotification.setDesiredHeightResId(dVar.e);
                }
                bubbleMetadata = suppressNotification.build();
            }
            builder.setBubbleMetadata(bubbleMetadata);
        }
        if (eVar.Q) {
            if (this.f1754b.v) {
                this.g = 2;
            } else {
                this.g = 1;
            }
            this.f1753a.setVibrate(null);
            this.f1753a.setSound(null);
            notification.defaults &= -2;
            notification.defaults &= -3;
            this.f1753a.setDefaults(notification.defaults);
            if (Build.VERSION.SDK_INT >= 26) {
                if (TextUtils.isEmpty(this.f1754b.u)) {
                    this.f1753a.setGroup("silent");
                }
                this.f1753a.setGroupAlertBehavior(this.g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }

    private void a(g.a aVar) {
        if (Build.VERSION.SDK_INT >= 20) {
            IconCompat a2 = aVar.a();
            Notification.Action.Builder builder = Build.VERSION.SDK_INT >= 23 ? new Notification.Action.Builder(a2 != null ? a2.c() : null, aVar.i, aVar.j) : new Notification.Action.Builder(a2 != null ? a2.b() : 0, aVar.i, aVar.j);
            if (aVar.f1725b != null) {
                for (RemoteInput remoteInput : l.a(aVar.f1725b)) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            Bundle bundle = aVar.f1724a != null ? new Bundle(aVar.f1724a) : new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", aVar.f1727d);
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(aVar.f1727d);
            }
            bundle.putInt("android.support.action.semanticAction", aVar.f);
            if (Build.VERSION.SDK_INT >= 28) {
                builder.setSemanticAction(aVar.f);
            }
            if (Build.VERSION.SDK_INT >= 29) {
                builder.setContextual(aVar.g);
            }
            bundle.putBoolean("android.support.action.showsUserInterface", aVar.e);
            builder.addExtras(bundle);
            this.f1753a.addAction(builder.build());
        } else if (Build.VERSION.SDK_INT >= 16) {
            this.e.add(i.a(this.f1753a, aVar));
        }
    }

    @Override // androidx.core.app.f
    public final Notification.Builder a() {
        return this.f1753a;
    }
}
