package p068d2;

import android.util.Log;
import java.util.Date;
/* renamed from: d2.i0 */
/* loaded from: classes-dex2jar.jar:d2/i0.class */
public class RunnableC2312i0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f8255a;

    /* renamed from: b */
    public final /* synthetic */ String f8256b;

    /* renamed from: c */
    public final /* synthetic */ int f8257c;

    /* renamed from: d */
    public final /* synthetic */ boolean f8258d;

    /* renamed from: e */
    public final /* synthetic */ C2279h0 f8259e;

    public RunnableC2312i0(C2279h0 c2279h0, int i, String str, int i2, boolean z) {
        this.f8259e = c2279h0;
        this.f8255a = i;
        this.f8256b = str;
        this.f8257c = i2;
        this.f8258d = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2279h0 c2279h0 = this.f8259e;
        int i = this.f8255a;
        String str = this.f8256b;
        int i2 = this.f8257c;
        if (c2279h0.f8197d != null) {
            if (i2 == 3 && c2279h0.m3690a(c2279h0.f8194a.m3700l(Integer.toString(i)), 3)) {
                C2195d2 c2195d2 = c2279h0.f8197d;
                synchronized (c2195d2) {
                    C2436x c2436x = new C2436x();
                    c2436x.f8617b = 3;
                    c2436x.f8618c = c2195d2.f8012f;
                    c2436x.f8619d = str;
                    if (c2436x.f8616a == null) {
                        c2436x.f8616a = new Date(System.currentTimeMillis());
                    }
                    c2195d2.m3770b(c2436x);
                }
            } else if (i2 == 2 && c2279h0.m3690a(c2279h0.f8194a.m3700l(Integer.toString(i)), 2)) {
                C2195d2 c2195d22 = c2279h0.f8197d;
                synchronized (c2195d22) {
                    C2436x c2436x2 = new C2436x();
                    c2436x2.f8617b = 2;
                    c2436x2.f8618c = c2195d22.f8012f;
                    c2436x2.f8619d = str;
                    if (c2436x2.f8616a == null) {
                        c2436x2.f8616a = new Date(System.currentTimeMillis());
                    }
                    c2195d22.m3770b(c2436x2);
                }
            } else if (i2 == 1 && c2279h0.m3690a(c2279h0.f8194a.m3700l(Integer.toString(i)), 1)) {
                C2195d2 c2195d23 = c2279h0.f8197d;
                synchronized (c2195d23) {
                    C2436x c2436x3 = new C2436x();
                    c2436x3.f8617b = 1;
                    c2436x3.f8618c = c2195d23.f8012f;
                    c2436x3.f8619d = str;
                    if (c2436x3.f8616a == null) {
                        c2436x3.f8616a = new Date(System.currentTimeMillis());
                    }
                    c2195d23.m3770b(c2436x3);
                }
            } else if (i2 == 0 && c2279h0.m3690a(c2279h0.f8194a.m3700l(Integer.toString(i)), 0)) {
                C2195d2 c2195d24 = c2279h0.f8197d;
                synchronized (c2195d24) {
                    C2436x c2436x4 = new C2436x();
                    c2436x4.f8617b = 0;
                    c2436x4.f8618c = c2195d24.f8012f;
                    c2436x4.f8619d = str;
                    if (c2436x4.f8616a == null) {
                        c2436x4.f8616a = new Date(System.currentTimeMillis());
                    }
                    c2195d24.m3770b(c2436x4);
                }
            }
        }
        int i3 = 0;
        while (i3 <= this.f8256b.length() / 4000) {
            int i4 = i3 * 4000;
            int i5 = i3 + 1;
            int min = Math.min(i5 * 4000, this.f8256b.length());
            if (this.f8257c == 3) {
                C2279h0 c2279h02 = this.f8259e;
                if (c2279h02.m3689b(c2279h02.f8194a.m3700l(Integer.toString(this.f8255a)), 3, this.f8258d)) {
                    this.f8256b.substring(i4, min);
                    i3 = i5;
                }
            }
            if (this.f8257c == 2) {
                C2279h0 c2279h03 = this.f8259e;
                if (c2279h03.m3689b(c2279h03.f8194a.m3700l(Integer.toString(this.f8255a)), 2, this.f8258d)) {
                    Log.i("AdColony [INFO]", this.f8256b.substring(i4, min));
                    i3 = i5;
                }
            }
            if (this.f8257c == 1) {
                C2279h0 c2279h04 = this.f8259e;
                if (c2279h04.m3689b(c2279h04.f8194a.m3700l(Integer.toString(this.f8255a)), 1, this.f8258d)) {
                    Log.w("AdColony [WARNING]", this.f8256b.substring(i4, min));
                    i3 = i5;
                }
            }
            if (this.f8257c == 0) {
                C2279h0 c2279h05 = this.f8259e;
                if (c2279h05.m3689b(c2279h05.f8194a.m3700l(Integer.toString(this.f8255a)), 0, this.f8258d)) {
                    this.f8256b.substring(i4, min);
                    i3 = i5;
                }
            }
            i3 = i5;
            if (this.f8257c == -1) {
                i3 = i5;
                if (C2279h0.f8192f >= -1) {
                    this.f8256b.substring(i4, min);
                    i3 = i5;
                }
            }
        }
    }
}
