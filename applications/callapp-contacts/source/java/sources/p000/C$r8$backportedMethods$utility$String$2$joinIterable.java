package p000;

import java.util.Iterator;
import java.util.Objects;
/* renamed from: $r8$backportedMethods$utility$String$2$joinIterable */
/* loaded from: classes-dex2jar.jar:$r8$backportedMethods$utility$String$2$joinIterable.class */
public /* synthetic */ class C$r8$backportedMethods$utility$String$2$joinIterable {
    public static /* synthetic */ String join(CharSequence charSequence, Iterable iterable) {
        Objects.requireNonNull(charSequence, "delimiter");
        StringBuilder sb = new StringBuilder();
        Iterator it2 = iterable.iterator();
        if (it2.hasNext()) {
            while (true) {
                sb.append((CharSequence) it2.next());
                if (!it2.hasNext()) {
                    break;
                }
                sb.append(charSequence);
            }
        }
        return sb.toString();
    }
}
