package androidx.media2.exoplayer.external.text.p078h;

import android.text.Layout;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.text.h.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/d.class */
public final class C1909d {

    /* renamed from: f */
    int f7673f;

    /* renamed from: h */
    int f7675h;

    /* renamed from: o */
    float f7682o;

    /* renamed from: a */
    String f7668a = "";

    /* renamed from: b */
    String f7669b = "";

    /* renamed from: c */
    List<String> f7670c = Collections.emptyList();

    /* renamed from: d */
    String f7671d = "";

    /* renamed from: e */
    String f7672e = null;

    /* renamed from: g */
    boolean f7674g = false;

    /* renamed from: i */
    boolean f7676i = false;

    /* renamed from: j */
    int f7677j = -1;

    /* renamed from: k */
    int f7678k = -1;

    /* renamed from: l */
    int f7679l = -1;

    /* renamed from: m */
    int f7680m = -1;

    /* renamed from: n */
    int f7681n = -1;

    /* renamed from: p */
    Layout.Alignment f7683p = null;

    /* renamed from: a */
    public static int m41905a(int i, String str, String str2, int i2) {
        if (str.isEmpty() || i == -1) {
            return i;
        }
        if (!str.equals(str2)) {
            return -1;
        }
        return i + i2;
    }

    /* renamed from: a */
    public final int m41906a() {
        int i = this.f7679l;
        if (i == -1 && this.f7680m == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = i == 1 ? 1 : 0;
        if (this.f7680m == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }
}
