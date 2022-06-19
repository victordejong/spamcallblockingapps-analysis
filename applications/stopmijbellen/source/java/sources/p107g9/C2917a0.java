package p107g9;

import android.support.p012v4.media.C0082b;
import java.io.PrintWriter;
/* renamed from: g9.a0 */
/* loaded from: classes2-dex2jar.jar:g9/a0.class */
public class C2917a0 {

    /* renamed from: a */
    public final int f9832a;

    /* renamed from: b */
    public final int f9833b;

    /* renamed from: c */
    public final long f9834c;

    /* renamed from: d */
    public final long f9835d;

    /* renamed from: e */
    public final long f9836e;

    /* renamed from: f */
    public final long f9837f;

    /* renamed from: g */
    public final long f9838g;

    /* renamed from: h */
    public final long f9839h;

    /* renamed from: i */
    public final long f9840i;

    /* renamed from: j */
    public final long f9841j;

    /* renamed from: k */
    public final int f9842k;

    /* renamed from: l */
    public final int f9843l;

    /* renamed from: m */
    public final int f9844m;

    /* renamed from: n */
    public final long f9845n;

    public C2917a0(int i, int i2, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, int i3, int i4, int i5, long j9) {
        this.f9832a = i;
        this.f9833b = i2;
        this.f9834c = j;
        this.f9835d = j2;
        this.f9836e = j3;
        this.f9837f = j4;
        this.f9838g = j5;
        this.f9839h = j6;
        this.f9840i = j7;
        this.f9841j = j8;
        this.f9842k = i3;
        this.f9843l = i4;
        this.f9844m = i5;
        this.f9845n = j9;
    }

    /* renamed from: a */
    public void m2851a(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.f9832a);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.f9833b);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((this.f9833b / this.f9832a) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.f9834c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f9835d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.f9842k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f9836e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.f9839h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.f9843l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f9837f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.f9844m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.f9838g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.f9840i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.f9841j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("StatsSnapshot{maxSize=");
        m8752j.append(this.f9832a);
        m8752j.append(", size=");
        m8752j.append(this.f9833b);
        m8752j.append(", cacheHits=");
        m8752j.append(this.f9834c);
        m8752j.append(", cacheMisses=");
        m8752j.append(this.f9835d);
        m8752j.append(", downloadCount=");
        m8752j.append(this.f9842k);
        m8752j.append(", totalDownloadSize=");
        m8752j.append(this.f9836e);
        m8752j.append(", averageDownloadSize=");
        m8752j.append(this.f9839h);
        m8752j.append(", totalOriginalBitmapSize=");
        m8752j.append(this.f9837f);
        m8752j.append(", totalTransformedBitmapSize=");
        m8752j.append(this.f9838g);
        m8752j.append(", averageOriginalBitmapSize=");
        m8752j.append(this.f9840i);
        m8752j.append(", averageTransformedBitmapSize=");
        m8752j.append(this.f9841j);
        m8752j.append(", originalBitmapCount=");
        m8752j.append(this.f9843l);
        m8752j.append(", transformedBitmapCount=");
        m8752j.append(this.f9844m);
        m8752j.append(", timeStamp=");
        m8752j.append(this.f9845n);
        m8752j.append('}');
        return m8752j.toString();
    }
}
