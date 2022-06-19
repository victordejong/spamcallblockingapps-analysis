package p193e.p194a.p1060m4.p1061c.p1062i.p1063a;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import e.m.e.k;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18231h;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p682e.C13175c0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.f0.b;
import s1.g;
import s1.i;
import s1.w.f;
import s1.y.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.m4.c.i.a.c */
/* loaded from: classes12-dex2jar.jar:e/a/m4/c/i/a/c.class */
public final class C18224c implements AbstractC18223b {

    /* renamed from: a */
    public final g f51524a = C25225a.m3978P1(C18225a.f51529b);

    /* renamed from: b */
    public final Context f51525b;

    /* renamed from: c */
    public final AbstractC8541a f51526c;

    /* renamed from: d */
    public final f f51527d;

    /* renamed from: e */
    public final f f51528e;

    /* renamed from: e.a.m4.c.i.a.c$a */
    /* loaded from: classes12-dex2jar.jar:e/a/m4/c/i/a/c$a.class */
    public static final class C18225a extends m implements a<k> {

        /* renamed from: b */
        public static final C18225a f51529b = new C18225a();

        public C18225a() {
            super(0);
        }

        public Object invoke() {
            return new k();
        }
    }

    @Inject
    public C18224c(Context context, AbstractC8541a abstractC8541a, @Named("UI") f fVar, @Named("IO") f fVar2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8541a, "coreSettings");
        l.e(fVar, "ui");
        l.e(fVar2, "async");
        this.f51525b = context;
        this.f51526c = abstractC8541a;
        this.f51527d = fVar;
        this.f51528e = fVar2;
    }

    @Override // p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b
    /* renamed from: a */
    public void mo15401a(C13175c0 c13175c0) {
        l.e(c13175c0, "callback");
        d.w2(d.h(this.f51527d), (f) null, (j0) null, new C18226d(this, c13175c0, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b
    /* renamed from: b */
    public File mo15400b() {
        File file = new File(this.f51525b.getFilesDir(), "bizProfileV2");
        if (!file.exists()) {
            file.createNewFile();
        }
        return file;
    }

    @Override // p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b
    /* renamed from: c */
    public AbstractC18231h mo15399c() {
        AbstractC18231h abstractC18231h = AbstractC18231h.AbstractC18232a.C18236d.f51541a;
        try {
            File mo15400b = mo15400b();
            if (!mo15400b.exists()) {
                return AbstractC18231h.AbstractC18232a.C18233a.f51538a;
            }
            boolean delete = mo15400b.delete();
            if (delete) {
                this.f51526c.remove("companyProfile");
                abstractC18231h = AbstractC18231h.C18237b.f51542a;
            } else if (delete) {
                throw new i();
            }
            return abstractC18231h;
        } catch (Exception e) {
            if (e instanceof SecurityException) {
                abstractC18231h = AbstractC18231h.AbstractC18232a.C18235c.f51540a;
            } else if (e instanceof IOException) {
                abstractC18231h = AbstractC18231h.AbstractC18232a.C18234b.f51539a;
            } else {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
            return abstractC18231h;
        }
    }

    @Override // p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b
    /* renamed from: d */
    public BusinessProfile mo15398d() {
        BusinessProfile businessProfile = null;
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(mo15400b()), b.a);
            BusinessProfile businessProfile2 = (BusinessProfile) ((k) this.f51524a.getValue()).d(inputStreamReader, BusinessProfile.class);
            C25225a.m4016G(inputStreamReader, null);
            businessProfile = businessProfile2;
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
        return businessProfile;
    }

    @Override // p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b
    /* renamed from: e */
    public void mo15397e(BusinessProfile businessProfile) {
        l.e(businessProfile, "bizProfile");
        try {
            File mo15400b = mo15400b();
            String m = ((k) this.f51524a.getValue()).m(businessProfile);
            l.d(m, "gson.toJson(bizProfile)");
            h.e(mo15400b, m, (Charset) null, 2);
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0497 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0173  */
    @Override // p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo15396f(com.truecaller.profile.data.dto.businessV2.BusinessProfile r19) {
        /*
            Method dump skipped, instructions count: 1265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1060m4.p1061c.p1062i.p1063a.C18224c.mo15396f(com.truecaller.profile.data.dto.businessV2.BusinessProfile):void");
    }
}
