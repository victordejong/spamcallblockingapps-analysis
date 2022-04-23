package p131c.p161d.p282e.p289l.p290d.p293h;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Comparator;
/* renamed from: c.d.e.l.d.h.c0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/c0.class */
public final /* synthetic */ class C5215c0 implements Comparator {

    /* renamed from: a */
    public static final C5215c0 f17898a = new C5215c0();

    /* renamed from: a */
    public static Comparator m24270a() {
        return f17898a;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((CrashlyticsReport.AbstractC7779b) obj).mo7614a().compareTo(((CrashlyticsReport.AbstractC7779b) obj2).mo7614a());
        return compareTo;
    }
}
