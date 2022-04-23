package com.callapp.contacts.util.ads;

import android.app.Activity;
import android.preference.PreferenceManager;
import com.amazonaws.services.s3.util.Mimetypes;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.c.a;
import com.google.android.c.b;
import com.google.android.c.c;
import com.google.android.c.d;
import com.google.android.c.e;
import com.google.android.c.f;
import com.google.android.gms.internal.consent_sdk.aa;
import com.google.android.gms.internal.consent_sdk.ad;
import com.google.android.gms.internal.consent_sdk.ag;
import com.google.android.gms.internal.consent_sdk.ba;
import com.google.android.gms.internal.consent_sdk.bb;
import com.google.android.gms.internal.consent_sdk.be;
import com.google.android.gms.internal.consent_sdk.cc;
import com.google.android.gms.internal.consent_sdk.u;
import com.google.android.gms.internal.consent_sdk.y;
import com.google.android.gms.internal.consent_sdk.zzbe;
import com.google.android.gms.internal.consent_sdk.zzk;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/TCF2Manager.class */
public class TCF2Manager {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f16084a = {0, 5, 9, 30};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.util.ads.TCF2Manager$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/TCF2Manager$1.class */
    public static final class AnonymousClass1 implements c.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f16085a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c f16086b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f16087c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ OutcomeListener f16088d;

        /* renamed from: com.callapp.contacts.util.ads.TCF2Manager$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/TCF2Manager$1$1.class */
        class C03221 implements f.b {
            C03221() {
            }

            @Override // com.google.android.c.f.b
            public final void a(final b bVar) {
                int a2 = AnonymousClass1.this.f16086b.a();
                CLog.a(TCF2Manager.class, "onConsentFormLoadSuccess: ".concat(String.valueOf(a2)));
                if (a2 == 2 || (a2 == 3 && AdUtils.ConsentStatus.PERSONALIZED != TCF2Manager.b(AnonymousClass1.this.f16085a))) {
                    if (!AnonymousClass1.this.f16087c) {
                        int intValue = Prefs.bd.get().intValue();
                        if (intValue > 0 && intValue <= 3) {
                            Date date = Prefs.be.get();
                            if (date != null && Calendar.getInstance().getTime().before(date)) {
                                AnonymousClass1.this.f16088d.a(false);
                                return;
                            }
                        } else if (intValue > 3) {
                            AnonymousClass1.this.f16088d.a(false);
                            return;
                        }
                    }
                    AnalyticsManager.get().a(Constants.AD, "Showing TCF 2 consent form");
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.TCF2Manager.1.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            bVar.a(AnonymousClass1.this.f16085a, new b.a() { // from class: com.callapp.contacts.util.ads.TCF2Manager.1.1.1.1
                                @Override // com.google.android.c.b.a
                                public final void a(e eVar) {
                                    if (!AnonymousClass1.this.f16087c) {
                                        TCF2Manager.a();
                                    }
                                    AnalyticsManager.get().a(Constants.AD, "TCF2 consent status", TCF2Manager.b(AnonymousClass1.this.f16085a).name());
                                    StringBuilder sb = new StringBuilder("onConsentFormDismissed: ");
                                    sb.append(eVar != null ? eVar.f20308a : null);
                                    CLog.a(TCF2Manager.class, sb.toString());
                                    AnonymousClass1.this.f16088d.a(true);
                                }
                            });
                        }
                    });
                    return;
                }
                AnonymousClass1.this.f16088d.a(false);
            }
        }

        AnonymousClass1(Activity activity, c cVar, boolean z, OutcomeListener outcomeListener) {
            this.f16085a = activity;
            this.f16086b = cVar;
            this.f16087c = z;
            this.f16088d = outcomeListener;
        }

        @Override // com.google.android.c.c.b
        public final void a() {
            Activity activity = this.f16085a;
            C03221 r0 = new C03221();
            f.a aVar = new f.a() { // from class: com.callapp.contacts.util.ads.TCF2Manager.1.2
                @Override // com.google.android.c.f.a
                public final void a(final e eVar) {
                    new Task() { // from class: com.callapp.contacts.util.ads.TCF2Manager.1.2.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            StringBuilder sb = new StringBuilder("onConsentFormLoadFailure: ");
                            e eVar2 = eVar;
                            sb.append(eVar2 != null ? eVar2.f20308a : null);
                            CLog.a(TCF2Manager.class, sb.toString());
                            AnonymousClass1.this.f16088d.a(false);
                        }
                    }.execute();
                }
            };
            aa b2 = bb.a(activity).b();
            be.a();
            ad adVar = b2.f28683b.get();
            if (adVar == null) {
                aVar.a(new zzk(3, "No available form can be built.").a());
                return;
            }
            final u a2 = b2.f28682a.a().a(adVar).a().a();
            a2.e = a2.f28855d.a();
            zzbe zzbeVar = a2.e;
            zzbeVar.setBackgroundColor(0);
            zzbeVar.getSettings().setJavaScriptEnabled(true);
            zzbeVar.setWebViewClient(new ag(zzbeVar));
            a2.f.set(new y(r0, aVar));
            a2.e.loadDataWithBaseURL(a2.f28854c.f28689a, a2.f28854c.f28690b, Mimetypes.MIMETYPE_HTML, "UTF-8", null);
            be.f28749a.postDelayed(new Runnable(a2) { // from class: com.google.android.gms.internal.consent_sdk.x

                /* renamed from: a  reason: collision with root package name */
                private final u f28856a;

                {
                    this.f28856a = a2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f28856a.a(new zzk(4, "Web view timed out."));
                }
            }, 10000L);
        }
    }

    static /* synthetic */ void a() {
        Calendar instance = Calendar.getInstance();
        int intValue = Prefs.bd.b(1).get().intValue();
        if (intValue > 0 && intValue <= 3) {
            int[] iArr = f16084a;
            int i = iArr[intValue];
            int i2 = iArr[intValue - 1];
            instance.set(10, 0);
            instance.set(12, 0);
            instance.set(13, 0);
            instance.add(5, i - i2);
            Prefs.be.set(instance.getTime());
        }
    }

    public static void a(Activity activity, final OutcomeListener outcomeListener, boolean z) {
        if (AdUtils.a()) {
            outcomeListener.a(false);
            return;
        }
        d.a aVar = new d.a();
        if (Prefs.bf.get().booleanValue()) {
            a.C0411a aVar2 = new a.C0411a(activity);
            aVar2.f20297b = 1;
            aVar2.f20296a.add(ba.a(CallAppApplication.get()));
            aVar.f20306c = aVar2.a();
        }
        d dVar = new d(aVar);
        cc a2 = bb.a(activity).a();
        a2.a(activity, dVar, new AnonymousClass1(activity, a2, z, outcomeListener), new c.a() { // from class: com.callapp.contacts.util.ads.TCF2Manager.2
            @Override // com.google.android.c.c.a
            public final void a(final e eVar) {
                new Task() { // from class: com.callapp.contacts.util.ads.TCF2Manager.2.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        StringBuilder sb = new StringBuilder("onConsentInfoUpdateFailure: ");
                        e eVar2 = eVar;
                        sb.append(eVar2 != null ? eVar2.f20308a : null);
                        CLog.a(TCF2Manager.class, sb.toString());
                        OutcomeListener.this.a(false);
                    }
                }.execute();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AdUtils.ConsentStatus b(Activity activity) {
        AdUtils.ConsentStatus consentStatus;
        String str = null;
        try {
            str = PreferenceManager.getDefaultSharedPreferences(activity).getString("IABTCF_VendorConsents", null);
        } catch (Exception e) {
        }
        if (StringUtils.a((Object) str, (Object) 0)) {
            CLog.a(TCF2Manager.class, "TCF2 consent status NON_PERSONALIZED");
            consentStatus = AdUtils.ConsentStatus.NON_PERSONALIZED;
            AdUtils.a(consentStatus);
        } else if (StringUtils.b((CharSequence) str)) {
            CLog.a(TCF2Manager.class, "TCF2 consent status PERSONALIZED");
            consentStatus = AdUtils.ConsentStatus.PERSONALIZED;
            AdUtils.a(consentStatus);
        } else {
            CLog.a(TCF2Manager.class, "TCF2 consent status UNKNOWN");
            consentStatus = AdUtils.ConsentStatus.UNKNOWN;
        }
        return consentStatus;
    }
}
