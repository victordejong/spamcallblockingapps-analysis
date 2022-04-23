package org.jsoup.select;

import org.jsoup.a.c;
import org.jsoup.nodes.h;
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/Selector.class */
public final class Selector {

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/Selector$SelectorParseException.class */
    public static class SelectorParseException extends IllegalStateException {
        public SelectorParseException(String str, Object... objArr) {
            super(String.format(str, objArr));
        }
    }

    private Selector() {
    }

    public static c a(String str, h hVar) {
        c.a(str);
        return a(h.a(str), hVar);
    }

    public static c a(d dVar, h hVar) {
        c.a(dVar);
        c.a(hVar);
        return a.a(dVar, hVar);
    }
}
