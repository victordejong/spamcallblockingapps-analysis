package p626l.p640y;

import java.io.Closeable;
import p626l.C14874a;
/* renamed from: l.y.c */
/* loaded from: classes3-dex2jar.jar:l/y/c.class */
public final class C15086c {
    /* renamed from: a */
    public static final void m447a(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                C14874a.m808a(th, th2);
            }
        }
    }
}
