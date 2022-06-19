package p193e.p194a.p1146q2;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.aftercall.AfterCallPromotionActivity;
import com.truecaller.messaging.notifications.ClassZeroActivity;
import com.truecaller.notifications.enhancing.SourcedContactListActivity;
import com.truecaller.p183ui.AfterClipboardSearchActivity;
import com.truecaller.p183ui.CallMeBackActivity;
import com.truecaller.p183ui.clicktocall.CallConfirmationActivity;
import java.util.HashMap;
import javax.inject.Inject;
import o3.a;
import org.apache.avro.Schema;
import org.apache.avro.generic.GenericRecord;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17523f0;
import p193e.p194a.p1050l5.p1051a.C17598j1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l;
import s1.z.c.l;
/* renamed from: e.a.q2.l */
/* loaded from: classes4-dex2jar.jar:e/a/q2/l.class */
public final class C19515l implements AbstractC19511j {

    /* renamed from: c */
    public int f54142c;

    /* renamed from: f */
    public String f54145f;

    /* renamed from: g */
    public final AbstractC19222c f54146g;

    /* renamed from: h */
    public final a<AbstractC19854f<AbstractC19463a0>> f54147h;

    /* renamed from: i */
    public final a<AbstractC19462a> f54148i;

    /* renamed from: a */
    public final Class<?>[] f54140a = {AfterCallPromotionActivity.class, CallMeBackActivity.class, AfterClipboardSearchActivity.class, AbstractView$OnClickListenerC14526l.class, SourcedContactListActivity.class, CallConfirmationActivity.class, ClassZeroActivity.class};

    /* renamed from: b */
    public final String[] f54141b = {"com.truecaller.flashsdk"};

    /* renamed from: d */
    public long f54143d = System.nanoTime();

    /* renamed from: e */
    public boolean f54144e = true;

    @Inject
    public C19515l(AbstractC19222c abstractC19222c, a<AbstractC19854f<AbstractC19463a0>> aVar, a<AbstractC19462a> aVar2) {
        l.e(abstractC19222c, "clock");
        l.e(aVar, "eventTracker");
        l.e(aVar2, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f54146g = abstractC19222c;
        this.f54147h = aVar;
        this.f54148i = aVar2;
    }

    /* renamed from: a */
    public final boolean m13255a() {
        return this.f54146g.mo13820b() - this.f54143d >= 300000000000L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r7 != null) goto L7;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m13254b(android.app.Activity r6) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.C19515l.m13254b(android.app.Activity):boolean");
    }

    /* renamed from: c */
    public final void m13253c(Activity activity) {
        Intent intent = activity.getIntent();
        if (intent != null) {
            intent.setExtrasClassLoader(C19515l.class.getClassLoader());
        }
        String stringExtra = intent != null ? intent.getStringExtra("AppUserInteraction.Context") : null;
        String simpleName = activity.getClass().getSimpleName();
        String m8627e2 = C22128a.m8627e2("UUID.randomUUID().toString()");
        String str = "Logging appOpen for activity: " + activity + " with context: " + stringExtra + " and id: " + m8627e2;
        Schema schema = C17598j1.f49557f;
        C17598j1.C17600b c17600b = new C17598j1.C17600b(null);
        c17600b.validate(c17600b.fields()[2], stringExtra);
        c17600b.f49566a = stringExtra;
        c17600b.fieldSetFlags()[2] = true;
        c17600b.validate(c17600b.fields()[3], simpleName);
        c17600b.f49567b = simpleName;
        c17600b.fieldSetFlags()[3] = true;
        c17600b.validate(c17600b.fields()[4], m8627e2);
        c17600b.f49568c = m8627e2;
        c17600b.fieldSetFlags()[4] = true;
        GenericRecord build = c17600b.build();
        this.f54145f = m8627e2;
        ((AbstractC19463a0) ((AbstractC19854f) this.f54147h.get()).mo11854a()).mo13111a(build);
        HashMap hashMap = new HashMap();
        hashMap.put("View", simpleName);
        boolean z = true;
        if (stringExtra != null) {
            z = stringExtra.length() == 0;
        }
        if (!z) {
            hashMap.put("Context", stringExtra);
        }
        C22128a.m8711G0("AppVisited", null, hashMap, null, "eventBuilder.build()", (AbstractC19462a) this.f54148i.get());
    }

    /* renamed from: d */
    public final void m13252d(boolean z) {
        this.f54143d = this.f54146g.mo13820b();
        if (z) {
            this.f54144e = false;
        }
    }

    /* renamed from: e */
    public final boolean m13251e() {
        boolean z = this.f54146g.mo13820b() - this.f54143d >= 5000000000L || this.f54144e;
        boolean z2 = this.f54142c == 0;
        boolean z3 = false;
        if (z) {
            z3 = false;
            if (z2) {
                z3 = true;
            }
        }
        return z3;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19511j
    public void onActivityCreated(Activity activity, Bundle bundle) {
        l.e(activity, "activity");
        if (!m13254b(activity)) {
            return;
        }
        if ((bundle == null || m13255a()) && m13251e()) {
            m13253c(activity);
        }
        m13252d(true);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19511j
    public void onActivityStarted(Activity activity) {
        l.e(activity, "activity");
        if (!m13254b(activity)) {
            return;
        }
        if (m13255a() && m13251e()) {
            m13253c(activity);
        }
        this.f54142c++;
        m13252d(true);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19511j
    public void onActivityStopped(Activity activity) {
        String str;
        l.e(activity, "activity");
        if (!m13254b(activity)) {
            return;
        }
        int i = this.f54142c - 1;
        this.f54142c = i;
        if (i == 0 && (str = this.f54145f) != null) {
            String str2 = "Logging appClose for activity: " + activity + " with id: " + str;
            Schema schema = C17523f0.f49197d;
            C17523f0.C17525b c17525b = new C17523f0.C17525b(null);
            c17525b.validate(c17525b.fields()[2], str);
            c17525b.f49204a = str;
            c17525b.fieldSetFlags()[2] = true;
            GenericRecord build = c17525b.build();
            this.f54145f = null;
            ((AbstractC19463a0) ((AbstractC19854f) this.f54147h.get()).mo11854a()).mo13111a(build);
        }
        m13252d(false);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19511j
    public void onTrimMemory(int i) {
        if (i < 20) {
            return;
        }
        this.f54144e = true;
    }
}
