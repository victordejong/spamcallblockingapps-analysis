package com.facebook.internal.p299b.p302c;

import com.facebook.internal.p299b.C10259d;
import com.mopub.common.AdType;
import java.io.File;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018�� \u001b2\u00020\u0001:\u0001\u001bB\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\u0014\u001a\u00020\u0015J\u0011\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020��H\u0086\u0002J\u0006\u0010\u0019\u001a\u00020\u0015J\b\u0010\u001a\u001a\u00020\u0003H\u0016R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0013¨\u0006\u001c"}, m4298d2 = {"Lcom/facebook/internal/instrument/errorreport/ErrorReportData;", "", "message", "", "(Ljava/lang/String;)V", "file", "Ljava/io/File;", "(Ljava/io/File;)V", "errorMessage", "filename", "isValid", "", "()Z", "parameters", "Lorg/json/JSONObject;", "getParameters", "()Lorg/json/JSONObject;", Reporting.Key.TIMESTAMP, "", "Ljava/lang/Long;", AdType.CLEAR, "", "compareTo", "", "data", "save", "toString", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.b.c.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c/a.class */
public final class C10253a {

    /* renamed from: c */
    public static final C10254a f33758c = new C10254a(null);

    /* renamed from: a */
    String f33759a;

    /* renamed from: b */
    Long f33760b;

    /* renamed from: d */
    private String f33761d;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, m4298d2 = {"Lcom/facebook/internal/instrument/errorreport/ErrorReportData$Companion;", "", "()V", "PARAM_TIMESTAMP", "", "PRARAM_ERROR_MESSAGE", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.c.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c/a$a.class */
    public static final class C10254a {
        private C10254a() {
        }

        public /* synthetic */ C10254a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C10253a(File file) {
        C18524p.m3840d(file, "file");
        String name = file.getName();
        C18524p.m3843b(name, "file.name");
        this.f33759a = name;
        JSONObject m23098a = C10259d.m23098a(name);
        if (m23098a != null) {
            this.f33760b = Long.valueOf(m23098a.optLong(Reporting.Key.TIMESTAMP, 0L));
            this.f33761d = m23098a.optString("error_message", null);
        }
    }

    public C10253a(String str) {
        this.f33760b = Long.valueOf(System.currentTimeMillis() / 1000);
        this.f33761d = str;
        StringBuffer stringBuffer = new StringBuffer("error_log_");
        Long l = this.f33760b;
        Objects.requireNonNull(l, "null cannot be cast to non-null type kotlin.Long");
        stringBuffer.append(l.longValue());
        stringBuffer.append(".json");
        String stringBuffer2 = stringBuffer.toString();
        C18524p.m3843b(stringBuffer2, "StringBuffer()\n         …)\n            .toString()");
        this.f33759a = stringBuffer2;
    }

    /* renamed from: b */
    private JSONObject m23102b() {
        JSONObject jSONObject = new JSONObject();
        try {
            Long l = this.f33760b;
            if (l != null) {
                jSONObject.put(Reporting.Key.TIMESTAMP, l.longValue());
            }
            jSONObject.put("error_message", this.f33761d);
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final boolean m23103a() {
        return (this.f33761d == null || this.f33760b == null) ? false : true;
    }

    public final String toString() {
        JSONObject m23102b = m23102b();
        if (m23102b == null) {
            return super.toString();
        }
        String jSONObject = m23102b.toString();
        C18524p.m3843b(jSONObject, "params.toString()");
        return jSONObject;
    }
}
