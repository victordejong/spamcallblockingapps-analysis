package p131c.p161d.p282e.p289l.p290d.p303o;

import android.content.Context;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.mopub.common.AdType;
import p131c.p161d.p170b.p173b.AbstractC2494c;
import p131c.p161d.p170b.p173b.AbstractC2495d;
import p131c.p161d.p170b.p173b.AbstractC2496e;
import p131c.p161d.p170b.p173b.C2493b;
import p131c.p161d.p170b.p173b.p174h.C2499a;
import p131c.p161d.p170b.p173b.p176i.C2577r;
import p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5276o;
import p131c.p161d.p282e.p289l.p290d.p295j.p296w.C5392h;
/* renamed from: c.d.e.l.d.o.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/o/c.class */
public class C5426c {

    /* renamed from: b */
    public static final C5392h f18370b = new C5392h();

    /* renamed from: c */
    public static final String f18371c = m23810a("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* renamed from: d */
    public static final String f18372d = m23810a("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* renamed from: e */
    public static final AbstractC2495d<CrashlyticsReport, byte[]> f18373e = C5425b.m23815a();

    /* renamed from: a */
    public final AbstractC2496e<CrashlyticsReport> f18374a;

    public C5426c(AbstractC2496e<CrashlyticsReport> eVar, AbstractC2495d<CrashlyticsReport, byte[]> dVar) {
        this.f18374a = eVar;
    }

    /* renamed from: a */
    public static C5426c m23814a(Context context) {
        C2577r.m29490a(context);
        return new C5426c(C2577r.m29486b().m29489a(new C2499a(f18371c, f18372d)).mo29497a("FIREBASE_CRASHLYTICS_REPORT", CrashlyticsReport.class, C2493b.m29661a(AdType.STATIC_NATIVE), f18373e), f18373e);
    }

    /* renamed from: a */
    public static String m23810a(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str.length() + str2.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static /* synthetic */ void m23812a(TaskCompletionSource taskCompletionSource, AbstractC5276o oVar, Exception exc) {
        if (exc != null) {
            taskCompletionSource.m8597b(exc);
        } else {
            taskCompletionSource.m8596b((TaskCompletionSource) oVar);
        }
    }

    /* renamed from: a */
    public Task<AbstractC5276o> m23813a(AbstractC5276o oVar) {
        CrashlyticsReport a = oVar.mo24081a();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f18374a.mo29493a(AbstractC2494c.m29657b(a), C5424a.m23817a(taskCompletionSource, oVar));
        return taskCompletionSource.m8600a();
    }
}
