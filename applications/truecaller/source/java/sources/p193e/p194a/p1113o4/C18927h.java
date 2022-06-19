package p193e.p194a.p1113o4;

import android.content.Context;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.FirebaseMessaging;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hms.aaid.HmsInstanceId;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.push.HmsMessaging;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import java.util.concurrent.ExecutionException;
import javax.inject.Inject;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.o4.h */
/* loaded from: classes12-dex2jar.jar:e/a/o4/h.class */
public final class C18927h implements AbstractC18926g {

    /* renamed from: a */
    public final Context f53066a;

    /* renamed from: b */
    public final AbstractC12597c f53067b;

    /* renamed from: c */
    public final AbstractC21881d f53068c;

    @Inject
    public C18927h(Context context, AbstractC12597c abstractC12597c, AbstractC21881d abstractC21881d) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        l.e(abstractC21881d, "generalSettings");
        this.f53066a = context;
        this.f53067b = abstractC12597c;
        this.f53068c = abstractC21881d;
    }

    @Override // p193e.p194a.p1113o4.AbstractC18926g
    /* renamed from: a */
    public C18922d mo14315a() {
        String str;
        String str2;
        String string;
        String string2;
        AbstractC12603e abstractC12603e = (AbstractC12603e) i.C(this.f53067b.mo22841c());
        if (abstractC12603e != null) {
            boolean z = abstractC12603e instanceof AbstractC12603e.C12604a;
            if (z) {
                FirebaseMessaging m38318c = FirebaseMessaging.m38318c();
                l.d(m38318c, "FirebaseMessaging.getInstance()");
                Task<String> m38315f = m38318c.m38315f();
                l.d(m38315f, "FirebaseMessaging.getInstance().token");
                try {
                    Tasks.m38514a(m38315f);
                } catch (InterruptedException e) {
                    m38315f = Tasks.m38510e(e);
                    l.d(m38315f, "Tasks.forException(e)");
                } catch (ExecutionException e2) {
                    m38315f = Tasks.m38510e(e2);
                    l.d(m38315f, "Tasks.forException(e)");
                }
                boolean m38519s = m38315f.m38519s();
                if (m38519s) {
                    str = m38315f.m38523o();
                } else {
                    if (m38519s) {
                        throw new s1.i();
                    }
                    str = null;
                }
            } else if (!(abstractC12603e instanceof AbstractC12603e.C12605b)) {
                throw new s1.i();
            } else {
                try {
                    string2 = AGConnectServicesConfig.fromContext(this.f53066a).getString("client/app_id");
                } catch (ApiException e3) {
                }
                if (string2 == null) {
                    AssertionUtil.reportWeirdnessButNeverCrash("HMS app ID is null");
                    str = null;
                } else {
                    str = HmsInstanceId.getInstance(this.f53066a).getToken(string2, HmsMessaging.DEFAULT_TOKEN_SCOPE);
                }
            }
            if (str == null) {
                if (z) {
                    string = this.f53068c.getString("gcmRegistrationId");
                } else if (!(abstractC12603e instanceof AbstractC12603e.C12605b)) {
                    throw new s1.i();
                } else {
                    string = this.f53068c.getString("hcmPushToken");
                }
                str2 = string;
            } else if (z) {
                this.f53068c.putString("gcmRegistrationId", str);
                str2 = str;
            } else {
                str2 = str;
                if (abstractC12603e instanceof AbstractC12603e.C12605b) {
                    this.f53068c.putString("hcmPushToken", str);
                    str2 = str;
                }
            }
            C18922d c18922d = null;
            if (str2 != null) {
                c18922d = new C18922d(str2, abstractC12603e);
            }
            return c18922d;
        }
        return null;
    }
}
