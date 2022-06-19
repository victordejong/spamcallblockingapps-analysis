package p193e.p194a.p1213s2.p1214g;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallIgnoredReason;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallType;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallerIdSettingsAction;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallerIdToggleSource;
import com.truecaller.announce_caller_id.analytics.events.TextToSpeechInitError;
import com.truecaller.clevertap.CleverTapManager;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1012a.C16601v;
import p193e.p194a.p1011l.p1021l2.AbstractC16953b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1213s2.p1214g.p1215c.C20203a;
import p193e.p194a.p1213s2.p1214g.p1215c.C20204b;
import p193e.p194a.p1213s2.p1214g.p1215c.C20205c;
import p193e.p194a.p1213s2.p1214g.p1215c.C20206d;
import p193e.p194a.p1213s2.p1214g.p1215c.C20207e;
import p193e.p194a.p1213s2.p1214g.p1215c.C20208f;
import p193e.p194a.p1213s2.p1214g.p1215c.C20209g;
import p193e.p194a.p1213s2.p1214g.p1215c.C20210h;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.s2.g.b */
/* loaded from: classes5-dex2jar.jar:e/a/s2/g/b.class */
public final class C20202b extends AbstractC16953b implements AbstractC20201a {

    /* renamed from: d */
    public final C16601v f56920d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20202b(C20592g c20592g, C16601v c16601v, AbstractC19462a abstractC19462a, CleverTapManager cleverTapManager) {
        super((AbstractC20597i) c20592g.f58040v.m10941a(c20592g, C20592g.f57695p6[18]), abstractC19462a, cleverTapManager);
        l.e(c20592g, "featuresRegistry");
        l.e(c16601v, "proStatusGenerator");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(cleverTapManager, "cleverTapManager");
        this.f56920d = c16601v;
    }

    @Override // p193e.p194a.p1213s2.p1214g.AbstractC20201a
    /* renamed from: a */
    public void mo11354a(TextToSpeechInitError textToSpeechInitError, String str) {
        l.e(textToSpeechInitError, "reason");
        l.e(str, "languageIso");
        C10480a.m26037O1(new C20203a(textToSpeechInitError, str), this);
    }

    @Override // p193e.p194a.p1213s2.p1214g.AbstractC20201a
    /* renamed from: c */
    public void mo11353c(Integer num, AnnounceCallerIdToggleSource announceCallerIdToggleSource, boolean z, boolean z2) {
        l.e(announceCallerIdToggleSource, "source");
        if (z) {
            C10480a.m26037O1(new C20210h(num, announceCallerIdToggleSource, z2), this);
        } else {
            C10480a.m26037O1(new C20209g(num, announceCallerIdToggleSource, z2), this);
        }
    }

    @Override // p193e.p194a.p1213s2.p1214g.AbstractC20201a
    /* renamed from: d */
    public void mo11352d(int i, boolean z) {
        C10480a.m26037O1(new C20207e(i, this.f56920d.m17200a(), z), this);
    }

    @Override // p193e.p194a.p1213s2.p1214g.AbstractC20201a
    /* renamed from: e */
    public void mo11351e(int i) {
        C10480a.m26037O1(new C20208f(i, this.f56920d.m17200a()), this);
    }

    @Override // p193e.p194a.p1213s2.p1214g.AbstractC20201a
    /* renamed from: g */
    public void mo11350g(boolean z, boolean z2, AnnounceCallType announceCallType, String str) {
        l.e(announceCallType, "callType");
        l.e(str, "languageIso");
        C10480a.m26037O1(new C20205c(z, z2, announceCallType, str), this);
    }

    @Override // p193e.p194a.p1213s2.p1214g.AbstractC20201a
    /* renamed from: j */
    public void mo11349j(AnnounceCallIgnoredReason announceCallIgnoredReason) {
        l.e(announceCallIgnoredReason, "reason");
        C10480a.m26037O1(new C20206d(announceCallIgnoredReason), this);
    }

    @Override // p193e.p194a.p1213s2.p1214g.AbstractC20201a
    /* renamed from: n */
    public void mo11348n(AnnounceCallerIdSettingsAction announceCallerIdSettingsAction) {
        l.e(announceCallerIdSettingsAction, "announceCallerIdSettingsAction");
        C10480a.m26037O1(new C20204b(announceCallerIdSettingsAction), this);
    }
}
