package ca;

import android.util.Log;
import androidx.recyclerview.widget.C0608b;
import ba.AbstractC0754e;
import java.util.logging.Level;
/* renamed from: ca.a */
/* loaded from: classes2-dex2jar.jar:ca/a.class */
public class C0864a implements AbstractC0754e {

    /* renamed from: a */
    public static final boolean f3158a;

    static {
        boolean z;
        try {
            Class.forName("android.util.Log");
            z = true;
        } catch (ClassNotFoundException e) {
            z = false;
        }
        f3158a = z;
    }

    public C0864a(String str) {
    }

    @Override // ba.AbstractC0754e
    /* renamed from: a */
    public void mo7244a(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(m7242c(level), "EventBus", str);
        }
    }

    @Override // ba.AbstractC0754e
    /* renamed from: b */
    public void mo7243b(Level level, String str, Throwable th) {
        if (level != Level.OFF) {
            int m7242c = m7242c(level);
            StringBuilder m7624k = C0608b.m7624k(str, "\n");
            m7624k.append(Log.getStackTraceString(th));
            Log.println(m7242c, "EventBus", m7624k.toString());
        }
    }

    /* renamed from: c */
    public final int m7242c(Level level) {
        int intValue = level.intValue();
        if (intValue < 800) {
            return intValue < 500 ? 2 : 3;
        } else if (intValue < 900) {
            return 4;
        } else {
            return intValue < 1000 ? 5 : 6;
        }
    }
}
