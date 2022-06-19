package p114h5;

import android.util.Base64;
import android.util.JsonReader;
import com.google.android.gms.internal.ads.C1676a;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Objects;
import p103g5.AbstractC2878v;
import p103g5.C2812a;
import p103g5.C2833b;
import p103g5.C2838d;
import p103g5.C2842f;
import p103g5.C2845g;
import p103g5.C2848i;
import p103g5.C2860n;
import p103g5.C2866q;
import p103g5.C2874t;
import p103g5.C2876u;
import p103g5.C2904w;
import p221r5.AbstractC4208a;
import p242t5.C4403d;
import p242t5.C4404e;
import p303z2.C5051l;
import p303z2.C5054o;
/* renamed from: h5.a */
/* loaded from: classes-dex2jar.jar:h5/a.class */
public class C3009a {

    /* renamed from: a */
    public static final AbstractC4208a f10106a;

    /* renamed from: h5.a$a */
    /* loaded from: classes-dex2jar.jar:h5/a$a.class */
    public interface AbstractC3010a<T> {
        /* renamed from: b */
        T mo101b(JsonReader jsonReader) throws IOException;
    }

    static {
        C4404e c4404e = new C4404e();
        ((C2812a) C2812a.f9552a).m2969a(c4404e);
        c4404e.f13726d = true;
        f10106a = new C4403d(c4404e);
    }

    /* renamed from: a */
    public static AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a m2755a(JsonReader jsonReader) {
        C2866q.C2868b c2868b = new C2866q.C2868b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            Objects.requireNonNull(nextName);
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
                    c2868b.f9769d = Long.valueOf(jsonReader.nextLong());
                    break;
                case true:
                    String nextString = jsonReader.nextString();
                    Objects.requireNonNull(nextString, "Null symbol");
                    c2868b.f9767b = nextString;
                    break;
                case true:
                    c2868b.f9766a = Long.valueOf(jsonReader.nextLong());
                    break;
                case true:
                    c2868b.f9768c = jsonReader.nextString();
                    break;
                case true:
                    c2868b.f9770e = Integer.valueOf(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return c2868b.m2964a();
    }

    /* renamed from: b */
    public static <T> C2904w<T> m2754b(JsonReader jsonReader, AbstractC3010a<T> abstractC3010a) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(abstractC3010a.mo101b(jsonReader));
        }
        jsonReader.endArray();
        return new C2904w<>(arrayList);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:305:0x03e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:310:0x03b2 A[SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d m2753c(android.util.JsonReader r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1791
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p114h5.C3009a.m2753c(android.util.JsonReader):g5.v$d$d");
    }

    /* renamed from: d */
    public static AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b m2752d(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        Integer num = null;
        String str = null;
        C2904w c2904w = null;
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b abstractC2894b = null;
        String str2 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            Objects.requireNonNull(nextName);
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
                    c2904w = m2754b(jsonReader, C5051l.f15327c);
                    break;
                case true:
                    str2 = jsonReader.nextString();
                    break;
                case true:
                    str = jsonReader.nextString();
                    Objects.requireNonNull(str, "Null type");
                    break;
                case true:
                    abstractC2894b = m2752d(jsonReader);
                    break;
                case true:
                    num = Integer.valueOf(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        String str3 = str == null ? " type" : "";
        String str4 = str3;
        if (c2904w == null) {
            str4 = C1676a.m4789h(str3, " frames");
        }
        String str5 = str4;
        if (num == null) {
            str5 = C1676a.m4789h(str4, " overflowCount");
        }
        if (str5.isEmpty()) {
            return new C2860n(str, str2, c2904w, abstractC2894b, num.intValue(), null);
        }
        throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str5));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: e */
    public static AbstractC2878v m2751e(JsonReader jsonReader) throws IOException {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        Charset charset = AbstractC2878v.f9789a;
        C2833b.C2835b c2835b = new C2833b.C2835b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            Objects.requireNonNull(nextName);
            switch (nextName.hashCode()) {
                case -2118372775:
                    if (nextName.equals("ndkPayload")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case -1962630338:
                    if (nextName.equals("sdkVersion")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 344431858:
                    if (nextName.equals("gmpAppId")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1984987798:
                    if (nextName.equals("session")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    jsonReader.beginObject();
                    C2904w c2904w = null;
                    String str = null;
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        Objects.requireNonNull(nextName2);
                        if (nextName2.equals("files")) {
                            c2904w = m2754b(jsonReader, C5054o.f15345d);
                        } else if (!nextName2.equals("orgId")) {
                            jsonReader.skipValue();
                        } else {
                            str = jsonReader.nextString();
                        }
                    }
                    jsonReader.endObject();
                    String str2 = c2904w == null ? " files" : "";
                    if (!str2.isEmpty()) {
                        throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str2));
                    }
                    c2835b.f9675h = new C2838d(c2904w, str, null);
                    break;
                case true:
                    String nextString = jsonReader.nextString();
                    Objects.requireNonNull(nextString, "Null sdkVersion");
                    c2835b.f9668a = nextString;
                    break;
                case true:
                    String nextString2 = jsonReader.nextString();
                    Objects.requireNonNull(nextString2, "Null buildVersion");
                    c2835b.f9672e = nextString2;
                    break;
                case true:
                    String nextString3 = jsonReader.nextString();
                    Objects.requireNonNull(nextString3, "Null gmpAppId");
                    c2835b.f9669b = nextString3;
                    break;
                case true:
                    String nextString4 = jsonReader.nextString();
                    Objects.requireNonNull(nextString4, "Null installationUuid");
                    c2835b.f9671d = nextString4;
                    break;
                case true:
                    c2835b.f9670c = Integer.valueOf(jsonReader.nextInt());
                    break;
                case true:
                    String nextString5 = jsonReader.nextString();
                    Objects.requireNonNull(nextString5, "Null displayVersion");
                    c2835b.f9673f = nextString5;
                    break;
                case true:
                    C2842f.C2844b c2844b = new C2842f.C2844b();
                    c2844b.m2968b(false);
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        Objects.requireNonNull(nextName3);
                        switch (nextName3.hashCode()) {
                            case -2128794476:
                                if (nextName3.equals("startedAt")) {
                                    z2 = false;
                                    break;
                                }
                                z2 = true;
                                break;
                            case -1618432855:
                                if (nextName3.equals("identifier")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            case -1606742899:
                                if (nextName3.equals("endedAt")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            case -1335157162:
                                if (nextName3.equals("device")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            case -1291329255:
                                if (nextName3.equals("events")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            case 3556:
                                if (nextName3.equals("os")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            case 96801:
                                if (nextName3.equals("app")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            case 3599307:
                                if (nextName3.equals("user")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            case 286956243:
                                if (nextName3.equals("generator")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            case 1025385094:
                                if (nextName3.equals("crashed")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            case 2047016109:
                                if (nextName3.equals("generatorType")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            default:
                                z2 = true;
                                break;
                        }
                        switch (z2) {
                            case false:
                                c2844b.f9695c = Long.valueOf(jsonReader.nextLong());
                                break;
                            case true:
                                c2844b.f9694b = new String(Base64.decode(jsonReader.nextString(), 2), AbstractC2878v.f9789a);
                                break;
                            case true:
                                c2844b.f9696d = Long.valueOf(jsonReader.nextLong());
                                break;
                            case true:
                                C2848i.C2850b c2850b = new C2848i.C2850b();
                                jsonReader.beginObject();
                                while (jsonReader.hasNext()) {
                                    String nextName4 = jsonReader.nextName();
                                    Objects.requireNonNull(nextName4);
                                    switch (nextName4.hashCode()) {
                                        case -1981332476:
                                            if (nextName4.equals("simulator")) {
                                                z3 = false;
                                                break;
                                            }
                                            z3 = true;
                                            break;
                                        case -1969347631:
                                            if (nextName4.equals("manufacturer")) {
                                                z3 = true;
                                                break;
                                            }
                                            z3 = true;
                                            break;
                                        case 112670:
                                            if (nextName4.equals("ram")) {
                                                z3 = true;
                                                break;
                                            }
                                            z3 = true;
                                            break;
                                        case 3002454:
                                            if (nextName4.equals("arch")) {
                                                z3 = true;
                                                break;
                                            }
                                            z3 = true;
                                            break;
                                        case 81784169:
                                            if (nextName4.equals("diskSpace")) {
                                                z3 = true;
                                                break;
                                            }
                                            z3 = true;
                                            break;
                                        case 94848180:
                                            if (nextName4.equals("cores")) {
                                                z3 = true;
                                                break;
                                            }
                                            z3 = true;
                                            break;
                                        case 104069929:
                                            if (nextName4.equals("model")) {
                                                z3 = true;
                                                break;
                                            }
                                            z3 = true;
                                            break;
                                        case 109757585:
                                            if (nextName4.equals("state")) {
                                                z3 = true;
                                                break;
                                            }
                                            z3 = true;
                                            break;
                                        case 2078953423:
                                            if (nextName4.equals("modelClass")) {
                                                z3 = true;
                                                break;
                                            }
                                            z3 = true;
                                            break;
                                        default:
                                            z3 = true;
                                            break;
                                    }
                                    switch (z3) {
                                        case false:
                                            c2850b.f9725f = Boolean.valueOf(jsonReader.nextBoolean());
                                            break;
                                        case true:
                                            String nextString6 = jsonReader.nextString();
                                            Objects.requireNonNull(nextString6, "Null manufacturer");
                                            c2850b.f9727h = nextString6;
                                            break;
                                        case true:
                                            c2850b.f9723d = Long.valueOf(jsonReader.nextLong());
                                            break;
                                        case true:
                                            c2850b.f9720a = Integer.valueOf(jsonReader.nextInt());
                                            break;
                                        case true:
                                            c2850b.f9724e = Long.valueOf(jsonReader.nextLong());
                                            break;
                                        case true:
                                            c2850b.f9722c = Integer.valueOf(jsonReader.nextInt());
                                            break;
                                        case true:
                                            String nextString7 = jsonReader.nextString();
                                            Objects.requireNonNull(nextString7, "Null model");
                                            c2850b.f9721b = nextString7;
                                            break;
                                        case true:
                                            c2850b.f9726g = Integer.valueOf(jsonReader.nextInt());
                                            break;
                                        case true:
                                            String nextString8 = jsonReader.nextString();
                                            Objects.requireNonNull(nextString8, "Null modelClass");
                                            c2850b.f9728i = nextString8;
                                            break;
                                        default:
                                            jsonReader.skipValue();
                                            break;
                                    }
                                }
                                jsonReader.endObject();
                                c2844b.f9701i = c2850b.m2967a();
                                break;
                            case true:
                                ArrayList arrayList = new ArrayList();
                                jsonReader.beginArray();
                                while (jsonReader.hasNext()) {
                                    arrayList.add(m2753c(jsonReader));
                                }
                                jsonReader.endArray();
                                c2844b.f9702j = new C2904w<>(arrayList);
                                break;
                            case true:
                                jsonReader.beginObject();
                                Integer num = null;
                                Boolean bool = null;
                                String str3 = null;
                                String str4 = null;
                                while (jsonReader.hasNext()) {
                                    String nextName5 = jsonReader.nextName();
                                    Objects.requireNonNull(nextName5);
                                    switch (nextName5.hashCode()) {
                                        case -911706486:
                                            if (nextName5.equals("buildVersion")) {
                                                z4 = false;
                                                break;
                                            }
                                            z4 = true;
                                            break;
                                        case -293026577:
                                            if (nextName5.equals("jailbroken")) {
                                                z4 = true;
                                                break;
                                            }
                                            z4 = true;
                                            break;
                                        case 351608024:
                                            if (nextName5.equals("version")) {
                                                z4 = true;
                                                break;
                                            }
                                            z4 = true;
                                            break;
                                        case 1874684019:
                                            if (nextName5.equals("platform")) {
                                                z4 = true;
                                                break;
                                            }
                                            z4 = true;
                                            break;
                                        default:
                                            z4 = true;
                                            break;
                                    }
                                    if (!z4) {
                                        str4 = jsonReader.nextString();
                                        Objects.requireNonNull(str4, "Null buildVersion");
                                    } else if (z4) {
                                        bool = Boolean.valueOf(jsonReader.nextBoolean());
                                    } else if (z4) {
                                        str3 = jsonReader.nextString();
                                        Objects.requireNonNull(str3, "Null version");
                                    } else if (!z4) {
                                        jsonReader.skipValue();
                                    } else {
                                        num = Integer.valueOf(jsonReader.nextInt());
                                    }
                                }
                                jsonReader.endObject();
                                String str5 = num == null ? " platform" : "";
                                String str6 = str5;
                                if (str3 == null) {
                                    str6 = C1676a.m4789h(str5, " version");
                                }
                                String str7 = str6;
                                if (str4 == null) {
                                    str7 = C1676a.m4789h(str6, " buildVersion");
                                }
                                String str8 = str7;
                                if (bool == null) {
                                    str8 = C1676a.m4789h(str7, " jailbroken");
                                }
                                if (!str8.isEmpty()) {
                                    throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str8));
                                }
                                c2844b.f9700h = new C2874t(num.intValue(), str3, str4, bool.booleanValue(), null);
                                break;
                            case true:
                                jsonReader.beginObject();
                                String str9 = null;
                                String str10 = null;
                                String str11 = null;
                                String str12 = null;
                                String str13 = null;
                                String str14 = null;
                                while (jsonReader.hasNext()) {
                                    String nextName6 = jsonReader.nextName();
                                    Objects.requireNonNull(nextName6);
                                    switch (nextName6.hashCode()) {
                                        case -1618432855:
                                            if (nextName6.equals("identifier")) {
                                                z5 = false;
                                                break;
                                            }
                                            z5 = true;
                                            break;
                                        case -519438642:
                                            if (nextName6.equals("developmentPlatform")) {
                                                z5 = true;
                                                break;
                                            }
                                            z5 = true;
                                            break;
                                        case 213652010:
                                            if (nextName6.equals("developmentPlatformVersion")) {
                                                z5 = true;
                                                break;
                                            }
                                            z5 = true;
                                            break;
                                        case 351608024:
                                            if (nextName6.equals("version")) {
                                                z5 = true;
                                                break;
                                            }
                                            z5 = true;
                                            break;
                                        case 719853845:
                                            if (nextName6.equals("installationUuid")) {
                                                z5 = true;
                                                break;
                                            }
                                            z5 = true;
                                            break;
                                        case 1975623094:
                                            if (nextName6.equals("displayVersion")) {
                                                z5 = true;
                                                break;
                                            }
                                            z5 = true;
                                            break;
                                        default:
                                            z5 = true;
                                            break;
                                    }
                                    if (!z5) {
                                        str9 = jsonReader.nextString();
                                        Objects.requireNonNull(str9, "Null identifier");
                                    } else if (z5) {
                                        str12 = jsonReader.nextString();
                                    } else if (z5) {
                                        str13 = jsonReader.nextString();
                                    } else if (z5) {
                                        str14 = jsonReader.nextString();
                                        Objects.requireNonNull(str14, "Null version");
                                    } else if (z5) {
                                        str11 = jsonReader.nextString();
                                    } else if (!z5) {
                                        jsonReader.skipValue();
                                    } else {
                                        str10 = jsonReader.nextString();
                                    }
                                }
                                jsonReader.endObject();
                                String str15 = str9 == null ? " identifier" : "";
                                String str16 = str15;
                                if (str14 == null) {
                                    str16 = C1676a.m4789h(str15, " version");
                                }
                                if (!str16.isEmpty()) {
                                    throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str16));
                                }
                                c2844b.f9698f = new C2845g(str9, str14, str10, null, str11, str12, str13, null);
                                break;
                            case true:
                                jsonReader.beginObject();
                                String str17 = null;
                                while (jsonReader.hasNext()) {
                                    String nextName7 = jsonReader.nextName();
                                    Objects.requireNonNull(nextName7);
                                    if (!nextName7.equals("identifier")) {
                                        jsonReader.skipValue();
                                    } else {
                                        str17 = jsonReader.nextString();
                                        Objects.requireNonNull(str17, "Null identifier");
                                    }
                                }
                                jsonReader.endObject();
                                String str18 = str17 == null ? " identifier" : "";
                                if (!str18.isEmpty()) {
                                    throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str18));
                                }
                                c2844b.f9699g = new C2876u(str17, null);
                                break;
                            case true:
                                String nextString9 = jsonReader.nextString();
                                Objects.requireNonNull(nextString9, "Null generator");
                                c2844b.f9693a = nextString9;
                                break;
                            case true:
                                c2844b.m2968b(jsonReader.nextBoolean());
                                break;
                            case true:
                                c2844b.f9703k = Integer.valueOf(jsonReader.nextInt());
                                break;
                            default:
                                jsonReader.skipValue();
                                break;
                        }
                    }
                    jsonReader.endObject();
                    c2835b.f9674g = c2844b.mo2925a();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return c2835b.mo2952a();
    }

    /* renamed from: f */
    public AbstractC2878v m2750f(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            AbstractC2878v m2751e = m2751e(jsonReader);
            jsonReader.close();
            return m2751e;
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: g */
    public String m2749g(AbstractC2878v abstractC2878v) {
        C4403d c4403d = (C4403d) f10106a;
        Objects.requireNonNull(c4403d);
        StringWriter stringWriter = new StringWriter();
        try {
            c4403d.m966a(abstractC2878v, stringWriter);
        } catch (IOException e) {
        }
        return stringWriter.toString();
    }
}
