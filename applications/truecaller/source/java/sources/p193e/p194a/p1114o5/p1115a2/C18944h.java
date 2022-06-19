package p193e.p194a.p1114o5.p1115a2;

import android.app.job.JobScheduler;
import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.background_work.JointActionsWorker;
import com.truecaller.log.UnmutedException;
import e.m.d.y.n;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26831g;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1392y2.AbstractC21763i;
import p193e.p194a.p1392y2.AbstractC21770n;
import p193e.p194a.p1392y2.C21761g;
import p193e.p194a.p1392y2.C21762h;
import p193e.p194a.p1392y2.p1394q.AbstractC21780a;
import s1.u.i;
import s1.u.v;
import s1.z.c.d0;
import s1.z.c.l;
/* renamed from: e.a.o5.a2.h */
/* loaded from: classes15-dex2jar.jar:e/a/o5/a2/h.class */
public final class C18944h implements AbstractC18943g {

    /* renamed from: a */
    public final a<AbstractC21770n> f53090a;

    /* renamed from: b */
    public final a<AbstractC26857y> f53091b;

    /* renamed from: c */
    public final a<AbstractC18938b> f53092c;

    /* renamed from: d */
    public final AbstractC21780a f53093d;

    /* renamed from: e */
    public final Context f53094e;

    /* renamed from: e.a.o5.a2.h$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/a2/h$a.class */
    public static final class C18945a implements v<String, String> {

        /* renamed from: a */
        public final /* synthetic */ Iterable f53095a;

        public C18945a(Iterable iterable) {
            this.f53095a = iterable;
        }

        /* renamed from: a */
        public String m14301a(String str) {
            return str.toString();
        }

        /* renamed from: b */
        public Iterator<String> m14300b() {
            return this.f53095a.iterator();
        }
    }

    /* renamed from: e.a.o5.a2.h$b */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/a2/h$b.class */
    public static final class C18946b implements v<AbstractC21763i, String> {

        /* renamed from: a */
        public final /* synthetic */ Iterable f53096a;

        public C18946b(Iterable iterable) {
            this.f53096a = iterable;
        }

        /* renamed from: a */
        public String m14299a(AbstractC21763i abstractC21763i) {
            return abstractC21763i.getName();
        }

        /* renamed from: b */
        public Iterator<AbstractC21763i> m14298b() {
            return this.f53096a.iterator();
        }
    }

    @Inject
    public C18944h(a<AbstractC21770n> aVar, a<AbstractC26857y> aVar2, a<AbstractC18938b> aVar3, AbstractC21780a abstractC21780a, Context context) {
        l.e(aVar, "workActionRequestFactory");
        l.e(aVar2, "workManager");
        l.e(aVar3, "backgroundWorkSettings");
        l.e(abstractC21780a, "backgroundWorkTrigger");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f53090a = aVar;
        this.f53091b = aVar2;
        this.f53092c = aVar3;
        this.f53093d = abstractC21780a;
        this.f53094e = context;
    }

    @Override // p193e.p194a.p1114o5.p1115a2.AbstractC18943g
    /* renamed from: a */
    public void mo14305a(boolean z) {
        byte b;
        EnumC26831g enumC26831g = EnumC26831g.KEEP;
        int i = 16;
        if (!z) {
            ((AbstractC18938b) this.f53092c.get()).putInt("repoVersion", 24);
        } else {
            int i2 = ((AbstractC18938b) this.f53092c.get()).getInt("repoVersion", 0);
            if (i2 < 1) {
                m14303c(i.T(new String[]{"CleanUpBackgroundWorker", "Attestation", "AttestationOneTime", "FetchSpamLinksWhiteList", "CreditAlarmWorker", "TopSpammersSyncRecurringWorker", "BackupLogWorker", "InstalledAppsHeartbeatWorker"}).iterator());
            }
            if (i2 < 2) {
                m14302d("InsightsAggregationWorker");
            }
            if (i2 < 3) {
                m14302d("EdgeLocations", "SendPresenceSetting", "EventsUploadWorker", "UpdateConfig", "UpdateInstallation");
            }
            if (i2 < 4) {
                m14302d("SpamCategoriesFetchWorker");
            }
            if (i2 < 5) {
                m14302d("CleverTapRefreshWorker");
            }
            if (i2 < 6) {
                m14302d("UGCBackgroundWorker");
            }
            if (i2 < 7) {
                m14302d("SmsDataAnalyticsWorker");
            }
            if (i2 < 8) {
                m14302d("PayFeatureSyncWorker");
            }
            if (i2 < 9) {
                m14303c(i.T(new String[]{"InsightsNotificationsWorker", "InsightsRemindersWorker"}).iterator());
            }
            if (i2 < 10) {
                m14304b(10032);
            }
            if (i2 < 11) {
                m14304b(10001);
                m14302d("InsightsEventAggregationWorker", "InsightsEventClearWorker");
            }
            if (i2 < 12) {
                m14302d("FetchImContacts", "ImNotifications");
            }
            if (i2 < 13) {
                m14304b(10009);
            }
            if (i2 < 14) {
                m14302d("PhoneBookPremiumStatusFetchWorker");
            }
            if (i2 < 15) {
                m14304b(10008, 10010, 10012, 10024);
            }
            if (i2 < 16) {
                m14304b(10028);
            }
            if (i2 < 17) {
                m14304b(10015);
            }
            if (i2 < 18) {
                m14304b(10025);
            }
            if (i2 < 19) {
                m14304b(TokenResponseDto.STATUS_ATTESTATION_REQUIRED);
            }
            if (i2 < 20) {
                m14304b(10030);
            }
            if (i2 < 21) {
                m14304b(10004);
            }
            if (i2 < 22) {
                m14302d("AvailableTagsDownloadWorker", "TagKeywordsDownloadWorker");
            }
            if (i2 < 23) {
                m14302d("ReportSpamUrl");
            }
            if (i2 < 24) {
                m14302d("AppHeartBeatWorkAction");
            }
            ((AbstractC18938b) this.f53092c.get()).putInt("repoVersion", 24);
        }
        Set<C21761g> keySet = ((LinkedHashMap) n.e0(((AbstractC21770n) this.f53090a.get()).mo9099a())).keySet();
        int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(keySet, 10));
        if (m3942Y1 >= 16) {
            i = m3942Y1;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(i);
        for (C21761g c21761g : keySet) {
            C21762h c21762h = new C21762h(d0.a(JointActionsWorker.class), c21761g.f60598b.getDuration());
            c21762h.m9110d(EnumC26674a.EXPONENTIAL, c21761g.f60598b.getExponentialBackoff());
            w3.b.a.i flexInterval = c21761g.f60598b.getFlexInterval();
            l.e(flexInterval, "interval");
            c21762h.f60600a = flexInterval;
            HashMap hashMap = new HashMap();
            hashMap.put("wa_bucket_period", c21761g.f60598b.name());
            boolean z2 = c21761g.f60599c;
            if (z2) {
                b = 1;
            } else if (z2) {
                throw new s1.i();
            } else {
                b = 0;
            }
            hashMap.put("wa_bucket_internetRequired", Byte.valueOf(b));
            C26829f c26829f = new C26829f(hashMap);
            C26829f.m1300g(c26829f);
            l.d(c26829f, "Data.Builder().run {\n   …())\n        build()\n    }");
            c21762h.m9109e(c26829f);
            if (c21761g.f60599c) {
                c21762h.m9108f(EnumC26841q.CONNECTED);
            }
            linkedHashMap.put(c21761g.f60597a, c21762h);
        }
        Map m3905g0 = C25225a.m3905g0(new C18945a(linkedHashMap.keySet()));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : m3905g0.entrySet()) {
            if (((Number) entry.getValue()).intValue() > 1) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        if (linkedHashMap2.isEmpty()) {
            linkedHashMap2 = null;
        }
        if (linkedHashMap2 == null) {
            i.O(linkedHashMap.keySet(), ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62);
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                ((AbstractC26857y) this.f53091b.get()).mo1280h((String) entry2.getKey(), enumC26831g, ((C21762h) entry2.getValue()).m9112b());
            }
            EnumC26831g enumC26831g2 = enumC26831g;
            if (z) {
                enumC26831g2 = EnumC26831g.REPLACE;
            }
            List<AbstractC21763i> list = C18947i.f53097a;
            Map m3905g02 = C25225a.m3905g0(new C18946b(list));
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            for (Map.Entry entry3 : m3905g02.entrySet()) {
                if (((Number) entry3.getValue()).intValue() > 1) {
                    linkedHashMap3.put(entry3.getKey(), entry3.getValue());
                }
            }
            LinkedHashMap linkedHashMap4 = null;
            if (!linkedHashMap3.isEmpty()) {
                linkedHashMap4 = linkedHashMap3;
            }
            if (linkedHashMap4 != null) {
                throw new UnmutedException.C4144c(linkedHashMap4.keySet());
            }
            for (AbstractC21763i abstractC21763i : list) {
                ((AbstractC26857y) this.f53091b.get()).mo1280h(abstractC21763i.getName(), enumC26831g2, abstractC21763i.mo9107a().m9112b());
            }
            return;
        }
        throw new UnmutedException.C4144c(linkedHashMap2.keySet());
    }

    /* renamed from: b */
    public final void m14304b(int... iArr) {
        JobScheduler jobScheduler;
        if (!(iArr.length == 0) && (jobScheduler = (JobScheduler) this.f53094e.getSystemService("jobscheduler")) != null) {
            try {
                for (int i : iArr) {
                    jobScheduler.cancel(i);
                }
            } catch (Throwable th) {
                C25225a.m3935a0(th);
            }
        }
    }

    /* renamed from: c */
    public final void m14303c(Iterator<String> it) {
        AbstractC26857y abstractC26857y = (AbstractC26857y) this.f53091b.get();
        while (it.hasNext()) {
            String next = it.next();
            abstractC26857y.mo1283e(next);
            abstractC26857y.mo1283e("OneOff_" + next);
        }
    }

    /* renamed from: d */
    public final void m14302d(String... strArr) {
        m14303c(C25225a.m4002J1(strArr));
    }
}
