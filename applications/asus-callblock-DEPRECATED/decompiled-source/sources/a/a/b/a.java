package a.a.b;

import a.a.b;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:a/a/b/a.class */
public final class a implements Serializable, Map<String, SortedSet<String>> {

    /* renamed from: a  reason: collision with root package name */
    private TreeMap<String, SortedSet<String>> f4a = new TreeMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public SortedSet<String> put(String str, SortedSet<String> sortedSet) {
        return this.f4a.put(str, sortedSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public SortedSet<String> get(Object obj) {
        return this.f4a.get(obj);
    }

    public final a a() {
        a aVar = new a();
        for (Map.Entry<String, SortedSet<String>> entry : entrySet()) {
            String key = entry.getKey();
            if (key.startsWith("oauth_") || key.startsWith("x_oauth_")) {
                aVar.put(key, entry.getValue());
            }
        }
        return aVar;
    }

    public final String a(Object obj) {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        SortedSet<String> sortedSet = this.f4a.get(obj);
        if (sortedSet == null) {
            sb = obj + "=";
        } else {
            Iterator<String> it = sortedSet.iterator();
            while (it.hasNext()) {
                sb2.append(obj + "=" + it.next());
                if (it.hasNext()) {
                    sb2.append("&");
                }
            }
            sb = sb2.toString();
        }
        return sb;
    }

    public final String a(String str) {
        SortedSet<String> sortedSet = this.f4a.get(str);
        String first = (sortedSet == null || sortedSet.isEmpty()) ? null : sortedSet.first();
        return first == null ? null : str + "=\"" + first + "\"";
    }

    public final String a(String str, String str2, boolean z) {
        String str3 = str;
        if (z) {
            str3 = b.a(str);
        }
        SortedSet<String> sortedSet = this.f4a.get(str3);
        SortedSet<String> sortedSet2 = sortedSet;
        if (sortedSet == null) {
            sortedSet2 = new TreeSet<>();
            this.f4a.put(str3, sortedSet2);
        }
        String str4 = str2;
        if (str2 != null) {
            str4 = str2;
            if (z) {
                str4 = b.a(str2);
            }
            sortedSet2.add(str4);
        }
        return str4;
    }

    public final void a(Map<? extends String, ? extends SortedSet<String>> map, boolean z) {
        if (z) {
            for (String str : map.keySet()) {
                remove(str);
                for (String str2 : (SortedSet) map.get(str)) {
                    a(str, str2, true);
                }
                get(str);
            }
            return;
        }
        this.f4a.putAll(map);
    }

    /* renamed from: b */
    public final SortedSet<String> remove(Object obj) {
        return this.f4a.remove(obj);
    }

    @Override // java.util.Map
    public final void clear() {
        this.f4a.clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.f4a.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        boolean z;
        Iterator<SortedSet<String>> it = this.f4a.values().iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().contains(obj)) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        return z;
    }

    @Override // java.util.Map
    public final Set<Map.Entry<String, SortedSet<String>>> entrySet() {
        return this.f4a.entrySet();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f4a.isEmpty();
    }

    @Override // java.util.Map
    public final Set<String> keySet() {
        return this.f4a.keySet();
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends String, ? extends SortedSet<String>> map) {
        this.f4a.putAll(map);
    }

    @Override // java.util.Map
    public final int size() {
        int i = 0;
        for (String str : this.f4a.keySet()) {
            i = this.f4a.get(str).size() + i;
        }
        return i;
    }

    @Override // java.util.Map
    public final Collection<SortedSet<String>> values() {
        return this.f4a.values();
    }
}
