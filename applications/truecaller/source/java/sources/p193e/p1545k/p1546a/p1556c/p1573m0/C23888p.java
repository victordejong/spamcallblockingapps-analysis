package p193e.p1545k.p1546a.p1556c.p1573m0;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.StringTokenizer;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.m0.p */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/p.class */
public class C23888p implements Serializable {

    /* renamed from: a */
    public final C23887o f66094a;

    /* renamed from: e.k.a.c.m0.p$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/p$a.class */
    public static final class C23889a extends StringTokenizer {

        /* renamed from: a */
        public final String f66095a;

        /* renamed from: b */
        public int f66096b;

        /* renamed from: c */
        public String f66097c;

        public C23889a(String str) {
            super(str, "<,>", true);
            this.f66095a = str;
        }

        @Override // java.util.StringTokenizer
        public boolean hasMoreTokens() {
            return this.f66097c != null || super.hasMoreTokens();
        }

        @Override // java.util.StringTokenizer
        public String nextToken() {
            String str = this.f66097c;
            if (str != null) {
                this.f66097c = null;
            } else {
                String nextToken = super.nextToken();
                this.f66096b = nextToken.length() + this.f66096b;
                str = nextToken.trim();
            }
            return str;
        }
    }

    public C23888p(C23887o c23887o) {
        this.f66094a = c23887o;
    }

    /* renamed from: a */
    public IllegalArgumentException m5899a(C23889a c23889a, String str) {
        String str2 = c23889a.f66095a;
        return new IllegalArgumentException(String.format("Failed to parse type '%s' (remaining: '%s'): %s", str2, str2.substring(c23889a.f66096b), str));
    }

    /* renamed from: b */
    public AbstractC23698i m5898b(C23889a c23889a) throws IllegalArgumentException {
        if (c23889a.hasMoreTokens()) {
            String nextToken = c23889a.nextToken();
            try {
                Class<?> m5903m = this.f66094a.m5903m(nextToken);
                if (c23889a.hasMoreTokens()) {
                    String nextToken2 = c23889a.nextToken();
                    if ("<".equals(nextToken2)) {
                        ArrayList arrayList = new ArrayList();
                        while (c23889a.hasMoreTokens()) {
                            arrayList.add(m5898b(c23889a));
                            if (!c23889a.hasMoreTokens()) {
                                break;
                            }
                            String nextToken3 = c23889a.nextToken();
                            if (">".equals(nextToken3)) {
                                AbstractC23698i[] abstractC23698iArr = C23884n.f66054f;
                                if (!arrayList.isEmpty()) {
                                    abstractC23698iArr = (AbstractC23698i[]) arrayList.toArray(abstractC23698iArr);
                                }
                                return this.f66094a.m5913c(null, m5903m, C23884n.m5919c(m5903m, abstractC23698iArr));
                            } else if (!",".equals(nextToken3)) {
                                throw m5899a(c23889a, "Unexpected token '" + nextToken3 + "', expected ',' or '>')");
                            }
                        }
                        throw m5899a(c23889a, "Unexpected end-of-string");
                    }
                    c23889a.f66097c = nextToken2;
                }
                return this.f66094a.m5913c(null, m5903m, C23884n.f66055g);
            } catch (Exception e) {
                C23914g.m5770K(e);
                throw m5899a(c23889a, "Cannot locate class '" + nextToken + "', problem: " + e.getMessage());
            }
        }
        throw m5899a(c23889a, "Unexpected end-of-string");
    }
}
