package p193e.p194a.p1146q2.p1147a1;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17526f1;
import p193e.p194a.p1050l5.p1051a.C17787v3;
import p193e.p194a.p1050l5.p1051a.C17800w3;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.z.c.l;
/* renamed from: e.a.q2.a1.c */
/* loaded from: classes5-dex2jar.jar:e/a/q2/a1/c.class */
public final class C19466c implements AbstractC19465b {

    /* renamed from: a */
    public final Context f54052a;

    /* renamed from: b */
    public final AbstractC19854f<AbstractC19463a0> f54053b;

    @Inject
    public C19466c(Context context, AbstractC19854f<AbstractC19463a0> abstractC19854f) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19854f, "eventsTracker");
        this.f54052a = context;
        this.f54053b = abstractC19854f;
    }

    @Override // p193e.p194a.p1146q2.p1147a1.AbstractC19465b
    /* renamed from: a */
    public void mo13305a() {
        NotificationManager notificationManager = (NotificationManager) this.f54052a.getSystemService(RemoteMessageConst.NOTIFICATION);
        if (notificationManager != null) {
            List<NotificationChannelGroup> notificationChannelGroups = notificationManager.getNotificationChannelGroups();
            l.d(notificationChannelGroups, "notificationManager.notificationChannelGroups");
            ArrayList arrayList = new ArrayList(C25225a.m4004J(notificationChannelGroups, 10));
            Iterator<T> it = notificationChannelGroups.iterator();
            while (true) {
                boolean z = false;
                if (!it.hasNext()) {
                    break;
                }
                NotificationChannelGroup notificationChannelGroup = (NotificationChannelGroup) it.next();
                l.d(notificationChannelGroup, "it");
                if (Build.VERSION.SDK_INT >= 28) {
                    z = notificationChannelGroup.isBlocked();
                }
                NotificationManager notificationManager2 = (NotificationManager) this.f54052a.getSystemService(RemoteMessageConst.NOTIFICATION);
                ArrayList arrayList2 = null;
                if (notificationManager2 != null) {
                    List<NotificationChannel> notificationChannels = notificationManager2.getNotificationChannels();
                    arrayList2 = null;
                    if (notificationChannels != null) {
                        ArrayList arrayList3 = new ArrayList();
                        for (Object obj : notificationChannels) {
                            NotificationChannel notificationChannel = (NotificationChannel) obj;
                            l.d(notificationChannel, "it");
                            if (l.a(notificationChannel.getGroup(), notificationChannelGroup.getId())) {
                                arrayList3.add(obj);
                            }
                        }
                        arrayList2 = new ArrayList();
                        Iterator it2 = arrayList3.iterator();
                        while (it2.hasNext()) {
                            NotificationChannel notificationChannel2 = (NotificationChannel) it2.next();
                            l.d(notificationChannel2, "it");
                            arrayList2.add(m13304b(notificationChannel2));
                        }
                    }
                }
                arrayList.add(new C17800w3(notificationChannelGroup.getId(), Boolean.valueOf(!z), arrayList2));
            }
            List<NotificationChannel> notificationChannels2 = notificationManager.getNotificationChannels();
            ArrayList m8670S = C22128a.m8670S(notificationChannels2, "notificationManager.notificationChannels");
            for (NotificationChannel notificationChannel3 : notificationChannels2) {
                l.d(notificationChannel3, "it");
                String group = notificationChannel3.getGroup();
                if (!(group == null || group.length() == 0)) {
                    notificationChannel3 = null;
                }
                C17787v3 m13304b = notificationChannel3 != null ? m13304b(notificationChannel3) : null;
                if (m13304b != null) {
                    m8670S.add(m13304b);
                }
            }
            AbstractC19463a0 mo11854a = this.f54053b.mo11854a();
            Schema schema = C17526f1.f49205f;
            C17526f1.C17528b c17528b = new C17526f1.C17528b(null);
            boolean areNotificationsEnabled = notificationManager.areNotificationsEnabled();
            c17528b.validate(c17528b.fields()[2], Boolean.valueOf(areNotificationsEnabled));
            c17528b.f49214a = areNotificationsEnabled;
            c17528b.fieldSetFlags()[2] = true;
            c17528b.validate(c17528b.fields()[3], arrayList);
            c17528b.f49215b = arrayList;
            c17528b.fieldSetFlags()[3] = true;
            c17528b.validate(c17528b.fields()[4], m8670S);
            c17528b.f49216c = m8670S;
            c17528b.fieldSetFlags()[4] = true;
            mo11854a.mo13111a(c17528b.build());
        }
    }

    /* renamed from: b */
    public final C17787v3 m13304b(NotificationChannel notificationChannel) {
        return new C17787v3(notificationChannel.getId(), Boolean.valueOf(notificationChannel.getImportance() != 0));
    }
}
