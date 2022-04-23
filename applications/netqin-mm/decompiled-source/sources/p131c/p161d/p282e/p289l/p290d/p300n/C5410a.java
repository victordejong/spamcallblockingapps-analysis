package p131c.p161d.p282e.p289l.p290d.p300n;

import com.google.firebase.crashlytics.internal.report.model.Report;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p300n.C5411b;
import p131c.p161d.p282e.p289l.p290d.p300n.p301c.C5417b;
import p131c.p161d.p282e.p289l.p290d.p300n.p301c.C5418c;
/* renamed from: c.d.e.l.d.n.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/n/a.class */
public class C5410a {

    /* renamed from: a */
    public final C5411b.AbstractC5414c f18342a;

    public C5410a(C5411b.AbstractC5414c cVar) {
        this.f18342a = cVar;
    }

    /* renamed from: a */
    public void m23836a(Report report) {
        report.remove();
    }

    /* renamed from: a */
    public void m23835a(List<Report> list) {
        for (Report report : list) {
            m23836a(report);
        }
    }

    /* renamed from: a */
    public boolean m23837a() {
        File[] b = this.f18342a.mo23825b();
        File[] a = this.f18342a.mo23826a();
        if (b == null || b.length <= 0) {
            return a != null && a.length > 0;
        }
        return true;
    }

    /* renamed from: b */
    public List<Report> m23834b() {
        C5192b.m24319a().m24317a("Checking for crash reports...");
        File[] b = this.f18342a.mo23825b();
        File[] a = this.f18342a.mo23826a();
        LinkedList linkedList = new LinkedList();
        if (b != null) {
            for (File file : b) {
                C5192b.m24319a().m24317a("Found crash report " + file.getPath());
                linkedList.add(new C5418c(file));
            }
        }
        if (a != null) {
            for (File file2 : a) {
                linkedList.add(new C5417b(file2));
            }
        }
        if (linkedList.isEmpty()) {
            C5192b.m24319a().m24317a("No reports found.");
        }
        return linkedList;
    }
}
