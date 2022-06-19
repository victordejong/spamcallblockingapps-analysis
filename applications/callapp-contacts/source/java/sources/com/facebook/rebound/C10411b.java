package com.facebook.rebound;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.facebook.rebound.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/b.class */
public class C10411b {

    /* renamed from: c */
    private final AbstractC10421j f34067c;

    /* renamed from: a */
    private final Map<String, C10414e> f34065a = new HashMap();

    /* renamed from: b */
    private final Set<C10414e> f34066b = new CopyOnWriteArraySet();

    /* renamed from: d */
    private final CopyOnWriteArraySet<Object> f34068d = new CopyOnWriteArraySet<>();

    /* renamed from: e */
    private boolean f34069e = true;

    public C10411b(AbstractC10421j abstractC10421j) {
        if (abstractC10421j != null) {
            this.f34067c = abstractC10421j;
            abstractC10421j.m22827a(this);
            return;
        }
        throw new IllegalArgumentException("springLooper is required");
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x02c4, code lost:
        if ((r0.f34071a.f34097b > 0.0d && ((r0.f34077g < r0.f34078h && r0.f34074d.f34085a > r0.f34078h) || (r0.f34077g > r0.f34078h && r0.f34074d.f34085a < r0.f34078h))) != false) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0346  */
    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v154, types: [double] */
    /* JADX WARN: Type inference failed for: r0v156, types: [double] */
    /* JADX WARN: Type inference failed for: r0v160, types: [double] */
    /* JADX WARN: Type inference failed for: r0v162, types: [double] */
    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    /* JADX WARN: Type inference failed for: r0v36, types: [double] */
    /* JADX WARN: Type inference failed for: r0v39, types: [double] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m22851b(double r12) {
        /*
            Method dump skipped, instructions count: 910
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.rebound.C10411b.m22851b(double):void");
    }

    /* renamed from: b */
    private void m22850b(C10414e c10414e) {
        if (!this.f34065a.containsKey(c10414e.f34073c)) {
            this.f34065a.put(c10414e.f34073c, c10414e);
            return;
        }
        throw new IllegalArgumentException("spring is already registered");
    }

    /* renamed from: a */
    public final C10414e m22856a() {
        C10414e c10414e = new C10414e(this);
        m22850b(c10414e);
        return c10414e;
    }

    /* renamed from: a */
    public final void m22855a(double d) {
        Iterator<Object> it2 = this.f34068d.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
        m22851b(d);
        if (this.f34066b.isEmpty()) {
            this.f34069e = true;
        }
        Iterator<Object> it3 = this.f34068d.iterator();
        while (it3.hasNext()) {
            it3.next();
        }
        if (this.f34069e) {
            this.f34067c.mo22826b();
        }
    }

    /* renamed from: a */
    public final void m22854a(C10414e c10414e) {
        this.f34066b.remove(c10414e);
        this.f34065a.remove(c10414e.f34073c);
    }

    /* renamed from: a */
    public final void m22853a(String str) {
        C10414e c10414e = this.f34065a.get(str);
        if (c10414e == null) {
            throw new IllegalArgumentException("springId " + str + " does not reference a registered spring");
        }
        this.f34066b.add(c10414e);
        if (!this.f34069e) {
            return;
        }
        this.f34069e = false;
        this.f34067c.mo22828a();
    }

    /* renamed from: b */
    public final List<C10414e> m22852b() {
        Collection<C10414e> values = this.f34065a.values();
        return Collections.unmodifiableList(values instanceof List ? (List) values : new ArrayList(values));
    }
}
