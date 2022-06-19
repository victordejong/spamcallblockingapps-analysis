package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.C0745g;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.core.app.h */
/* loaded from: classes-dex2jar.jar:androidx/core/app/h.class */
public final class C0758h implements AbstractC0744f {

    /* renamed from: a */
    final Notification.Builder f3385a;

    /* renamed from: b */
    final C0745g.C0751e f3386b;

    /* renamed from: c */
    RemoteViews f3387c;

    /* renamed from: d */
    RemoteViews f3388d;

    /* renamed from: e */
    final List<Bundle> f3389e = new ArrayList();

    /* renamed from: f */
    final Bundle f3390f = new Bundle();

    /* renamed from: g */
    int f3391g;

    /* renamed from: h */
    RemoteViews f3392h;

    public C0758h(C0745g.C0751e c0751e) {
        Notification.BubbleMetadata bubbleMetadata;
        this.f3386b = c0751e;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f3385a = new Notification.Builder(c0751e.f3330a, c0751e.f3320I);
        } else {
            this.f3385a = new Notification.Builder(c0751e.f3330a);
        }
        Notification notification = c0751e.f3327P;
        this.f3385a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, c0751e.f3337h).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(c0751e.f3333d).setContentText(c0751e.f3334e).setContentInfo(c0751e.f3339j).setContentIntent(c0751e.f3335f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(c0751e.f3336g, (notification.flags & 128) != 0).setLargeIcon(c0751e.f3338i).setNumber(c0751e.f3340k).setProgress(c0751e.f3347r, c0751e.f3348s, c0751e.f3349t);
        if (Build.VERSION.SDK_INT < 21) {
            this.f3385a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f3385a.setSubText(c0751e.f3345p).setUsesChronometer(c0751e.f3343n).setPriority(c0751e.f3341l);
            Iterator<C0745g.C0747a> it2 = c0751e.f3331b.iterator();
            while (it2.hasNext()) {
                m44548a(it2.next());
            }
            if (c0751e.f3313B != null) {
                this.f3390f.putAll(c0751e.f3313B);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (c0751e.f3353x) {
                    this.f3390f.putBoolean("android.support.localOnly", true);
                }
                if (c0751e.f3350u != null) {
                    this.f3390f.putString("android.support.groupKey", c0751e.f3350u);
                    if (c0751e.f3351v) {
                        this.f3390f.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f3390f.putBoolean("android.support.useSideChannel", true);
                    }
                }
                if (c0751e.f3352w != null) {
                    this.f3390f.putString("android.support.sortKey", c0751e.f3352w);
                }
            }
            this.f3387c = c0751e.f3317F;
            this.f3388d = c0751e.f3318G;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3385a.setShowWhen(c0751e.f3342m);
            if (Build.VERSION.SDK_INT < 21 && c0751e.f3329R != null && !c0751e.f3329R.isEmpty()) {
                this.f3390f.putStringArray("android.people", (String[]) c0751e.f3329R.toArray(new String[c0751e.f3329R.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f3385a.setLocalOnly(c0751e.f3353x).setGroup(c0751e.f3350u).setGroupSummary(c0751e.f3351v).setSortKey(c0751e.f3352w);
            this.f3391g = c0751e.f3324M;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f3385a.setCategory(c0751e.f3312A).setColor(c0751e.f3314C).setVisibility(c0751e.f3315D).setPublicVersion(c0751e.f3316E).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it3 = c0751e.f3329R.iterator();
            while (it3.hasNext()) {
                this.f3385a.addPerson(it3.next());
            }
            this.f3392h = c0751e.f3319H;
            if (c0751e.f3332c.size() > 0) {
                Bundle bundle = c0751e.m44582a().getBundle("android.car.EXTENSIONS");
                Bundle bundle2 = bundle == null ? new Bundle() : bundle;
                Bundle bundle3 = new Bundle();
                for (int i = 0; i < c0751e.f3332c.size(); i++) {
                    bundle3.putBundle(Integer.toString(i), C0759i.m44543a(c0751e.f3332c.get(i)));
                }
                bundle2.putBundle("invisible_actions", bundle3);
                c0751e.m44582a().putBundle("android.car.EXTENSIONS", bundle2);
                this.f3390f.putBundle("android.car.EXTENSIONS", bundle2);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f3385a.setExtras(c0751e.f3313B).setRemoteInputHistory(c0751e.f3346q);
            if (c0751e.f3317F != null) {
                this.f3385a.setCustomContentView(c0751e.f3317F);
            }
            if (c0751e.f3318G != null) {
                this.f3385a.setCustomBigContentView(c0751e.f3318G);
            }
            if (c0751e.f3319H != null) {
                this.f3385a.setCustomHeadsUpContentView(c0751e.f3319H);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f3385a.setBadgeIconType(c0751e.f3321J).setShortcutId(c0751e.f3322K).setTimeoutAfter(c0751e.f3323L).setGroupAlertBehavior(c0751e.f3324M);
            if (c0751e.f3355z) {
                this.f3385a.setColorized(c0751e.f3354y);
            }
            if (!TextUtils.isEmpty(c0751e.f3320I)) {
                this.f3385a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f3385a.setAllowSystemGeneratedContextualActions(c0751e.f3325N);
            Notification.Builder builder = this.f3385a;
            C0745g.C0750d c0750d = c0751e.f3326O;
            if (c0750d == null) {
                bubbleMetadata = null;
            } else {
                Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setAutoExpandBubble((c0750d.f3311f & 1) != 0).setDeleteIntent(c0750d.f3307b).setIcon(c0750d.f3308c.m44366c()).setIntent(c0750d.f3306a).setSuppressNotification((c0750d.f3311f & 2) != 0);
                if (c0750d.f3309d != 0) {
                    suppressNotification.setDesiredHeight(c0750d.f3309d);
                }
                if (c0750d.f3310e != 0) {
                    suppressNotification.setDesiredHeightResId(c0750d.f3310e);
                }
                bubbleMetadata = suppressNotification.build();
            }
            builder.setBubbleMetadata(bubbleMetadata);
        }
        if (c0751e.f3328Q) {
            if (this.f3386b.f3351v) {
                this.f3391g = 2;
            } else {
                this.f3391g = 1;
            }
            this.f3385a.setVibrate(null);
            this.f3385a.setSound(null);
            notification.defaults &= -2;
            notification.defaults &= -3;
            this.f3385a.setDefaults(notification.defaults);
            if (Build.VERSION.SDK_INT < 26) {
                return;
            }
            if (TextUtils.isEmpty(this.f3386b.f3350u)) {
                this.f3385a.setGroup("silent");
            }
            this.f3385a.setGroupAlertBehavior(this.f3391g);
        }
    }

    /* renamed from: a */
    public static void m44549a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }

    /* renamed from: a */
    private void m44548a(C0745g.C0747a c0747a) {
        if (Build.VERSION.SDK_INT < 20) {
            if (Build.VERSION.SDK_INT < 16) {
                return;
            }
            this.f3389e.add(C0759i.m44547a(this.f3385a, c0747a));
            return;
        }
        IconCompat m44584a = c0747a.m44584a();
        Notification.Action.Builder builder = Build.VERSION.SDK_INT >= 23 ? new Notification.Action.Builder(m44584a != null ? m44584a.m44366c() : null, c0747a.f3299i, c0747a.f3300j) : new Notification.Action.Builder(m44584a != null ? m44584a.m44369b() : 0, c0747a.f3299i, c0747a.f3300j);
        if (c0747a.f3292b != null) {
            for (RemoteInput remoteInput : C0763l.m44534a(c0747a.f3292b)) {
                builder.addRemoteInput(remoteInput);
            }
        }
        Bundle bundle = c0747a.f3291a != null ? new Bundle(c0747a.f3291a) : new Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", c0747a.f3294d);
        if (Build.VERSION.SDK_INT >= 24) {
            builder.setAllowGeneratedReplies(c0747a.f3294d);
        }
        bundle.putInt("android.support.action.semanticAction", c0747a.f3296f);
        if (Build.VERSION.SDK_INT >= 28) {
            builder.setSemanticAction(c0747a.f3296f);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            builder.setContextual(c0747a.f3297g);
        }
        bundle.putBoolean("android.support.action.showsUserInterface", c0747a.f3295e);
        builder.addExtras(bundle);
        this.f3385a.addAction(builder.build());
    }

    @Override // androidx.core.app.AbstractC0744f
    /* renamed from: a */
    public final Notification.Builder mo44550a() {
        return this.f3385a;
    }
}
