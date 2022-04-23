package com.bytedance.sdk.openadsdk.g.a;

import android.net.Uri;
import com.bytedance.sdk.openadsdk.g.a.k;
import com.bytedance.sdk.openadsdk.g.a.u;
import com.bytedance.sdk.openadsdk.g.a.v;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/t.class */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f9554a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<String> f9555b;

    /* renamed from: c  reason: collision with root package name */
    private final v f9556c = q.f9545a;

    /* renamed from: d  reason: collision with root package name */
    private final u f9557d;
    private k.b e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(u uVar, Set<String> set, Set<String> set2) {
        this.f9557d = uVar;
        this.f9554a = new LinkedHashSet(set);
        this.f9555b = new LinkedHashSet(set2);
    }

    private w a(String str, b bVar, boolean z) {
        u uVar;
        if (!z || (uVar = this.f9557d) == null) {
            return null;
        }
        u.c a2 = uVar.a(str, this.f9554a);
        if (a2.f9570c.contains(bVar.a())) {
            return null;
        }
        if (a2.f9569b.contains(bVar.a())) {
            return w.PRIVATE;
        }
        if (a2.f9568a.compareTo(bVar.b()) < 0) {
            return null;
        }
        return a2.f9568a;
    }

    final w a(String str, b bVar) throws u.a {
        w a2;
        synchronized (this) {
            a2 = a(str, bVar, true);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final w a(boolean z, String str, b bVar) throws u.a {
        String next;
        synchronized (this) {
            Uri parse = Uri.parse(str);
            String host = parse.getHost();
            if (host == null) {
                return null;
            }
            w wVar = this.f9555b.contains(bVar.a()) ? w.PUBLIC : null;
            Iterator<String> it2 = this.f9554a.iterator();
            do {
                if (!it2.hasNext()) {
                    break;
                }
                next = it2.next();
                if (parse.getHost().equals(next)) {
                    break;
                }
            } while (!host.endsWith(".".concat(String.valueOf(next))));
            wVar = w.PRIVATE;
            w wVar2 = wVar;
            if (wVar == null) {
                k.b bVar2 = this.e;
                wVar2 = wVar;
                if (bVar2 != null) {
                    wVar2 = wVar;
                    if (bVar2.a(str)) {
                        if (this.e.a(str, bVar.a())) {
                            return null;
                        }
                        wVar2 = w.PRIVATE;
                    }
                }
            }
            w a2 = z ? a(str, bVar) : b(str, bVar);
            return a2 != null ? a2 : wVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(k.b bVar) {
        this.e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(v.a aVar) {
        v vVar = this.f9556c;
        if (vVar != null) {
            vVar.a(aVar);
        }
    }

    final w b(String str, b bVar) {
        w a2;
        synchronized (this) {
            a2 = a(str, bVar, false);
        }
        return a2;
    }
}
