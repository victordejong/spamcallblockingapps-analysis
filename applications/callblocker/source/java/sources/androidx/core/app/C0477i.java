package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.app.C0472h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.app.i */
/* loaded from: classes-dex2jar.jar:androidx/core/app/i.class */
public class C0477i implements AbstractC0471g {

    /* renamed from: a */
    private final Notification.Builder f1839a;

    /* renamed from: b */
    private final C0472h.C0475c f1840b;

    /* renamed from: c */
    private RemoteViews f1841c;

    /* renamed from: d */
    private RemoteViews f1842d;

    /* renamed from: e */
    private final List<Bundle> f1843e = new ArrayList();

    /* renamed from: f */
    private final Bundle f1844f = new Bundle();

    /* renamed from: g */
    private int f1845g;

    /* renamed from: h */
    private RemoteViews f1846h;

    public C0477i(C0472h.C0475c c0475c) {
        this.f1840b = c0475c;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1839a = new Notification.Builder(c0475c.f1809a, c0475c.f1802I);
        } else {
            this.f1839a = new Notification.Builder(c0475c.f1809a);
        }
        Notification notification = c0475c.f1807N;
        this.f1839a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, c0475c.f1816h).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(c0475c.f1812d).setContentText(c0475c.f1813e).setContentInfo(c0475c.f1818j).setContentIntent(c0475c.f1814f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(c0475c.f1815g, (notification.flags & 128) != 0).setLargeIcon(c0475c.f1817i).setNumber(c0475c.f1819k).setProgress(c0475c.f1826r, c0475c.f1827s, c0475c.f1828t);
        if (Build.VERSION.SDK_INT < 21) {
            this.f1839a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1839a.setSubText(c0475c.f1824p).setUsesChronometer(c0475c.f1822n).setPriority(c0475c.f1820l);
            Iterator<C0472h.C0473a> it = c0475c.f1810b.iterator();
            while (it.hasNext()) {
                m20758a(it.next());
            }
            if (c0475c.f1795B != null) {
                this.f1844f.putAll(c0475c.f1795B);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (c0475c.f1832x) {
                    this.f1844f.putBoolean("android.support.localOnly", true);
                }
                if (c0475c.f1829u != null) {
                    this.f1844f.putString("android.support.groupKey", c0475c.f1829u);
                    if (c0475c.f1830v) {
                        this.f1844f.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f1844f.putBoolean("android.support.useSideChannel", true);
                    }
                }
                if (c0475c.f1831w != null) {
                    this.f1844f.putString("android.support.sortKey", c0475c.f1831w);
                }
            }
            this.f1841c = c0475c.f1799F;
            this.f1842d = c0475c.f1800G;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1839a.setShowWhen(c0475c.f1821m);
            if (Build.VERSION.SDK_INT < 21 && c0475c.f1808O != null && !c0475c.f1808O.isEmpty()) {
                this.f1844f.putStringArray("android.people", (String[]) c0475c.f1808O.toArray(new String[c0475c.f1808O.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f1839a.setLocalOnly(c0475c.f1832x).setGroup(c0475c.f1829u).setGroupSummary(c0475c.f1830v).setSortKey(c0475c.f1831w);
            this.f1845g = c0475c.f1806M;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1839a.setCategory(c0475c.f1794A).setColor(c0475c.f1796C).setVisibility(c0475c.f1797D).setPublicVersion(c0475c.f1798E).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = c0475c.f1808O.iterator();
            while (it2.hasNext()) {
                this.f1839a.addPerson(it2.next());
            }
            this.f1846h = c0475c.f1801H;
            if (c0475c.f1811c.size() > 0) {
                Bundle bundle = c0475c.m20784a().getBundle("android.car.EXTENSIONS");
                bundle = bundle == null ? new Bundle() : bundle;
                Bundle bundle2 = new Bundle();
                for (int i = 0; i < c0475c.f1811c.size(); i++) {
                    bundle2.putBundle(Integer.toString(i), C0478j.m20753a(c0475c.f1811c.get(i)));
                }
                bundle.putBundle("invisible_actions", bundle2);
                c0475c.m20784a().putBundle("android.car.EXTENSIONS", bundle);
                this.f1844f.putBundle("android.car.EXTENSIONS", bundle);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1839a.setExtras(c0475c.f1795B).setRemoteInputHistory(c0475c.f1825q);
            if (c0475c.f1799F != null) {
                this.f1839a.setCustomContentView(c0475c.f1799F);
            }
            if (c0475c.f1800G != null) {
                this.f1839a.setCustomBigContentView(c0475c.f1800G);
            }
            if (c0475c.f1801H != null) {
                this.f1839a.setCustomHeadsUpContentView(c0475c.f1801H);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1839a.setBadgeIconType(c0475c.f1803J).setShortcutId(c0475c.f1804K).setTimeoutAfter(c0475c.f1805L).setGroupAlertBehavior(c0475c.f1806M);
            if (c0475c.f1834z) {
                this.f1839a.setColorized(c0475c.f1833y);
            }
            if (TextUtils.isEmpty(c0475c.f1802I)) {
                return;
            }
            this.f1839a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
    }

    /* renamed from: a */
    private void m20759a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }

    /* renamed from: a */
    private void m20758a(C0472h.C0473a c0473a) {
        if (Build.VERSION.SDK_INT < 20) {
            if (Build.VERSION.SDK_INT < 16) {
                return;
            }
            this.f1843e.add(C0478j.m20755a(this.f1839a, c0473a));
            return;
        }
        Notification.Action.Builder builder = new Notification.Action.Builder(c0473a.m20794a(), c0473a.m20793b(), c0473a.m20792c());
        if (c0473a.m20789f() != null) {
            for (RemoteInput remoteInput : C0479k.m20747a(c0473a.m20789f())) {
                builder.addRemoteInput(remoteInput);
            }
        }
        Bundle bundle = c0473a.m20791d() != null ? new Bundle(c0473a.m20791d()) : new Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", c0473a.m20790e());
        if (Build.VERSION.SDK_INT >= 24) {
            builder.setAllowGeneratedReplies(c0473a.m20790e());
        }
        bundle.putInt("android.support.action.semanticAction", c0473a.m20788g());
        if (Build.VERSION.SDK_INT >= 28) {
            builder.setSemanticAction(c0473a.m20788g());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", c0473a.m20786i());
        builder.addExtras(bundle);
        this.f1839a.addAction(builder.build());
    }

    @Override // androidx.core.app.AbstractC0471g
    /* renamed from: a */
    public Notification.Builder mo20760a() {
        return this.f1839a;
    }

    /* renamed from: b */
    public Notification m20757b() {
        Bundle m20795a;
        RemoteViews m20761d;
        RemoteViews m20762c;
        C0472h.AbstractC0476d abstractC0476d = this.f1840b.f1823o;
        if (abstractC0476d != null) {
            abstractC0476d.mo20765a(this);
        }
        RemoteViews m20763b = abstractC0476d != null ? abstractC0476d.m20763b(this) : null;
        Notification m20756c = m20756c();
        if (m20763b != null) {
            m20756c.contentView = m20763b;
        } else if (this.f1840b.f1799F != null) {
            m20756c.contentView = this.f1840b.f1799F;
        }
        if (Build.VERSION.SDK_INT >= 16 && abstractC0476d != null && (m20762c = abstractC0476d.m20762c(this)) != null) {
            m20756c.bigContentView = m20762c;
        }
        if (Build.VERSION.SDK_INT >= 21 && abstractC0476d != null && (m20761d = this.f1840b.f1823o.m20761d(this)) != null) {
            m20756c.headsUpContentView = m20761d;
        }
        if (Build.VERSION.SDK_INT >= 16 && abstractC0476d != null && (m20795a = C0472h.m20795a(m20756c)) != null) {
            abstractC0476d.m20766a(m20795a);
        }
        return m20756c;
    }

    /* renamed from: c */
    protected Notification m20756c() {
        Notification notification;
        if (Build.VERSION.SDK_INT >= 26) {
            notification = this.f1839a.build();
        } else if (Build.VERSION.SDK_INT >= 24) {
            Notification build = this.f1839a.build();
            notification = build;
            if (this.f1845g != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && this.f1845g == 2) {
                    m20759a(build);
                }
                notification = build;
                if (build.getGroup() != null) {
                    notification = build;
                    if ((build.flags & 512) == 0) {
                        notification = build;
                        if (this.f1845g == 1) {
                            m20759a(build);
                            notification = build;
                        }
                    }
                }
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f1839a.setExtras(this.f1844f);
            Notification build2 = this.f1839a.build();
            if (this.f1841c != null) {
                build2.contentView = this.f1841c;
            }
            if (this.f1842d != null) {
                build2.bigContentView = this.f1842d;
            }
            if (this.f1846h != null) {
                build2.headsUpContentView = this.f1846h;
            }
            notification = build2;
            if (this.f1845g != 0) {
                if (build2.getGroup() != null && (build2.flags & 512) != 0 && this.f1845g == 2) {
                    m20759a(build2);
                }
                notification = build2;
                if (build2.getGroup() != null) {
                    notification = build2;
                    if ((build2.flags & 512) == 0) {
                        notification = build2;
                        if (this.f1845g == 1) {
                            m20759a(build2);
                            notification = build2;
                        }
                    }
                }
            }
        } else if (Build.VERSION.SDK_INT >= 20) {
            this.f1839a.setExtras(this.f1844f);
            Notification build3 = this.f1839a.build();
            if (this.f1841c != null) {
                build3.contentView = this.f1841c;
            }
            if (this.f1842d != null) {
                build3.bigContentView = this.f1842d;
            }
            notification = build3;
            if (this.f1845g != 0) {
                if (build3.getGroup() != null && (build3.flags & 512) != 0 && this.f1845g == 2) {
                    m20759a(build3);
                }
                notification = build3;
                if (build3.getGroup() != null) {
                    notification = build3;
                    if ((build3.flags & 512) == 0) {
                        notification = build3;
                        if (this.f1845g == 1) {
                            m20759a(build3);
                            notification = build3;
                        }
                    }
                }
            }
        } else if (Build.VERSION.SDK_INT >= 19) {
            SparseArray<Bundle> m20751a = C0478j.m20751a(this.f1843e);
            if (m20751a != null) {
                this.f1844f.putSparseParcelableArray("android.support.actionExtras", m20751a);
            }
            this.f1839a.setExtras(this.f1844f);
            Notification build4 = this.f1839a.build();
            if (this.f1841c != null) {
                build4.contentView = this.f1841c;
            }
            notification = build4;
            if (this.f1842d != null) {
                build4.bigContentView = this.f1842d;
                notification = build4;
            }
        } else if (Build.VERSION.SDK_INT >= 16) {
            notification = this.f1839a.build();
            Bundle m20795a = C0472h.m20795a(notification);
            Bundle bundle = new Bundle(this.f1844f);
            for (String str : this.f1844f.keySet()) {
                if (m20795a.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            m20795a.putAll(bundle);
            SparseArray<Bundle> m20751a2 = C0478j.m20751a(this.f1843e);
            if (m20751a2 != null) {
                C0472h.m20795a(notification).putSparseParcelableArray("android.support.actionExtras", m20751a2);
            }
            if (this.f1841c != null) {
                notification.contentView = this.f1841c;
            }
            if (this.f1842d != null) {
                notification.bigContentView = this.f1842d;
            }
        } else {
            notification = this.f1839a.getNotification();
        }
        return notification;
    }
}
