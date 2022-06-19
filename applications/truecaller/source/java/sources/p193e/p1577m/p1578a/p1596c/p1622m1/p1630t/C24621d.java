package p193e.p1577m.p1578a.p1596c.p1622m1.p1630t;

import java.util.Collections;
import java.util.List;
/* renamed from: e.m.a.c.m1.t.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/t/d.class */
public final class C24621d {

    /* renamed from: f */
    public int f68952f;

    /* renamed from: h */
    public int f68954h;

    /* renamed from: a */
    public String f68947a = "";

    /* renamed from: b */
    public String f68948b = "";

    /* renamed from: c */
    public List<String> f68949c = Collections.emptyList();

    /* renamed from: d */
    public String f68950d = "";

    /* renamed from: e */
    public String f68951e = null;

    /* renamed from: g */
    public boolean f68953g = false;

    /* renamed from: i */
    public boolean f68955i = false;

    /* renamed from: j */
    public int f68956j = -1;

    /* renamed from: k */
    public int f68957k = -1;

    /* renamed from: l */
    public int f68958l = -1;

    /* renamed from: m */
    public int f68959m = -1;

    /* renamed from: n */
    public int f68960n = -1;

    /* renamed from: b */
    public static int m4825b(int i, String str, String str2, int i2) {
        if (!str.isEmpty()) {
            int i3 = -1;
            if (i != -1) {
                if (str.equals(str2)) {
                    i3 = i + i2;
                }
                return i3;
            }
        }
        return i;
    }

    /* renamed from: a */
    public int m4826a() {
        int i = this.f68958l;
        if (i == -1 && this.f68959m == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = i == 1 ? 1 : 0;
        if (this.f68959m == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }
}
