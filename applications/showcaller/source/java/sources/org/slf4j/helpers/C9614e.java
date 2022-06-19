package org.slf4j.helpers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.AbstractC9604a;
import org.slf4j.AbstractC9605b;
import org.slf4j.event.C9609c;
/* renamed from: org.slf4j.helpers.e */
/* loaded from: classes2-dex2jar.jar:org/slf4j/helpers/e.class */
public class C9614e implements AbstractC9604a {

    /* renamed from: a */
    boolean f40524a = false;

    /* renamed from: b */
    final Map<String, C9613d> f40525b = new HashMap();

    /* renamed from: c */
    final LinkedBlockingQueue<C9609c> f40526c = new LinkedBlockingQueue<>();

    @Override // org.slf4j.AbstractC9604a
    /* renamed from: a */
    public AbstractC9605b mo292a(String str) {
        C9613d c9613d;
        synchronized (this) {
            C9613d c9613d2 = this.f40525b.get(str);
            c9613d = c9613d2;
            if (c9613d2 == null) {
                c9613d = new C9613d(str, this.f40526c, this.f40524a);
                this.f40525b.put(str, c9613d);
            }
        }
        return c9613d;
    }

    /* renamed from: b */
    public void m304b() {
        this.f40525b.clear();
        this.f40526c.clear();
    }

    /* renamed from: c */
    public LinkedBlockingQueue<C9609c> m303c() {
        return this.f40526c;
    }

    /* renamed from: d */
    public List<C9613d> m302d() {
        return new ArrayList(this.f40525b.values());
    }

    /* renamed from: e */
    public void m301e() {
        this.f40524a = true;
    }
}
