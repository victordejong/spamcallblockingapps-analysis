package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.app.C0565h;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p020b.p036e.C1491b;
/* renamed from: androidx.core.app.i */
/* loaded from: classes-dex2jar.jar:androidx/core/app/i.class */
public class C0576i implements AbstractC0564g {

    /* renamed from: a */
    private final Context f2919a;

    /* renamed from: b */
    private final Notification.Builder f2920b;

    /* renamed from: c */
    private final C0565h.C0574e f2921c;

    /* renamed from: d */
    private RemoteViews f2922d;

    /* renamed from: e */
    private RemoteViews f2923e;

    /* renamed from: f */
    private final List<Bundle> f2924f = new ArrayList();

    /* renamed from: g */
    private final Bundle f2925g = new Bundle();

    /* renamed from: h */
    private int f2926h;

    /* renamed from: i */
    private RemoteViews f2927i;

    public C0576i(C0565h.C0574e c0574e) {
        Icon icon;
        List<String> m33392e;
        this.f2921c = c0574e;
        this.f2919a = c0574e.f2889a;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f2920b = new Notification.Builder(c0574e.f2889a, c0574e.f2877K);
        } else {
            this.f2920b = new Notification.Builder(c0574e.f2889a);
        }
        Notification notification = c0574e.f2885S;
        this.f2920b.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, c0574e.f2897i).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(c0574e.f2893e).setContentText(c0574e.f2894f).setContentInfo(c0574e.f2899k).setContentIntent(c0574e.f2895g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(c0574e.f2896h, (notification.flags & 128) != 0).setLargeIcon(c0574e.f2898j).setNumber(c0574e.f2900l).setProgress(c0574e.f2908t, c0574e.f2909u, c0574e.f2910v);
        if (i < 21) {
            this.f2920b.setSound(notification.sound, notification.audioStreamType);
        }
        if (i >= 16) {
            this.f2920b.setSubText(c0574e.f2905q).setUsesChronometer(c0574e.f2903o).setPriority(c0574e.f2901m);
            Iterator<C0565h.C0566a> it = c0574e.f2890b.iterator();
            while (it.hasNext()) {
                m33395b(it.next());
            }
            Bundle bundle = c0574e.f2870D;
            if (bundle != null) {
                this.f2925g.putAll(bundle);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (c0574e.f2914z) {
                    this.f2925g.putBoolean("android.support.localOnly", true);
                }
                String str = c0574e.f2911w;
                if (str != null) {
                    this.f2925g.putString("android.support.groupKey", str);
                    if (c0574e.f2912x) {
                        this.f2925g.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f2925g.putBoolean("android.support.useSideChannel", true);
                    }
                }
                String str2 = c0574e.f2913y;
                if (str2 != null) {
                    this.f2925g.putString("android.support.sortKey", str2);
                }
            }
            this.f2922d = c0574e.f2874H;
            this.f2923e = c0574e.f2875I;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            this.f2920b.setShowWhen(c0574e.f2902n);
        }
        if (i2 >= 19 && i2 < 21 && (m33392e = m33392e(m33390g(c0574e.f2891c), c0574e.f2888V)) != null && !m33392e.isEmpty()) {
            this.f2925g.putStringArray("android.people", (String[]) m33392e.toArray(new String[m33392e.size()]));
        }
        if (i2 >= 20) {
            this.f2920b.setLocalOnly(c0574e.f2914z).setGroup(c0574e.f2911w).setGroupSummary(c0574e.f2912x).setSortKey(c0574e.f2913y);
            this.f2926h = c0574e.f2882P;
        }
        if (i2 >= 21) {
            this.f2920b.setCategory(c0574e.f2869C).setColor(c0574e.f2871E).setVisibility(c0574e.f2872F).setPublicVersion(c0574e.f2873G).setSound(notification.sound, notification.audioAttributes);
            List<String> m33392e2 = i2 < 28 ? m33392e(m33390g(c0574e.f2891c), c0574e.f2888V) : c0574e.f2888V;
            if (m33392e2 != null && !m33392e2.isEmpty()) {
                for (String str3 : m33392e2) {
                    this.f2920b.addPerson(str3);
                }
            }
            this.f2927i = c0574e.f2876J;
            if (c0574e.f2892d.size() > 0) {
                Bundle bundle2 = c0574e.m33427c().getBundle("android.car.EXTENSIONS");
                Bundle bundle3 = bundle2 == null ? new Bundle() : bundle2;
                Bundle bundle4 = new Bundle(bundle3);
                Bundle bundle5 = new Bundle();
                for (int i3 = 0; i3 < c0574e.f2892d.size(); i3++) {
                    bundle5.putBundle(Integer.toString(i3), C0577j.m33387b(c0574e.f2892d.get(i3)));
                }
                bundle3.putBundle("invisible_actions", bundle5);
                bundle4.putBundle("invisible_actions", bundle5);
                c0574e.m33427c().putBundle("android.car.EXTENSIONS", bundle3);
                this.f2925g.putBundle("android.car.EXTENSIONS", bundle4);
            }
        }
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 23 && (icon = c0574e.f2887U) != null) {
            this.f2920b.setSmallIcon(icon);
        }
        if (i4 >= 24) {
            this.f2920b.setExtras(c0574e.f2870D).setRemoteInputHistory(c0574e.f2907s);
            RemoteViews remoteViews = c0574e.f2874H;
            if (remoteViews != null) {
                this.f2920b.setCustomContentView(remoteViews);
            }
            RemoteViews remoteViews2 = c0574e.f2875I;
            if (remoteViews2 != null) {
                this.f2920b.setCustomBigContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = c0574e.f2876J;
            if (remoteViews3 != null) {
                this.f2920b.setCustomHeadsUpContentView(remoteViews3);
            }
        }
        if (i4 >= 26) {
            this.f2920b.setBadgeIconType(c0574e.f2878L).setSettingsText(c0574e.f2906r).setShortcutId(c0574e.f2879M).setTimeoutAfter(c0574e.f2881O).setGroupAlertBehavior(c0574e.f2882P);
            if (c0574e.f2868B) {
                this.f2920b.setColorized(c0574e.f2867A);
            }
            if (!TextUtils.isEmpty(c0574e.f2877K)) {
                this.f2920b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i4 >= 28) {
            Iterator<C0579l> it2 = c0574e.f2891c.iterator();
            while (it2.hasNext()) {
                this.f2920b.addPerson(it2.next().m33373h());
            }
        }
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 29) {
            this.f2920b.setAllowSystemGeneratedContextualActions(c0574e.f2883Q);
            this.f2920b.setBubbleMetadata(C0565h.C0571d.m33434a(c0574e.f2884R));
            if (c0574e.f2880N != null) {
                throw null;
            }
        }
        if (c0574e.f2886T) {
            if (this.f2921c.f2912x) {
                this.f2926h = 2;
            } else {
                this.f2926h = 1;
            }
            this.f2920b.setVibrate(null);
            this.f2920b.setSound(null);
            int i6 = notification.defaults & (-2);
            notification.defaults = i6;
            int i7 = i6 & (-3);
            notification.defaults = i7;
            this.f2920b.setDefaults(i7);
            if (i5 < 26) {
                return;
            }
            if (TextUtils.isEmpty(this.f2921c.f2911w)) {
                this.f2920b.setGroup("silent");
            }
            this.f2920b.setGroupAlertBehavior(this.f2926h);
        }
    }

    /* renamed from: b */
    private void m33395b(C0565h.C0566a c0566a) {
        int i = Build.VERSION.SDK_INT;
        if (i < 20) {
            if (i < 16) {
                return;
            }
            this.f2924f.add(C0577j.m33383f(this.f2920b, c0566a));
            return;
        }
        IconCompat m33446e = c0566a.m33446e();
        Notification.Action.Builder builder = i >= 23 ? new Notification.Action.Builder(m33446e != null ? m33446e.m33232p() : null, c0566a.m33442i(), c0566a.m33450a()) : new Notification.Action.Builder(m33446e != null ? m33446e.m33243e() : 0, c0566a.m33442i(), c0566a.m33450a());
        if (c0566a.m33445f() != null) {
            for (RemoteInput remoteInput : C0580m.m33371b(c0566a.m33445f())) {
                builder.addRemoteInput(remoteInput);
            }
        }
        Bundle bundle = c0566a.m33447d() != null ? new Bundle(c0566a.m33447d()) : new Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", c0566a.m33449b());
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 24) {
            builder.setAllowGeneratedReplies(c0566a.m33449b());
        }
        bundle.putInt("android.support.action.semanticAction", c0566a.m33444g());
        if (i2 >= 28) {
            builder.setSemanticAction(c0566a.m33444g());
        }
        if (i2 >= 29) {
            builder.setContextual(c0566a.m33441j());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", c0566a.m33443h());
        builder.addExtras(bundle);
        this.f2920b.addAction(builder.build());
    }

    /* renamed from: e */
    private static List<String> m33392e(List<String> list, List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        C1491b c1491b = new C1491b(list.size() + list2.size());
        c1491b.addAll(list);
        c1491b.addAll(list2);
        return new ArrayList(c1491b);
    }

    /* renamed from: g */
    private static List<String> m33390g(List<C0579l> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (C0579l c0579l : list) {
            arrayList.add(c0579l.m33374g());
        }
        return arrayList;
    }

    /* renamed from: h */
    private void m33389h(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        int i = notification.defaults & (-2);
        notification.defaults = i;
        notification.defaults = i & (-3);
    }

    @Override // androidx.core.app.AbstractC0564g
    /* renamed from: a */
    public Notification.Builder mo33396a() {
        return this.f2920b;
    }

    /* renamed from: c */
    public Notification m33394c() {
        Bundle m33451a;
        RemoteViews m33398f;
        RemoteViews m33400d;
        C0565h.AbstractC0575f abstractC0575f = this.f2921c.f2904p;
        if (abstractC0575f != null) {
            abstractC0575f.mo33402b(this);
        }
        RemoteViews m33399e = abstractC0575f != null ? abstractC0575f.m33399e(this) : null;
        Notification m33393d = m33393d();
        if (m33399e != null) {
            m33393d.contentView = m33399e;
        } else {
            RemoteViews remoteViews = this.f2921c.f2874H;
            if (remoteViews != null) {
                m33393d.contentView = remoteViews;
            }
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 16 && abstractC0575f != null && (m33400d = abstractC0575f.m33400d(this)) != null) {
            m33393d.bigContentView = m33400d;
        }
        if (i >= 21 && abstractC0575f != null && (m33398f = this.f2921c.f2904p.m33398f(this)) != null) {
            m33393d.headsUpContentView = m33398f;
        }
        if (i >= 16 && abstractC0575f != null && (m33451a = C0565h.m33451a(m33393d)) != null) {
            abstractC0575f.mo33403a(m33451a);
        }
        return m33393d;
    }

    /* renamed from: d */
    protected Notification m33393d() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            return this.f2920b.build();
        }
        if (i >= 24) {
            Notification build = this.f2920b.build();
            if (this.f2926h != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && this.f2926h == 2) {
                    m33389h(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.f2926h == 1) {
                    m33389h(build);
                }
            }
            return build;
        } else if (i >= 21) {
            this.f2920b.setExtras(this.f2925g);
            Notification build2 = this.f2920b.build();
            RemoteViews remoteViews = this.f2922d;
            if (remoteViews != null) {
                build2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f2923e;
            if (remoteViews2 != null) {
                build2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.f2927i;
            if (remoteViews3 != null) {
                build2.headsUpContentView = remoteViews3;
            }
            if (this.f2926h != 0) {
                if (build2.getGroup() != null && (build2.flags & 512) != 0 && this.f2926h == 2) {
                    m33389h(build2);
                }
                if (build2.getGroup() != null && (build2.flags & 512) == 0 && this.f2926h == 1) {
                    m33389h(build2);
                }
            }
            return build2;
        } else if (i >= 20) {
            this.f2920b.setExtras(this.f2925g);
            Notification build3 = this.f2920b.build();
            RemoteViews remoteViews4 = this.f2922d;
            if (remoteViews4 != null) {
                build3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f2923e;
            if (remoteViews5 != null) {
                build3.bigContentView = remoteViews5;
            }
            if (this.f2926h != 0) {
                if (build3.getGroup() != null && (build3.flags & 512) != 0 && this.f2926h == 2) {
                    m33389h(build3);
                }
                if (build3.getGroup() != null && (build3.flags & 512) == 0 && this.f2926h == 1) {
                    m33389h(build3);
                }
            }
            return build3;
        } else if (i >= 19) {
            SparseArray<Bundle> m33388a = C0577j.m33388a(this.f2924f);
            if (m33388a != null) {
                this.f2925g.putSparseParcelableArray("android.support.actionExtras", m33388a);
            }
            this.f2920b.setExtras(this.f2925g);
            Notification build4 = this.f2920b.build();
            RemoteViews remoteViews6 = this.f2922d;
            if (remoteViews6 != null) {
                build4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f2923e;
            if (remoteViews7 != null) {
                build4.bigContentView = remoteViews7;
            }
            return build4;
        } else if (i < 16) {
            return this.f2920b.getNotification();
        } else {
            Notification build5 = this.f2920b.build();
            Bundle m33451a = C0565h.m33451a(build5);
            Bundle bundle = new Bundle(this.f2925g);
            for (String str : this.f2925g.keySet()) {
                if (m33451a.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            m33451a.putAll(bundle);
            SparseArray<Bundle> m33388a2 = C0577j.m33388a(this.f2924f);
            if (m33388a2 != null) {
                C0565h.m33451a(build5).putSparseParcelableArray("android.support.actionExtras", m33388a2);
            }
            RemoteViews remoteViews8 = this.f2922d;
            if (remoteViews8 != null) {
                build5.contentView = remoteViews8;
            }
            RemoteViews remoteViews9 = this.f2923e;
            if (remoteViews9 != null) {
                build5.bigContentView = remoteViews9;
            }
            return build5;
        }
    }

    /* renamed from: f */
    public Context m33391f() {
        return this.f2919a;
    }
}
