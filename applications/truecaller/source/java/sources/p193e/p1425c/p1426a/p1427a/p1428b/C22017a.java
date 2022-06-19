package p193e.p1425c.p1426a.p1427a.p1428b;

import android.content.Context;
import android.os.Build;
import android.util.Base64;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.c.a.a.b.a */
/* loaded from: classes-dex2jar.jar:e/c/a/a/b/a.class */
public class C22017a implements Serializable {

    /* renamed from: a */
    public String f61215a;

    /* renamed from: b */
    public String f61216b;

    /* renamed from: c */
    public long f61217c;

    /* renamed from: d */
    public EnumC22018b f61218d;

    /* renamed from: e */
    public String f61219e;

    /* renamed from: f */
    public String f61220f;

    /* renamed from: g */
    public int f61221g;

    /* renamed from: h */
    public String f61222h;

    /* renamed from: i */
    public String f61223i;

    /* renamed from: j */
    public String f61224j = "";

    /* renamed from: k */
    public String f61225k = "";

    public C22017a(Context context, EnumC22018b enumC22018b, String str) {
        this.f61219e = "";
        this.f61220f = "";
        this.f61222h = "";
        this.f61223i = "";
        try {
            this.f61215a = "1.0";
            this.f61220f = AnalyticsConstants.ANDROID;
            this.f61221g = Build.VERSION.SDK_INT;
            this.f61222h = Build.MANUFACTURER;
            this.f61223i = Build.MODEL;
            this.f61217c = System.currentTimeMillis();
            this.f61219e = context == null ? "unknown" : context.getPackageName();
            this.f61218d = enumC22018b;
            this.f61216b = str;
        } catch (RuntimeException e) {
        }
    }

    /* renamed from: a */
    public C22017a m8826a(Exception exc) {
        if (exc != null) {
            try {
                StringWriter stringWriter = new StringWriter();
                exc.printStackTrace(new PrintWriter(stringWriter));
                String stringWriter2 = stringWriter.toString();
                if (stringWriter2.length() > 2048) {
                    int length = ((2048 - exc.getMessage().length()) - 6) / 2;
                    String substring = stringWriter2.substring(0, length);
                    String substring2 = stringWriter2.substring(stringWriter2.length() - length);
                    this.f61225k = exc.getMessage() + "..." + substring + "..." + substring2;
                } else {
                    this.f61225k = exc.getMessage() + StringConstant.NEW_LINE + stringWriter2;
                }
            } catch (RuntimeException e) {
            }
        }
        return this;
    }

    /* renamed from: b */
    public String m8825b() {
        String str = "";
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", this.f61215a);
            jSONObject.put("eventType", this.f61216b);
            jSONObject.put("eventTimestamp", this.f61217c);
            jSONObject.put("severity", this.f61218d.name());
            jSONObject.put("appId", this.f61219e);
            jSONObject.put("osName", this.f61220f);
            jSONObject.put("osVersion", this.f61221g);
            jSONObject.put("deviceManufacturer", this.f61222h);
            jSONObject.put("deviceModel", this.f61223i);
            jSONObject.put("configVersion", "");
            jSONObject.put("otherDetails", this.f61224j);
            jSONObject.put("exceptionDetails", this.f61225k);
            str = Base64.encodeToString(jSONObject.toString().getBytes(), 0).replace(StringConstant.NEW_LINE, "");
        } catch (RuntimeException | JSONException e) {
        }
        return C22128a.m8693K2(C22128a.m8692L("{\"Data\": \"", str, "\",\"PartitionKey\": \""), this.f61217c, "\"}");
    }
}
