package p193e.p194a.p1275v.p1276a.p1295o0;

import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.data.entity.AppStores;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Link;
import com.truecaller.details_view.C3857R;
import com.truecaller.details_view.p162ui.socialmedia.SocialMediaModel;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1275v.p1276a.C20847s;
import q3.a.i0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.details_view.ui.socialmedia.SocialMediaPresenter$onDetailsViewModelReceived$1", f = "SocialMediaPresenter.kt", l = {31}, m = "invokeSuspend")
/* renamed from: e.a.v.a.o0.f */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/o0/f.class */
public final class C20812f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f58471e;

    /* renamed from: f */
    public Object f58472f;

    /* renamed from: g */
    public int f58473g;

    /* renamed from: h */
    public final /* synthetic */ C20814g f58474h;

    /* renamed from: i */
    public final /* synthetic */ C20847s f58475i;

    /* renamed from: e.a.v.a.o0.f$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/o0/f$a.class */
    public static final class C20813a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return C25225a.m4000K(Integer.valueOf(((SocialMediaModel) t).f11787a.getPriority()), Integer.valueOf(((SocialMediaModel) t2).f11787a.getPriority()));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20812f(C20814g c20814g, C20847s c20847s, d dVar) {
        super(2, dVar);
        this.f58474h = c20814g;
        this.f58475i = c20847s;
    }

    /* renamed from: i */
    public final d<s> m10676i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20812f(this.f58474h, this.f58475i, dVar);
    }

    /* renamed from: k */
    public final Object m10675k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20812f(this.f58474h, this.f58475i, dVar).m10674s(s.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v154, types: [java.util.List] */
    /* renamed from: s */
    public final Object m10674s(Object obj) {
        ArrayList arrayList;
        C20814g c20814g;
        String info;
        String info2;
        String info3;
        a aVar = a.a;
        int i = this.f58473g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            List<Link> mo10480c = this.f58474h.f58477e.mo10480c(this.f58475i.f58578a);
            C20814g c20814g2 = this.f58474h;
            C20847s c20847s = this.f58475i;
            Objects.requireNonNull(c20814g2);
            arrayList = new ArrayList();
            String m10673Ij = c20814g2.m10673Ij(c20847s.f58578a);
            if (!(m10673Ij == null || m10673Ij.length() == 0)) {
                String m10673Ij2 = c20814g2.m10673Ij(c20847s.f58578a);
                c20814g2.f58479g.m10592c(ViewActionEvent.SocialMediaSubAction.WEBSITE);
                SocialMediaModel.Type type = SocialMediaModel.Type.WEBSITE;
                String mo13768b = c20814g2.f58478f.mo13768b(C3857R.string.details_view_website, new Object[0]);
                l.d(mo13768b, "resourceProvider.getStri…ing.details_view_website)");
                arrayList.add(new SocialMediaModel(type, mo13768b, C3857R.C3858drawable.ic_social_web, new C20811e(c20814g2, m10673Ij2)));
            }
            for (Link link : mo10480c) {
                String service = link.getService();
                if (service != null) {
                    int hashCode = service.hashCode();
                    if (hashCode != -916346253) {
                        if (hashCode != 28903346) {
                            if (hashCode == 497130182 && service.equals("facebook") && (info = link.getInfo()) != null) {
                                c20814g2.f58479g.m10592c(ViewActionEvent.SocialMediaSubAction.FACEBOOK);
                                SocialMediaModel.Type type2 = SocialMediaModel.Type.FACEBOOK;
                                String mo13768b2 = c20814g2.f58478f.mo13768b(C3857R.string.details_view_facebook, new Object[0]);
                                l.d(mo13768b2, "resourceProvider.getStri…ng.details_view_facebook)");
                                arrayList.add(new SocialMediaModel(type2, mo13768b2, C3857R.C3858drawable.ic_social_fb, new C27619r2(0, info, c20814g2, arrayList)));
                            }
                        } else if (service.equals("instagram") && (info2 = link.getInfo()) != null) {
                            c20814g2.f58479g.m10592c(ViewActionEvent.SocialMediaSubAction.INSTAGRAM);
                            SocialMediaModel.Type type3 = SocialMediaModel.Type.INSTAGRAM;
                            String mo13768b3 = c20814g2.f58478f.mo13768b(C3857R.string.details_view_instagram, new Object[0]);
                            l.d(mo13768b3, "resourceProvider.getStri…g.details_view_instagram)");
                            arrayList.add(new SocialMediaModel(type3, mo13768b3, C3857R.C3858drawable.ic_detail_view_social_instagram, new C27619r2(2, info2, c20814g2, arrayList)));
                        }
                    } else if (service.equals("twitter") && (info3 = link.getInfo()) != null) {
                        c20814g2.f58479g.m10592c(ViewActionEvent.SocialMediaSubAction.TWITTER);
                        SocialMediaModel.Type type4 = SocialMediaModel.Type.TWITTER;
                        String mo13768b4 = c20814g2.f58478f.mo13768b(C3857R.string.details_view_twitter, new Object[0]);
                        l.d(mo13768b4, "resourceProvider.getStri…ing.details_view_twitter)");
                        arrayList.add(new SocialMediaModel(type4, mo13768b4, C3857R.C3858drawable.ic_social_twitter, new C27619r2(1, info3, c20814g2, arrayList)));
                    }
                }
            }
            c20814g = this.f58474h;
            AbstractC20807a abstractC20807a = c20814g.f58477e;
            Contact contact = this.f58475i.f58578a;
            this.f58471e = arrayList;
            this.f58472f = c20814g;
            this.f58473g = 1;
            obj = abstractC20807a.mo10482a(contact, this);
            if (obj == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c20814g = (C20814g) this.f58472f;
            arrayList = (List) this.f58471e;
            C25225a.m3932a3(obj);
        }
        Objects.requireNonNull(c20814g);
        ArrayList arrayList2 = new ArrayList();
        Iterator it = ((List) obj).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            AppStores appStores = (AppStores) it.next();
            if ((!r.p(appStores.getUrl())) && l.a("GooglePlayStore", appStores.getLinkType())) {
                c20814g.f58479g.m10592c(ViewActionEvent.SocialMediaSubAction.GOOGLE_PLAY_STORE);
                SocialMediaModel.Type type5 = SocialMediaModel.Type.GOOGLE_PLAY_STORE;
                String mo13768b5 = c20814g.f58478f.mo13768b(C3857R.string.details_view_android_app, new Object[0]);
                l.d(mo13768b5, "resourceProvider.getStri…details_view_android_app)");
                arrayList2.add(new SocialMediaModel(type5, mo13768b5, C3857R.C3858drawable.ic_google_play_store, new C20810d(c20814g, appStores)));
                break;
            }
        }
        List<SocialMediaModel> F0 = s1.u.i.F0(s1.u.i.l0(arrayList, arrayList2), new C20813a());
        AbstractC20809c abstractC20809c = (AbstractC20809c) this.f58474h.f57683a;
        if (abstractC20809c != null) {
            if (!F0.isEmpty()) {
                abstractC20809c.mo10669a(F0);
            } else {
                abstractC20809c.mo10668b();
            }
        }
        return s.a;
    }
}
