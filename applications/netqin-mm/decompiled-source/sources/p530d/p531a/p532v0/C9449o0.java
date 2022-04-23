package p530d.p531a.p532v0;

import java.util.ArrayList;
/* renamed from: d.a.v0.o0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/o0.class */
public final class C9449o0 {

    /* renamed from: a */
    public final ArrayList<String> f36230a = new ArrayList<>();

    /* renamed from: a */
    public C9449o0 m2719a(Object obj) {
        this.f36230a.add(String.valueOf(obj));
        return this;
    }

    /* renamed from: a */
    public C9449o0 m2718a(String str, Object obj) {
        ArrayList<String> arrayList = this.f36230a;
        arrayList.add(str + "=" + obj);
        return this;
    }

    public String toString() {
        return this.f36230a.toString();
    }
}
