package p459j.p460a.p474c0.p499h;

import android.os.Process;
import androidx.exifinterface.media.ExifInterface;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
/* renamed from: j.a.c0.h.c0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/c0.class */
public abstract class AbstractC12147c0 {

    /* renamed from: j.a.c0.h.c0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/c0$b.class */
    public static final class C12149b extends AbstractC12147c0 {

        /* renamed from: a */
        public final int f27284a;

        /* renamed from: b */
        public final C12192o<C12150a> f27285b;

        /* renamed from: d */
        public final SimpleDateFormat f27287d = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");

        /* renamed from: c */
        public final Object f27286c = new Object();

        /* renamed from: j.a.c0.h.c0$b$a */
        /* loaded from: classes3-dex2jar.jar:j/a/c0/h/c0$b$a.class */
        public static class C12150a {

            /* renamed from: a */
            public int f27288a;

            /* renamed from: b */
            public String f27289b;

            /* renamed from: c */
            public long f27290c;

            /* renamed from: d */
            public String f27291d;

            /* renamed from: e */
            public String f27292e;

            /* renamed from: a */
            public void m7014a(int i, int i2, long j, String str, String str2) {
                this.f27288a = i;
                this.f27290c = j;
                this.f27291d = str;
                this.f27292e = str2;
                this.f27289b = AbstractC12147c0.m7018b(i2);
            }
        }

        public C12149b(int i) {
            super();
            this.f27284a = i;
            this.f27285b = new C12192o<>(i);
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12147c0
        /* renamed from: a */
        public void mo7016a(int i, String str, String str2) {
            synchronized (this.f27286c) {
                C12150a c = this.f27285b.m6847c();
                C12150a aVar = c;
                if (c == null) {
                    aVar = new C12150a();
                }
                aVar.m7014a(Process.myTid(), i, System.currentTimeMillis(), str, str2);
                this.f27285b.m6849a((C12192o<C12150a>) aVar);
            }
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12147c0
        /* renamed from: a */
        public void mo7015a(PrintWriter printWriter) {
            int myPid = Process.myPid();
            synchronized (this.f27286c) {
                for (int i = 0; i < this.f27285b.m6848b(); i++) {
                    C12150a a = this.f27285b.m6850a(i);
                    printWriter.println(String.format("%s %5d %5d %s %s: %s", this.f27287d.format(Long.valueOf(a.f27290c)), Integer.valueOf(myPid), Integer.valueOf(a.f27288a), a.f27289b, a.f27291d, a.f27292e));
                }
            }
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12147c0
        /* renamed from: a */
        public boolean mo7017a() {
            boolean z = false;
            AbstractC12170i.m6941a().mo6916a("bugle_persistent_logsaver", false);
            AbstractC12170i.m6941a().mo6919a("bugle_in_memory_logsaver_record_count", 500);
            if (500 == this.f27284a) {
                z = true;
            }
            return z;
        }
    }

    public AbstractC12147c0() {
    }

    /* renamed from: b */
    public static AbstractC12147c0 m7019b() {
        AbstractC12170i.m6941a().mo6916a("bugle_persistent_logsaver", false);
        AbstractC12170i.m6941a().mo6919a("bugle_in_memory_logsaver_record_count", 500);
        return new C12149b(500);
    }

    /* renamed from: b */
    public static String m7018b(int i) {
        switch (i) {
            case 2:
                return ExifInterface.GPS_MEASUREMENT_INTERRUPTED;
            case 3:
                return "D";
            case 4:
                return "I";
            case 5:
                return ExifInterface.LONGITUDE_WEST;
            case 6:
                return ExifInterface.LONGITUDE_EAST;
            case 7:
                return ExifInterface.GPS_MEASUREMENT_IN_PROGRESS;
            default:
                return "?";
        }
    }

    /* renamed from: a */
    public abstract void mo7016a(int i, String str, String str2);

    /* renamed from: a */
    public abstract void mo7015a(PrintWriter printWriter);

    /* renamed from: a */
    public abstract boolean mo7017a();
}
