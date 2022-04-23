package p131c.p161d.p282e.p289l.p290d.p298l;

import android.content.Context;
import java.io.File;
import p131c.p161d.p282e.p289l.p290d.C5192b;
/* renamed from: c.d.e.l.d.l.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/l/i.class */
public class C5405i implements AbstractC5404h {

    /* renamed from: a */
    public final Context f18332a;

    public C5405i(Context context) {
        this.f18332a = context;
    }

    /* renamed from: a */
    public File m23876a(File file) {
        if (file == null) {
            C5192b.m24319a().m24317a("Null File");
            return null;
        } else if (file.exists() || file.mkdirs()) {
            return file;
        } else {
            C5192b.m24319a().m24311d("Couldn't create file");
            return null;
        }
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p298l.AbstractC5404h
    /* renamed from: a */
    public String mo23877a() {
        return new File(this.f18332a.getFilesDir(), ".com.google.firebase.crashlytics").getPath();
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p298l.AbstractC5404h
    /* renamed from: b */
    public File mo23875b() {
        return m23876a(new File(this.f18332a.getFilesDir(), ".com.google.firebase.crashlytics"));
    }
}
