package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.os.Build;
import android.util.Log;
import java.io.File;
/* renamed from: e.f.a.n.q.d.t */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/t.class */
public final class C22517t {

    /* renamed from: d */
    public static final File f62400d = new File("/proc/self/fd");

    /* renamed from: e */
    public static volatile int f62401e = 700;

    /* renamed from: f */
    public static volatile int f62402f = 128;

    /* renamed from: g */
    public static volatile C22517t f62403g;

    /* renamed from: a */
    public final boolean f62404a;

    /* renamed from: b */
    public int f62405b;

    /* renamed from: c */
    public boolean f62406c = true;

    public C22517t() {
        String str = Build.MODEL;
        boolean z = true;
        if (str != null) {
            if (str.length() >= 7) {
                String substring = str.substring(0, 7);
                substring.hashCode();
                boolean z2 = true;
                switch (substring.hashCode()) {
                    case -1398613787:
                        if (substring.equals("SM-A520")) {
                            z2 = false;
                            break;
                        }
                        break;
                    case -1398431166:
                        if (substring.equals("SM-G930")) {
                            z2 = true;
                            break;
                        }
                        break;
                    case -1398431161:
                        if (substring.equals("SM-G935")) {
                            z2 = true;
                            break;
                        }
                        break;
                    case -1398431073:
                        if (substring.equals("SM-G960")) {
                            z2 = true;
                            break;
                        }
                        break;
                    case -1398431068:
                        if (substring.equals("SM-G965")) {
                            z2 = true;
                            break;
                        }
                        break;
                    case -1398343746:
                        if (substring.equals("SM-J720")) {
                            z2 = true;
                            break;
                        }
                        break;
                    case -1398222624:
                        if (substring.equals("SM-N935")) {
                            z2 = true;
                            break;
                        }
                        break;
                }
                switch (z2) {
                    case false:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                        if (Build.VERSION.SDK_INT == 26) {
                            z = false;
                            break;
                        } else {
                            z = true;
                            break;
                        }
                    default:
                        z = true;
                        break;
                }
            } else {
                z = true;
            }
        }
        this.f62404a = z;
    }

    /* renamed from: a */
    public static C22517t m8175a() {
        if (f62403g == null) {
            synchronized (C22517t.class) {
                try {
                    if (f62403g == null) {
                        f62403g = new C22517t();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f62403g;
    }

    /* renamed from: b */
    public boolean m8174b(int i, int i2, boolean z, boolean z2) {
        boolean z3;
        boolean z4 = false;
        if (z) {
            z4 = false;
            if (this.f62404a) {
                z4 = false;
                if (Build.VERSION.SDK_INT >= 26) {
                    if (z2) {
                        z4 = false;
                    } else {
                        z4 = false;
                        if (i >= f62402f) {
                            z4 = false;
                            if (i2 >= f62402f) {
                                synchronized (this) {
                                    int i3 = this.f62405b + 1;
                                    this.f62405b = i3;
                                    if (i3 >= 50) {
                                        this.f62405b = 0;
                                        boolean z5 = f62400d.list().length < f62401e;
                                        this.f62406c = z5;
                                        if (!z5) {
                                            Log.isLoggable("Downsampler", 5);
                                        }
                                    }
                                    z3 = this.f62406c;
                                }
                                z4 = false;
                                if (z3) {
                                    z4 = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z4;
    }
}
