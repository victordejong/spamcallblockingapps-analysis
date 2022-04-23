package p131c.p161d.p282e.p289l.p290d.p295j.p296w;

import android.util.Base64;
import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import com.squareup.picasso.Dispatcher;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import p131c.p161d.p282e.p289l.p290d.p295j.C5305a;
import p131c.p161d.p282e.p289l.p290d.p295j.C5384v;
import p131c.p161d.p282e.p310n.AbstractC5455a;
import p131c.p161d.p282e.p310n.p312h.C5466d;
/* renamed from: c.d.e.l.d.j.w.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/w/h.class */
public class C5392h {

    /* renamed from: a */
    public static final AbstractC5455a f18305a;

    /* renamed from: c.d.e.l.d.j.w.h$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/w/h$a.class */
    public interface AbstractC5393a<T> {
        /* renamed from: a */
        T mo23934a(JsonReader jsonReader) throws IOException;
    }

    static {
        C5466d dVar = new C5466d();
        dVar.m23750a(C5305a.f18103a);
        dVar.m23743a(true);
        f18305a = dVar.m23751a();
    }

    /* renamed from: a */
    public static <T> C5384v<T> m23964a(JsonReader jsonReader, AbstractC5393a<T> aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(aVar.mo23934a(jsonReader));
        }
        jsonReader.endArray();
        return C5384v.m23974a(arrayList);
    }

    /* renamed from: h */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7786a m23953h(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a h = CrashlyticsReport.AbstractC7785d.AbstractC7786a.m7573h();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1618432855:
                    if (nextName.equals("identifier")) {
                        c = 0;
                        break;
                    }
                    break;
                case -519438642:
                    if (nextName.equals("developmentPlatform")) {
                        c = 4;
                        break;
                    }
                    break;
                case 213652010:
                    if (nextName.equals("developmentPlatformVersion")) {
                        c = 5;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        c = 1;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                h.mo7568d(jsonReader.nextString());
            } else if (c == 1) {
                h.mo7566f(jsonReader.nextString());
            } else if (c == 2) {
                h.mo7569c(jsonReader.nextString());
            } else if (c == 3) {
                h.mo7567e(jsonReader.nextString());
            } else if (c == 4) {
                h.mo7571a(jsonReader.nextString());
            } else if (c != 5) {
                jsonReader.skipValue();
            } else {
                h.mo7570b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return h.mo7572a();
    }

    /* renamed from: i */
    public static CrashlyticsReport.AbstractC7779b m23952i(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7779b.AbstractC7780a c = CrashlyticsReport.AbstractC7779b.m7612c();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != 106079) {
                if (hashCode == 111972721 && nextName.equals("value")) {
                    c2 = 1;
                }
            } else if (nextName.equals("key")) {
                c2 = 0;
            }
            if (c2 == 0) {
                c.mo7610a(jsonReader.nextString());
            } else if (c2 != 1) {
                jsonReader.skipValue();
            } else {
                c.mo7609b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return c.mo7611a();
    }

    /* renamed from: j */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7790c m23951j(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a j = CrashlyticsReport.AbstractC7785d.AbstractC7790c.m7542j();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1981332476:
                    if (nextName.equals("simulator")) {
                        c = 5;
                        break;
                    }
                    break;
                case -1969347631:
                    if (nextName.equals("manufacturer")) {
                        c = 7;
                        break;
                    }
                    break;
                case 112670:
                    if (nextName.equals("ram")) {
                        c = 3;
                        break;
                    }
                    break;
                case 3002454:
                    if (nextName.equals("arch")) {
                        c = 0;
                        break;
                    }
                    break;
                case 81784169:
                    if (nextName.equals("diskSpace")) {
                        c = 4;
                        break;
                    }
                    break;
                case 94848180:
                    if (nextName.equals("cores")) {
                        c = 2;
                        break;
                    }
                    break;
                case 104069929:
                    if (nextName.equals("model")) {
                        c = 1;
                        break;
                    }
                    break;
                case 109757585:
                    if (nextName.equals(Dispatcher.NetworkBroadcastReceiver.EXTRA_AIRPLANE_STATE)) {
                        c = 6;
                        break;
                    }
                    break;
                case 2078953423:
                    if (nextName.equals("modelClass")) {
                        c = '\b';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    j.mo7540a(jsonReader.nextInt());
                    break;
                case 1:
                    j.mo7534b(jsonReader.nextString());
                    break;
                case 2:
                    j.mo7536b(jsonReader.nextInt());
                    break;
                case 3:
                    j.mo7535b(jsonReader.nextLong());
                    break;
                case 4:
                    j.mo7539a(jsonReader.nextLong());
                    break;
                case 5:
                    j.mo7537a(jsonReader.nextBoolean());
                    break;
                case 6:
                    j.mo7533c(jsonReader.nextInt());
                    break;
                case 7:
                    j.mo7538a(jsonReader.nextString());
                    break;
                case '\b':
                    j.mo7532c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return j.mo7541a();
    }

    /* renamed from: k */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7792d m23950k(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7807b g = CrashlyticsReport.AbstractC7785d.AbstractC7792d.m7525g();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1335157162:
                    if (nextName.equals("device")) {
                        c = 3;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        c = 2;
                        break;
                    }
                    break;
                case 107332:
                    if (nextName.equals("log")) {
                        c = 4;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        c = 1;
                        break;
                    }
                    break;
                case 55126294:
                    if (nextName.equals(AvidJSONUtil.KEY_TIMESTAMP)) {
                        c = 0;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                g.mo7450a(jsonReader.nextLong());
            } else if (c == 1) {
                g.mo7446a(jsonReader.nextString());
            } else if (c == 2) {
                g.mo7449a(m23949l(jsonReader));
            } else if (c == 3) {
                g.mo7448a(m23947n(jsonReader));
            } else if (c != 4) {
                jsonReader.skipValue();
            } else {
                g.mo7447a(m23943r(jsonReader));
            }
        }
        jsonReader.endObject();
        return g.mo7451a();
    }

    /* renamed from: l */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a m23949l(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7794a f = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.m7519f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1332194002:
                    if (nextName.equals("background")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1090974952:
                    if (nextName.equals("execution")) {
                        c = 2;
                        break;
                    }
                    break;
                case 555169704:
                    if (nextName.equals("customAttributes")) {
                        c = 3;
                        break;
                    }
                    break;
                case 928737948:
                    if (nextName.equals("uiOrientation")) {
                        c = 1;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                f.mo7514a(Boolean.valueOf(jsonReader.nextBoolean()));
            } else if (c == 1) {
                f.mo7517a(jsonReader.nextInt());
            } else if (c == 2) {
                f.mo7515a(m23946o(jsonReader));
            } else if (c != 3) {
                jsonReader.skipValue();
            } else {
                f.mo7516a(m23964a(jsonReader, C5387c.m23970a()));
            }
        }
        jsonReader.endObject();
        return f.mo7518a();
    }

    /* renamed from: m */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a m23948m(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.AbstractC7797a f = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.m7503f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case 3373707:
                    if (nextName.equals("name")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3530753:
                    if (nextName.equals("size")) {
                        c = 2;
                        break;
                    }
                    break;
                case 3601339:
                    if (nextName.equals("uuid")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1153765347:
                    if (nextName.equals("baseAddress")) {
                        c = 1;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                f.mo7500a(jsonReader.nextString());
            } else if (c == 1) {
                f.mo7501a(jsonReader.nextLong());
            } else if (c == 2) {
                f.mo7498b(jsonReader.nextLong());
            } else if (c != 3) {
                jsonReader.skipValue();
            } else {
                f.m7499a(Base64.decode(jsonReader.nextString(), 2));
            }
        }
        jsonReader.endObject();
        return f.mo7502a();
    }

    /* renamed from: n */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c m23947n(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a g = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.m7439g();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1708606089:
                    if (nextName.equals("batteryLevel")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1455558134:
                    if (nextName.equals("batteryVelocity")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1439500848:
                    if (nextName.equals("orientation")) {
                        c = 4;
                        break;
                    }
                    break;
                case 279795450:
                    if (nextName.equals("diskUsed")) {
                        c = 2;
                        break;
                    }
                    break;
                case 976541947:
                    if (nextName.equals("ramUsed")) {
                        c = 5;
                        break;
                    }
                    break;
                case 1516795582:
                    if (nextName.equals("proximityOn")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                g.mo7435a(Double.valueOf(jsonReader.nextDouble()));
            } else if (c == 1) {
                g.mo7437a(jsonReader.nextInt());
            } else if (c == 2) {
                g.mo7436a(jsonReader.nextLong());
            } else if (c == 3) {
                g.mo7434a(jsonReader.nextBoolean());
            } else if (c == 4) {
                g.mo7433b(jsonReader.nextInt());
            } else if (c != 5) {
                jsonReader.skipValue();
            } else {
                g.mo7432b(jsonReader.nextLong());
            }
        }
        jsonReader.endObject();
        return g.mo7438a();
    }

    /* renamed from: o */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b m23946o(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7798b e = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.m7509e();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1337936983:
                    if (nextName.equals("threads")) {
                        c = 0;
                        break;
                    }
                    break;
                case -902467928:
                    if (nextName.equals("signal")) {
                        c = 2;
                        break;
                    }
                    break;
                case 937615455:
                    if (nextName.equals("binaries")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1481625679:
                    if (nextName.equals("exception")) {
                        c = 1;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                e.mo7492b(m23964a(jsonReader, C5388d.m23969a()));
            } else if (c == 1) {
                e.mo7494a(m23945p(jsonReader));
            } else if (c == 2) {
                e.mo7493a(m23942s(jsonReader));
            } else if (c != 3) {
                jsonReader.skipValue();
            } else {
                e.mo7495a(m23964a(jsonReader, C5389e.m23968a()));
            }
        }
        jsonReader.endObject();
        return e.mo7496a();
    }

    /* renamed from: p */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c m23945p(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.AbstractC7800a f = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7799c.m7486f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        c = 1;
                        break;
                    }
                    break;
                case -934964668:
                    if (nextName.equals("reason")) {
                        c = 4;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        c = 3;
                        break;
                    }
                    break;
                case 91997906:
                    if (nextName.equals("causedBy")) {
                        c = 0;
                        break;
                    }
                    break;
                case 581754413:
                    if (nextName.equals("overflowCount")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                f.mo7482a(m23945p(jsonReader));
            } else if (c == 1) {
                f.mo7483a(m23964a(jsonReader, C5390f.m23967a()));
            } else if (c == 2) {
                f.mo7484a(jsonReader.nextInt());
            } else if (c == 3) {
                f.mo7480b(jsonReader.nextString());
            } else if (c != 4) {
                jsonReader.skipValue();
            } else {
                f.mo7481a(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return f.mo7485a();
    }

    /* renamed from: q */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b m23944q(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.AbstractC7806a f = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7805b.m7458f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1019779949:
                    if (nextName.equals(VastIconXmlManager.OFFSET)) {
                        c = 2;
                        break;
                    }
                    break;
                case -887523944:
                    if (nextName.equals("symbol")) {
                        c = 4;
                        break;
                    }
                    break;
                case 3571:
                    if (nextName.equals("pc")) {
                        c = 3;
                        break;
                    }
                    break;
                case 3143036:
                    if (nextName.equals("file")) {
                        c = 1;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                f.mo7456a(jsonReader.nextInt());
            } else if (c == 1) {
                f.mo7454a(jsonReader.nextString());
            } else if (c == 2) {
                f.mo7455a(jsonReader.nextLong());
            } else if (c == 3) {
                f.mo7453b(jsonReader.nextLong());
            } else if (c != 4) {
                jsonReader.skipValue();
            } else {
                f.mo7452b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return f.mo7457a();
    }

    /* renamed from: r */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d m23943r(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d.AbstractC7811a b = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7810d.m7430b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            if (nextName.hashCode() == 951530617 && nextName.equals("content")) {
                c = 0;
            }
            if (c != 0) {
                jsonReader.skipValue();
            } else {
                b.mo7428a(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return b.mo7429a();
    }

    /* renamed from: s */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d m23942s(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.AbstractC7802a d = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.m7476d();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != -1147692044) {
                if (hashCode != 3059181) {
                    if (hashCode == 3373707 && nextName.equals("name")) {
                        c = 0;
                    }
                } else if (nextName.equals("code")) {
                    c = 1;
                }
            } else if (nextName.equals("address")) {
                c = 2;
            }
            if (c == 0) {
                d.mo7472b(jsonReader.nextString());
            } else if (c == 1) {
                d.mo7473a(jsonReader.nextString());
            } else if (c != 2) {
                jsonReader.skipValue();
            } else {
                d.mo7474a(jsonReader.nextLong());
            }
        }
        jsonReader.endObject();
        return d.mo7475a();
    }

    /* renamed from: t */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e m23941t(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.AbstractC7804a d = CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7803e.m7468d();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != -1266514778) {
                if (hashCode != 3373707) {
                    if (hashCode == 2125650548 && nextName.equals("importance")) {
                        c = 0;
                    }
                } else if (nextName.equals("name")) {
                    c = 1;
                }
            } else if (nextName.equals("frames")) {
                c = 2;
            }
            if (c == 0) {
                d.mo7466a(jsonReader.nextInt());
            } else if (c == 1) {
                d.mo7464a(jsonReader.nextString());
            } else if (c != 2) {
                jsonReader.skipValue();
            } else {
                d.mo7465a(m23964a(jsonReader, C5391g.m23966a()));
            }
        }
        jsonReader.endObject();
        return d.mo7467a();
    }

    /* renamed from: u */
    public static CrashlyticsReport.AbstractC7781c.AbstractC7783b m23940u(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7781c.AbstractC7783b.AbstractC7784a c = CrashlyticsReport.AbstractC7781c.AbstractC7783b.m7600c();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != -734768633) {
                if (hashCode == -567321830 && nextName.equals("contents")) {
                    c2 = 1;
                }
            } else if (nextName.equals("filename")) {
                c2 = 0;
            }
            if (c2 == 0) {
                c.mo7598a(jsonReader.nextString());
            } else if (c2 != 1) {
                jsonReader.skipValue();
            } else {
                c.mo7597a(Base64.decode(jsonReader.nextString(), 2));
            }
        }
        jsonReader.endObject();
        return c.mo7599a();
    }

    /* renamed from: v */
    public static CrashlyticsReport.AbstractC7781c m23939v(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7781c.AbstractC7782a c = CrashlyticsReport.AbstractC7781c.m7606c();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != 97434231) {
                if (hashCode == 106008351 && nextName.equals("orgId")) {
                    c2 = 1;
                }
            } else if (nextName.equals("files")) {
                c2 = 0;
            }
            if (c2 == 0) {
                c.mo7604a(m23964a(jsonReader, C5386b.m23971a()));
            } else if (c2 != 1) {
                jsonReader.skipValue();
            } else {
                c.mo7603a(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return c.mo7605a();
    }

    /* renamed from: w */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7812e m23938w(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7812e.AbstractC7813a e = CrashlyticsReport.AbstractC7785d.AbstractC7812e.m7423e();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        c = 2;
                        break;
                    }
                    break;
                case -293026577:
                    if (nextName.equals("jailbroken")) {
                        c = 3;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                e.mo7421a(jsonReader.nextInt());
            } else if (c == 1) {
                e.mo7418b(jsonReader.nextString());
            } else if (c == 2) {
                e.mo7420a(jsonReader.nextString());
            } else if (c != 3) {
                jsonReader.skipValue();
            } else {
                e.mo7419a(jsonReader.nextBoolean());
            }
        }
        jsonReader.endObject();
        return e.mo7422a();
    }

    /* renamed from: x */
    public static CrashlyticsReport m23937x(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7778a l = CrashlyticsReport.m7624l();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -2118372775:
                    if (nextName.equals("ndkPayload")) {
                        c = 7;
                        break;
                    }
                    break;
                case -1962630338:
                    if (nextName.equals("sdkVersion")) {
                        c = 0;
                        break;
                    }
                    break;
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        c = 4;
                        break;
                    }
                    break;
                case 344431858:
                    if (nextName.equals("gmpAppId")) {
                        c = 1;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        c = 5;
                        break;
                    }
                    break;
                case 1984987798:
                    if (nextName.equals("session")) {
                        c = 6;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    l.mo7615e(jsonReader.nextString());
                    break;
                case 1:
                    l.mo7617c(jsonReader.nextString());
                    break;
                case 2:
                    l.mo7622a(jsonReader.nextInt());
                    break;
                case 3:
                    l.mo7616d(jsonReader.nextString());
                    break;
                case 4:
                    l.mo7619a(jsonReader.nextString());
                    break;
                case 5:
                    l.mo7618b(jsonReader.nextString());
                    break;
                case 6:
                    l.mo7620a(m23936y(jsonReader));
                    break;
                case 7:
                    l.mo7621a(m23939v(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return l.mo7623a();
    }

    /* renamed from: y */
    public static CrashlyticsReport.AbstractC7785d m23936y(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7789b n = CrashlyticsReport.AbstractC7785d.m7581n();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -2128794476:
                    if (nextName.equals("startedAt")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1618432855:
                    if (nextName.equals("identifier")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1606742899:
                    if (nextName.equals("endedAt")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1335157162:
                    if (nextName.equals("device")) {
                        c = '\b';
                        break;
                    }
                    break;
                case -1291329255:
                    if (nextName.equals(Constants.VIDEO_TRACKING_EVENTS_KEY)) {
                        c = '\t';
                        break;
                    }
                    break;
                case 3556:
                    if (nextName.equals("os")) {
                        c = 7;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        c = 6;
                        break;
                    }
                    break;
                case 3599307:
                    if (nextName.equals("user")) {
                        c = 5;
                        break;
                    }
                    break;
                case 286956243:
                    if (nextName.equals("generator")) {
                        c = 0;
                        break;
                    }
                    break;
                case 1025385094:
                    if (nextName.equals("crashed")) {
                        c = 4;
                        break;
                    }
                    break;
                case 2047016109:
                    if (nextName.equals("generatorType")) {
                        c = '\n';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    n.mo7555a(jsonReader.nextString());
                    break;
                case 1:
                    n.m7553a(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case 2:
                    n.mo7562a(jsonReader.nextLong());
                    break;
                case 3:
                    n.mo7556a(Long.valueOf(jsonReader.nextLong()));
                    break;
                case 4:
                    n.mo7554a(jsonReader.nextBoolean());
                    break;
                case 5:
                    n.mo7557a(m23935z(jsonReader));
                    break;
                case 6:
                    n.mo7560a(m23953h(jsonReader));
                    break;
                case 7:
                    n.mo7558a(m23938w(jsonReader));
                    break;
                case '\b':
                    n.mo7559a(m23951j(jsonReader));
                    break;
                case '\t':
                    n.mo7561a(m23964a(jsonReader, C5385a.m23972a()));
                    break;
                case '\n':
                    n.mo7563a(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return n.mo7564a();
    }

    /* renamed from: z */
    public static CrashlyticsReport.AbstractC7785d.AbstractC7814f m23935z(JsonReader jsonReader) throws IOException {
        CrashlyticsReport.AbstractC7785d.AbstractC7814f.AbstractC7815a b = CrashlyticsReport.AbstractC7785d.AbstractC7814f.m7416b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            if (nextName.hashCode() == -1618432855 && nextName.equals("identifier")) {
                c = 0;
            }
            if (c != 0) {
                jsonReader.skipValue();
            } else {
                b.mo7414a(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return b.mo7415a();
    }

    /* renamed from: a */
    public CrashlyticsReport.AbstractC7785d.AbstractC7792d m23961a(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            CrashlyticsReport.AbstractC7785d.AbstractC7792d k = m23950k(jsonReader);
            jsonReader.close();
            return k;
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: a */
    public String m23963a(CrashlyticsReport.AbstractC7785d.AbstractC7792d dVar) {
        return f18305a.mo23739a(dVar);
    }

    /* renamed from: a */
    public String m23962a(CrashlyticsReport crashlyticsReport) {
        return f18305a.mo23739a(crashlyticsReport);
    }

    /* renamed from: b */
    public CrashlyticsReport m23959b(String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            CrashlyticsReport x = m23937x(jsonReader);
            jsonReader.close();
            return x;
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }
}
