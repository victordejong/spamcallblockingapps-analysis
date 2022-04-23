package p081h.p444n.p445a;

import java.io.PrintWriter;
/* renamed from: h.n.a.c0 */
/* loaded from: classes2-dex2jar.jar:h/n/a/c0.class */
public class C10765c0 {

    /* renamed from: a */
    public final int f24576a;

    /* renamed from: b */
    public final int f24577b;

    /* renamed from: c */
    public final long f24578c;

    /* renamed from: d */
    public final long f24579d;

    /* renamed from: e */
    public final long f24580e;

    /* renamed from: f */
    public final long f24581f;

    /* renamed from: g */
    public final long f24582g;

    /* renamed from: h */
    public final long f24583h;

    /* renamed from: i */
    public final long f24584i;

    /* renamed from: j */
    public final long f24585j;

    /* renamed from: k */
    public final int f24586k;

    /* renamed from: l */
    public final int f24587l;

    /* renamed from: m */
    public final int f24588m;

    /* renamed from: n */
    public final long f24589n;

    public C10765c0(int i, int i2, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, int i3, int i4, int i5, long j9) {
        this.f24576a = i;
        this.f24577b = i2;
        this.f24578c = j;
        this.f24579d = j2;
        this.f24580e = j3;
        this.f24581f = j4;
        this.f24582g = j5;
        this.f24583h = j6;
        this.f24584i = j7;
        this.f24585j = j8;
        this.f24586k = i3;
        this.f24587l = i4;
        this.f24588m = i5;
        this.f24589n = j9;
    }

    /* renamed from: a */
    public void m10685a(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.f24576a);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.f24577b);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((this.f24577b / this.f24576a) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.f24578c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f24579d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.f24586k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f24580e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.f24583h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.f24587l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f24581f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.f24588m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.f24582g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.f24584i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.f24585j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public String toString() {
        return "StatsSnapshot{maxSize=" + this.f24576a + ", size=" + this.f24577b + ", cacheHits=" + this.f24578c + ", cacheMisses=" + this.f24579d + ", downloadCount=" + this.f24586k + ", totalDownloadSize=" + this.f24580e + ", averageDownloadSize=" + this.f24583h + ", totalOriginalBitmapSize=" + this.f24581f + ", totalTransformedBitmapSize=" + this.f24582g + ", averageOriginalBitmapSize=" + this.f24584i + ", averageTransformedBitmapSize=" + this.f24585j + ", originalBitmapCount=" + this.f24587l + ", transformedBitmapCount=" + this.f24588m + ", timeStamp=" + this.f24589n + '}';
    }
}
