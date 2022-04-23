package com.b.a.a;

import com.googlecode.mp4parser.b;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/b/a/a/ag.class */
public class ag extends b {

    /* renamed from: a  reason: collision with root package name */
    private x f7084a;

    public ag() {
        super("trak");
    }

    public final ah a() {
        for (b bVar : b()) {
            if (bVar instanceof ah) {
                return (ah) bVar;
            }
        }
        return null;
    }

    @Override // com.googlecode.mp4parser.d
    public final void a(List<b> list) {
        super.a(list);
        this.f7084a = null;
    }

    public final x c() {
        q a2;
        x xVar = this.f7084a;
        if (xVar != null) {
            return xVar;
        }
        o d2 = d();
        if (d2 == null || (a2 = d2.a()) == null) {
            return null;
        }
        x a3 = a2.a();
        this.f7084a = a3;
        return a3;
    }

    public final o d() {
        for (b bVar : b()) {
            if (bVar instanceof o) {
                return (o) bVar;
            }
        }
        return null;
    }
}
