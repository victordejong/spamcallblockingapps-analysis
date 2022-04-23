package com.inmobi.commons.core.p509a;

import android.content.ContentValues;
import android.util.Log;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.a.d */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/a/d.class */
public class C8335d {

    /* renamed from: g */
    public static final String f32413g = "d";

    /* renamed from: a */
    public int f32414a;

    /* renamed from: b */
    public String f32415b;

    /* renamed from: c */
    public String f32416c;

    /* renamed from: d */
    public String f32417d;

    /* renamed from: e */
    public long f32418e;

    /* renamed from: f */
    public String f32419f;

    public C8335d(String str, String str2) {
        this.f32415b = UUID.randomUUID().toString();
        this.f32417d = str;
        this.f32416c = str2;
        this.f32419f = null;
        this.f32418e = System.currentTimeMillis();
    }

    public C8335d(String str, String str2, String str3, String str4) {
        this.f32415b = str;
        this.f32417d = str2;
        this.f32416c = str3;
        this.f32419f = str4;
        this.f32418e = System.currentTimeMillis();
    }

    public C8335d(Thread thread, Throwable th) {
        this("crashReporting", "CrashEvent");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", th.getClass().getSimpleName());
            jSONObject.put(AvidVideoPlaybackListenerImpl.MESSAGE, th.getMessage());
            jSONObject.put("stack", Log.getStackTraceString(th));
            jSONObject.put("thread", thread.getName());
            this.f32419f = jSONObject.toString();
        } catch (JSONException e) {
            new StringBuilder("JSONException: ").append(e);
        }
    }

    /* renamed from: a */
    public static C8335d m5864a(ContentValues contentValues) {
        String asString = contentValues.getAsString("eventId");
        String asString2 = contentValues.getAsString("eventType");
        String asString3 = contentValues.getAsString("componentType");
        String asString4 = contentValues.getAsString("payload");
        long longValue = Long.valueOf(contentValues.getAsString("ts")).longValue();
        C8335d dVar = new C8335d(asString, asString3, asString2, asString4);
        dVar.f32418e = longValue;
        dVar.f32414a = contentValues.getAsInteger("id").intValue();
        return dVar;
    }

    /* renamed from: a */
    public final String m5865a() {
        String str = this.f32419f;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    public String toString() {
        return this.f32416c + "@" + this.f32417d + " ";
    }
}
