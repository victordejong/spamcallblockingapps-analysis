package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompatBuilder.class */
public class NotificationCompatBuilder implements NotificationBuilderWithBuilderAccessor {

    /* renamed from: a */
    private final Notification.Builder f2920a;

    /* renamed from: b */
    private final NotificationCompat.Builder f2921b;

    /* renamed from: c */
    private RemoteViews f2922c;

    /* renamed from: d */
    private RemoteViews f2923d;

    /* renamed from: e */
    private final List<Bundle> f2924e = new ArrayList();

    /* renamed from: f */
    private final Bundle f2925f = new Bundle();

    /* renamed from: g */
    private int f2926g;

    /* renamed from: h */
    private RemoteViews f2927h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotificationCompatBuilder(NotificationCompat.Builder builder) {
        ArrayList<String> arrayList;
        this.f2921b = builder;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2920a = new Notification.Builder(builder.mContext, builder.mChannelId);
        } else {
            this.f2920a = new Notification.Builder(builder.mContext);
        }
        Notification notification = builder.mNotification;
        this.f2920a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, builder.mTickerView).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(builder.mContentTitle).setContentText(builder.mContentText).setContentInfo(builder.mContentInfo).setContentIntent(builder.mContentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(builder.mFullScreenIntent, (notification.flags & 128) != 0).setLargeIcon(builder.mLargeIcon).setNumber(builder.mNumber).setProgress(builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate);
        if (Build.VERSION.SDK_INT < 21) {
            this.f2920a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2920a.setSubText(builder.mSubText).setUsesChronometer(builder.mUseChronometer).setPriority(builder.mPriority);
            Iterator<NotificationCompat.Action> it = builder.mActions.iterator();
            while (it.hasNext()) {
                m19746b(it.next());
            }
            Bundle bundle = builder.mExtras;
            if (bundle != null) {
                this.f2925f.putAll(bundle);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (builder.mLocalOnly) {
                    this.f2925f.putBoolean("android.support.localOnly", true);
                }
                String str = builder.mGroupKey;
                if (str != null) {
                    this.f2925f.putString("android.support.groupKey", str);
                    if (builder.mGroupSummary) {
                        this.f2925f.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f2925f.putBoolean("android.support.useSideChannel", true);
                    }
                }
                String str2 = builder.mSortKey;
                if (str2 != null) {
                    this.f2925f.putString("android.support.sortKey", str2);
                }
            }
            this.f2922c = builder.mContentView;
            this.f2923d = builder.mBigContentView;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2920a.setShowWhen(builder.mShowWhen);
            if (Build.VERSION.SDK_INT < 21 && (arrayList = builder.mPeople) != null && !arrayList.isEmpty()) {
                Bundle bundle2 = this.f2925f;
                ArrayList<String> arrayList2 = builder.mPeople;
                bundle2.putStringArray("android.people", (String[]) arrayList2.toArray(new String[arrayList2.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f2920a.setLocalOnly(builder.mLocalOnly).setGroup(builder.mGroupKey).setGroupSummary(builder.mGroupSummary).setSortKey(builder.mSortKey);
            this.f2926g = builder.mGroupAlertBehavior;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f2920a.setCategory(builder.mCategory).setColor(builder.mColor).setVisibility(builder.mVisibility).setPublicVersion(builder.mPublicVersion).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = builder.mPeople.iterator();
            while (it2.hasNext()) {
                this.f2920a.addPerson(it2.next());
            }
            this.f2927h = builder.mHeadsUpContentView;
            if (builder.mInvisibleActions.size() > 0) {
                Bundle bundle3 = builder.getExtras().getBundle("android.car.EXTENSIONS");
                Bundle bundle4 = bundle3 == null ? new Bundle() : bundle3;
                Bundle bundle5 = new Bundle();
                for (int i = 0; i < builder.mInvisibleActions.size(); i++) {
                    bundle5.putBundle(Integer.toString(i), NotificationCompatJellybean.m19741b(builder.mInvisibleActions.get(i)));
                }
                bundle4.putBundle("invisible_actions", bundle5);
                builder.getExtras().putBundle("android.car.EXTENSIONS", bundle4);
                this.f2925f.putBundle("android.car.EXTENSIONS", bundle4);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f2920a.setExtras(builder.mExtras).setRemoteInputHistory(builder.mRemoteInputHistory);
            RemoteViews remoteViews = builder.mContentView;
            if (remoteViews != null) {
                this.f2920a.setCustomContentView(remoteViews);
            }
            RemoteViews remoteViews2 = builder.mBigContentView;
            if (remoteViews2 != null) {
                this.f2920a.setCustomBigContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = builder.mHeadsUpContentView;
            if (remoteViews3 != null) {
                this.f2920a.setCustomHeadsUpContentView(remoteViews3);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2920a.setBadgeIconType(builder.mBadgeIcon).setShortcutId(builder.mShortcutId).setTimeoutAfter(builder.mTimeout).setGroupAlertBehavior(builder.mGroupAlertBehavior);
            if (builder.mColorizedSet) {
                this.f2920a.setColorized(builder.mColorized);
            }
            if (!TextUtils.isEmpty(builder.mChannelId)) {
                this.f2920a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f2920a.setAllowSystemGeneratedContextualActions(builder.mAllowSystemGeneratedContextualActions);
            this.f2920a.setBubbleMetadata(NotificationCompat.BubbleMetadata.m19778h(builder.mBubbleMetadata));
        }
        if (builder.mSilent) {
            if (this.f2921b.mGroupSummary) {
                this.f2926g = 2;
            } else {
                this.f2926g = 1;
            }
            this.f2920a.setVibrate(null);
            this.f2920a.setSound(null);
            int i2 = notification.defaults & (-2);
            notification.defaults = i2;
            int i3 = i2 & (-3);
            notification.defaults = i3;
            this.f2920a.setDefaults(i3);
            if (Build.VERSION.SDK_INT >= 26) {
                if (TextUtils.isEmpty(this.f2921b.mGroupKey)) {
                    this.f2920a.setGroup("silent");
                }
                this.f2920a.setGroupAlertBehavior(this.f2926g);
            }
        }
    }

    /* renamed from: b */
    private void m19746b(NotificationCompat.Action action) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 20) {
            IconCompat f = action.m19798f();
            Notification.Action.Builder builder = Build.VERSION.SDK_INT >= 23 ? new Notification.Action.Builder(f != null ? f.m19475t() : null, action.m19794j(), action.m19803a()) : new Notification.Action.Builder(f != null ? f.m19490e() : 0, action.m19794j(), action.m19803a());
            if (action.m19797g() != null) {
                for (RemoteInput remoteInput : RemoteInput.m19703b(action.m19797g())) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            Bundle bundle = action.m19800d() != null ? new Bundle(action.m19800d()) : new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", action.m19802b());
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(action.m19802b());
            }
            bundle.putInt("android.support.action.semanticAction", action.m19796h());
            if (Build.VERSION.SDK_INT >= 28) {
                builder.setSemanticAction(action.m19796h());
            }
            if (Build.VERSION.SDK_INT >= 29) {
                builder.setContextual(action.m19793k());
            }
            bundle.putBoolean("android.support.action.showsUserInterface", action.m19795i());
            builder.addExtras(bundle);
            this.f2920a.addAction(builder.build());
        } else if (i >= 16) {
            this.f2924e.add(NotificationCompatJellybean.m19737f(this.f2920a, action));
        }
    }

    /* renamed from: e */
    private void m19743e(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        int i = notification.defaults & (-2);
        notification.defaults = i;
        notification.defaults = i & (-3);
    }

    @Override // androidx.core.app.NotificationBuilderWithBuilderAccessor
    /* renamed from: a */
    public Notification.Builder mo19747a() {
        return this.f2920a;
    }

    /* renamed from: c */
    public Notification m19745c() {
        Bundle a;
        RemoteViews o;
        RemoteViews m;
        NotificationCompat.Style style = this.f2921b.mStyle;
        if (style != null) {
            style.mo17971b(this);
        }
        RemoteViews n = style != null ? style.mo17969n(this) : null;
        Notification d = m19744d();
        if (n != null) {
            d.contentView = n;
        } else {
            RemoteViews remoteViews = this.f2921b.mContentView;
            if (remoteViews != null) {
                d.contentView = remoteViews;
            }
        }
        if (!(Build.VERSION.SDK_INT < 16 || style == null || (m = style.mo17970m(this)) == null)) {
            d.bigContentView = m;
        }
        if (!(Build.VERSION.SDK_INT < 21 || style == null || (o = this.f2921b.mStyle.mo17973o(this)) == null)) {
            d.headsUpContentView = o;
        }
        if (!(Build.VERSION.SDK_INT < 16 || style == null || (a = NotificationCompat.m19804a(d)) == null)) {
            style.mo19760a(a);
        }
        return d;
    }

    /* renamed from: d */
    protected Notification m19744d() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            return this.f2920a.build();
        }
        if (i >= 24) {
            Notification build = this.f2920a.build();
            if (this.f2926g != 0) {
                if (!(build.getGroup() == null || (build.flags & 512) == 0 || this.f2926g != 2)) {
                    m19743e(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.f2926g == 1) {
                    m19743e(build);
                }
            }
            return build;
        } else if (i >= 21) {
            this.f2920a.setExtras(this.f2925f);
            Notification build2 = this.f2920a.build();
            RemoteViews remoteViews = this.f2922c;
            if (remoteViews != null) {
                build2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f2923d;
            if (remoteViews2 != null) {
                build2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.f2927h;
            if (remoteViews3 != null) {
                build2.headsUpContentView = remoteViews3;
            }
            if (this.f2926g != 0) {
                if (!(build2.getGroup() == null || (build2.flags & 512) == 0 || this.f2926g != 2)) {
                    m19743e(build2);
                }
                if (build2.getGroup() != null && (build2.flags & 512) == 0 && this.f2926g == 1) {
                    m19743e(build2);
                }
            }
            return build2;
        } else if (i >= 20) {
            this.f2920a.setExtras(this.f2925f);
            Notification build3 = this.f2920a.build();
            RemoteViews remoteViews4 = this.f2922c;
            if (remoteViews4 != null) {
                build3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f2923d;
            if (remoteViews5 != null) {
                build3.bigContentView = remoteViews5;
            }
            if (this.f2926g != 0) {
                if (!(build3.getGroup() == null || (build3.flags & 512) == 0 || this.f2926g != 2)) {
                    m19743e(build3);
                }
                if (build3.getGroup() != null && (build3.flags & 512) == 0 && this.f2926g == 1) {
                    m19743e(build3);
                }
            }
            return build3;
        } else if (i >= 19) {
            SparseArray<Bundle> a = NotificationCompatJellybean.m19742a(this.f2924e);
            if (a != null) {
                this.f2925f.putSparseParcelableArray("android.support.actionExtras", a);
            }
            this.f2920a.setExtras(this.f2925f);
            Notification build4 = this.f2920a.build();
            RemoteViews remoteViews6 = this.f2922c;
            if (remoteViews6 != null) {
                build4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f2923d;
            if (remoteViews7 != null) {
                build4.bigContentView = remoteViews7;
            }
            return build4;
        } else if (i < 16) {
            return this.f2920a.getNotification();
        } else {
            Notification build5 = this.f2920a.build();
            Bundle a2 = NotificationCompat.m19804a(build5);
            Bundle bundle = new Bundle(this.f2925f);
            for (String str : this.f2925f.keySet()) {
                if (a2.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            a2.putAll(bundle);
            SparseArray<Bundle> a3 = NotificationCompatJellybean.m19742a(this.f2924e);
            if (a3 != null) {
                NotificationCompat.m19804a(build5).putSparseParcelableArray("android.support.actionExtras", a3);
            }
            RemoteViews remoteViews8 = this.f2922c;
            if (remoteViews8 != null) {
                build5.contentView = remoteViews8;
            }
            RemoteViews remoteViews9 = this.f2923d;
            if (remoteViews9 != null) {
                build5.bigContentView = remoteViews9;
            }
            return build5;
        }
    }
}
