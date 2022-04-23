package p131c.p135b.p136a.p143d;

import android.os.Bundle;
/* renamed from: c.b.a.d.h */
/* loaded from: classes-dex2jar.jar:c/b/a/d/h.class */
public class C2173h {

    /* renamed from: a */
    public final Bundle f8261a;

    /* renamed from: c.b.a.d.h$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/h$b.class */
    public static class C2175b {

        /* renamed from: a */
        public final Bundle f8262a = new Bundle();

        /* renamed from: a */
        public C2175b m30798a(String str) {
            if (str != null) {
                this.f8262a.remove(str);
                return this;
            }
            throw new IllegalArgumentException("No key specified.");
        }

        /* renamed from: a */
        public C2175b m30797a(String str, String str2) {
            if (str != null) {
                this.f8262a.putString(str, str2);
                return this;
            }
            throw new IllegalArgumentException("No key specified");
        }

        /* renamed from: a */
        public C2173h m30800a() {
            return new C2173h(this);
        }
    }

    public C2173h(C2175b bVar) {
        this.f8261a = bVar.f8262a;
    }

    /* renamed from: a */
    public Bundle m30801a() {
        return this.f8261a;
    }

    public String toString() {
        return "MediatedRequestParameters{extraParameters=" + this.f8261a + '}';
    }
}
