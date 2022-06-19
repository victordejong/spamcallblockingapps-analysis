package p026c0;

import android.app.Notification;
import android.app.Person;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p120i0.C3055a;
import p226s.C4254c;
/* renamed from: c0.o */
/* loaded from: classes-dex2jar.jar:c0/o.class */
public class C0807o {

    /* renamed from: a */
    public final Notification.Builder f2983a;

    /* renamed from: b */
    public final C0805m f2984b;

    /* renamed from: c */
    public final List<Bundle> f2985c = new ArrayList();

    /* renamed from: d */
    public final Bundle f2986d = new Bundle();

    public C0807o(C0805m c0805m) {
        this.f2984b = c0805m;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2983a = new Notification.Builder(c0805m.f2964a, c0805m.f2978o);
        } else {
            this.f2983a = new Notification.Builder(c0805m.f2964a);
        }
        Notification notification = c0805m.f2980q;
        this.f2983a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(c0805m.f2968e).setContentText(c0805m.f2969f).setContentInfo(null).setContentIntent(c0805m.f2970g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setLargeIcon(c0805m.f2971h).setNumber(0).setProgress(0, 0, false);
        this.f2983a.setSubText(null).setUsesChronometer(false).setPriority(c0805m.f2972i);
        Iterator<C0803k> it2 = c0805m.f2965b.iterator();
        while (it2.hasNext()) {
            C0803k next = it2.next();
            int i = Build.VERSION.SDK_INT;
            IconCompat m7360a = next.m7360a();
            Notification.Action.Builder builder = i >= 23 ? new Notification.Action.Builder(m7360a != null ? m7360a.m8312e() : null, next.f2961j, next.f2962k) : new Notification.Action.Builder(m7360a != null ? m7360a.m8314c() : 0, next.f2961j, next.f2962k);
            C0811s[] c0811sArr = next.f2954c;
            if (c0811sArr != null) {
                int length = c0811sArr.length;
                RemoteInput[] remoteInputArr = new RemoteInput[length];
                if (c0811sArr.length > 0) {
                    C0811s c0811s = c0811sArr[0];
                    throw null;
                }
                for (int i2 = 0; i2 < length; i2++) {
                    builder.addRemoteInput(remoteInputArr[i2]);
                }
            }
            Bundle bundle = next.f2952a != null ? new Bundle(next.f2952a) : new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", next.f2956e);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 24) {
                builder.setAllowGeneratedReplies(next.f2956e);
            }
            bundle.putInt("android.support.action.semanticAction", next.f2958g);
            if (i3 >= 28) {
                builder.setSemanticAction(next.f2958g);
            }
            if (i3 >= 29) {
                builder.setContextual(next.f2959h);
            }
            bundle.putBoolean("android.support.action.showsUserInterface", next.f2957f);
            builder.addExtras(bundle);
            this.f2983a.addAction(builder.build());
        }
        Bundle bundle2 = c0805m.f2976m;
        if (bundle2 != null) {
            this.f2986d.putAll(bundle2);
        }
        int i4 = Build.VERSION.SDK_INT;
        this.f2983a.setShowWhen(c0805m.f2973j);
        this.f2983a.setLocalOnly(c0805m.f2975l).setGroup(null).setGroupSummary(false).setSortKey(null);
        this.f2983a.setCategory(null).setColor(0).setVisibility(c0805m.f2977n).setPublicVersion(null).setSound(notification.sound, notification.audioAttributes);
        List<String> m7352a = i4 < 28 ? m7352a(m7351b(c0805m.f2966c), c0805m.f2981r) : c0805m.f2981r;
        if (m7352a != null && !m7352a.isEmpty()) {
            for (String str : m7352a) {
                this.f2983a.addPerson(str);
            }
        }
        if (c0805m.f2967d.size() > 0) {
            if (c0805m.f2976m == null) {
                c0805m.f2976m = new Bundle();
            }
            Bundle bundle3 = c0805m.f2976m.getBundle("android.car.EXTENSIONS");
            Bundle bundle4 = bundle3 == null ? new Bundle() : bundle3;
            Bundle bundle5 = new Bundle(bundle4);
            Bundle bundle6 = new Bundle();
            for (int i5 = 0; i5 < c0805m.f2967d.size(); i5++) {
                String num = Integer.toString(i5);
                C0803k c0803k = c0805m.f2967d.get(i5);
                Object obj = C0808p.f2987a;
                Bundle bundle7 = new Bundle();
                IconCompat m7360a2 = c0803k.m7360a();
                bundle7.putInt("icon", m7360a2 != null ? m7360a2.m8314c() : 0);
                bundle7.putCharSequence("title", c0803k.f2961j);
                bundle7.putParcelable("actionIntent", c0803k.f2962k);
                Bundle bundle8 = c0803k.f2952a != null ? new Bundle(c0803k.f2952a) : new Bundle();
                bundle8.putBoolean("android.support.allowGeneratedReplies", c0803k.f2956e);
                bundle7.putBundle("extras", bundle8);
                bundle7.putParcelableArray("remoteInputs", C0808p.m7350a(c0803k.f2954c));
                bundle7.putBoolean("showsUserInterface", c0803k.f2957f);
                bundle7.putInt("semanticAction", c0803k.f2958g);
                bundle6.putBundle(num, bundle7);
            }
            bundle4.putBundle("invisible_actions", bundle6);
            bundle5.putBundle("invisible_actions", bundle6);
            if (c0805m.f2976m == null) {
                c0805m.f2976m = new Bundle();
            }
            c0805m.f2976m.putBundle("android.car.EXTENSIONS", bundle4);
            this.f2986d.putBundle("android.car.EXTENSIONS", bundle5);
        }
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 24) {
            this.f2983a.setExtras(c0805m.f2976m).setRemoteInputHistory(null);
        }
        if (i6 >= 26) {
            this.f2983a.setBadgeIconType(0).setSettingsText(null).setShortcutId(null).setTimeoutAfter(0L).setGroupAlertBehavior(0);
            if (!TextUtils.isEmpty(c0805m.f2978o)) {
                this.f2983a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i6 >= 28) {
            Iterator<C0810r> it3 = c0805m.f2966c.iterator();
            while (it3.hasNext()) {
                C0810r next2 = it3.next();
                Notification.Builder builder2 = this.f2983a;
                Objects.requireNonNull(next2);
                builder2.addPerson(new Person.Builder().setName(null).setIcon(null).setUri(null).setKey(null).setBot(false).setImportant(false).build());
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f2983a.setAllowSystemGeneratedContextualActions(c0805m.f2979p);
            this.f2983a.setBubbleMetadata(null);
        }
        C3055a.m2668a();
    }

    /* renamed from: a */
    public static List<String> m7352a(List<String> list, List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        C4254c c4254c = new C4254c(list2.size() + list.size());
        c4254c.addAll(list);
        c4254c.addAll(list2);
        return new ArrayList(c4254c);
    }

    /* renamed from: b */
    public static List<String> m7351b(List<C0810r> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (C0810r c0810r : list) {
            Objects.requireNonNull(c0810r);
            arrayList.add("");
        }
        return arrayList;
    }
}
