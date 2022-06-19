package p068d2;

import android.content.Context;
import android.os.StatFs;
import android.support.p012v4.media.C0082b;
import java.io.File;
import p068d2.C2415u;
/* renamed from: d2.o2 */
/* loaded from: classes-dex2jar.jar:d2/o2.class */
public class C2379o2 {

    /* renamed from: a */
    public String f8414a;

    /* renamed from: b */
    public String f8415b;

    /* renamed from: c */
    public String f8416c;

    /* renamed from: d */
    public String f8417d;

    /* renamed from: e */
    public File f8418e;

    /* renamed from: f */
    public File f8419f;

    /* renamed from: g */
    public File f8420g;

    /* JADX WARN: Type inference failed for: r0v66, types: [double] */
    /* renamed from: a */
    public boolean m3623a() {
        char c;
        C2230f1 m3591d = C2408t.m3591d();
        this.f8414a = m3622b() + "/adc3/";
        this.f8415b = C0082b.m8754h(new StringBuilder(), this.f8414a, "media/");
        File file = new File(this.f8415b);
        this.f8418e = file;
        if (!file.isDirectory()) {
            this.f8418e.delete();
            this.f8418e.mkdirs();
        }
        if (!this.f8418e.isDirectory()) {
            m3591d.f8065C = true;
            return false;
        }
        try {
            StatFs statFs = new StatFs(this.f8415b);
            c = statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (RuntimeException e) {
            c = 0;
        }
        if (c < 2.097152E7d) {
            C2415u.C2416a c2416a = new C2415u.C2416a();
            c2416a.f8564a.append("Not enough memory available at media path, disabling AdColony.");
            c2416a.m3580a(C2415u.f8558c);
            m3591d.f8065C = true;
            return false;
        }
        this.f8416c = m3622b() + "/adc3/data/";
        File file2 = new File(this.f8416c);
        this.f8419f = file2;
        if (!file2.isDirectory()) {
            this.f8419f.delete();
        }
        this.f8419f.mkdirs();
        this.f8417d = C0082b.m8754h(new StringBuilder(), this.f8414a, "tmp/");
        File file3 = new File(this.f8417d);
        this.f8420g = file3;
        if (file3.isDirectory()) {
            return true;
        }
        this.f8420g.delete();
        this.f8420g.mkdirs();
        return true;
    }

    /* renamed from: b */
    public String m3622b() {
        Context context = C2408t.f8531a;
        return context == null ? "" : context.getFilesDir().getAbsolutePath();
    }

    /* renamed from: c */
    public C2267f4 m3621c() {
        if (new File(C0082b.m8754h(new StringBuilder(), this.f8414a, "AppVersion")).exists()) {
            return C2227e4.m3736q(this.f8414a + "AppVersion");
        }
        return new C2267f4();
    }

    /* renamed from: d */
    public boolean m3620d() {
        File file = this.f8418e;
        if (file == null || this.f8419f == null || this.f8420g == null) {
            return false;
        }
        if (!file.isDirectory()) {
            this.f8418e.delete();
        }
        if (!this.f8419f.isDirectory()) {
            this.f8419f.delete();
        }
        if (!this.f8420g.isDirectory()) {
            this.f8420g.delete();
        }
        this.f8418e.mkdirs();
        this.f8419f.mkdirs();
        this.f8420g.mkdirs();
        return true;
    }
}
