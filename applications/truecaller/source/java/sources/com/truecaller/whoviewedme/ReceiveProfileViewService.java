package com.truecaller.whoviewedme;

import android.content.Intent;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Address;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import e.m.d.y.n;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p1193r5.AbstractC19955j;
import p193e.p194a.p1193r5.AbstractServiceC19942e;
import p193e.p194a.p1193r5.C19961l0;
import p193e.p194a.p1193r5.C19965n;
import p193e.p194a.p1193r5.p1194s0.C19981b;
import p193e.p194a.p1342w4.C21212l;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p997k3.p998j.C16487j;
import s1.f0.r;
import s1.u.i;
import s1.z.c.l;
import x3.a0;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b7\u00108J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105¨\u00069"}, d2 = {"Lcom/truecaller/whoviewedme/ReceiveProfileViewService;", "Ln3/k/a/a0;", "Landroid/content/Intent;", "intent", "Ls1/s;", "onHandleWork", "(Landroid/content/Intent;)V", "Le/a/r5/i0;", "d", "Le/a/r5/i0;", "getWhoViewedMeManager", "()Le/a/r5/i0;", "setWhoViewedMeManager", "(Le/a/r5/i0;)V", "whoViewedMeManager", "Le/a/r5/l0;", "g", "Le/a/r5/l0;", "getWhoViewedMeNotifier", "()Le/a/r5/l0;", "setWhoViewedMeNotifier", "(Le/a/r5/l0;)V", "whoViewedMeNotifier", "Le/a/z4/d;", "e", "Le/a/z4/d;", "getGeneralSettings", "()Le/a/z4/d;", "setGeneralSettings", "(Le/a/z4/d;)V", "generalSettings", "Le/a/r5/j;", "i", "Le/a/r5/j;", "getProfileViewDao", "()Le/a/r5/j;", "setProfileViewDao", "(Le/a/r5/j;)V", "profileViewDao", "Le/a/k3/j/j;", "h", "Le/a/k3/j/j;", "getRawContactDao", "()Le/a/k3/j/j;", "setRawContactDao", "(Le/a/k3/j/j;)V", "rawContactDao", "Le/a/q2/a;", "f", "Le/a/q2/a;", "getAnalytics", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes8-dex2jar.jar:com/truecaller/whoviewedme/ReceiveProfileViewService.class */
public final class ReceiveProfileViewService extends AbstractServiceC19942e {

    /* renamed from: j */
    public static final /* synthetic */ int f16510j = 0;
    @Inject

    /* renamed from: d */
    public AbstractC19954i0 f16511d;
    @Inject

    /* renamed from: e */
    public AbstractC21881d f16512e;
    @Inject

    /* renamed from: f */
    public AbstractC19462a f16513f;
    @Inject

    /* renamed from: g */
    public C19961l0 f16514g;
    @Inject

    /* renamed from: h */
    public C16487j f16515h;
    @Inject

    /* renamed from: i */
    public AbstractC19955j f16516i;

    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i
    public void onHandleWork(Intent intent) {
        ProfileViewSource profileViewSource;
        Contact contact;
        Address m35500r;
        int m11727a;
        a0 m15210p0;
        ContactDto contactDto;
        l.e(intent, "intent");
        AbstractC19954i0 abstractC19954i0 = this.f16511d;
        if (abstractC19954i0 == null) {
            l.l("whoViewedMeManager");
            throw null;
        } else if (!abstractC19954i0.mo11761b()) {
        } else {
            AbstractC21881d abstractC21881d = this.f16512e;
            if (abstractC21881d == null) {
                l.l("generalSettings");
                throw null;
            } else if (!abstractC21881d.getBoolean("showProfileViewNotifications", true)) {
            } else {
                String stringExtra = intent.getStringExtra("EXTRA_TC_ID");
                if (stringExtra == null) {
                    AssertionUtil.reportWeirdnessButNeverCrash("TC id is null in Who viewed me notifications");
                    return;
                }
                try {
                    String stringExtra2 = intent.getStringExtra("EXTRA_PROFILE_VIEW_EVENT_SOURCE");
                    if (stringExtra2 != null) {
                        l.d(stringExtra2, "it");
                        profileViewSource = ProfileViewSource.valueOf(stringExtra2);
                    } else {
                        profileViewSource = null;
                    }
                    if (profileViewSource == null) {
                        throw new NullPointerException("null cannot be cast to non-null type com.truecaller.whoviewedme.ProfileViewSource");
                    }
                } catch (Exception e) {
                    profileViewSource = ProfileViewSource.UNKNOWN;
                }
                try {
                    m15210p0 = C18334g0.m15210p0(C21212l.m10129a().m10123e(stringExtra));
                } catch (IOException e2) {
                }
                if (C12864a2.m22540r(m15210p0 != null ? Boolean.valueOf(m15210p0.b()) : null) && m15210p0 != null && (contactDto = (ContactDto) m15210p0.b) != null) {
                    l.d(contactDto, "contactDto");
                    List<ContactDto.Contact> list = contactDto.data;
                    ContactDto.Contact contact2 = list != null ? (ContactDto.Contact) i.G(list, 0) : null;
                    if (r.n(contact2 != null ? contact2.access : null, "PRIVATE", true) && contact2 != null) {
                        contact2.phones = null;
                    }
                    if (contact2 != null) {
                        contact = new Contact(contact2);
                        if (contact == null || (m35500r = contact.m35500r()) == null) {
                        }
                        l.d(m35500r, "contact.defaultAddress ?: return");
                        C16487j c16487j = this.f16515h;
                        if (c16487j == null) {
                            l.l("rawContactDao");
                            throw null;
                        }
                        c16487j.m17331c(contact);
                        String tcId = contact.getTcId();
                        if (tcId == null) {
                            return;
                        }
                        l.d(tcId, "this.tcId ?: return");
                        if (contact.m35566G() == null) {
                            return;
                        }
                        AbstractC19955j abstractC19955j = this.f16516i;
                        if (abstractC19955j == null) {
                            l.l("profileViewDao");
                            throw null;
                        }
                        C19965n c19965n = (C19965n) abstractC19955j;
                        Objects.requireNonNull(c19965n);
                        l.e(tcId, "tcId");
                        l.e(profileViewSource, "source");
                        c19965n.m11726b(tcId, profileViewSource, ProfileViewType.INCOMING);
                        C27062a.m968b(this).m966d(new Intent("com.truecaller.notification.action.NOTIFICATIONS_UPDATED"));
                        AbstractC19954i0 abstractC19954i02 = this.f16511d;
                        if (abstractC19954i02 == null) {
                            l.l("whoViewedMeManager");
                            throw null;
                        }
                        if (abstractC19954i02.mo11750m()) {
                            AbstractC19955j abstractC19955j2 = this.f16516i;
                            if (abstractC19955j2 == null) {
                                l.l("profileViewDao");
                                throw null;
                            }
                            AbstractC19954i0 abstractC19954i03 = this.f16511d;
                            if (abstractC19954i03 == null) {
                                l.l("whoViewedMeManager");
                                throw null;
                            }
                            m11727a = ((C19965n) abstractC19955j2).m11727a(abstractC19954i03.mo11745r(), null);
                            String m13496y0 = C19291g.m13496y0(m35500r);
                            String quantityString = m13496y0 == null ? getResources().getQuantityString(C2752R.plurals.WhoViewedMeNotificationTitle, m11727a, Integer.valueOf(m11727a)) : getResources().getQuantityString(C2752R.plurals.WhoViewedMeNotificationWithLocationTitle, m11727a, Integer.valueOf(m11727a), m13496y0);
                            l.d(quantityString, "when (val location = def…          )\n            }");
                            String string = getResources().getString(C2752R.string.WhoViewedMeNotificationMessage);
                            l.d(string, "resources.getString(stri…wedMeNotificationMessage)");
                            C19961l0 c19961l0 = this.f16514g;
                            if (c19961l0 == null) {
                                l.l("whoViewedMeNotifier");
                                throw null;
                            }
                            c19961l0.m11734a(quantityString, string, WhoViewedMeLaunchContext.NOTIFICATION);
                        }
                        C19981b c19981b = new C19981b(profileViewSource);
                        AbstractC19462a abstractC19462a = this.f16513f;
                        if (abstractC19462a != null) {
                            n.B0(c19981b, abstractC19462a);
                            return;
                        } else {
                            l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                            throw null;
                        }
                    }
                }
                contact = null;
                if (contact == null) {
                }
            }
        }
    }
}
