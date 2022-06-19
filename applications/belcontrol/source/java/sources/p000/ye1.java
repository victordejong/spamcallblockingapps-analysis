package p000;

import java.util.HashMap;
import java.util.Map;
/* renamed from: ye1 */
/* loaded from: classes3-dex2jar.jar:ye1.class */
public class ye1 {

    /* renamed from: e */
    public static final Integer f8730e = Integer.MIN_VALUE;

    /* renamed from: f */
    public static final Double f8731f = Double.valueOf(Double.NaN);

    /* renamed from: a */
    public Integer f8732a;

    /* renamed from: b */
    public Double f8733b;

    /* renamed from: c */
    public Long f8734c = Long.valueOf(System.currentTimeMillis());

    /* renamed from: d */
    public ze1 f8735d;

    public ye1(ze1 ze1Var, Integer num, Double d) {
        this.f8735d = ze1Var;
        this.f8733b = d;
        this.f8732a = num;
    }

    /* renamed from: a */
    public Map<String, Object> m85a() {
        HashMap hashMap = new HashMap();
        hashMap.put("adVolume", this.f8733b);
        hashMap.put("playhead", this.f8732a);
        hashMap.put("aTimeStamp", this.f8734c);
        hashMap.put("type", this.f8735d.toString());
        return hashMap;
    }
}
