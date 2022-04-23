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
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/b.class */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private final j f20123c;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, e> f20121a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Set<e> f20122b = new CopyOnWriteArraySet();

    /* renamed from: d  reason: collision with root package name */
    private final CopyOnWriteArraySet<Object> f20124d = new CopyOnWriteArraySet<>();
    private boolean e = true;

    public b(j jVar) {
        if (jVar != null) {
            this.f20123c = jVar;
            jVar.a(this);
            return;
        }
        throw new IllegalArgumentException("springLooper is required");
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x02c4, code lost:
        if ((r0.f20125a.f20137b > 0.0d && ((r0.g < r0.h && r0.f20128d.f20129a > r0.h) || (r0.g > r0.h && r0.f20128d.f20129a < r0.h))) != false) goto L_0x02c7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0346  */
    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(double r12) {
        /*
            Method dump skipped, instructions count: 910
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.rebound.b.b(double):void");
    }

    private void b(e eVar) {
        if (!this.f20121a.containsKey(eVar.f20127c)) {
            this.f20121a.put(eVar.f20127c, eVar);
            return;
        }
        throw new IllegalArgumentException("spring is already registered");
    }

    public final e a() {
        e eVar = new e(this);
        b(eVar);
        return eVar;
    }

    public final void a(double d2) {
        Iterator<Object> it2 = this.f20124d.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
        b(d2);
        if (this.f20122b.isEmpty()) {
            this.e = true;
        }
        Iterator<Object> it3 = this.f20124d.iterator();
        while (it3.hasNext()) {
            it3.next();
        }
        if (this.e) {
            this.f20123c.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(e eVar) {
        this.f20122b.remove(eVar);
        this.f20121a.remove(eVar.f20127c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        e eVar = this.f20121a.get(str);
        if (eVar != null) {
            this.f20122b.add(eVar);
            if (this.e) {
                this.e = false;
                this.f20123c.a();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("springId " + str + " does not reference a registered spring");
    }

    public final List<e> b() {
        Collection<e> values = this.f20121a.values();
        return Collections.unmodifiableList(values instanceof List ? (List) values : new ArrayList(values));
    }
}
