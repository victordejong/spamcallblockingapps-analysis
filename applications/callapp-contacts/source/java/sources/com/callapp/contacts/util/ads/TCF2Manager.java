package com.callapp.contacts.util.ads;

import android.app.Activity;
import android.preference.PreferenceManager;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.internal.consent_sdk.AbstractC13198bb;
import com.google.android.gms.internal.consent_sdk.C13170aa;
import com.google.android.gms.internal.consent_sdk.C13173ad;
import com.google.android.gms.internal.consent_sdk.C13176ag;
import com.google.android.gms.internal.consent_sdk.C13197ba;
import com.google.android.gms.internal.consent_sdk.C13202be;
import com.google.android.gms.internal.consent_sdk.C13228cc;
import com.google.android.gms.internal.consent_sdk.C13261u;
import com.google.android.gms.internal.consent_sdk.C13265y;
import com.google.android.gms.internal.consent_sdk.zzbe;
import com.google.android.gms.internal.consent_sdk.zzk;
import com.google.android.p314c.AbstractC10613b;
import com.google.android.p314c.AbstractC10615c;
import com.google.android.p314c.C10611a;
import com.google.android.p314c.C10618d;
import com.google.android.p314c.C10620e;
import com.google.android.p314c.C10621f;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/TCF2Manager.class */
public class TCF2Manager {

    /* renamed from: a */
    private static final int[] f28036a = {0, 5, 9, 30};

    /* renamed from: com.callapp.contacts.util.ads.TCF2Manager$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/TCF2Manager$1.class */
    public static final class C78751 implements AbstractC10615c.AbstractC10617b {

        /* renamed from: a */
        final /* synthetic */ Activity f28037a;

        /* renamed from: b */
        final /* synthetic */ AbstractC10615c f28038b;

        /* renamed from: c */
        final /* synthetic */ boolean f28039c;

        /* renamed from: d */
        final /* synthetic */ OutcomeListener f28040d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callapp.contacts.util.ads.TCF2Manager$1$1 */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/TCF2Manager$1$1.class */
        public class C78761 implements C10621f.AbstractC10623b {
            C78761() {
                C78751.this = r4;
            }

            @Override // com.google.android.p314c.C10621f.AbstractC10623b
            /* renamed from: a */
            public final void mo13518a(final AbstractC10613b abstractC10613b) {
                int mo13549a = C78751.this.f28038b.mo13549a();
                CLog.m27611a(TCF2Manager.class, "onConsentFormLoadSuccess: ".concat(String.valueOf(mo13549a)));
                if (mo13549a != 2 && (mo13549a != 3 || AdUtils.ConsentStatus.PERSONALIZED == TCF2Manager.m27214b(C78751.this.f28037a))) {
                    C78751.this.f28040d.mo28119a(false);
                    return;
                }
                if (!C78751.this.f28039c) {
                    int intValue = Prefs.f26306bd.get().intValue();
                    if (intValue > 0 && intValue <= 3) {
                        Date date = Prefs.f26307be.get();
                        if (date != null && Calendar.getInstance().getTime().before(date)) {
                            C78751.this.f28040d.mo28119a(false);
                            return;
                        }
                    } else if (intValue > 3) {
                        C78751.this.f28040d.mo28119a(false);
                        return;
                    }
                }
                AnalyticsManager.get().m28450a(Constants.f26733AD, "Showing TCF 2 consent form");
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.TCF2Manager.1.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        abstractC10613b.mo13523a(C78751.this.f28037a, new AbstractC10613b.AbstractC10614a() { // from class: com.callapp.contacts.util.ads.TCF2Manager.1.1.1.1
                            @Override // com.google.android.p314c.AbstractC10613b.AbstractC10614a
                            /* renamed from: a */
                            public final void mo22613a(C10620e c10620e) {
                                if (!C78751.this.f28039c) {
                                    TCF2Manager.m27217a();
                                }
                                AnalyticsManager.get().m28449a(Constants.f26733AD, "TCF2 consent status", TCF2Manager.m27214b(C78751.this.f28037a).name());
                                StringBuilder sb = new StringBuilder("onConsentFormDismissed: ");
                                sb.append(c10620e != null ? c10620e.f34388a : null);
                                CLog.m27611a(TCF2Manager.class, sb.toString());
                                C78751.this.f28040d.mo28119a(true);
                            }
                        });
                    }
                });
            }
        }

        C78751(Activity activity, AbstractC10615c abstractC10615c, boolean z, OutcomeListener outcomeListener) {
            this.f28037a = activity;
            this.f28038b = abstractC10615c;
            this.f28039c = z;
            this.f28040d = outcomeListener;
        }

        @Override // com.google.android.p314c.AbstractC10615c.AbstractC10617b
        /* renamed from: a */
        public final void mo22611a() {
            Activity activity = this.f28037a;
            C78761 c78761 = new C78761();
            C10621f.AbstractC10622a abstractC10622a = new C10621f.AbstractC10622a() { // from class: com.callapp.contacts.util.ads.TCF2Manager.1.2
                @Override // com.google.android.p314c.C10621f.AbstractC10622a
                /* renamed from: a */
                public final void mo13517a(final C10620e c10620e) {
                    new Task() { // from class: com.callapp.contacts.util.ads.TCF2Manager.1.2.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            StringBuilder sb = new StringBuilder("onConsentFormLoadFailure: ");
                            C10620e c10620e2 = c10620e;
                            sb.append(c10620e2 != null ? c10620e2.f34388a : null);
                            CLog.m27611a(TCF2Manager.class, sb.toString());
                            C78751.this.f28040d.mo28119a(false);
                        }
                    }.execute();
                }
            };
            C13170aa mo13539b = AbstractC13198bb.m13567a(activity).mo13539b();
            C13202be.m13564a();
            C13173ad c13173ad = mo13539b.f50281b.get();
            if (c13173ad == null) {
                abstractC10622a.mo13517a(new zzk(3, "No available form can be built.").m13511a());
                return;
            }
            C13261u mo13526a = mo13539b.f50280a.mo13528a().mo13519a(c13173ad).mo13520a().mo13526a();
            mo13526a.f50508e = mo13526a.f50507d.mo13528a();
            zzbe zzbeVar = mo13526a.f50508e;
            zzbeVar.setBackgroundColor(0);
            zzbeVar.getSettings().setJavaScriptEnabled(true);
            zzbeVar.setWebViewClient(new C13176ag(zzbeVar));
            mo13526a.f50509f.set(new C13265y(c78761, abstractC10622a));
            mo13526a.f50508e.loadDataWithBaseURL(mo13526a.f50506c.f50289a, mo13526a.f50506c.f50290b, Mimetypes.MIMETYPE_HTML, "UTF-8", null);
            C13202be.f50380a.postDelayed(new Runnable(mo13526a) { // from class: com.google.android.gms.internal.consent_sdk.x

                /* renamed from: a */
                private final C13261u f50516a;

                {
                    this.f50516a = mo13526a;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f50516a.m13522a(new zzk(4, "Web view timed out."));
                }
            }, 10000L);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m27217a() {
        Calendar calendar = Calendar.getInstance();
        int intValue = Prefs.f26306bd.m28169b(1).get().intValue();
        if (intValue <= 0 || intValue > 3) {
            return;
        }
        int[] iArr = f28036a;
        int i = iArr[intValue];
        int i2 = iArr[intValue - 1];
        calendar.set(10, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.add(5, i - i2);
        Prefs.f26307be.set(calendar.getTime());
    }

    /* renamed from: a */
    public static void m27215a(Activity activity, final OutcomeListener outcomeListener, boolean z) {
        if (AdUtils.m27285a()) {
            outcomeListener.mo28119a(false);
            return;
        }
        C10618d.C10619a c10619a = new C10618d.C10619a();
        if (Prefs.f26308bf.get().booleanValue()) {
            C10611a.C10612a c10612a = new C10611a.C10612a(activity);
            c10612a.f34375b = 1;
            c10612a.f34374a.add(C13197ba.m13569a(CallAppApplication.get()));
            c10619a.f34386c = c10612a.m22614a();
        }
        C10618d c10618d = new C10618d(c10619a);
        C13228cc mo13541a = AbstractC13198bb.m13567a(activity).mo13541a();
        mo13541a.mo13548a(activity, c10618d, new C78751(activity, mo13541a, z, outcomeListener), new AbstractC10615c.AbstractC10616a() { // from class: com.callapp.contacts.util.ads.TCF2Manager.2
            @Override // com.google.android.p314c.AbstractC10615c.AbstractC10616a
            /* renamed from: a */
            public final void mo22612a(final C10620e c10620e) {
                new Task() { // from class: com.callapp.contacts.util.ads.TCF2Manager.2.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        StringBuilder sb = new StringBuilder("onConsentInfoUpdateFailure: ");
                        C10620e c10620e2 = c10620e;
                        sb.append(c10620e2 != null ? c10620e2.f34388a : null);
                        CLog.m27611a(TCF2Manager.class, sb.toString());
                        outcomeListener.mo28119a(false);
                    }
                }.execute();
            }
        });
    }

    /* renamed from: b */
    public static AdUtils.ConsentStatus m27214b(Activity activity) {
        String str;
        AdUtils.ConsentStatus consentStatus;
        try {
            str = PreferenceManager.getDefaultSharedPreferences(activity).getString("IABTCF_VendorConsents", null);
        } catch (Exception e) {
            str = null;
        }
        if (StringUtils.m26057a((Object) str, (Object) 0)) {
            CLog.m27611a(TCF2Manager.class, "TCF2 consent status NON_PERSONALIZED");
            consentStatus = AdUtils.ConsentStatus.NON_PERSONALIZED;
            AdUtils.m27274a(consentStatus);
        } else if (StringUtils.m26045b((CharSequence) str)) {
            CLog.m27611a(TCF2Manager.class, "TCF2 consent status PERSONALIZED");
            consentStatus = AdUtils.ConsentStatus.PERSONALIZED;
            AdUtils.m27274a(consentStatus);
        } else {
            CLog.m27611a(TCF2Manager.class, "TCF2 consent status UNKNOWN");
            consentStatus = AdUtils.ConsentStatus.UNKNOWN;
        }
        return consentStatus;
    }
}
