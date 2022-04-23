package p131c.p161d.p282e.p289l.p290d.p300n.p301c;

import com.google.firebase.crashlytics.internal.report.model.Report;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p282e.p289l.p290d.C5192b;
/* renamed from: c.d.e.l.d.n.c.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/n/c/c.class */
public class C5418c implements Report {

    /* renamed from: a */
    public final File f18359a;

    /* renamed from: b */
    public final File[] f18360b;

    /* renamed from: c */
    public final Map<String, String> f18361c;

    public C5418c(File file) {
        this(file, Collections.emptyMap());
    }

    public C5418c(File file, Map<String, String> map) {
        this.f18359a = file;
        this.f18360b = new File[]{file};
        this.f18361c = new HashMap(map);
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    /* renamed from: a */
    public Map<String, String> mo7365a() {
        return Collections.unmodifiableMap(this.f18361c);
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    /* renamed from: b */
    public String mo7364b() {
        String e = mo7361e();
        return e.substring(0, e.lastIndexOf(46));
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    /* renamed from: c */
    public File mo7363c() {
        return this.f18359a;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    /* renamed from: d */
    public File[] mo7362d() {
        return this.f18360b;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    /* renamed from: e */
    public String mo7361e() {
        return mo7363c().getName();
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    public Report.Type getType() {
        return Report.Type.JAVA;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    public void remove() {
        C5192b a = C5192b.m24319a();
        a.m24317a("Removing report at " + this.f18359a.getPath());
        this.f18359a.delete();
    }
}
