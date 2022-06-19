package com.facebook.appevents;

import com.amazon.device.ads.DtbConstants;
import com.facebook.appevents.p031m0.C1035g;
import com.facebook.internal.C1168q0;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23222c0;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010$\n��\n\u0002\u0010��\n\u0002\b\u0003\b\u0007\u0018�� '2\u00020\u0001:\u0002'(BE\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eB)\b\u0012\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0013J\b\u0010\u001d\u001a\u00020\u0003H\u0002J\u0006\u0010\u001e\u001a\u00020\nJ\u0006\u0010\u001f\u001a\u00020\u0017J;\u0010 \u001a\u00020\u00172\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0002\u0010!J\b\u0010\"\u001a\u00020\u0003H\u0016J\u001e\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030$2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\b\u0010%\u001a\u00020&H\u0002R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0014\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0010\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0017¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001c¨\u0006)"}, d2 = {"Lcom/facebook/appevents/AppEvent;", "Ljava/io/Serializable;", "contextName", "", "eventName", "valueToSum", "", "parameters", "Landroid/os/Bundle;", "isImplicitlyLogged", "", "isInBackground", "currentSessionId", "Ljava/util/UUID;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V", "jsonString", "isImplicit", "inBackground", "checksum", "(Ljava/lang/String;ZZLjava/lang/String;)V", "isChecksumValid", "()Z", "jsonObject", "Lorg/json/JSONObject;", "getJsonObject", "()Lorg/json/JSONObject;", AnalyticsConstants.NAME, "getName", "()Ljava/lang/String;", "calculateChecksum", "getIsImplicit", "getJSONObject", "getJSONObjectForAppEvent", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Ljava/util/UUID;)Lorg/json/JSONObject;", "toString", "validateParameters", "", "writeReplace", "", "Companion", "SerializationProxyV2", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.r */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/r.class */
public final class C1087r implements Serializable {

    /* renamed from: f */
    public static final C1088a f3004f = new C1088a(null);

    /* renamed from: g */
    public static final HashSet<String> f3005g = new HashSet<>();

    /* renamed from: a */
    public final JSONObject f3006a;

    /* renamed from: b */
    public final boolean f3007b;

    /* renamed from: c */
    public final boolean f3008c;

    /* renamed from: d */
    public final String f3009d;

    /* renamed from: e */
    public final String f3010e;

    @Metadata(d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, d2 = {"Lcom/facebook/appevents/AppEvent$Companion;", "", "()V", "MAX_IDENTIFIER_LENGTH", "", "serialVersionUID", "", "validatedIdentifiers", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "md5Checksum", "toHash", "validateIdentifier", "", "identifier", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.r$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/r$a.class */
    public static final class C1088a {
        public C1088a(f fVar) {
        }

        /* renamed from: a */
        public static final void m41784a(C1088a c1088a, String str) {
            boolean contains;
            if (str != null) {
                if (!(str.length() == 0) && str.length() <= 40) {
                    HashSet<String> hashSet = C1087r.f3005g;
                    synchronized (hashSet) {
                        contains = hashSet.contains(str);
                    }
                    if (contains) {
                        return;
                    }
                    if (!C22128a.m8648Z0("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$", str)) {
                        throw new C23222c0(C22128a.m8562v(new Object[]{str}, 1, "Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", "java.lang.String.format(format, *args)"));
                    }
                    synchronized (hashSet) {
                        hashSet.add(str);
                    }
                    return;
                }
            }
            String str2 = str;
            if (str == null) {
                str2 = "<None Provided>";
            }
            String format = String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", Arrays.copyOf(new Object[]{str2, 40}, 2));
            l.d(format, "java.lang.String.format(locale, format, *args)");
            throw new C23222c0(format);
        }
    }

    @Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0002\b��\u0018�� \u000b2\u00020\u0001:\u0001\u000bB'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lcom/facebook/appevents/AppEvent$SerializationProxyV2;", "Ljava/io/Serializable;", "jsonString", "", "isImplicit", "", "inBackground", "checksum", "(Ljava/lang/String;ZZLjava/lang/String;)V", "readResolve", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.r$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/r$b.class */
    public static final class C1089b implements Serializable {

        /* renamed from: a */
        public final String f3011a;

        /* renamed from: b */
        public final boolean f3012b;

        /* renamed from: c */
        public final boolean f3013c;

        /* renamed from: d */
        public final String f3014d;

        public C1089b(String str, boolean z, boolean z2, String str2) {
            l.e(str, "jsonString");
            this.f3011a = str;
            this.f3012b = z;
            this.f3013c = z2;
            this.f3014d = str2;
        }

        private final Object readResolve() throws JSONException, ObjectStreamException {
            return new C1087r(this.f3011a, this.f3012b, this.f3013c, this.f3014d, null);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:2|(7:137|4|(4:6|(2:9|10)(1:8)|11|(1:13))|17|141|18|(13:20|27|(1:29)|30|(12:32|(3:35|(1:41)(3:145|39|40)|33)|144|42|(3:136|44|(7:140|48|(4:52|(3:54|(5:58|59|(1:61)(1:62)|63|154)(1:153)|152)(3:149|64|65)|49|50)|151|66|67|(1:69)))|72|(3:134|74|(1:76)(6:77|(5:81|(3:155|83|159)(1:158)|157|78|79)|156|84|85|(5:139|87|(3:91|88|89)|160|92)))|95|(3:142|97|(1:99)(3:100|(5:104|(3:163|106|165)(4:161|107|(5:111|(3:167|113|170)(1:169)|168|108|109)|166)|164|101|102)|162))|116|(2:119|117)|171)|120|(1:122)|123|(1:125)|126|(1:128)(1:129)|130|131)(2:21|22))|16|17|141|18|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00e9, code lost:
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ea, code lost:
        com.facebook.internal.C1168q0.m41696F("Failed to generate checksum: ", r11);
        r11 = "1";
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00f6, code lost:
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00f7, code lost:
        com.facebook.internal.C1168q0.m41696F("Failed to generate checksum: ", r11);
        r11 = com.amazon.device.ads.DtbConstants.NETWORK_TYPE_UNKNOWN;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b3 A[Catch: UnsupportedEncodingException -> 0x00e9, NoSuchAlgorithmException -> 0x00f6, TRY_ENTER, TRY_LEAVE, TryCatch #9 {UnsupportedEncodingException -> 0x00e9, NoSuchAlgorithmException -> 0x00f6, blocks: (B:18:0x009a, B:20:0x00b3, B:21:0x00dd, B:22:0x00e8), top: B:141:0x009a }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00dd A[Catch: UnsupportedEncodingException -> 0x00e9, NoSuchAlgorithmException -> 0x00f6, TRY_ENTER, TryCatch #9 {UnsupportedEncodingException -> 0x00e9, NoSuchAlgorithmException -> 0x00f6, blocks: (B:18:0x009a, B:20:0x00b3, B:21:0x00dd, B:22:0x00e8), top: B:141:0x009a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1087r(java.lang.String r10, java.lang.String r11, java.lang.Double r12, android.os.Bundle r13, boolean r14, boolean r15, java.util.UUID r16) throws org.json.JSONException, p193e.p1538j.C23222c0 {
        /*
            Method dump skipped, instructions count: 1230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.C1087r.<init>(java.lang.String, java.lang.String, java.lang.Double, android.os.Bundle, boolean, boolean, java.util.UUID):void");
    }

    public C1087r(String str, boolean z, boolean z2, String str2, f fVar) {
        JSONObject jSONObject = new JSONObject(str);
        this.f3006a = jSONObject;
        this.f3007b = z;
        String optString = jSONObject.optString("_eventName");
        l.d(optString, "jsonObject.optString(Constants.EVENT_NAME_EVENT_KEY)");
        this.f3009d = optString;
        this.f3010e = str2;
        this.f3008c = z2;
    }

    private final Object writeReplace() throws ObjectStreamException {
        String jSONObject = this.f3006a.toString();
        l.d(jSONObject, "jsonObject.toString()");
        return new C1089b(jSONObject, this.f3007b, this.f3008c, this.f3010e);
    }

    /* renamed from: a */
    public final String m41785a() {
        String str;
        String jSONObject = this.f3006a.toString();
        l.d(jSONObject, "jsonObject.toString()");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            Charset forName = Charset.forName(StringConstant.UTF8);
            l.d(forName, "Charset.forName(charsetName)");
            byte[] bytes = jSONObject.getBytes(forName);
            l.d(bytes, "(this as java.lang.String).getBytes(charset)");
            messageDigest.update(bytes, 0, bytes.length);
            byte[] digest = messageDigest.digest();
            l.d(digest, "digest.digest()");
            str = C1035g.m41868a(digest);
        } catch (UnsupportedEncodingException e) {
            C1168q0.m41696F("Failed to generate checksum: ", e);
            str = "1";
        } catch (NoSuchAlgorithmException e2) {
            C1168q0.m41696F("Failed to generate checksum: ", e2);
            str = DtbConstants.NETWORK_TYPE_UNKNOWN;
        }
        return str;
    }

    public String toString() {
        return C22128a.m8562v(new Object[]{this.f3006a.optString("_eventName"), Boolean.valueOf(this.f3007b), this.f3006a.toString()}, 3, "\"%s\", implicit: %b, json: %s", "java.lang.String.format(format, *args)");
    }
}
