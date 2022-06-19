package com.google.firebase.crashlytics.p293d.p297h.p298x;

import android.util.Base64;
import android.util.JsonReader;
import com.allinone.callerid.bean.ShortCut;
import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import com.google.firebase.crashlytics.p293d.p297h.C8925a;
import com.google.firebase.crashlytics.p293d.p297h.C9043w;
import com.google.firebase.encoders.AbstractC9151a;
import com.google.firebase.encoders.p307h.C9162d;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
/* renamed from: com.google.firebase.crashlytics.d.h.x.h */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/x/h.class */
public class C9051h {

    /* renamed from: a */
    private static final AbstractC9151a f39202a = new C9162d().m1699g(C8925a.f38912a).m1698h(true).m1700f();

    /* renamed from: com.google.firebase.crashlytics.d.h.x.h$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/x/h$a.class */
    public interface AbstractC9052a<T> {
        /* renamed from: a */
        T mo2046a(JsonReader jsonReader);
    }

    /* renamed from: A */
    private static AbstractC9004v m2077A(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9005a m2309b = AbstractC9004v.m2309b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -2118372775:
                    if (nextName.equals("ndkPayload")) {
                        z = false;
                        break;
                    }
                    break;
                case -1962630338:
                    if (nextName.equals("sdkVersion")) {
                        z = true;
                        break;
                    }
                    break;
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        z = true;
                        break;
                    }
                    break;
                case 344431858:
                    if (nextName.equals("gmpAppId")) {
                        z = true;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        z = true;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        z = true;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        z = true;
                        break;
                    }
                    break;
                case 1984987798:
                    if (nextName.equals("session")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2309b.mo2291f(m2048y(jsonReader));
                    break;
                case true:
                    m2309b.mo2289h(jsonReader.nextString());
                    break;
                case true:
                    m2309b.mo2295b(jsonReader.nextString());
                    break;
                case true:
                    m2309b.mo2293d(jsonReader.nextString());
                    break;
                case true:
                    m2309b.mo2292e(jsonReader.nextString());
                    break;
                case true:
                    m2309b.mo2290g(jsonReader.nextInt());
                    break;
                case true:
                    m2309b.mo2294c(jsonReader.nextString());
                    break;
                case true:
                    m2309b.mo2288i(m2076B(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2309b.mo2296a();
    }

    /* renamed from: B */
    private static AbstractC9004v.AbstractC9012d m2076B(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9016b m2269a = AbstractC9004v.AbstractC9012d.m2269a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -2128794476:
                    if (nextName.equals("startedAt")) {
                        z = false;
                        break;
                    }
                    break;
                case -1618432855:
                    if (nextName.equals("identifier")) {
                        z = true;
                        break;
                    }
                    break;
                case -1606742899:
                    if (nextName.equals("endedAt")) {
                        z = true;
                        break;
                    }
                    break;
                case -1335157162:
                    if (nextName.equals("device")) {
                        z = true;
                        break;
                    }
                    break;
                case -1291329255:
                    if (nextName.equals("events")) {
                        z = true;
                        break;
                    }
                    break;
                case 3556:
                    if (nextName.equals("os")) {
                        z = true;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        z = true;
                        break;
                    }
                    break;
                case 3599307:
                    if (nextName.equals("user")) {
                        z = true;
                        break;
                    }
                    break;
                case 286956243:
                    if (nextName.equals("generator")) {
                        z = true;
                        break;
                    }
                    break;
                case 1025385094:
                    if (nextName.equals("crashed")) {
                        z = true;
                        break;
                    }
                    break;
                case 2047016109:
                    if (nextName.equals("generatorType")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2269a.mo2226l(jsonReader.nextLong());
                    break;
                case true:
                    m2269a.m2228j(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case true:
                    m2269a.mo2233e(Long.valueOf(jsonReader.nextLong()));
                    break;
                case true:
                    m2269a.mo2234d(m2060m(jsonReader));
                    break;
                case true:
                    m2269a.mo2232f(m2062k(jsonReader, C9044a.m2084b()));
                    break;
                case true:
                    m2269a.mo2227k(m2047z(jsonReader));
                    break;
                case true:
                    m2269a.mo2236b(m2063j(jsonReader));
                    break;
                case true:
                    m2269a.mo2225m(m2075C(jsonReader));
                    break;
                case true:
                    m2269a.mo2231g(jsonReader.nextString());
                    break;
                case true:
                    m2269a.mo2235c(jsonReader.nextBoolean());
                    break;
                case true:
                    m2269a.mo2230h(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2269a.mo2237a();
    }

    /* renamed from: C */
    private static AbstractC9004v.AbstractC9012d.AbstractC9041f m2075C(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9041f.AbstractC9042a m2090a = AbstractC9004v.AbstractC9012d.AbstractC9041f.m2090a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("identifier")) {
                jsonReader.skipValue();
            } else {
                m2090a.mo2087b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return m2090a.mo2088a();
    }

    /* renamed from: j */
    private static AbstractC9004v.AbstractC9012d.AbstractC9013a m2063j(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a m2253a = AbstractC9004v.AbstractC9012d.AbstractC9013a.m2253a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1618432855:
                    if (nextName.equals("identifier")) {
                        z = false;
                        break;
                    }
                    break;
                case -519438642:
                    if (nextName.equals("developmentPlatform")) {
                        z = true;
                        break;
                    }
                    break;
                case 213652010:
                    if (nextName.equals("developmentPlatformVersion")) {
                        z = true;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        z = true;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        z = true;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2253a.mo2241e(jsonReader.nextString());
                    break;
                case true:
                    m2253a.mo2244b(jsonReader.nextString());
                    break;
                case true:
                    m2253a.mo2243c(jsonReader.nextString());
                    break;
                case true:
                    m2253a.mo2239g(jsonReader.nextString());
                    break;
                case true:
                    m2253a.mo2240f(jsonReader.nextString());
                    break;
                case true:
                    m2253a.mo2242d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2253a.mo2245a();
    }

    /* renamed from: k */
    private static <T> C9043w<T> m2062k(JsonReader jsonReader, AbstractC9052a<T> abstractC9052a) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(abstractC9052a.mo2046a(jsonReader));
        }
        jsonReader.endArray();
        return C9043w.m2086c(arrayList);
    }

    /* renamed from: l */
    public static AbstractC9004v.AbstractC9006b m2061l(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9006b.AbstractC9007a m2287a = AbstractC9004v.AbstractC9006b.m2287a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("key")) {
                m2287a.mo2283b(jsonReader.nextString());
            } else if (!nextName.equals("value")) {
                jsonReader.skipValue();
            } else {
                m2287a.mo2282c(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return m2287a.mo2284a();
    }

    /* renamed from: m */
    private static AbstractC9004v.AbstractC9012d.AbstractC9017c m2060m(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a m2224a = AbstractC9004v.AbstractC9012d.AbstractC9017c.m2224a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1981332476:
                    if (nextName.equals("simulator")) {
                        z = false;
                        break;
                    }
                    break;
                case -1969347631:
                    if (nextName.equals("manufacturer")) {
                        z = true;
                        break;
                    }
                    break;
                case 112670:
                    if (nextName.equals("ram")) {
                        z = true;
                        break;
                    }
                    break;
                case 3002454:
                    if (nextName.equals("arch")) {
                        z = true;
                        break;
                    }
                    break;
                case 81784169:
                    if (nextName.equals("diskSpace")) {
                        z = true;
                        break;
                    }
                    break;
                case 94848180:
                    if (nextName.equals("cores")) {
                        z = true;
                        break;
                    }
                    break;
                case 104069929:
                    if (nextName.equals("model")) {
                        z = true;
                        break;
                    }
                    break;
                case 109757585:
                    if (nextName.equals("state")) {
                        z = true;
                        break;
                    }
                    break;
                case 2078953423:
                    if (nextName.equals("modelClass")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2224a.mo2206i(jsonReader.nextBoolean());
                    break;
                case true:
                    m2224a.mo2210e(jsonReader.nextString());
                    break;
                case true:
                    m2224a.mo2207h(jsonReader.nextLong());
                    break;
                case true:
                    m2224a.mo2213b(jsonReader.nextInt());
                    break;
                case true:
                    m2224a.mo2211d(jsonReader.nextLong());
                    break;
                case true:
                    m2224a.mo2212c(jsonReader.nextInt());
                    break;
                case true:
                    m2224a.mo2209f(jsonReader.nextString());
                    break;
                case true:
                    m2224a.mo2205j(jsonReader.nextInt());
                    break;
                case true:
                    m2224a.mo2208g(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2224a.mo2214a();
    }

    /* renamed from: n */
    public static AbstractC9004v.AbstractC9012d.AbstractC9019d m2059n(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b m2204a = AbstractC9004v.AbstractC9012d.AbstractC9019d.m2204a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1335157162:
                    if (nextName.equals("device")) {
                        z = false;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        z = true;
                        break;
                    }
                    break;
                case 107332:
                    if (nextName.equals("log")) {
                        z = true;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        z = true;
                        break;
                    }
                    break;
                case 55126294:
                    if (nextName.equals("timestamp")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2204a.mo2122c(m2056q(jsonReader));
                    break;
                case true:
                    m2204a.mo2123b(m2058o(jsonReader));
                    break;
                case true:
                    m2204a.mo2121d(m2052u(jsonReader));
                    break;
                case true:
                    m2204a.mo2119f(jsonReader.nextString());
                    break;
                case true:
                    m2204a.mo2120e(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2204a.mo2124a();
    }

    /* renamed from: o */
    private static AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a m2058o(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9021a m2197a = AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.m2197a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1332194002:
                    if (nextName.equals("background")) {
                        z = false;
                        break;
                    }
                    break;
                case -1090974952:
                    if (nextName.equals("execution")) {
                        z = true;
                        break;
                    }
                    break;
                case 555169704:
                    if (nextName.equals("customAttributes")) {
                        z = true;
                        break;
                    }
                    break;
                case 928737948:
                    if (nextName.equals("uiOrientation")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2197a.mo2190b(Boolean.valueOf(jsonReader.nextBoolean()));
                    break;
                case true:
                    m2197a.mo2188d(m2055r(jsonReader));
                    break;
                case true:
                    m2197a.mo2189c(m2062k(jsonReader, C9046c.m2082b()));
                    break;
                case true:
                    m2197a.mo2187e(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2197a.mo2191a();
    }

    /* renamed from: p */
    public static AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a m2057p(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.AbstractC9024a m2181a = AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.m2181a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case 3373707:
                    if (nextName.equals(ShortCut.NAME)) {
                        z = false;
                        break;
                    }
                    break;
                case 3530753:
                    if (nextName.equals("size")) {
                        z = true;
                        break;
                    }
                    break;
                case 3601339:
                    if (nextName.equals("uuid")) {
                        z = true;
                        break;
                    }
                    break;
                case 1153765347:
                    if (nextName.equals("baseAddress")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2181a.mo2173c(jsonReader.nextString());
                    break;
                case true:
                    m2181a.mo2172d(jsonReader.nextLong());
                    break;
                case true:
                    m2181a.m2170f(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case true:
                    m2181a.mo2174b(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2181a.mo2175a();
    }

    /* renamed from: q */
    private static AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c m2056q(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a m2118a = AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.m2118a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1708606089:
                    if (nextName.equals("batteryLevel")) {
                        z = false;
                        break;
                    }
                    break;
                case -1455558134:
                    if (nextName.equals("batteryVelocity")) {
                        z = true;
                        break;
                    }
                    break;
                case -1439500848:
                    if (nextName.equals("orientation")) {
                        z = true;
                        break;
                    }
                    break;
                case 279795450:
                    if (nextName.equals("diskUsed")) {
                        z = true;
                        break;
                    }
                    break;
                case 976541947:
                    if (nextName.equals("ramUsed")) {
                        z = true;
                        break;
                    }
                    break;
                case 1516795582:
                    if (nextName.equals("proximityOn")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2118a.mo2110b(Double.valueOf(jsonReader.nextDouble()));
                    break;
                case true:
                    m2118a.mo2109c(jsonReader.nextInt());
                    break;
                case true:
                    m2118a.mo2107e(jsonReader.nextInt());
                    break;
                case true:
                    m2118a.mo2108d(jsonReader.nextLong());
                    break;
                case true:
                    m2118a.mo2105g(jsonReader.nextLong());
                    break;
                case true:
                    m2118a.mo2106f(jsonReader.nextBoolean());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2118a.mo2111a();
    }

    /* renamed from: r */
    private static AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b m2055r(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9025b m2186a = AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.m2186a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1337936983:
                    if (nextName.equals("threads")) {
                        z = false;
                        break;
                    }
                    break;
                case -902467928:
                    if (nextName.equals("signal")) {
                        z = true;
                        break;
                    }
                    break;
                case 937615455:
                    if (nextName.equals("binaries")) {
                        z = true;
                        break;
                    }
                    break;
                case 1481625679:
                    if (nextName.equals("exception")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2186a.mo2165e(m2062k(jsonReader, C9047d.m2081b()));
                    break;
                case true:
                    m2186a.mo2166d(m2051v(jsonReader));
                    break;
                case true:
                    m2186a.mo2168b(m2062k(jsonReader, C9048e.m2080b()));
                    break;
                case true:
                    m2186a.mo2167c(m2054s(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2186a.mo2169a();
    }

    /* renamed from: s */
    private static AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c m2054s(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a m2164a = AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.m2164a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        z = false;
                        break;
                    }
                    break;
                case -934964668:
                    if (nextName.equals("reason")) {
                        z = true;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        z = true;
                        break;
                    }
                    break;
                case 91997906:
                    if (nextName.equals("causedBy")) {
                        z = true;
                        break;
                    }
                    break;
                case 581754413:
                    if (nextName.equals("overflowCount")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2164a.mo2156c(m2062k(jsonReader, C9049f.m2079b()));
                    break;
                case true:
                    m2164a.mo2154e(jsonReader.nextString());
                    break;
                case true:
                    m2164a.mo2153f(jsonReader.nextString());
                    break;
                case true:
                    m2164a.mo2157b(m2054s(jsonReader));
                    break;
                case true:
                    m2164a.mo2155d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2164a.mo2158a();
    }

    /* renamed from: t */
    public static AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b m2053t(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a m2136a = AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.m2136a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1019779949:
                    if (nextName.equals("offset")) {
                        z = false;
                        break;
                    }
                    break;
                case -887523944:
                    if (nextName.equals("symbol")) {
                        z = true;
                        break;
                    }
                    break;
                case 3571:
                    if (nextName.equals("pc")) {
                        z = true;
                        break;
                    }
                    break;
                case 3143036:
                    if (nextName.equals("file")) {
                        z = true;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2136a.mo2127d(jsonReader.nextLong());
                    break;
                case true:
                    m2136a.mo2125f(jsonReader.nextString());
                    break;
                case true:
                    m2136a.mo2126e(jsonReader.nextLong());
                    break;
                case true:
                    m2136a.mo2129b(jsonReader.nextString());
                    break;
                case true:
                    m2136a.mo2128c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2136a.mo2130a();
    }

    /* renamed from: u */
    private static AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d m2052u(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d.AbstractC9038a m2104a = AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d.m2104a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("content")) {
                jsonReader.skipValue();
            } else {
                m2104a.mo2101b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return m2104a.mo2102a();
    }

    /* renamed from: v */
    private static AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d m2051v(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d.AbstractC9029a m2152a = AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d.m2152a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1147692044:
                    if (nextName.equals("address")) {
                        z = false;
                        break;
                    }
                    break;
                case 3059181:
                    if (nextName.equals("code")) {
                        z = true;
                        break;
                    }
                    break;
                case 3373707:
                    if (nextName.equals(ShortCut.NAME)) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2152a.mo2147b(jsonReader.nextLong());
                    break;
                case true:
                    m2152a.mo2146c(jsonReader.nextString());
                    break;
                case true:
                    m2152a.mo2145d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2152a.mo2148a();
    }

    /* renamed from: w */
    public static AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e m2050w(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9031a m2144a = AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.m2144a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        z = false;
                        break;
                    }
                    break;
                case 3373707:
                    if (nextName.equals(ShortCut.NAME)) {
                        z = true;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2144a.mo2139b(m2062k(jsonReader, C9050g.m2078b()));
                    break;
                case true:
                    m2144a.mo2137d(jsonReader.nextString());
                    break;
                case true:
                    m2144a.mo2138c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2144a.mo2140a();
    }

    /* renamed from: x */
    public static AbstractC9004v.AbstractC9008c.AbstractC9010b m2049x(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9008c.AbstractC9010b.AbstractC9011a m2275a = AbstractC9004v.AbstractC9008c.AbstractC9010b.m2275a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("filename")) {
                m2275a.mo2270c(jsonReader.nextString());
            } else if (!nextName.equals("contents")) {
                jsonReader.skipValue();
            } else {
                m2275a.mo2271b(Base64.decode(jsonReader.nextString(), 2));
            }
        }
        jsonReader.endObject();
        return m2275a.mo2272a();
    }

    /* renamed from: y */
    private static AbstractC9004v.AbstractC9008c m2048y(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9008c.AbstractC9009a m2281a = AbstractC9004v.AbstractC9008c.m2281a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("files")) {
                m2281a.mo2277b(m2062k(jsonReader, C9045b.m2083b()));
            } else if (!nextName.equals("orgId")) {
                jsonReader.skipValue();
            } else {
                m2281a.mo2276c(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return m2281a.mo2278a();
    }

    /* renamed from: z */
    private static AbstractC9004v.AbstractC9012d.AbstractC9039e m2047z(JsonReader jsonReader) {
        AbstractC9004v.AbstractC9012d.AbstractC9039e.AbstractC9040a m2100a = AbstractC9004v.AbstractC9012d.AbstractC9039e.m2100a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        z = false;
                        break;
                    }
                    break;
                case -293026577:
                    if (nextName.equals("jailbroken")) {
                        z = true;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        z = true;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    m2100a.mo2094b(jsonReader.nextString());
                    break;
                case true:
                    m2100a.mo2093c(jsonReader.nextBoolean());
                    break;
                case true:
                    m2100a.mo2091e(jsonReader.nextString());
                    break;
                case true:
                    m2100a.mo2092d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m2100a.mo2095a();
    }

    /* renamed from: D */
    public AbstractC9004v m2074D(String str) {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            AbstractC9004v m2077A = m2077A(jsonReader);
            jsonReader.close();
            return m2077A;
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: E */
    public String m2073E(AbstractC9004v abstractC9004v) {
        return f39202a.mo1691b(abstractC9004v);
    }

    /* renamed from: h */
    public AbstractC9004v.AbstractC9012d.AbstractC9019d m2065h(String str) {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            AbstractC9004v.AbstractC9012d.AbstractC9019d m2059n = m2059n(jsonReader);
            jsonReader.close();
            return m2059n;
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: i */
    public String m2064i(AbstractC9004v.AbstractC9012d.AbstractC9019d abstractC9019d) {
        return f39202a.mo1691b(abstractC9019d);
    }
}
