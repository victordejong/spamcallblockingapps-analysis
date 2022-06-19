package p193e.p1411b.p1412a;

import android.graphics.Rect;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import p1727n3.p1788g.C26179e;
import p1727n3.p1788g.C26188i;
import p193e.p1411b.p1412a.p1420y.C21973c;
import p193e.p1411b.p1412a.p1420y.C21974d;
import p193e.p1411b.p1412a.p1420y.C21978h;
import p193e.p1411b.p1412a.p1420y.p1423l.C22010e;
/* renamed from: e.b.a.e */
/* loaded from: classes-dex2jar.jar:e/b/a/e.class */
public class C21913e {

    /* renamed from: c */
    public Map<String, List<C22010e>> f60826c;

    /* renamed from: d */
    public Map<String, C21938l> f60827d;

    /* renamed from: e */
    public Map<String, C21973c> f60828e;

    /* renamed from: f */
    public List<C21978h> f60829f;

    /* renamed from: g */
    public C26188i<C21974d> f60830g;

    /* renamed from: h */
    public C26179e<C22010e> f60831h;

    /* renamed from: i */
    public List<C22010e> f60832i;

    /* renamed from: j */
    public Rect f60833j;

    /* renamed from: k */
    public float f60834k;

    /* renamed from: l */
    public float f60835l;

    /* renamed from: m */
    public float f60836m;

    /* renamed from: n */
    public boolean f60837n;

    /* renamed from: a */
    public final C21946s f60824a = new C21946s();

    /* renamed from: b */
    public final HashSet<String> f60825b = new HashSet<>();

    /* renamed from: o */
    public int f60838o = 0;

    /* renamed from: a */
    public float m8907a() {
        return (m8906b() / this.f60836m) * 1000.0f;
    }

    /* renamed from: b */
    public float m8906b() {
        return this.f60835l - this.f60834k;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x005f, code lost:
        if (r0.substring(0, r0.length() - 1).equalsIgnoreCase(r6) != false) goto L12;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1411b.p1412a.p1420y.C21978h m8905c(java.lang.String r6) {
        /*
            r5 = this;
            r0 = r5
            java.util.List<e.b.a.y.h> r0 = r0.f60829f
            int r0 = r0.size()
            r0 = 0
            r7 = r0
        Lc:
            r0 = r7
            r1 = r5
            java.util.List<e.b.a.y.h> r1 = r1.f60829f
            int r1 = r1.size()
            if (r0 >= r1) goto L75
            r0 = r5
            java.util.List<e.b.a.y.h> r0 = r0.f60829f
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            e.b.a.y.h r0 = (p193e.p1411b.p1412a.p1420y.C21978h) r0
            r8 = r0
            r0 = r8
            java.lang.String r0 = r0.f61028a
            r1 = r6
            boolean r0 = r0.equalsIgnoreCase(r1)
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L3c
            goto L68
        L3c:
            r0 = r8
            java.lang.String r0 = r0.f61028a
            java.lang.String r1 = "\r"
            boolean r0 = r0.endsWith(r1)
            if (r0 == 0) goto L65
            r0 = r8
            java.lang.String r0 = r0.f61028a
            r11 = r0
            r0 = r11
            r1 = 0
            r2 = r11
            int r2 = r2.length()
            r3 = 1
            int r2 = r2 - r3
            java.lang.String r0 = r0.substring(r1, r2)
            r1 = r6
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L65
            goto L68
        L65:
            r0 = 0
            r10 = r0
        L68:
            r0 = r10
            if (r0 == 0) goto L6f
            r0 = r8
            return r0
        L6f:
            int r7 = r7 + 1
            goto Lc
        L75:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1411b.p1412a.C21913e.m8905c(java.lang.String):e.b.a.y.h");
    }

    /* renamed from: d */
    public C22010e m8904d(long j) {
        return this.f60831h.m2603h(j, null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        for (C22010e c22010e : this.f60832i) {
            sb.append(c22010e.m8833a("\t"));
        }
        return sb.toString();
    }
}
