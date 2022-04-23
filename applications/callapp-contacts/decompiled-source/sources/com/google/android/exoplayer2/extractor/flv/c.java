package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.extractor.g;
import com.google.android.exoplayer2.util.u;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/c.class */
final class c extends TagPayloadReader {

    /* renamed from: a  reason: collision with root package name */
    long f21099a = -9223372036854775807L;

    /* renamed from: b  reason: collision with root package name */
    long[] f21100b = new long[0];

    /* renamed from: c  reason: collision with root package name */
    long[] f21101c = new long[0];

    public c() {
        super(new g());
    }

    private static Object a(u uVar, int i) {
        if (i == 0) {
            return c(uVar);
        }
        if (i == 1) {
            return b(uVar);
        }
        if (i == 2) {
            return d(uVar);
        }
        if (i == 3) {
            return f(uVar);
        }
        if (i == 8) {
            return g(uVar);
        }
        if (i == 10) {
            return e(uVar);
        }
        if (i != 11) {
            return null;
        }
        return h(uVar);
    }

    private static Boolean b(u uVar) {
        boolean z = true;
        if (uVar.c() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    private static Double c(u uVar) {
        return Double.valueOf(Double.longBitsToDouble(uVar.l()));
    }

    private static String d(u uVar) {
        int d2 = uVar.d();
        int i = uVar.f22336b;
        uVar.e(d2);
        return new String(uVar.f22335a, i, d2);
    }

    private static ArrayList<Object> e(u uVar) {
        int o = uVar.o();
        ArrayList<Object> arrayList = new ArrayList<>(o);
        for (int i = 0; i < o; i++) {
            Object a2 = a(uVar, uVar.c());
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return arrayList;
    }

    private static HashMap<String, Object> f(u uVar) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String d2 = d(uVar);
            int c2 = uVar.c();
            if (c2 == 9) {
                return hashMap;
            }
            Object a2 = a(uVar, c2);
            if (a2 != null) {
                hashMap.put(d2, a2);
            }
        }
    }

    private static HashMap<String, Object> g(u uVar) {
        int o = uVar.o();
        HashMap<String, Object> hashMap = new HashMap<>(o);
        for (int i = 0; i < o; i++) {
            String d2 = d(uVar);
            Object a2 = a(uVar, uVar.c());
            if (a2 != null) {
                hashMap.put(d2, a2);
            }
        }
        return hashMap;
    }

    private static Date h(u uVar) {
        Date date = new Date((long) c(uVar).doubleValue());
        uVar.e(2);
        return date;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected final boolean a(u uVar) {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected final boolean a(u uVar, long j) {
        if (!(uVar.c() == 2 && "onMetaData".equals(d(uVar)) && uVar.c() == 8)) {
            return false;
        }
        HashMap<String, Object> g = g(uVar);
        Object obj = g.get(VastIconXmlManager.DURATION);
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            if (doubleValue > 0.0d) {
                this.f21099a = (long) (doubleValue * 1000000.0d);
            }
        }
        Object obj2 = g.get("keyframes");
        if (!(obj2 instanceof Map)) {
            return false;
        }
        Map map = (Map) obj2;
        Object obj3 = map.get("filepositions");
        Object obj4 = map.get("times");
        if (!(obj3 instanceof List) || !(obj4 instanceof List)) {
            return false;
        }
        List list = (List) obj3;
        List list2 = (List) obj4;
        int size = list2.size();
        this.f21100b = new long[size];
        this.f21101c = new long[size];
        for (int i = 0; i < size; i++) {
            Object obj5 = list.get(i);
            Object obj6 = list2.get(i);
            if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                this.f21100b = new long[0];
                this.f21101c = new long[0];
                return false;
            }
            this.f21100b[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
            this.f21101c[i] = ((Double) obj5).longValue();
        }
        return false;
    }
}
