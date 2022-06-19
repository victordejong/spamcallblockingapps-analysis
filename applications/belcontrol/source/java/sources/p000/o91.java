package p000;

import android.media.AudioManager;
import android.text.TextUtils;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p000.fa1;
import p000.r71;
/* renamed from: o91 */
/* loaded from: classes3-dex2jar.jar:o91.class */
public class o91 {

    /* renamed from: a */
    public static final String f7170a = "o91";

    /* renamed from: c */
    public static ScheduledFuture<?> f7172c;

    /* renamed from: b */
    public static ScheduledExecutorService f7171b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: d */
    public static int f7173d = 120000;

    /* renamed from: e */
    public static C1508b f7174e = null;

    /* renamed from: o91$a */
    /* loaded from: classes3-dex2jar.jar:o91$a.class */
    public static final class RunnableC1507a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            o91.m1129e();
        }
    }

    /* renamed from: o91$b */
    /* loaded from: classes3-dex2jar.jar:o91$b.class */
    public static class C1508b {

        /* renamed from: a */
        public int f7175a;

        /* renamed from: b */
        public int f7176b;

        /* renamed from: c */
        public int f7177c;

        /* renamed from: d */
        public long f7178d;

        public C1508b() {
            AudioManager audioManager = (AudioManager) fa1.m1840j().getSystemService("audio");
            try {
                this.f7175a = audioManager.getRingerMode();
            } catch (Throwable th) {
            }
            try {
                this.f7176b = audioManager.getStreamVolume(2);
            } catch (Throwable th2) {
            }
            try {
                this.f7177c = audioManager.getVibrateSetting(0);
            } catch (Throwable th3) {
            }
            this.f7178d = System.currentTimeMillis();
        }

        public C1508b(String str) {
            String[] split = TextUtils.split(str, ";");
            if (split.length < 4) {
                j91.m1505k(o91.f7170a, "Wrong data");
                return;
            }
            this.f7175a = Integer.valueOf(split[0]).intValue();
            this.f7176b = Integer.valueOf(split[1]).intValue();
            this.f7177c = Integer.valueOf(split[2]).intValue();
            this.f7178d = Long.valueOf(split[3]).longValue();
        }

        /* renamed from: a */
        public void m1128a() {
            AudioManager audioManager = (AudioManager) fa1.m1840j().getSystemService("audio");
            try {
                audioManager.setStreamMute(2, false);
            } catch (Throwable th) {
            }
            try {
                audioManager.setVibrateSetting(0, this.f7177c);
            } catch (Throwable th2) {
            }
            try {
                audioManager.setStreamVolume(2, this.f7176b, 0);
            } catch (Throwable th3) {
            }
            try {
                audioManager.setRingerMode(this.f7175a);
            } catch (Throwable th4) {
            }
        }

        public String toString() {
            return this.f7175a + ";" + this.f7176b + ";" + this.f7177c + ";" + this.f7178d;
        }
    }

    /* renamed from: o91$c */
    /* loaded from: classes3-dex2jar.jar:o91$c.class */
    public enum EnumC1509c {
        CALL,
        SMS,
        MMS
    }

    /* renamed from: a */
    public static void m1133a(EnumC1509c enumC1509c) {
        if (f7174e != null) {
            return;
        }
        if (enumC1509c == EnumC1509c.CALL && fa1.C1420e.m1809f() > 1) {
            String str = "Mute requested, no previous state found, but Target.CALL cannot be muted while there is " + fa1.C1420e.m1809f() + " active callers";
            return;
        }
        C1508b c1508b = new C1508b();
        if (c1508b.f7175a == 0) {
            return;
        }
        f7174e = c1508b;
        m1130d(c1508b);
        AudioManager audioManager = (AudioManager) fa1.m1840j().getSystemService("audio");
        try {
            audioManager.setRingerMode(0);
        } catch (Throwable th) {
        }
        try {
            audioManager.setVibrateSetting(0, 0);
        } catch (Throwable th2) {
        }
        try {
            audioManager.setStreamMute(2, true);
        } catch (Throwable th3) {
        }
    }

    /* renamed from: b */
    public static void m1132b(EnumC1509c enumC1509c) {
        m1133a(enumC1509c);
        ScheduledFuture<?> scheduledFuture = f7172c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        f7172c = f7171b.schedule(new RunnableC1507a(), 3000L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: c */
    public static void m1131c() {
        r71.EnumC1638a enumC1638a = r71.EnumC1638a.f7902J;
        String m687i = enumC1638a.m687i();
        if (TextUtils.isEmpty(m687i)) {
            return;
        }
        C1508b c1508b = new C1508b(m687i);
        enumC1638a.m681o("");
        if (c1508b.f7178d + f7173d < System.currentTimeMillis()) {
            return;
        }
        f7174e = c1508b;
        m1129e();
    }

    /* renamed from: d */
    public static void m1130d(C1508b c1508b) {
        if (c1508b == null) {
            return;
        }
        String c1508b2 = c1508b.toString();
        String str = "Save silencer state: " + c1508b2;
        r71.EnumC1638a.f7902J.m681o(c1508b2);
    }

    /* renamed from: e */
    public static void m1129e() {
        if (f7174e == null) {
            m1131c();
            return;
        }
        f7174e.m1128a();
        f7174e = null;
    }
}
