package com.facebook.internal.b.c;

import com.facebook.internal.b.d;
import com.mopub.common.AdType;
import java.io.File;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018�� \u001b2\u00020\u0001:\u0001\u001bB\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\u0014\u001a\u00020\u0015J\u0011\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020��H\u0086\u0002J\u0006\u0010\u0019\u001a\u00020\u0015J\b\u0010\u001a\u001a\u00020\u0003H\u0016R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0013¨\u0006\u001c"}, d2 = {"Lcom/facebook/internal/instrument/errorreport/ErrorReportData;", "", "message", "", "(Ljava/lang/String;)V", "file", "Ljava/io/File;", "(Ljava/io/File;)V", "errorMessage", "filename", "isValid", "", "()Z", "parameters", "Lorg/json/JSONObject;", "getParameters", "()Lorg/json/JSONObject;", Reporting.Key.TIMESTAMP, "", "Ljava/lang/Long;", AdType.CLEAR, "", "compareTo", "", "data", "save", "toString", "Companion", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c/a.class */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public static final C0399a f19884c = new C0399a(null);

    /* renamed from: a  reason: collision with root package name */
    String f19885a;

    /* renamed from: b  reason: collision with root package name */
    Long f19886b;

    /* renamed from: d  reason: collision with root package name */
    private String f19887d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/instrument/errorreport/ErrorReportData$Companion;", "", "()V", "PARAM_TIMESTAMP", "", "PRARAM_ERROR_MESSAGE", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.b.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/c/a$a.class */
    public static final class C0399a {
        private C0399a() {
        }

        public /* synthetic */ C0399a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(File file) {
        p.d(file, "file");
        String name = file.getName();
        p.b(name, "file.name");
        this.f19885a = name;
        JSONObject a2 = d.a(name);
        if (a2 != null) {
            this.f19886b = Long.valueOf(a2.optLong(Reporting.Key.TIMESTAMP, 0L));
            this.f19887d = a2.optString("error_message", null);
        }
    }

    public a(String str) {
        this.f19886b = Long.valueOf(System.currentTimeMillis() / 1000);
        this.f19887d = str;
        StringBuffer stringBuffer = new StringBuffer("error_log_");
        Long l = this.f19886b;
        Objects.requireNonNull(l, "null cannot be cast to non-null type kotlin.Long");
        stringBuffer.append(l.longValue());
        stringBuffer.append(".json");
        String stringBuffer2 = stringBuffer.toString();
        p.b(stringBuffer2, "StringBuffer()\n         …)\n            .toString()");
        this.f19885a = stringBuffer2;
    }

    private JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            Long l = this.f19886b;
            if (l != null) {
                jSONObject.put(Reporting.Key.TIMESTAMP, l.longValue());
            }
            jSONObject.put("error_message", this.f19887d);
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    public final boolean a() {
        return (this.f19887d == null || this.f19886b == null) ? false : true;
    }

    public final String toString() {
        JSONObject b2 = b();
        if (b2 == null) {
            return super.toString();
        }
        String jSONObject = b2.toString();
        p.b(jSONObject, "params.toString()");
        return jSONObject;
    }
}
