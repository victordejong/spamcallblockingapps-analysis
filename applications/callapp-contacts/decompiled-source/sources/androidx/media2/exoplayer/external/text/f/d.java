package androidx.media2.exoplayer.external.text.f;

import android.text.Layout;
import androidx.media2.exoplayer.external.util.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/d.class */
final class d {

    /* renamed from: a  reason: collision with root package name */
    String f3895a;

    /* renamed from: b  reason: collision with root package name */
    int f3896b;

    /* renamed from: c  reason: collision with root package name */
    boolean f3897c;

    /* renamed from: d  reason: collision with root package name */
    int f3898d;
    boolean e;
    int f = -1;
    int g = -1;
    int h = -1;
    int i = -1;
    int j = -1;
    float k;
    String l;
    d m;
    Layout.Alignment n;

    public final int a() {
        int i = this.h;
        if (i == -1 && this.i == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = i == 1 ? 1 : 0;
        if (this.i == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }

    public final d a(int i) {
        a.b(this.m == null);
        this.f3896b = i;
        this.f3897c = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final d a(d dVar) {
        if (dVar != null) {
            if (!this.f3897c && dVar.f3897c) {
                a(dVar.f3896b);
            }
            if (this.h == -1) {
                this.h = dVar.h;
            }
            if (this.i == -1) {
                this.i = dVar.i;
            }
            if (this.f3895a == null) {
                this.f3895a = dVar.f3895a;
            }
            if (this.f == -1) {
                this.f = dVar.f;
            }
            if (this.g == -1) {
                this.g = dVar.g;
            }
            if (this.n == null) {
                this.n = dVar.n;
            }
            if (this.j == -1) {
                this.j = dVar.j;
                this.k = dVar.k;
            }
            if (!this.e && dVar.e) {
                b(dVar.f3898d);
            }
        }
        return this;
    }

    public final d a(boolean z) {
        a.b(this.m == null);
        this.f = z ? 1 : 0;
        return this;
    }

    public final d b(int i) {
        this.f3898d = i;
        this.e = true;
        return this;
    }

    public final d b(boolean z) {
        a.b(this.m == null);
        this.g = z ? 1 : 0;
        return this;
    }
}
