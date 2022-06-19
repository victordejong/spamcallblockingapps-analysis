package p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b;

import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.v4.s0.l.e.b.a */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/e/b/a.class */
public class C21114a implements AbstractC21115b {
    private int code;
    private final String errorMessage;

    public C21114a() {
        this(0, null, 3, null);
    }

    public C21114a(int i, String str) {
        l.e(str, "errorMessage");
        this.code = i;
        this.errorMessage = str;
    }

    public /* synthetic */ C21114a(int i, String str, int i2, f fVar) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? "Something went wrong" : str);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.AbstractC21115b
    public int errorCode() {
        return this.code;
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.AbstractC21115b
    public String errorMessage() {
        return this.errorMessage;
    }

    public final int getCode() {
        return this.code;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final void setCode(int i) {
        this.code = i;
    }
}
