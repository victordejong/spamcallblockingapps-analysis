package com.google.a.c;

import java.io.Closeable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/a/c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Logger f3737a = Logger.getLogger(a.class.getName());

    private a() {
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                try {
                    f3737a.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e);
                } catch (IOException e2) {
                    f3737a.log(Level.SEVERE, "IOException should not have been thrown.", (Throwable) e2);
                }
            }
        }
    }
}
