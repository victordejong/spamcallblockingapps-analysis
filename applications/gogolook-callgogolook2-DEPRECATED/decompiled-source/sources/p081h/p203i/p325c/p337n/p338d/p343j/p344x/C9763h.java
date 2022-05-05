package p081h.p203i.p325c.p337n.p338d.p343j.p344x;

import android.util.Base64;
import android.util.JsonReader;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.core.app.Person;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
import p081h.p203i.p325c.p337n.p338d.p343j.C9636a;
import p081h.p203i.p325c.p337n.p338d.p343j.C9755w;
import p081h.p203i.p325c.p359q.AbstractC9838a;
import p081h.p203i.p325c.p359q.p361i.C9850d;
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.i.c.n.d.j.x.h */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/x/h.class */
public class C9763h {

    /* renamed from: a */
    public static final AbstractC9838a f22161a;

    /* renamed from: h.i.c.n.d.j.x.h$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/x/h$a.class */
    public interface AbstractC9764a<T> {
        /* renamed from: a */
        T mo14351a(@NonNull JsonReader jsonReader) throws IOException;
    }

    static {
        C9850d dVar = new C9850d();
        dVar.m14110a(C9636a.f21954a);
        dVar.m14103a(true);
        f22161a = dVar.m14111a();
    }

    @NonNull
    /* renamed from: a */
    public static <T> C9755w<T> m14381a(@NonNull JsonReader jsonReader, @NonNull AbstractC9764a<T> aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(aVar.mo14351a(jsonReader));
        }
        jsonReader.endArray();
        return C9755w.m14391a(arrayList);
    }

    @NonNull
    /* renamed from: h */
    public static AbstractC9715v.AbstractC9723d.AbstractC9724a m14370h(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a h = AbstractC9715v.AbstractC9723d.AbstractC9724a.m14551h();
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
                h.mo14546d(jsonReader.nextString());
            } else if (c == 1) {
                h.mo14544f(jsonReader.nextString());
            } else if (c == 2) {
                h.mo14547c(jsonReader.nextString());
            } else if (c == 3) {
                h.mo14545e(jsonReader.nextString());
            } else if (c == 4) {
                h.mo14549a(jsonReader.nextString());
            } else if (c != 5) {
                jsonReader.skipValue();
            } else {
                h.mo14548b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return h.mo14550a();
    }

    @NonNull
    /* renamed from: i */
    public static AbstractC9715v.AbstractC9717b m14369i(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9717b.AbstractC9718a c = AbstractC9715v.AbstractC9717b.m14590c();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c2 = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != 106079) {
                if (hashCode == 111972721 && nextName.equals(C13032a.f29462d)) {
                    c2 = 1;
                }
            } else if (nextName.equals(Person.KEY_KEY)) {
                c2 = 0;
            }
            if (c2 == 0) {
                c.mo14588a(jsonReader.nextString());
            } else if (c2 != 1) {
                jsonReader.skipValue();
            } else {
                c.mo14587b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return c.mo14589a();
    }

    @NonNull
    /* renamed from: j */
    public static AbstractC9715v.AbstractC9723d.AbstractC9728c m14368j(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a j = AbstractC9715v.AbstractC9723d.AbstractC9728c.m14520j();
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
                    if (nextName.equals(IapProductRealmObject.STATE)) {
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
                    j.mo14518a(jsonReader.nextInt());
                    break;
                case 1:
                    j.mo14512b(jsonReader.nextString());
                    break;
                case 2:
                    j.mo14514b(jsonReader.nextInt());
                    break;
                case 3:
                    j.mo14513b(jsonReader.nextLong());
                    break;
                case 4:
                    j.mo14517a(jsonReader.nextLong());
                    break;
                case 5:
                    j.mo14515a(jsonReader.nextBoolean());
                    break;
                case 6:
                    j.mo14511c(jsonReader.nextInt());
                    break;
                case 7:
                    j.mo14516a(jsonReader.nextString());
                    break;
                case '\b':
                    j.mo14510c(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return j.mo14519a();
    }

    @NonNull
    /* renamed from: k */
    public static AbstractC9715v.AbstractC9723d.AbstractC9730d m14367k(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9745b g = AbstractC9715v.AbstractC9723d.AbstractC9730d.m14503g();
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
                    if (nextName.equals("timestamp")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                g.mo14428a(jsonReader.nextLong());
            } else if (c == 1) {
                g.mo14424a(jsonReader.nextString());
            } else if (c == 2) {
                g.mo14427a(m14366l(jsonReader));
            } else if (c == 3) {
                g.mo14426a(m14364n(jsonReader));
            } else if (c != 4) {
                jsonReader.skipValue();
            } else {
                g.mo14425a(m14360r(jsonReader));
            }
        }
        jsonReader.endObject();
        return g.mo14429a();
    }

    @NonNull
    /* renamed from: l */
    public static AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a m14366l(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a f = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.m14497f();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1332194002:
                    if (nextName.equals(NotificationCompat.WearableExtender.KEY_BACKGROUND)) {
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
                f.mo14492a(Boolean.valueOf(jsonReader.nextBoolean()));
            } else if (c == 1) {
                f.mo14495a(jsonReader.nextInt());
            } else if (c == 2) {
                f.mo14494a(m14363o(jsonReader));
            } else if (c != 3) {
                jsonReader.skipValue();
            } else {
                f.mo14493a(m14381a(jsonReader, C9758c.m14387a()));
            }
        }
        jsonReader.endObject();
        return f.mo14496a();
    }

    @NonNull
    /* renamed from: m */
    public static AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a m14365m(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.AbstractC9735a f = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.m14481f();
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
                f.mo14478a(jsonReader.nextString());
            } else if (c == 1) {
                f.mo14479a(jsonReader.nextLong());
            } else if (c == 2) {
                f.mo14476b(jsonReader.nextLong());
            } else if (c != 3) {
                jsonReader.skipValue();
            } else {
                f.m14477a(Base64.decode(jsonReader.nextString(), 2));
            }
        }
        jsonReader.endObject();
        return f.mo14480a();
    }

    @NonNull
    /* renamed from: n */
    public static AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c m14364n(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a g = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.m14417g();
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
                g.mo14413a(Double.valueOf(jsonReader.nextDouble()));
            } else if (c == 1) {
                g.mo14415a(jsonReader.nextInt());
            } else if (c == 2) {
                g.mo14414a(jsonReader.nextLong());
            } else if (c == 3) {
                g.mo14412a(jsonReader.nextBoolean());
            } else if (c == 4) {
                g.mo14411b(jsonReader.nextInt());
            } else if (c != 5) {
                jsonReader.skipValue();
            } else {
                g.mo14410b(jsonReader.nextLong());
            }
        }
        jsonReader.endObject();
        return g.mo14416a();
    }

    @NonNull
    /* renamed from: o */
    public static AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b m14363o(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9736b e = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.m14487e();
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
                e.mo14470b(m14381a(jsonReader, C9759d.m14386a()));
            } else if (c == 1) {
                e.mo14473a(m14362p(jsonReader));
            } else if (c == 2) {
                e.mo14472a(m14359s(jsonReader));
            } else if (c != 3) {
                jsonReader.skipValue();
            } else {
                e.mo14471a(m14381a(jsonReader, C9760e.m14385a()));
            }
        }
        jsonReader.endObject();
        return e.mo14474a();
    }

    @NonNull
    /* renamed from: p */
    public static AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c m14362p(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a f = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.m14464f();
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
                f.mo14461a(m14362p(jsonReader));
            } else if (c == 1) {
                f.mo14460a(m14381a(jsonReader, C9761f.m14384a()));
            } else if (c == 2) {
                f.mo14462a(jsonReader.nextInt());
            } else if (c == 3) {
                f.mo14458b(jsonReader.nextString());
            } else if (c != 4) {
                jsonReader.skipValue();
            } else {
                f.mo14459a(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return f.mo14463a();
    }

    @NonNull
    /* renamed from: q */
    public static AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b m14361q(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.AbstractC9744a f = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b.m14436f();
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
                f.mo14434a(jsonReader.nextInt());
            } else if (c == 1) {
                f.mo14432a(jsonReader.nextString());
            } else if (c == 2) {
                f.mo14433a(jsonReader.nextLong());
            } else if (c == 3) {
                f.mo14431b(jsonReader.nextLong());
            } else if (c != 4) {
                jsonReader.skipValue();
            } else {
                f.mo14430b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return f.mo14435a();
    }

    @NonNull
    /* renamed from: r */
    public static AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d m14360r(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d.AbstractC9749a b = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d.m14408b();
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
                b.mo14406a(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return b.mo14407a();
    }

    @NonNull
    /* renamed from: s */
    public static AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d m14359s(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d.AbstractC9740a d = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d.m14454d();
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
                d.mo14450b(jsonReader.nextString());
            } else if (c == 1) {
                d.mo14451a(jsonReader.nextString());
            } else if (c != 2) {
                jsonReader.skipValue();
            } else {
                d.mo14452a(jsonReader.nextLong());
            }
        }
        jsonReader.endObject();
        return d.mo14453a();
    }

    @NonNull
    /* renamed from: t */
    public static AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e m14358t(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9742a d = AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.m14446d();
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
                d.mo14444a(jsonReader.nextInt());
            } else if (c == 1) {
                d.mo14442a(jsonReader.nextString());
            } else if (c != 2) {
                jsonReader.skipValue();
            } else {
                d.mo14443a(m14381a(jsonReader, C9762g.m14383a()));
            }
        }
        jsonReader.endObject();
        return d.mo14445a();
    }

    @NonNull
    /* renamed from: u */
    public static AbstractC9715v.AbstractC9719c.AbstractC9721b m14357u(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9719c.AbstractC9721b.AbstractC9722a c = AbstractC9715v.AbstractC9719c.AbstractC9721b.m14578c();
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
                c.mo14576a(jsonReader.nextString());
            } else if (c2 != 1) {
                jsonReader.skipValue();
            } else {
                c.mo14575a(Base64.decode(jsonReader.nextString(), 2));
            }
        }
        jsonReader.endObject();
        return c.mo14577a();
    }

    @NonNull
    /* renamed from: v */
    public static AbstractC9715v.AbstractC9719c m14356v(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9719c.AbstractC9720a c = AbstractC9715v.AbstractC9719c.m14584c();
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
                c.mo14582a(m14381a(jsonReader, C9757b.m14388a()));
            } else if (c2 != 1) {
                jsonReader.skipValue();
            } else {
                c.mo14581a(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return c.mo14583a();
    }

    @NonNull
    /* renamed from: w */
    public static AbstractC9715v.AbstractC9723d.AbstractC9750e m14355w(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9750e.AbstractC9751a e = AbstractC9715v.AbstractC9723d.AbstractC9750e.m14401e();
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
                e.mo14399a(jsonReader.nextInt());
            } else if (c == 1) {
                e.mo14396b(jsonReader.nextString());
            } else if (c == 2) {
                e.mo14398a(jsonReader.nextString());
            } else if (c != 3) {
                jsonReader.skipValue();
            } else {
                e.mo14397a(jsonReader.nextBoolean());
            }
        }
        jsonReader.endObject();
        return e.mo14400a();
    }

    @NonNull
    /* renamed from: x */
    public static AbstractC9715v m14354x(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9716a l = AbstractC9715v.m14602l();
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
                    l.mo14593e(jsonReader.nextString());
                    break;
                case 1:
                    l.mo14595c(jsonReader.nextString());
                    break;
                case 2:
                    l.mo14600a(jsonReader.nextInt());
                    break;
                case 3:
                    l.mo14594d(jsonReader.nextString());
                    break;
                case 4:
                    l.mo14597a(jsonReader.nextString());
                    break;
                case 5:
                    l.mo14596b(jsonReader.nextString());
                    break;
                case 6:
                    l.mo14598a(m14353y(jsonReader));
                    break;
                case 7:
                    l.mo14599a(m14356v(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return l.mo14601a();
    }

    @NonNull
    /* renamed from: y */
    public static AbstractC9715v.AbstractC9723d m14353y(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9727b n = AbstractC9715v.AbstractC9723d.m14559n();
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
                    n.mo14533a(jsonReader.nextString());
                    break;
                case 1:
                    n.m14531a(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case 2:
                    n.mo14540a(jsonReader.nextLong());
                    break;
                case 3:
                    n.mo14534a(Long.valueOf(jsonReader.nextLong()));
                    break;
                case 4:
                    n.mo14532a(jsonReader.nextBoolean());
                    break;
                case 5:
                    n.mo14536a(m14352z(jsonReader));
                    break;
                case 6:
                    n.mo14539a(m14370h(jsonReader));
                    break;
                case 7:
                    n.mo14537a(m14355w(jsonReader));
                    break;
                case '\b':
                    n.mo14538a(m14368j(jsonReader));
                    break;
                case '\t':
                    n.mo14535a(m14381a(jsonReader, C9756a.m14389a()));
                    break;
                case '\n':
                    n.mo14541a(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return n.mo14542a();
    }

    @NonNull
    /* renamed from: z */
    public static AbstractC9715v.AbstractC9723d.AbstractC9752f m14352z(@NonNull JsonReader jsonReader) throws IOException {
        AbstractC9715v.AbstractC9723d.AbstractC9752f.AbstractC9753a b = AbstractC9715v.AbstractC9723d.AbstractC9752f.m14394b();
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
                b.mo14392a(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return b.mo14393a();
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9715v.AbstractC9723d.AbstractC9730d m14378a(@NonNull String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            AbstractC9715v.AbstractC9723d.AbstractC9730d k = m14367k(jsonReader);
            jsonReader.close();
            return k;
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    @NonNull
    /* renamed from: a */
    public String m14380a(@NonNull AbstractC9715v.AbstractC9723d.AbstractC9730d dVar) {
        return f22161a.mo14099a(dVar);
    }

    @NonNull
    /* renamed from: a */
    public String m14379a(@NonNull AbstractC9715v vVar) {
        return f22161a.mo14099a(vVar);
    }

    @NonNull
    /* renamed from: b */
    public AbstractC9715v m14376b(@NonNull String str) throws IOException {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            AbstractC9715v x = m14354x(jsonReader);
            jsonReader.close();
            return x;
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }
}
