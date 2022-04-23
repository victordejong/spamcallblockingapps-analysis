package a.a.c;

import a.a.b.b;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:a/a/c/a.class */
public final class a implements e {
    @Override // a.a.c.e
    public final String a(String str, b bVar, a.a.b.a aVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("OAuth ");
        if (aVar.containsKey("realm")) {
            sb.append(aVar.a("realm"));
            sb.append(", ");
        }
        a.a.b.a a2 = aVar.a();
        a2.a("oauth_signature", str, true);
        Iterator<String> it = a2.keySet().iterator();
        while (it.hasNext()) {
            sb.append(a2.a(it.next()));
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        String sb2 = sb.toString();
        a.a.b.a("Auth Header", sb2);
        bVar.a("Authorization", sb2);
        return sb2;
    }
}
