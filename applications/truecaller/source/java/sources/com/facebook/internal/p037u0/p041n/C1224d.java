package com.facebook.internal.p037u0.p041n;

import com.facebook.internal.p037u0.C1210j;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.AdType;
import java.io.File;
import java.util.Objects;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import s1.z.c.l;
@Metadata(d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018�� \u001b2\u00020\u0001:\u0001\u001bB\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\u0014\u001a\u00020\u0015J\u0011\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020��H\u0086\u0002J\u0006\u0010\u0019\u001a\u00020\u0015J\b\u0010\u001a\u001a\u00020\u0003H\u0016R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0013¨\u0006\u001c"}, d2 = {"Lcom/facebook/internal/instrument/errorreport/ErrorReportData;", "", "message", "", "(Ljava/lang/String;)V", "file", "Ljava/io/File;", "(Ljava/io/File;)V", "errorMessage", "filename", "isValid", "", "()Z", "parameters", "Lorg/json/JSONObject;", "getParameters", "()Lorg/json/JSONObject;", "timestamp", "", "Ljava/lang/Long;", AdType.CLEAR, "", "compareTo", "", RemoteMessageConst.DATA, "save", "toString", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.u0.n.d */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/n/d.class */
public final class C1224d {

    /* renamed from: a */
    public String f3304a;

    /* renamed from: b */
    public String f3305b;

    /* renamed from: c */
    public Long f3306c;

    public C1224d(File file) {
        l.e(file, "file");
        String name = file.getName();
        l.d(name, "file.name");
        this.f3304a = name;
        JSONObject m41630d = C1210j.m41630d(name, true);
        if (m41630d != null) {
            this.f3306c = Long.valueOf(m41630d.optLong("timestamp", 0L));
            this.f3305b = m41630d.optString("error_message", null);
        }
    }

    public C1224d(String str) {
        this.f3306c = Long.valueOf(System.currentTimeMillis() / 1000);
        this.f3305b = str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("error_log_");
        Long l = this.f3306c;
        Objects.requireNonNull(l, "null cannot be cast to non-null type kotlin.Long");
        stringBuffer.append(l.longValue());
        stringBuffer.append(".json");
        String stringBuffer2 = stringBuffer.toString();
        l.d(stringBuffer2, "StringBuffer()\n            .append(InstrumentUtility.ERROR_REPORT_PREFIX)\n            .append(timestamp as Long)\n            .append(\".json\")\n            .toString()");
        this.f3304a = stringBuffer2;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            Long l = this.f3306c;
            if (l != null) {
                jSONObject.put("timestamp", l);
            }
            jSONObject.put("error_message", this.f3305b);
        } catch (JSONException e) {
            jSONObject = null;
        }
        if (jSONObject == null) {
            return super.toString();
        }
        String jSONObject2 = jSONObject.toString();
        l.d(jSONObject2, "params.toString()");
        return jSONObject2;
    }
}
