package androidx.media2.exoplayer.external.text.h;

import android.text.Layout;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/d.class */
public final class d {
    int f;
    int h;
    float o;

    /* renamed from: a  reason: collision with root package name */
    String f3916a = "";

    /* renamed from: b  reason: collision with root package name */
    String f3917b = "";

    /* renamed from: c  reason: collision with root package name */
    List<String> f3918c = Collections.emptyList();

    /* renamed from: d  reason: collision with root package name */
    String f3919d = "";
    String e = null;
    boolean g = false;
    boolean i = false;
    int j = -1;
    int k = -1;
    int l = -1;
    int m = -1;
    int n = -1;
    Layout.Alignment p = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, String str, String str2, int i2) {
        if (str.isEmpty() || i == -1) {
            return i;
        }
        if (str.equals(str2)) {
            return i + i2;
        }
        return -1;
    }

    public final int a() {
        int i = this.l;
        if (i == -1 && this.m == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = i == 1 ? 1 : 0;
        if (this.m == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }
}
