package p193e.p194a.p1310v2.p1311v;

import java.util.concurrent.TimeUnit;
/* renamed from: e.a.v2.v.d */
/* loaded from: classes5-dex2jar.jar:e/a/v2/v/d.class */
public final class C20995d {

    /* renamed from: a */
    public static final C20995d f58988a = new C20995d();

    /* renamed from: a */
    public final String m10435a(long j) {
        String str;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(j);
        if (0 <= seconds && 1 >= seconds) {
            str = "0-1";
        } else {
            long j2 = 2;
            if (1 <= seconds && j2 >= seconds) {
                str = "1-2";
            } else {
                long j3 = 5;
                if (j2 <= seconds && j3 >= seconds) {
                    str = "2-5";
                } else {
                    long j4 = 8;
                    if (j3 <= seconds && j4 >= seconds) {
                        str = "5-8";
                    } else {
                        long j5 = 10;
                        if (j4 <= seconds && j5 >= seconds) {
                            str = "8-10";
                        } else {
                            long j6 = 15;
                            if (j5 <= seconds && j6 >= seconds) {
                                str = "10-15";
                            } else {
                                long j7 = 20;
                                if (j6 <= seconds && j7 >= seconds) {
                                    str = "15-20";
                                } else {
                                    long j8 = 25;
                                    if (j7 <= seconds && j8 >= seconds) {
                                        str = "20-25";
                                    } else {
                                        long j9 = 40;
                                        if (30 <= seconds && j9 >= seconds) {
                                            str = "30-40";
                                        } else {
                                            long j10 = 50;
                                            if (j9 <= seconds && j10 >= seconds) {
                                                str = "40-50";
                                            } else {
                                                long j11 = 60;
                                                if (j10 <= seconds && j11 >= seconds) {
                                                    str = "50-60";
                                                } else {
                                                    long j12 = 90;
                                                    if (j11 <= seconds && j12 >= seconds) {
                                                        str = "60-90";
                                                    } else {
                                                        str = (j12 <= seconds && ((long) 120) >= seconds) ? "90-120" : ">120";
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return str;
    }
}
