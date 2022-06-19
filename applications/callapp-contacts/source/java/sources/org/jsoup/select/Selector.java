package org.jsoup.select;

import org.jsoup.nodes.C20911h;
import org.jsoup.p590a.C20779c;
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

    /* renamed from: a */
    public static C20933c m204a(String str, C20911h c20911h) {
        C20779c.m505a(str);
        return m203a(C20976h.m187a(str), c20911h);
    }

    /* renamed from: a */
    public static C20933c m203a(AbstractC20934d abstractC20934d, C20911h c20911h) {
        C20779c.m507a(abstractC20934d);
        C20779c.m507a(c20911h);
        return C20927a.m202a(abstractC20934d, c20911h);
    }
}
