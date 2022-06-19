package androidx.media2.exoplayer.external.text.p076f;

import android.text.Layout;
import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.text.f.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/d.class */
final class C1900d {

    /* renamed from: a */
    String f7631a;

    /* renamed from: b */
    int f7632b;

    /* renamed from: c */
    boolean f7633c;

    /* renamed from: d */
    int f7634d;

    /* renamed from: e */
    boolean f7635e;

    /* renamed from: f */
    int f7636f = -1;

    /* renamed from: g */
    int f7637g = -1;

    /* renamed from: h */
    int f7638h = -1;

    /* renamed from: i */
    int f7639i = -1;

    /* renamed from: j */
    int f7640j = -1;

    /* renamed from: k */
    float f7641k;

    /* renamed from: l */
    String f7642l;

    /* renamed from: m */
    C1900d f7643m;

    /* renamed from: n */
    Layout.Alignment f7644n;

    /* renamed from: a */
    public final int m41925a() {
        int i = this.f7638h;
        if (i == -1 && this.f7639i == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = i == 1 ? 1 : 0;
        if (this.f7639i == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }

    /* renamed from: a */
    public final C1900d m41924a(int i) {
        C1993a.m41686b(this.f7643m == null);
        this.f7632b = i;
        this.f7633c = true;
        return this;
    }

    /* renamed from: a */
    public final C1900d m41923a(C1900d c1900d) {
        if (c1900d != null) {
            if (!this.f7633c && c1900d.f7633c) {
                m41924a(c1900d.f7632b);
            }
            if (this.f7638h == -1) {
                this.f7638h = c1900d.f7638h;
            }
            if (this.f7639i == -1) {
                this.f7639i = c1900d.f7639i;
            }
            if (this.f7631a == null) {
                this.f7631a = c1900d.f7631a;
            }
            if (this.f7636f == -1) {
                this.f7636f = c1900d.f7636f;
            }
            if (this.f7637g == -1) {
                this.f7637g = c1900d.f7637g;
            }
            if (this.f7644n == null) {
                this.f7644n = c1900d.f7644n;
            }
            if (this.f7640j == -1) {
                this.f7640j = c1900d.f7640j;
                this.f7641k = c1900d.f7641k;
            }
            if (!this.f7635e && c1900d.f7635e) {
                m41921b(c1900d.f7634d);
            }
        }
        return this;
    }

    /* renamed from: a */
    public final C1900d m41922a(boolean z) {
        C1993a.m41686b(this.f7643m == null);
        this.f7636f = z ? 1 : 0;
        return this;
    }

    /* renamed from: b */
    public final C1900d m41921b(int i) {
        this.f7634d = i;
        this.f7635e = true;
        return this;
    }

    /* renamed from: b */
    public final C1900d m41920b(boolean z) {
        C1993a.m41686b(this.f7643m == null);
        this.f7637g = z ? 1 : 0;
        return this;
    }
}
