package p193e.p1681q.p1682a.p1686c;

import com.razorpay.AnalyticsConstants;
import e.q.a.d.c;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
/* renamed from: e.q.a.c.a */
/* loaded from: classes16-dex2jar.jar:e/q/a/c/a.class */
public abstract class AbstractC25177a implements Comparator<c> {

    /* renamed from: a */
    public static HashMap<String, Integer> f70435a;

    /* renamed from: b */
    public static HashMap<Integer, List<String>> f70436b;

    /* renamed from: e.q.a.c.a$a */
    /* loaded from: classes16-dex2jar.jar:e/q/a/c/a$a.class */
    public class C25178a extends ArrayList<String> {
        public C25178a() {
            add("acc");
        }
    }

    /* renamed from: e.q.a.c.a$b */
    /* loaded from: classes16-dex2jar.jar:e/q/a/c/a$b.class */
    public class C25179b extends ArrayList<String> {
        public C25179b() {
            add(AnalyticsConstants.CARD);
            add(AnalyticsConstants.WALLET);
        }
    }

    /* renamed from: e.q.a.c.a$c */
    /* loaded from: classes16-dex2jar.jar:e/q/a/c/a$c.class */
    public class C25180c extends ArrayList<String> {
        public C25180c() {
            add("creditcard");
            add("debitcard");
        }
    }

    static {
        HashMap<String, Integer> hashMap = new HashMap<>();
        f70435a = hashMap;
        hashMap.put("acc", 1);
        f70435a.put(AnalyticsConstants.CARD, 2);
        f70435a.put(AnalyticsConstants.WALLET, 2);
        f70435a.put("creditcard", 3);
        f70435a.put("debitcard", 3);
        HashMap<Integer, List<String>> hashMap2 = new HashMap<>();
        f70436b = hashMap2;
        hashMap2.put(1, new C25178a());
        f70436b.put(2, new C25179b());
        f70436b.put(3, new C25180c());
    }

    /* renamed from: a */
    public static int m4127a(String str) {
        if (f70435a.containsKey(str)) {
            return f70435a.get(str).intValue();
        }
        return 0;
    }
}
