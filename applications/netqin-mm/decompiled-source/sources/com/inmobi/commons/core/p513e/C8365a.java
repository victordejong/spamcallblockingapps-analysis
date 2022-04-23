package com.inmobi.commons.core.p513e;

import android.util.Log;
import com.inmobi.commons.core.p509a.C8335d;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.e.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/e/a.class */
public final class C8365a extends C8335d {

    /* renamed from: g */
    public static final String f32526g = C8376f.class.getSimpleName();

    public C8365a(Throwable th) {
        super("crashReporting", "catchEvent");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", th.getClass().getSimpleName());
            jSONObject.put(AvidVideoPlaybackListenerImpl.MESSAGE, th.getMessage());
            jSONObject.put("stack", Log.getStackTraceString(th));
            jSONObject.put("thread", Thread.currentThread().getName());
            this.f32419f = jSONObject.toString();
        } catch (JSONException e) {
            new StringBuilder("JSONException: ").append(e);
        }
    }
}
