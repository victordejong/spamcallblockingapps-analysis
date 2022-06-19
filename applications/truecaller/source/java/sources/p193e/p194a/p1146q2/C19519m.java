package p193e.p194a.p1146q2;

import android.content.Context;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.settings.CallingSettings;
import e.m.d.y.n;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26458x;
import p1727n3.p1834m0.AbstractC26844s;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1012a.C16584i0;
import p193e.p194a.p1050l5.p1051a.C17439a2;
import p193e.p194a.p1079n5.AbstractC18493c;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1114o5.p1119c2.AbstractC18977k;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1340w2.C21188a;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p751f4.p753b.p754f.AbstractC13961b;
import p193e.p194a.p804h.p836t0.AbstractC14738b;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p837h0.AbstractC14854r;
import p193e.p194a.p837h0.p844w.AbstractC14875b;
import p193e.p194a.p847h3.p848b.AbstractC14900a;
import p193e.p194a.p912i4.AbstractC15285o;
import p193e.p194a.p947k.AbstractC16111h;
import s1.e0.h;
import s1.e0.x;
import s1.f0.r;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.q2.m */
/* loaded from: classes4-dex2jar.jar:e/a/q2/m.class */
public final class C19519m extends AbstractC21765k {

    /* renamed from: A */
    public final AbstractC18765c f54159A;

    /* renamed from: B */
    public final AbstractC19520a f54160B;

    /* renamed from: C */
    public final CallRecordingManager f54161C;

    /* renamed from: D */
    public final AbstractC16111h f54162D;

    /* renamed from: E */
    public final boolean f54163E;

    /* renamed from: b */
    public final String f54164b = "AppSettingsWorkAction";

    /* renamed from: c */
    public final Context f54165c;

    /* renamed from: d */
    public final AbstractC8432l f54166d;

    /* renamed from: e */
    public final AbstractC8541a f54167e;

    /* renamed from: f */
    public final AbstractC8438a f54168f;

    /* renamed from: g */
    public final AbstractC19219a0 f54169g;

    /* renamed from: h */
    public final AbstractC8426f f54170h;

    /* renamed from: i */
    public final AbstractC19230g f54171i;

    /* renamed from: j */
    public final AbstractC13706b f54172j;

    /* renamed from: k */
    public final AbstractC19462a f54173k;

    /* renamed from: l */
    public final CallingSettings f54174l;

    /* renamed from: m */
    public final AbstractC14840m f54175m;

    /* renamed from: n */
    public final AbstractC14738b f54176n;

    /* renamed from: o */
    public final AbstractC14900a f54177o;

    /* renamed from: p */
    public final AbstractC6392i0 f54178p;

    /* renamed from: q */
    public final AbstractC18493c f54179q;

    /* renamed from: r */
    public final C21188a f54180r;

    /* renamed from: s */
    public final AbstractC15285o f54181s;

    /* renamed from: t */
    public final C26458x f54182t;

    /* renamed from: u */
    public final AbstractC13497p f54183u;

    /* renamed from: v */
    public final AbstractC13961b f54184v;

    /* renamed from: w */
    public final AbstractC12597c f54185w;

    /* renamed from: x */
    public final AbstractC14854r f54186x;

    /* renamed from: y */
    public final AbstractC8621z f54187y;

    /* renamed from: z */
    public final C16584i0 f54188z;

    /* renamed from: e.a.q2.m$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/m$a.class */
    public interface AbstractC19520a {
        /* renamed from: b */
        boolean mo13239b();

        /* renamed from: c */
        String mo13238c();

        /* renamed from: d */
        boolean mo13237d(String str);

        /* renamed from: e */
        AbstractC18977k mo13236e(Context context);

        /* renamed from: f */
        CountryListDto.C3679a mo13235f(Context context);
    }

    /* renamed from: e.a.q2.m$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/m$b.class */
    public static final class C19521b<R> implements AbstractC19851d0<AbstractC14875b> {
        public C19521b() {
            C19519m.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(AbstractC14875b abstractC14875b) {
            String mo28176o;
            AbstractC14875b abstractC14875b2 = abstractC14875b;
            C19519m c19519m = C19519m.this;
            Objects.requireNonNull(c19519m);
            if (abstractC14875b2 == null || (mo28176o = c19519m.f54187y.mo28176o()) == null) {
                return;
            }
            try {
                ArrayList arrayList = new ArrayList();
                while (abstractC14875b2.moveToNext()) {
                    arrayList.add(abstractC14875b2.getFilter());
                }
                C25225a.m4016G(abstractC14875b2, null);
                h l = x.l(x.f(x.h(i.h(arrayList)), C19524n.f54195b), new C19526o(c19519m));
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                h.a aVar = new h.a(l);
                while (aVar.hasNext()) {
                    Object next = aVar.next();
                    if (!r.n(mo28176o, (String) next, true)) {
                        linkedHashSet.add(next);
                    }
                }
                AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("CountOfForeignCountriesWithNumberBlocked", Double.valueOf(linkedHashSet.size()), null, null);
                AbstractC19462a abstractC19462a = c19519m.f54173k;
                l.d(c19505a, "event");
                abstractC19462a.mo13271e(c19505a);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    C25225a.m4016G(abstractC14875b2, th);
                    throw th2;
                }
            }
        }
    }

    @Inject
    public C19519m(Context context, AbstractC8432l abstractC8432l, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC19219a0 abstractC19219a0, AbstractC8426f abstractC8426f, AbstractC19230g abstractC19230g, AbstractC13706b abstractC13706b, AbstractC19462a abstractC19462a, CallingSettings callingSettings, AbstractC14840m abstractC14840m, AbstractC14738b abstractC14738b, AbstractC14900a abstractC14900a, AbstractC6392i0 abstractC6392i0, AbstractC18493c abstractC18493c, C21188a c21188a, AbstractC15285o abstractC15285o, C26458x c26458x, AbstractC13497p abstractC13497p, AbstractC13961b abstractC13961b, AbstractC12597c abstractC12597c, AbstractC14854r abstractC14854r, AbstractC8621z abstractC8621z, C16584i0 c16584i0, AbstractC18765c abstractC18765c, AbstractC19520a abstractC19520a, CallRecordingManager callRecordingManager, AbstractC16111h abstractC16111h, boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8432l, "truecallerAccountManager");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC8426f, "regionUtils");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC13706b, "inCallUI");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(callingSettings, "callingSettings");
        l.e(abstractC14840m, "filterSettings");
        l.e(abstractC14738b, "whatsAppInCallLog");
        l.e(abstractC14900a, "clipboardDataManager");
        l.e(abstractC6392i0, "messagingSettings");
        l.e(abstractC18493c, "ugcManager");
        l.e(c21188a, "appsFlyerEventsTracker");
        l.e(abstractC15285o, "notificationHandlerUtil");
        l.e(c26458x, "notificationManagerCompat");
        l.e(abstractC13497p, "multiSimManager");
        l.e(abstractC13961b, "domainFrontingResolver");
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        l.e(abstractC14854r, "spamManager");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(c16584i0, "spendPredictionEventTracker");
        l.e(abstractC18765c, "contextCall");
        l.e(abstractC19520a, "staticCallsWrapper");
        l.e(callRecordingManager, "callRecordingManager");
        l.e(abstractC16111h, "videoCallerId");
        this.f54165c = context;
        this.f54166d = abstractC8432l;
        this.f54167e = abstractC8541a;
        this.f54168f = abstractC8438a;
        this.f54169g = abstractC19219a0;
        this.f54170h = abstractC8426f;
        this.f54171i = abstractC19230g;
        this.f54172j = abstractC13706b;
        this.f54173k = abstractC19462a;
        this.f54174l = callingSettings;
        this.f54175m = abstractC14840m;
        this.f54176n = abstractC14738b;
        this.f54177o = abstractC14900a;
        this.f54178p = abstractC6392i0;
        this.f54179q = abstractC18493c;
        this.f54180r = c21188a;
        this.f54181s = abstractC15285o;
        this.f54182t = c26458x;
        this.f54183u = abstractC13497p;
        this.f54184v = abstractC13961b;
        this.f54185w = abstractC12597c;
        this.f54186x = abstractC14854r;
        this.f54187y = abstractC8621z;
        this.f54188z = c16584i0;
        this.f54159A = abstractC18765c;
        this.f54160B = abstractC19520a;
        this.f54161C = callRecordingManager;
        this.f54162D = abstractC16111h;
        this.f54163E = z;
    }

    /* renamed from: h */
    public static final AbstractC26844s m13240h(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(context);
        l.d(m1431n, "WorkManager.getInstance(context)");
        k G0 = n.G0(15L);
        HashMap hashMap = new HashMap();
        hashMap.put("exec_one_off", Boolean.TRUE);
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        return C21782c.m9084b(m1431n, "AppSettingsWorkAction", context, G0, c26829f);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(38:(52:88|(4:90|(1:92)|93|(1:95))|98|(1:100)|101|(1:103)(1:104)|105|(1:107)(1:108)|109|(1:111)(1:112)|113|(1:115)(1:116)|117|(1:119)(1:120)|121|243|122|(1:124)(1:125)|126|127|128|(2:130|131)|132|(2:134|135)|137|138|139|(3:141|142|143)(1:146)|147|(1:149)(1:150)|151|(1:153)|154|(2:156|(2:157|(3:159|(2:161|248)(1:249)|162)(1:247)))(1:163)|164|(1:166)(2:167|(1:169)(2:170|(1:172)(2:173|(1:175)(2:176|(1:178)(2:179|(1:181)(2:182|(1:184)(2:185|(1:187)(2:188|(1:190)(1:191)))))))))|192|241|193|(2:195|196)(2:197|(1:199)(4:200|201|(6:202|203|204|(2:206|207)|208|209)|250))|211|212|(6:214|(2:216|217)(1:218)|219|(1:221)|222|(9:224|226|(1:228)|229|(1:231)|232|(1:234)|235|236))|225|226|(0)|229|(0)|232|(0)|235|236)|243|122|(0)(0)|126|127|128|(0)|132|(0)|137|138|139|(0)(0)|147|(0)(0)|151|(0)|154|(0)(0)|164|(0)(0)|192|241|193|(0)(0)|211|212|(0)|225|226|(0)|229|(0)|232|(0)|235|236) */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x097d, code lost:
        if (r0.size() < 44) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x071d, code lost:
        if (r0.isUserUnlocked() != false) goto L98;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x076b  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x077c  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x07a5  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x07b9  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x07c1  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x07d5  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0821  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0827  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0935 A[Catch: all -> 0x0952, TRY_ENTER, TRY_LEAVE, TryCatch #5 {IOException -> 0x09e1, RuntimeException -> 0x09e9, blocks: (B:128:0x095b, B:132:0x0965, B:135:0x0974, B:141:0x0986, B:143:0x09b4, B:122:0x08f2, B:124:0x0935), top: B:243:0x08f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x094d  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0962  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0971  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0986 A[Catch: IOException -> 0x09e1, RuntimeException -> 0x09e9, TRY_ENTER, TRY_LEAVE, TryCatch #5 {IOException -> 0x09e1, RuntimeException -> 0x09e9, blocks: (B:128:0x095b, B:132:0x0965, B:135:0x0974, B:141:0x0986, B:143:0x09b4, B:122:0x08f2, B:124:0x0935), top: B:243:0x08f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x09ee  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0a00  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0a06  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0a1b  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0a81  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0adf  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0b17  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0b1e  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0c05  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0c0a A[Catch: Exception -> 0x0dd1, TRY_ENTER, TryCatch #4 {Exception -> 0x0dd1, blocks: (B:193:0x0bcb, B:197:0x0c0a, B:200:0x0c1f, B:202:0x0c2d, B:204:0x0c49, B:209:0x0c5f, B:212:0x0c6a, B:214:0x0c72, B:224:0x0c9b), top: B:241:0x0bcb }] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0c72 A[Catch: Exception -> 0x0dd1, TRY_ENTER, TryCatch #4 {Exception -> 0x0dd1, blocks: (B:193:0x0bcb, B:197:0x0c0a, B:200:0x0c1f, B:202:0x0c2d, B:204:0x0c49, B:209:0x0c5f, B:212:0x0c6a, B:214:0x0c72, B:224:0x0c9b), top: B:241:0x0bcb }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0ce0  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0d31  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0daf  */
    /* JADX WARN: Type inference failed for: r0v478, types: [long] */
    /* JADX WARN: Type inference failed for: r0v480, types: [long] */
    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.work.ListenableWorker.AbstractC0414a mo9063a() {
        /*
            Method dump skipped, instructions count: 3541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.C19519m.mo9063a():androidx.work.ListenableWorker$a");
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f54164b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        if (!this.f54166d.mo28580d()) {
            return false;
        }
        if (this.f60609a.m1305b("exec_one_off", false) || !this.f54167e.getBoolean("appset_ex", false)) {
            return true;
        }
        this.f54167e.remove("appset_ex");
        return false;
    }

    /* renamed from: d */
    public final List<C17439a2> m13244d(List<C17439a2> list, String str, Object obj) {
        C17439a2.C17441b m16031a = C17439a2.m16031a();
        m16031a.m16029b(str);
        m16031a.m16028c(obj.toString());
        list.add(m16031a.build());
        return list;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* renamed from: e */
    public final long m13243e(File file) {
        char c;
        if (file.isDirectory()) {
            String absolutePath = file.getAbsolutePath();
            l.d(absolutePath, "child.absolutePath");
            File[] listFiles = new File(absolutePath).listFiles();
            if (listFiles != null) {
                ArrayList arrayList = new ArrayList(listFiles.length);
                for (File file2 : listFiles) {
                    l.d(file2, "it");
                    arrayList.add(Long.valueOf(m13243e(file2)));
                }
                c = i.J0(arrayList);
            } else {
                c = 0;
            }
        } else {
            c = file.length();
        }
        return c;
    }

    /* renamed from: f */
    public final String m13242f() {
        return !this.f54172j.mo21257l() ? "NotSupported" : String.valueOf(this.f54172j.mo21259j());
    }

    /* renamed from: g */
    public final String m13241g() {
        return !this.f54172j.mo21257l() ? "NotSupported" : String.valueOf(this.f54172j.mo21263f());
    }
}
