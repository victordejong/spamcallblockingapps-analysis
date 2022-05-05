package com.google.android.gms.tagmanager;

import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f4335a = new Object();

    /* renamed from: b  reason: collision with root package name */
    static final String[] f4336b = "gtm.lifetime".toString().split("\\.");
    private static final Pattern c = Pattern.compile("(\\d+)\\s*([smhd]?)");
    private final ConcurrentHashMap<b, Integer> d;
    private final Map<String, Object> e;
    private final ReentrantLock f;
    private final LinkedList<Map<String, Object>> g;
    private final AbstractC0131c h;
    private final CountDownLatch i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f4338a;

        /* renamed from: b  reason: collision with root package name */
        public final Object f4339b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(String str, Object obj) {
            this.f4338a = str;
            this.f4339b = obj;
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (!(obj instanceof a)) {
                z = false;
            } else {
                a aVar = (a) obj;
                z = false;
                if (this.f4338a.equals(aVar.f4338a)) {
                    z = false;
                    if (this.f4339b.equals(aVar.f4339b)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Integer[]{Integer.valueOf(this.f4338a.hashCode()), Integer.valueOf(this.f4339b.hashCode())});
        }

        public final String toString() {
            String str = this.f4338a;
            String valueOf = String.valueOf(this.f4339b.toString());
            return new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(valueOf).length()).append("Key: ").append(str).append(" value: ").append(valueOf).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/c$b.class */
    public interface b {
        void a(Map<String, Object> map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.tagmanager.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/c$c.class */
    public interface AbstractC0131c {

        /* renamed from: com.google.android.gms.tagmanager.c$c$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/c$c$a.class */
        public interface a {
            void a(List<a> list);
        }

        void a(a aVar);

        void a(String str);

        void a(List<a> list, long j);
    }

    c() {
        this(new AbstractC0131c() { // from class: com.google.android.gms.tagmanager.c.1
            @Override // com.google.android.gms.tagmanager.c.AbstractC0131c
            public final void a(AbstractC0131c.a aVar) {
                aVar.a(new ArrayList());
            }

            @Override // com.google.android.gms.tagmanager.c.AbstractC0131c
            public final void a(String str) {
            }

            @Override // com.google.android.gms.tagmanager.c.AbstractC0131c
            public final void a(List<a> list, long j) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(AbstractC0131c cVar) {
        this.h = cVar;
        this.d = new ConcurrentHashMap<>();
        this.e = new HashMap();
        this.f = new ReentrantLock();
        this.g = new LinkedList<>();
        this.i = new CountDownLatch(1);
        this.h.a(new AbstractC0131c.a() { // from class: com.google.android.gms.tagmanager.c.2
            @Override // com.google.android.gms.tagmanager.c.AbstractC0131c.a
            public final void a(List<a> list) {
                for (a aVar : list) {
                    c.this.b(c.a(aVar.f4338a, aVar.f4339b));
                }
                c.this.i.countDown();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Object> a(String str, Object obj) {
        HashMap hashMap = new HashMap();
        String[] split = str.toString().split("\\.");
        int i = 0;
        HashMap hashMap2 = hashMap;
        while (i < split.length - 1) {
            HashMap hashMap3 = new HashMap();
            hashMap2.put(split[i], hashMap3);
            i++;
            hashMap2 = hashMap3;
        }
        hashMap2.put(split[split.length - 1], obj);
        return hashMap;
    }

    public static Map<String, Object> a(Object... objArr) {
        HashMap hashMap = new HashMap();
        for (int i = 0; i < 2; i += 2) {
            if (!(objArr[0] instanceof String)) {
                String valueOf = String.valueOf(objArr[0]);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 21).append("key is not a string: ").append(valueOf).toString());
            }
            hashMap.put((String) objArr[0], objArr[1]);
        }
        return hashMap;
    }

    private void a(List<Object> list, List<Object> list2) {
        while (list2.size() < list.size()) {
            list2.add(null);
        }
        for (int i = 0; i < list.size(); i++) {
            Object obj = list.get(i);
            if (obj instanceof List) {
                if (!(list2.get(i) instanceof List)) {
                    list2.set(i, new ArrayList());
                }
                a((List) obj, (List) list2.get(i));
            } else if (obj instanceof Map) {
                if (!(list2.get(i) instanceof Map)) {
                    list2.set(i, new HashMap());
                }
                a((Map) obj, (Map) list2.get(i));
            } else if (obj != f4335a) {
                list2.set(i, obj);
            }
        }
    }

    private void a(Map<String, Object> map, String str, Collection<a> collection) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String str2 = str.length() == 0 ? BuildConfig.FLAVOR : ".";
            String key = entry.getKey();
            String sb = new StringBuilder(String.valueOf(str).length() + 0 + String.valueOf(str2).length() + String.valueOf(key).length()).append(str).append(str2).append(key).toString();
            if (entry.getValue() instanceof Map) {
                a((Map) entry.getValue(), sb, collection);
            } else if (!sb.equals("gtm.lifetime")) {
                collection.add(new a(sb, entry.getValue()));
            }
        }
    }

    private void a(Map<String, Object> map, Map<String, Object> map2) {
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj instanceof List) {
                if (!(map2.get(str) instanceof List)) {
                    map2.put(str, new ArrayList());
                }
                a((List) obj, (List) map2.get(str));
            } else if (obj instanceof Map) {
                if (!(map2.get(str) instanceof Map)) {
                    map2.put(str, new HashMap());
                }
                a((Map) obj, (Map) map2.get(str));
            } else {
                map2.put(str, obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Map<String, Object> map) {
        this.f.lock();
        try {
            this.g.offer(map);
            if (this.f.getHoldCount() == 1) {
                int i = 0;
                do {
                    Map<String, Object> poll = this.g.poll();
                    if (poll != null) {
                        synchronized (this.e) {
                            for (String str : poll.keySet()) {
                                a(a(str, poll.get(str)), this.e);
                            }
                        }
                        for (b bVar : this.d.keySet()) {
                            bVar.a(poll);
                        }
                        i++;
                    }
                } while (i <= 500);
                this.g.clear();
                throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
            }
            Object c2 = c(map);
            Long c3 = c2 == null ? null : c(c2.toString());
            if (c3 != null) {
                ArrayList arrayList = new ArrayList();
                a(map, BuildConfig.FLAVOR, arrayList);
                arrayList.remove("gtm.lifetime");
                this.h.a(arrayList, c3.longValue());
            }
        } finally {
            this.f.unlock();
        }
    }

    private static Long c(String str) {
        long j;
        Long valueOf;
        Matcher matcher = c.matcher(str);
        if (matcher.matches()) {
            try {
                j = Long.parseLong(matcher.group(1));
            } catch (NumberFormatException e) {
                String valueOf2 = String.valueOf(str);
                an.b(valueOf2.length() != 0 ? "illegal number in _lifetime value: ".concat(valueOf2) : new String("illegal number in _lifetime value: "));
                j = 0;
            }
            if (j > 0) {
                String group = matcher.group(2);
                if (group.length() != 0) {
                    switch (group.charAt(0)) {
                        case 'd':
                            valueOf = Long.valueOf(j * 1000 * 60 * 60 * 24);
                            break;
                        case 'h':
                            valueOf = Long.valueOf(j * 1000 * 60 * 60);
                            break;
                        case 'm':
                            valueOf = Long.valueOf(j * 1000 * 60);
                            break;
                        case 's':
                            valueOf = Long.valueOf(j * 1000);
                            break;
                        default:
                            String valueOf3 = String.valueOf(str);
                            an.b(valueOf3.length() != 0 ? "unknown units in _lifetime: ".concat(valueOf3) : new String("unknown units in _lifetime: "));
                            valueOf = null;
                            break;
                    }
                } else {
                    valueOf = Long.valueOf(j);
                }
            } else {
                String valueOf4 = String.valueOf(str);
                an.c(valueOf4.length() != 0 ? "non-positive _lifetime: ".concat(valueOf4) : new String("non-positive _lifetime: "));
                valueOf = null;
            }
        } else {
            String valueOf5 = String.valueOf(str);
            an.c(valueOf5.length() != 0 ? "unknown _lifetime: ".concat(valueOf5) : new String("unknown _lifetime: "));
            valueOf = null;
        }
        return valueOf;
    }

    private static Object c(Map<String, Object> map) {
        Object obj;
        String[] strArr = f4336b;
        int length = strArr.length;
        int i = 0;
        Map<String, Object> map2 = map;
        while (true) {
            obj = map2;
            if (i >= length) {
                break;
            }
            String str = strArr[i];
            if (!(map2 instanceof Map)) {
                obj = null;
                break;
            }
            i++;
            map2 = map2.get(str);
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(b bVar) {
        this.d.put(bVar, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        a(a(str, (Object) null));
        this.h.a(str);
    }

    public final void a(Map<String, Object> map) {
        try {
            this.i.await();
        } catch (InterruptedException e) {
            an.b("DataLayer.push: unexpected InterruptedException");
        }
        b(map);
    }

    public final Object b(String str) {
        Object obj;
        synchronized (this.e) {
            obj = this.e;
            String[] split = str.split("\\.");
            int length = split.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                String str2 = split[i];
                if (!(obj instanceof Map)) {
                    obj = null;
                    break;
                }
                obj = ((Map) obj).get(str2);
                if (obj == null) {
                    obj = null;
                    break;
                }
                i++;
            }
        }
        return obj;
    }

    public final String toString() {
        String sb;
        synchronized (this.e) {
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry<String, Object> entry : this.e.entrySet()) {
                sb2.append(String.format("{\n\tKey: %s\n\tValue: %s\n}\n", entry.getKey(), entry.getValue()));
            }
            sb = sb2.toString();
        }
        return sb;
    }
}
