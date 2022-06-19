package p193e.p194a.p1275v.p1309p;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.data.entity.AppStores;
import com.truecaller.data.entity.Business;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Link;
import com.truecaller.data.entity.Number;
import com.truecaller.log.AssertionUtil;
import e.m.f.a.j;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.C19039i0;
import p193e.p194a.p1114o5.C19103t;
import p193e.p194a.p1114o5.p1122f2.C19024a;
import p193e.p194a.p1275v.p1276a.p1295o0.AbstractC20807a;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p945j5.p946a.AbstractC15587a;
import p193e.p194a.p945j5.p946a.C15588b;
import p193e.p194a.p997k3.p1000l.C16496d;
import q3.a.i0;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.v.p.p */
/* loaded from: classes8-dex2jar.jar:e/a/v/p/p.class */
public final class C20942p implements AbstractC20807a {

    /* renamed from: a */
    public final Context f58891a;

    /* renamed from: b */
    public final f f58892b;

    /* renamed from: c */
    public final AbstractC15587a f58893c;

    @e(c = "com.truecaller.details_view.util.SocialMediaHelperImpl$getExternalAppActions$2", f = "SocialMediaHelperImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.v.p.p$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/p/p$a.class */
    public static final class C20943a extends i implements p<i0, d<? super List<? extends C16496d>>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Contact f58895f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20943a(Contact contact, d dVar) {
            super(2, dVar);
            C20942p.this = r5;
            this.f58895f = contact;
        }

        /* renamed from: i */
        public final d<s> m10475i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20943a(this.f58895f, dVar);
        }

        /* renamed from: k */
        public final Object m10474k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20943a(this.f58895f, dVar).m10473s(s.a);
        }

        /* renamed from: s */
        public final Object m10473s(Object obj) {
            s1.u.s sVar;
            Object obj2;
            C25225a.m3932a3(obj);
            Long m35548R = this.f58895f.m35548R();
            if (m35548R != null) {
                C20942p c20942p = C20942p.this;
                l.d(m35548R, "it");
                List<C16496d> m14110c = C19103t.m14110c(c20942p.f58891a, Long.valueOf(m35548R.longValue()), C19039i0.f53182a);
                l.d(m14110c, "ContactUtil.getExternalA…PPORTED_THIRD_PARTY_APPS)");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterator it = ((ArrayList) m14110c).iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    String str = ((C16496d) next).f46385d;
                    Object obj3 = linkedHashMap.get(str);
                    ArrayList arrayList = obj3;
                    if (obj3 == null) {
                        arrayList = C22128a.m8673R(linkedHashMap, str);
                    }
                    ((List) arrayList).add(next);
                }
                Collection values = linkedHashMap.values();
                l.d(values, "actions.groupByTo(linked…{ it.packageName }.values");
                s1.u.s arrayList2 = new ArrayList();
                Iterator it2 = values.iterator();
                while (true) {
                    sVar = arrayList2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    List list = (List) it2.next();
                    l.d(list, "it");
                    C16496d c16496d = (C16496d) s1.u.i.D(list);
                    if (c16496d != null) {
                        arrayList2.add(c16496d);
                    }
                }
            } else {
                C20942p c20942p2 = C20942p.this;
                Contact contact = this.f58895f;
                Objects.requireNonNull(c20942p2);
                List<Number> m35557M = contact.m35557M();
                l.d(m35557M, "numbers");
                Iterator<T> it3 = m35557M.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        obj2 = null;
                        break;
                    }
                    obj2 = it3.next();
                    Number number = (Number) obj2;
                    l.d(number, "number");
                    if ((number.m35475i() == j.d.b || number.m35475i() == j.d.c) && !number.m35468r() && C8574c0.m28354e(number.m35473l())) {
                        break;
                    }
                }
                Number number2 = (Number) obj2;
                sVar = null;
                if (number2 != null) {
                    C20942p c20942p3 = C20942p.this;
                    String m35479e = number2.m35479e();
                    l.d(m35479e, "it.normalizedNumber");
                    C15588b c15588b = (C15588b) c20942p3.f58893c;
                    Objects.requireNonNull(c15588b);
                    l.e(m35479e, "normalizedNumber");
                    sVar = s1.u.i.U(c15588b.m18601a(m35479e, ""));
                }
            }
            if (sVar == null) {
                sVar = s1.u.s.a;
            }
            return sVar;
        }
    }

    @Inject
    public C20942p(Context context, @Named("IO") f fVar, AbstractC15587a abstractC15587a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "ioContext");
        l.e(abstractC15587a, "whatsAppIntegration");
        this.f58891a = context;
        this.f58892b = fVar;
        this.f58893c = abstractC15587a;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1295o0.AbstractC20807a
    /* renamed from: a */
    public Object mo10482a(Contact contact, d<? super List<AppStores>> dVar) {
        ArrayList arrayList;
        String appStores;
        l.e(contact, AnalyticsConstants.CONTACT);
        Business business = contact.f11526u;
        if (business != null && (appStores = business.getAppStores()) != null) {
            Object[] array = v.U(appStores, new String[]{"|"}, false, 0, 6).toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array;
            ArrayList arrayList2 = new ArrayList();
            int length = strArr.length;
            int i = 0;
            while (true) {
                arrayList = arrayList2;
                if (i >= length) {
                    break;
                }
                String str = strArr[i];
                if (!h.i(str)) {
                    Object[] array2 = v.U(str, new String[]{";"}, false, 0, 6).toArray(new String[0]);
                    Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
                    String[] strArr2 = (String[]) array2;
                    if (strArr2.length == 2) {
                        try {
                            String decode = URLDecoder.decode(strArr2[0], StringConstant.UTF8);
                            String str2 = strArr2[1];
                            l.d(decode, "url");
                            arrayList2.add(new AppStores(decode, str2));
                        } catch (UnsupportedEncodingException e) {
                            AssertionUtil.reportThrowableButNeverCrash(e);
                        } catch (IllegalArgumentException e2) {
                            AssertionUtil.reportThrowableButNeverCrash(e2);
                        } catch (IndexOutOfBoundsException e3) {
                            AssertionUtil.reportThrowableButNeverCrash(e3);
                        } catch (NumberFormatException e4) {
                            AssertionUtil.reportThrowableButNeverCrash(e4);
                        }
                    }
                }
                i++;
            }
        } else {
            arrayList = s1.u.s.a;
        }
        return arrayList;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1295o0.AbstractC20807a
    /* renamed from: b */
    public String mo10481b(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return C19103t.m14104i(contact);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1295o0.AbstractC20807a
    /* renamed from: c */
    public List<Link> mo10480c(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        List<Link> m14105h = C19103t.m14105h(contact);
        l.d(m14105h, "ContactUtil.getSocialLinks(contact)");
        return m14105h;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1295o0.AbstractC20807a
    /* renamed from: d */
    public void mo10479d(Context context, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "userId");
        C19024a.m14249b(context, str);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1295o0.AbstractC20807a
    /* renamed from: e */
    public void mo10478e(Context context, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "instaId");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "id");
        context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://instagram.com/" + str)));
    }

    @Override // p193e.p194a.p1275v.p1276a.p1295o0.AbstractC20807a
    /* renamed from: f */
    public Object mo10477f(Contact contact, d<? super List<? extends C16496d>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f58892b, new C20943a(contact, null), dVar);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1295o0.AbstractC20807a
    /* renamed from: g */
    public void mo10476g(Context context, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "twitterId");
        C12864a2.m22574T(context, str);
    }
}
