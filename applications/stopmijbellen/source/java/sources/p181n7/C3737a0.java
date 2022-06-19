package p181n7;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
/* renamed from: n7.a0 */
/* loaded from: classes2-dex2jar.jar:n7/a0.class */
public class C3737a0 extends LinkedHashMap<String, List<String>> implements Iterable<C3781v> {
    /* renamed from: a */
    public String m1829a(String str) {
        List<String> list = get(str);
        if (list == null || list.size() == 0) {
            return null;
        }
        return list.get(0);
    }

    /* renamed from: b */
    public List<String> mo1799b() {
        return new ArrayList();
    }

    @Override // java.lang.Iterable
    public Iterator<C3781v> iterator() {
        ArrayList arrayList = new ArrayList();
        for (String str : keySet()) {
            for (String str2 : (List) get(str)) {
                arrayList.add(new C3781v(str, str2));
            }
        }
        return arrayList.iterator();
    }
}
