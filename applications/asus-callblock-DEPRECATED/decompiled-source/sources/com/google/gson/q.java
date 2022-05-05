package com.google.gson;

import com.google.gson.a.j;
import com.google.gson.c.a;
import com.google.gson.c.b;
import com.google.gson.c.d;
import java.io.IOException;
import java.io.Reader;
/* loaded from: classes-dex2jar.jar:com/google/gson/q.class */
public final class q {
    private static l a(a aVar) {
        boolean z = aVar.f4535b;
        z = true;
        try {
            try {
                return j.a(aVar);
            } catch (OutOfMemoryError e) {
                throw new p("Failed parsing JSON source: " + aVar + " to Json", e);
            } catch (StackOverflowError e2) {
                throw new p("Failed parsing JSON source: " + aVar + " to Json", e2);
            }
        } finally {
            aVar.f4535b = z;
        }
    }

    public static l a(Reader reader) {
        try {
            a aVar = new a(reader);
            l a2 = a(aVar);
            if ((a2 instanceof n) || aVar.f() == b.END_DOCUMENT) {
                return a2;
            }
            throw new u("Did not consume the entire document.");
        } catch (d e) {
            throw new u(e);
        } catch (IOException e2) {
            throw new m(e2);
        } catch (NumberFormatException e3) {
            throw new u(e3);
        }
    }
}
