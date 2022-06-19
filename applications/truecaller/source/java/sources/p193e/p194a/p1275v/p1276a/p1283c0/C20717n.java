package p193e.p194a.p1275v.p1276a.p1283c0;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Link;
import com.truecaller.details_view.C3857R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.premium.PremiumLaunchContext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.AbstractC20721d;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1276a.p1295o0.AbstractC20807a;
import p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p997k3.p1000l.C16496d;
import s1.f0.r;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\u0006J\u001d\u0010\u000b\u001a\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0010J\u0019\u0010\u0016\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0016\u0010\u0010J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0018\u0010\u0010J\u0017\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00104\u001a\u00020-8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\"\u0010<\u001a\u0002058\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;¨\u0006="}, d2 = {"Le/a/v/a/c0/n;", "Landroid/widget/LinearLayout;", "Le/a/v/a/c0/e;", "Le/a/v/a/s0/a;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "", "Le/a/v/a/c0/c;", "contactInfoList", "U", "(Ljava/util/List;)V", "", "address", "W", "(Ljava/lang/String;)V", AnalyticsConstants.EMAIL, "Q", "facebookId", "R", "url", "S", "twitterId", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Le/a/v/a/s;", "detailsViewModel", "K0", "(Le/a/v/a/s;)V", "Landroid/content/Intent;", "actionIntent", "V", "(Landroid/content/Intent;)V", "Lcom/truecaller/premium/PremiumLaunchContext;", "launchContext", "W0", "(Lcom/truecaller/premium/PremiumLaunchContext;)V", "Le/a/l/a2;", AbstractC2405c.f7629a, "Le/a/l/a2;", "getPremiumScreenNavigator", "()Le/a/l/a2;", "setPremiumScreenNavigator", "(Le/a/l/a2;)V", "premiumScreenNavigator", "Le/a/v/a/c0/d;", "a", "Le/a/v/a/c0/d;", "getPresenter", "()Le/a/v/a/c0/d;", "setPresenter", "(Le/a/v/a/c0/d;)V", "presenter", "Le/a/v/a/o0/a;", C22021b.f61237c, "Le/a/v/a/o0/a;", "getSocialMediaHelper", "()Le/a/v/a/o0/a;", "setSocialMediaHelper", "(Le/a/v/a/o0/a;)V", "socialMediaHelper", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.c0.n */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c0/n.class */
public final class C20717n extends LinearLayout implements AbstractC20707e, AbstractC20848a {
    @Inject

    /* renamed from: a */
    public AbstractC20706d f58325a;
    @Inject

    /* renamed from: b */
    public AbstractC20807a f58326b;
    @Inject

    /* renamed from: c */
    public AbstractC16613a2 f58327c;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20717n(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10, int r11) {
        /*
            r6 = this;
            r0 = r11
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r9 = r0
        L9:
            r0 = r11
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L14
            r0 = 0
            r10 = r0
        L14:
            r0 = r7
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            r1 = r7
            r2 = 0
            r3 = r9
            r4 = r10
            r0.<init>(r1, r2, r3, r4)
            r0 = r7
            android.content.Context r0 = r0.getApplicationContext()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r8
            e.a.v.l.b r0 = (p193e.p194a.p1275v.p1305l.AbstractC20914b) r0
            e.a.v.l.a r0 = r0.mo10529v()
            r1 = r6
            r0.mo10540j(r1)
            int r0 = com.truecaller.details_view.C3857R.C3858drawable.selectable_background_outlined_view
            r9 = r0
            java.lang.Object r0 = p1727n3.p1807k.p1809b.C26467a.f74235a
            r8 = r0
            r0 = r6
            r1 = r7
            r2 = r9
            android.graphics.drawable.Drawable r1 = p1727n3.p1807k.p1809b.C26467a.C26470c.m1789b(r1, r2)
            r0.setBackground(r1)
            r0 = r6
            r1 = 1
            r0.setOrientation(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1283c0.C20717n.<init>(android.content.Context, android.util.AttributeSet, int, int, int):void");
    }

    @Override // p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a
    /* renamed from: K0 */
    public void mo10605K0(C20847s c20847s) {
        String m35485z;
        C20705c c20705c;
        Object obj;
        Object obj2;
        C20705c c20705c2;
        String info;
        String str;
        String info2;
        String str2;
        C20705c c20705c3;
        l.e(c20847s, "detailsViewModel");
        AbstractC20706d abstractC20706d = this.f58325a;
        if (abstractC20706d == null) {
            l.l("presenter");
            throw null;
        }
        C20713k c20713k = (C20713k) abstractC20706d;
        l.e(c20847s, "detailsViewModel");
        ArrayList arrayList = new ArrayList();
        Contact contact = c20847s.f58578a;
        l.d(contact.m35485z(), "contact.formattedAddress");
        if (!r.p(m35485z)) {
            boolean mo17209b = c20713k.f58320f.mo17209b(contact, true);
            C20720q c20720q = new C20720q(C3857R.C3858drawable.ic_address);
            String mo13768b = mo17209b ? c20713k.f58319e.mo13768b(C3857R.string.details_view_address_as_premium_title, new Object[0]) : contact.m35485z();
            l.d(mo13768b, "if (premiumRequired) res… contact.formattedAddress");
            c20705c = new C20705c(c20720q, mo13768b, mo17209b, c20713k.m10812Ij(mo17209b, PremiumLaunchContext.CONTACT_DETAILS_ADDRESS, new C20708f(c20713k, contact)), null, 16);
        } else {
            c20705c = null;
        }
        arrayList.add(c20705c);
        Iterator<String> it = c20713k.f58317c.mo10510f(c20847s.f58578a).iterator();
        while (it.hasNext()) {
            String next = it.next();
            Contact contact2 = c20847s.f58578a;
            if ((next == null || next.length() == 0) || next == null) {
                c20705c3 = null;
            } else {
                boolean mo17205f = c20713k.f58320f.mo17205f(contact2);
                C20720q c20720q2 = new C20720q(C3857R.C3858drawable.ic_email);
                String mo13768b2 = mo17205f ? c20713k.f58319e.mo13768b(C3857R.string.details_view_email_as_premium_title, new Object[0]) : next;
                l.d(mo13768b2, "if (premiumRequired) res…as_premium_title) else it");
                c20705c3 = new C20705c(c20720q2, mo13768b2, mo17205f, c20713k.m10812Ij(mo17205f, PremiumLaunchContext.CONTACT_DETAILS_EMAIL, new C20710h(c20713k, contact2, next)), null, 16);
            }
            arrayList.add(c20705c3);
        }
        AbstractC20721d abstractC20721d = c20847s.f58579b;
        l.e(abstractC20721d, "$this$isBusiness");
        if (!((abstractC20721d instanceof AbstractC20721d.C20732g) || (abstractC20721d instanceof AbstractC20721d.C20725d) || (abstractC20721d instanceof AbstractC20721d.AbstractC20727f.C20731d))) {
            Contact contact3 = c20847s.f58578a;
            List<Link> mo10480c = c20713k.f58318d.mo10480c(contact3);
            ArrayList arrayList2 = new ArrayList();
            String m10813Hj = c20713k.m10813Hj(contact3);
            if (!(m10813Hj == null || m10813Hj.length() == 0)) {
                String m10813Hj2 = c20713k.m10813Hj(contact3);
                boolean mo17206e = c20713k.f58320f.mo17206e(contact3);
                if (!mo17206e) {
                    c20713k.f58316b.m10592c(ViewActionEvent.SocialMediaSubAction.WEBSITE);
                }
                C20720q c20720q3 = new C20720q(C3857R.C3858drawable.ic_website);
                String mo13768b3 = c20713k.f58319e.mo13768b(mo17206e ? C3857R.string.details_view_website_as_premium_title : C3857R.string.details_view_website, new Object[0]);
                l.d(mo13768b3, "resourceProvider.getStri…ing.details_view_website)");
                arrayList2.add(new C20705c(c20720q3, mo13768b3, mo17206e, c20713k.m10812Ij(mo17206e, PremiumLaunchContext.CONTACT_DETAILS_WEBSITE, new C20712j(c20713k, m10813Hj2)), null, 16));
            }
            boolean mo17208c = c20713k.f58320f.mo17208c(contact3);
            Iterator<T> it2 = mo10480c.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (l.a(((Link) obj).getService(), "facebook")) {
                    break;
                }
            }
            Link link = (Link) obj;
            if (link != null && (info2 = link.getInfo()) != null) {
                if (!mo17208c) {
                    c20713k.f58316b.m10592c(ViewActionEvent.SocialMediaSubAction.FACEBOOK);
                }
                C20720q c20720q4 = new C20720q(C3857R.C3858drawable.ic_social_fb);
                if (mo17208c) {
                    AbstractC19223c0 abstractC19223c0 = c20713k.f58319e;
                    str2 = abstractC19223c0.mo13768b(C3857R.string.details_view_social_as_premium_title, abstractC19223c0.mo13768b(C3857R.string.details_view_facebook, new Object[0]));
                } else {
                    str2 = c20713k.f58319e.mo13768b(C3857R.string.details_view_facebook, new Object[0]);
                }
                l.d(str2, "when {\n                 …ok)\n                    }");
                arrayList2.add(new C20705c(c20720q4, str2, mo17208c, c20713k.m10812Ij(mo17208c, PremiumLaunchContext.CONTACT_DETAILS_SOCIAL, new q1(0, info2, c20713k, arrayList2, mo17208c)), null, 16));
            }
            Iterator<T> it3 = mo10480c.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj2 = null;
                    break;
                }
                obj2 = it3.next();
                if (l.a(((Link) obj2).getService(), "twitter")) {
                    break;
                }
            }
            Link link2 = (Link) obj2;
            if (link2 != null && (info = link2.getInfo()) != null) {
                if (!mo17208c) {
                    c20713k.f58316b.m10592c(ViewActionEvent.SocialMediaSubAction.TWITTER);
                }
                C20720q c20720q5 = new C20720q(C3857R.C3858drawable.ic_social_twitter);
                if (mo17208c) {
                    AbstractC19223c0 abstractC19223c02 = c20713k.f58319e;
                    str = abstractC19223c02.mo13768b(C3857R.string.details_view_social_as_premium_title, abstractC19223c02.mo13768b(C3857R.string.details_view_twitter, new Object[0]));
                } else {
                    str = c20713k.f58319e.mo13768b(C3857R.string.details_view_twitter, new Object[0]);
                }
                l.d(str, "when {\n                 …er)\n                    }");
                arrayList2.add(new C20705c(c20720q5, str, mo17208c, c20713k.m10812Ij(mo17208c, PremiumLaunchContext.CONTACT_DETAILS_SOCIAL, new q1(1, info, c20713k, arrayList2, mo17208c)), null, 16));
            }
            Iterator it4 = arrayList2.iterator();
            while (it4.hasNext()) {
                arrayList.add((C20705c) it4.next());
            }
            Contact contact4 = c20847s.f58578a;
            String m35571C = contact4.m35571C();
            if (!(m35571C == null || r.p(m35571C))) {
                boolean mo17207d = c20713k.f58320f.mo17207d(contact4);
                C20720q c20720q6 = new C20720q(C3857R.C3858drawable.ic_work);
                String mo13768b4 = mo17207d ? c20713k.f58319e.mo13768b(C3857R.string.details_view_job_as_premium_title, new Object[0]) : contact4.m35571C();
                l.d(mo13768b4, "if (premiumRequired) res…) else contact.jobDetails");
                c20705c2 = new C20705c(c20720q6, mo13768b4, mo17207d, c20713k.m10812Ij(mo17207d, PremiumLaunchContext.CONTACT_DETAILS_JOB, C20711i.f58313b), null, 16);
            } else {
                c20705c2 = null;
            }
            if (c20705c2 != null) {
                arrayList.add(c20705c2);
            }
            List<C16496d> list = c20847s.f58584g;
            ArrayList arrayList3 = new ArrayList(C25225a.m4004J(list, 10));
            for (C16496d c16496d : list) {
                Drawable drawable = c16496d.f46383b;
                l.d(drawable, "it.actionIcon");
                C20718o c20718o = new C20718o(drawable);
                String str3 = c16496d.f46386e;
                l.d(str3, "it.appName");
                arrayList3.add(new C20705c(c20718o, str3, false, new C20709g(c16496d, c20713k), null, 20));
            }
            arrayList.addAll(arrayList3);
        }
        List<C20705c> z = i.z(arrayList);
        AbstractC20707e abstractC20707e = (AbstractC20707e) c20713k.f57683a;
        if (abstractC20707e == null) {
            return;
        }
        abstractC20707e.mo10807U(z);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1283c0.AbstractC20707e
    /* renamed from: Q */
    public void mo10811Q(String str) {
        l.e(str, AnalyticsConstants.EMAIL);
        C8613t.m28199m(getContext(), str);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1283c0.AbstractC20707e
    /* renamed from: R */
    public void mo10810R(String str) {
        l.e(str, "facebookId");
        AbstractC20807a abstractC20807a = this.f58326b;
        if (abstractC20807a == null) {
            l.l("socialMediaHelper");
            throw null;
        }
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        abstractC20807a.mo10479d(context, str);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1283c0.AbstractC20707e
    /* renamed from: S */
    public void mo10809S(String str) {
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        C19291g.m13596Q0(str, context);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1283c0.AbstractC20707e
    /* renamed from: T */
    public void mo10808T(String str) {
        l.e(str, "twitterId");
        AbstractC20807a abstractC20807a = this.f58326b;
        if (abstractC20807a == null) {
            l.l("socialMediaHelper");
            throw null;
        }
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        abstractC20807a.mo10476g(context, str);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1283c0.AbstractC20707e
    /* renamed from: U */
    public void mo10807U(List<C20705c> list) {
        l.e(list, "contactInfoList");
        removeAllViews();
        C19286f.m13683U(this, !list.isEmpty());
        int i = 0;
        for (Object obj : list) {
            if (i < 0) {
                i.N0();
                throw null;
            }
            C20705c c20705c = (C20705c) obj;
            boolean z = i != list.size() - 1;
            View inflate = LayoutInflater.from(getContext()).inflate(C3857R.layout.view_contact_info, (ViewGroup) this, false);
            addView(inflate);
            int i2 = C3857R.C3859id.divider;
            View findViewById = inflate.findViewById(i2);
            if (findViewById != null) {
                i2 = C3857R.C3859id.icon;
                ImageView imageView = (ImageView) inflate.findViewById(i2);
                if (imageView != null) {
                    i2 = C3857R.C3859id.premiumRequiredIcon;
                    ImageView imageView2 = (ImageView) inflate.findViewById(i2);
                    if (imageView2 != null) {
                        i2 = C3857R.C3859id.premiumRequiredNote;
                        TextView textView = (TextView) inflate.findViewById(i2);
                        if (textView != null) {
                            i2 = C3857R.C3859id.text;
                            TextView textView2 = (TextView) inflate.findViewById(i2);
                            if (textView2 != null) {
                                ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                                l.d(constraintLayout, "root");
                                C19286f.m13678a(constraintLayout);
                                AbstractC20719p abstractC20719p = c20705c.f58302a;
                                l.d(imageView, RemoteMessageConst.Notification.ICON);
                                abstractC20719p.mo10803a(imageView);
                                l.d(textView2, "text");
                                textView2.setText(c20705c.f58303b);
                                l.d(findViewById, "divider");
                                C19286f.m13683U(findViewById, z);
                                l.d(imageView2, "premiumRequiredIcon");
                                C19286f.m13683U(imageView2, c20705c.f58304c);
                                l.d(textView, "premiumRequiredNote");
                                C19286f.m13683U(textView, c20705c.f58304c);
                                constraintLayout.setOnClickListener(new View$OnClickListenerC20715l(c20705c, z));
                                constraintLayout.setOnLongClickListener(new View$OnLongClickListenerC20716m(c20705c, z));
                                i++;
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1283c0.AbstractC20707e
    /* renamed from: V */
    public void mo10806V(Intent intent) {
        l.e(intent, "actionIntent");
        intent.setFlags(268435456);
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            getContext().startActivity(intent);
            return;
        }
        AssertionUtil.shouldNeverHappen(new IllegalArgumentException("There has to be an activity to handle this intent : " + intent), new String[0]);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1283c0.AbstractC20707e
    /* renamed from: W */
    public void mo10805W(String str) {
        l.e(str, "address");
        Intent m28208d = C8613t.m28208d(str);
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        if (m28208d.resolveActivity(context.getPackageManager()) != null) {
            C8613t.m28198n(getContext(), C8613t.m28208d(str));
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1283c0.AbstractC20707e
    /* renamed from: W0 */
    public void mo10804W0(PremiumLaunchContext premiumLaunchContext) {
        l.e(premiumLaunchContext, "launchContext");
        AbstractC16613a2 abstractC16613a2 = this.f58327c;
        if (abstractC16613a2 == null) {
            l.l("premiumScreenNavigator");
            throw null;
        }
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        abstractC16613a2.mo17167b(context, premiumLaunchContext);
    }

    public final AbstractC16613a2 getPremiumScreenNavigator() {
        AbstractC16613a2 abstractC16613a2 = this.f58327c;
        if (abstractC16613a2 != null) {
            return abstractC16613a2;
        }
        l.l("premiumScreenNavigator");
        throw null;
    }

    public final AbstractC20706d getPresenter() {
        AbstractC20706d abstractC20706d = this.f58325a;
        if (abstractC20706d != null) {
            return abstractC20706d;
        }
        l.l("presenter");
        throw null;
    }

    public final AbstractC20807a getSocialMediaHelper() {
        AbstractC20807a abstractC20807a = this.f58326b;
        if (abstractC20807a != null) {
            return abstractC20807a;
        }
        l.l("socialMediaHelper");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC20706d abstractC20706d = this.f58325a;
        if (abstractC20706d != null) {
            ((AbstractC20576b) abstractC20706d).f57683a = this;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AbstractC20706d abstractC20706d = this.f58325a;
        if (abstractC20706d == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC20706d).f57683a = null;
        super.onDetachedFromWindow();
    }

    public final void setPremiumScreenNavigator(AbstractC16613a2 abstractC16613a2) {
        l.e(abstractC16613a2, "<set-?>");
        this.f58327c = abstractC16613a2;
    }

    public final void setPresenter(AbstractC20706d abstractC20706d) {
        l.e(abstractC20706d, "<set-?>");
        this.f58325a = abstractC20706d;
    }

    public final void setSocialMediaHelper(AbstractC20807a abstractC20807a) {
        l.e(abstractC20807a, "<set-?>");
        this.f58326b = abstractC20807a;
    }
}
