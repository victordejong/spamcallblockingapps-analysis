package io.a;

import io.a.a;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/a/d.class */
public final class d extends a.g {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f36176b = Logger.getLogger(d.class.getName());

    /* renamed from: a  reason: collision with root package name */
    static final ThreadLocal<a> f36175a = new ThreadLocal<>();

    @Override // io.a.a.g
    public final a a() {
        a aVar = f36175a.get();
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = a.f36149b;
        }
        return aVar2;
    }

    @Override // io.a.a.g
    public final a a(a aVar) {
        a a2 = a();
        f36175a.set(aVar);
        return a2;
    }

    @Override // io.a.a.g
    public final void a(a aVar, a aVar2) {
        if (a() != aVar) {
            f36176b.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        if (aVar2 != a.f36149b) {
            f36175a.set(aVar2);
        } else {
            f36175a.set(null);
        }
    }
}
