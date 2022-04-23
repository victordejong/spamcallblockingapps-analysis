package p131c.p396i.p418b;

import android.content.Context;
import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.regex.Pattern;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p418b.p420e.C6624a;
/* renamed from: c.i.b.a */
/* loaded from: classes-dex2jar.jar:c/i/b/a.class */
public class C6619a {

    /* renamed from: f */
    public static C6619a f20436f;

    /* renamed from: a */
    public final Context f20438a;

    /* renamed from: c */
    public C6624a f20440c;

    /* renamed from: e */
    public static String f20435e = null;

    /* renamed from: g */
    public static byte[] f20437g = new byte[0];

    /* renamed from: d */
    public final ReadWriteLock f20441d = new ReentrantReadWriteLock(true);

    /* renamed from: b */
    public C6620b f20439b = new C6620b();

    static {
        Pattern.compile("^(1|true)$", 2);
    }

    public C6619a(Context context) {
        this.f20438a = context;
        C6624a aVar = new C6624a(this.f20438a, this);
        this.f20440c = aVar;
        String str = f20435e;
        if (str != null) {
            aVar.m20295a(str);
        }
        this.f20440c.m20283e();
    }

    /* renamed from: b */
    public static C6619a m20316b() {
        if (f20436f == null) {
            synchronized (f20437g) {
                if (f20436f == null && C6489a.m20717c()) {
                    f20436f = new C6619a(C6489a.m20718b());
                }
            }
        }
        return f20436f;
    }

    /* renamed from: a */
    public int m20321a(String str) {
        return m20320a(str, 0);
    }

    /* renamed from: a */
    public int m20320a(String str, int i) {
        String c = m20313c(str);
        if (TextUtils.isEmpty(c)) {
            return i;
        }
        try {
            i = Integer.parseInt(c);
        } catch (Exception e) {
        }
        return i;
    }

    /* renamed from: a */
    public long m20319a(String str, long j) {
        String c = m20313c(str);
        if (TextUtils.isEmpty(c)) {
            return j;
        }
        try {
            j = Long.parseLong(c);
        } catch (Exception e) {
        }
        return j;
    }

    /* renamed from: a */
    public String m20318a(String str, String str2) {
        this.f20441d.readLock().lock();
        String a = this.f20439b.m20312a(str);
        this.f20441d.readLock().unlock();
        if (a != null) {
            str2 = a;
        }
        return str2;
    }

    /* renamed from: a */
    public void m20323a() {
        this.f20440c.m20305a();
    }

    /* renamed from: a */
    public void m20317a(Map<String, String> map) {
        this.f20441d.writeLock().lock();
        this.f20439b.m20311a(map);
        this.f20441d.writeLock().unlock();
    }

    /* renamed from: a */
    public boolean m20322a(AbstractC6621c cVar) {
        return this.f20440c.m20301a(cVar);
    }

    /* renamed from: b */
    public long m20314b(String str) {
        return m20319a(str, 0L);
    }

    /* renamed from: b */
    public boolean m20315b(AbstractC6621c cVar) {
        return this.f20440c.m20292b(cVar);
    }

    /* renamed from: c */
    public String m20313c(String str) {
        return m20318a(str, "");
    }
}
