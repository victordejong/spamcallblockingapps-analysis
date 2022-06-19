package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.app.C0445h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.app.i */
/* loaded from: classes-dex2jar.jar:androidx/core/app/i.class */
public class C0454i implements AbstractC0444g {

    /* renamed from: a */
    private final Notification.Builder f1688a;

    /* renamed from: b */
    private final C0445h.C0450d f1689b;

    /* renamed from: c */
    private RemoteViews f1690c;

    /* renamed from: d */
    private RemoteViews f1691d;

    /* renamed from: e */
    private final List<Bundle> f1692e = new ArrayList();

    /* renamed from: f */
    private final Bundle f1693f = new Bundle();

    /* renamed from: g */
    private int f1694g;

    /* renamed from: h */
    private RemoteViews f1695h;

    public C0454i(C0445h.C0450d c0450d) {
        this.f1689b = c0450d;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1688a = new Notification.Builder(c0450d.f1644a, c0450d.f1637I);
        } else {
            this.f1688a = new Notification.Builder(c0450d.f1644a);
        }
        Notification notification = c0450d.f1642N;
        this.f1688a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, c0450d.f1651h).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(c0450d.f1647d).setContentText(c0450d.f1648e).setContentInfo(c0450d.f1653j).setContentIntent(c0450d.f1649f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(c0450d.f1650g, (notification.flags & 128) != 0).setLargeIcon(c0450d.f1652i).setNumber(c0450d.f1654k).setProgress(c0450d.f1661r, c0450d.f1662s, c0450d.f1663t);
        if (Build.VERSION.SDK_INT < 21) {
            this.f1688a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1688a.setSubText(c0450d.f1659p).setUsesChronometer(c0450d.f1657n).setPriority(c0450d.f1655l);
            Iterator<C0445h.C0446a> it = c0450d.f1645b.iterator();
            while (it.hasNext()) {
                m6581a(it.next());
            }
            if (c0450d.f1630B != null) {
                this.f1693f.putAll(c0450d.f1630B);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (c0450d.f1667x) {
                    this.f1693f.putBoolean("android.support.localOnly", true);
                }
                if (c0450d.f1664u != null) {
                    this.f1693f.putString("android.support.groupKey", c0450d.f1664u);
                    if (c0450d.f1665v) {
                        this.f1693f.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f1693f.putBoolean("android.support.useSideChannel", true);
                    }
                }
                if (c0450d.f1666w != null) {
                    this.f1693f.putString("android.support.sortKey", c0450d.f1666w);
                }
            }
            this.f1690c = c0450d.f1634F;
            this.f1691d = c0450d.f1635G;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1688a.setShowWhen(c0450d.f1656m);
            if (Build.VERSION.SDK_INT < 21 && c0450d.f1643O != null && !c0450d.f1643O.isEmpty()) {
                this.f1693f.putStringArray("android.people", (String[]) c0450d.f1643O.toArray(new String[c0450d.f1643O.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f1688a.setLocalOnly(c0450d.f1667x).setGroup(c0450d.f1664u).setGroupSummary(c0450d.f1665v).setSortKey(c0450d.f1666w);
            this.f1694g = c0450d.f1641M;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1688a.setCategory(c0450d.f1629A).setColor(c0450d.f1631C).setVisibility(c0450d.f1632D).setPublicVersion(c0450d.f1633E).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = c0450d.f1643O.iterator();
            while (it2.hasNext()) {
                this.f1688a.addPerson(it2.next());
            }
            this.f1695h = c0450d.f1636H;
            if (c0450d.f1646c.size() > 0) {
                Bundle bundle = c0450d.m6634a().getBundle("android.car.EXTENSIONS");
                Bundle bundle2 = bundle == null ? new Bundle() : bundle;
                Bundle bundle3 = new Bundle();
                for (int i = 0; i < c0450d.f1646c.size(); i++) {
                    bundle3.putBundle(Integer.toString(i), C0455j.m6576a(c0450d.f1646c.get(i)));
                }
                bundle2.putBundle("invisible_actions", bundle3);
                c0450d.m6634a().putBundle("android.car.EXTENSIONS", bundle2);
                this.f1693f.putBundle("android.car.EXTENSIONS", bundle2);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1688a.setExtras(c0450d.f1630B).setRemoteInputHistory(c0450d.f1660q);
            if (c0450d.f1634F != null) {
                this.f1688a.setCustomContentView(c0450d.f1634F);
            }
            if (c0450d.f1635G != null) {
                this.f1688a.setCustomBigContentView(c0450d.f1635G);
            }
            if (c0450d.f1636H != null) {
                this.f1688a.setCustomHeadsUpContentView(c0450d.f1636H);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1688a.setBadgeIconType(c0450d.f1638J).setShortcutId(c0450d.f1639K).setTimeoutAfter(c0450d.f1640L).setGroupAlertBehavior(c0450d.f1641M);
            if (c0450d.f1669z) {
                this.f1688a.setColorized(c0450d.f1668y);
            }
            if (TextUtils.isEmpty(c0450d.f1637I)) {
                return;
            }
            this.f1688a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
    }

    /* renamed from: a */
    private void m6582a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }

    /* renamed from: a */
    private void m6581a(C0445h.C0446a c0446a) {
        if (Build.VERSION.SDK_INT < 20) {
            if (Build.VERSION.SDK_INT < 16) {
                return;
            }
            this.f1692e.add(C0455j.m6578a(this.f1688a, c0446a));
            return;
        }
        Notification.Action.Builder builder = new Notification.Action.Builder(c0446a.m6647a(), c0446a.m6646b(), c0446a.m6645c());
        if (c0446a.m6642f() != null) {
            for (RemoteInput remoteInput : C0456k.m6570a(c0446a.m6642f())) {
                builder.addRemoteInput(remoteInput);
            }
        }
        Bundle bundle = c0446a.m6644d() != null ? new Bundle(c0446a.m6644d()) : new Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", c0446a.m6643e());
        if (Build.VERSION.SDK_INT >= 24) {
            builder.setAllowGeneratedReplies(c0446a.m6643e());
        }
        bundle.putInt("android.support.action.semanticAction", c0446a.m6641g());
        if (Build.VERSION.SDK_INT >= 28) {
            builder.setSemanticAction(c0446a.m6641g());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", c0446a.m6639i());
        builder.addExtras(bundle);
        this.f1688a.addAction(builder.build());
    }

    @Override // androidx.core.app.AbstractC0444g
    /* renamed from: a */
    public Notification.Builder mo6583a() {
        return this.f1688a;
    }

    /* renamed from: b */
    public Notification m6580b() {
        Bundle m6648a;
        RemoteViews m6591d;
        RemoteViews m6592c;
        C0445h.AbstractC0452f abstractC0452f = this.f1689b.f1658o;
        if (abstractC0452f != null) {
            abstractC0452f.mo6595a(this);
        }
        RemoteViews m6593b = abstractC0452f != null ? abstractC0452f.m6593b(this) : null;
        Notification m6579c = m6579c();
        if (m6593b != null) {
            m6579c.contentView = m6593b;
        } else if (this.f1689b.f1634F != null) {
            m6579c.contentView = this.f1689b.f1634F;
        }
        if (Build.VERSION.SDK_INT >= 16 && abstractC0452f != null && (m6592c = abstractC0452f.m6592c(this)) != null) {
            m6579c.bigContentView = m6592c;
        }
        if (Build.VERSION.SDK_INT >= 21 && abstractC0452f != null && (m6591d = this.f1689b.f1658o.m6591d(this)) != null) {
            m6579c.headsUpContentView = m6591d;
        }
        if (Build.VERSION.SDK_INT >= 16 && abstractC0452f != null && (m6648a = C0445h.m6648a(m6579c)) != null) {
            abstractC0452f.m6596a(m6648a);
        }
        return m6579c;
    }

    /* renamed from: c */
    protected Notification m6579c() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f1688a.build();
        }
        if (Build.VERSION.SDK_INT >= 24) {
            Notification build = this.f1688a.build();
            if (this.f1694g != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && this.f1694g == 2) {
                    m6582a(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.f1694g == 1) {
                    m6582a(build);
                }
            }
            return build;
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f1688a.setExtras(this.f1693f);
            Notification build2 = this.f1688a.build();
            RemoteViews remoteViews = this.f1690c;
            if (remoteViews != null) {
                build2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f1691d;
            if (remoteViews2 != null) {
                build2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.f1695h;
            if (remoteViews3 != null) {
                build2.headsUpContentView = remoteViews3;
            }
            if (this.f1694g != 0) {
                if (build2.getGroup() != null && (build2.flags & 512) != 0 && this.f1694g == 2) {
                    m6582a(build2);
                }
                if (build2.getGroup() != null && (build2.flags & 512) == 0 && this.f1694g == 1) {
                    m6582a(build2);
                }
            }
            return build2;
        } else if (Build.VERSION.SDK_INT >= 20) {
            this.f1688a.setExtras(this.f1693f);
            Notification build3 = this.f1688a.build();
            RemoteViews remoteViews4 = this.f1690c;
            if (remoteViews4 != null) {
                build3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f1691d;
            if (remoteViews5 != null) {
                build3.bigContentView = remoteViews5;
            }
            if (this.f1694g != 0) {
                if (build3.getGroup() != null && (build3.flags & 512) != 0 && this.f1694g == 2) {
                    m6582a(build3);
                }
                if (build3.getGroup() != null && (build3.flags & 512) == 0 && this.f1694g == 1) {
                    m6582a(build3);
                }
            }
            return build3;
        } else if (Build.VERSION.SDK_INT >= 19) {
            SparseArray<Bundle> m6574a = C0455j.m6574a(this.f1692e);
            if (m6574a != null) {
                this.f1693f.putSparseParcelableArray("android.support.actionExtras", m6574a);
            }
            this.f1688a.setExtras(this.f1693f);
            Notification build4 = this.f1688a.build();
            RemoteViews remoteViews6 = this.f1690c;
            if (remoteViews6 != null) {
                build4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f1691d;
            if (remoteViews7 != null) {
                build4.bigContentView = remoteViews7;
            }
            return build4;
        } else if (Build.VERSION.SDK_INT < 16) {
            return this.f1688a.getNotification();
        } else {
            Notification build5 = this.f1688a.build();
            Bundle m6648a = C0445h.m6648a(build5);
            Bundle bundle = new Bundle(this.f1693f);
            for (String str : this.f1693f.keySet()) {
                if (m6648a.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            m6648a.putAll(bundle);
            SparseArray<Bundle> m6574a2 = C0455j.m6574a(this.f1692e);
            if (m6574a2 != null) {
                C0445h.m6648a(build5).putSparseParcelableArray("android.support.actionExtras", m6574a2);
            }
            RemoteViews remoteViews8 = this.f1690c;
            if (remoteViews8 != null) {
                build5.contentView = remoteViews8;
            }
            RemoteViews remoteViews9 = this.f1691d;
            if (remoteViews9 != null) {
                build5.bigContentView = remoteViews9;
            }
            return build5;
        }
    }
}
