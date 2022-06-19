package p000;

import android.content.Context;
import com.facebook.ads.AdSettings;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.truecaller.common.network.util.KnownEndpoints;
import java.util.Collection;
import java.util.HashSet;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import p193e.p1538j.EnumC23248n0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: q2 */
/* loaded from: classes5-dex2jar.jar:q2.class */
public final class C27618q2 extends m implements a<s> {

    /* renamed from: c */
    public static final C27618q2 f77847c = new C27618q2(0);

    /* renamed from: d */
    public static final C27618q2 f77848d = new C27618q2(1);

    /* renamed from: e */
    public static final C27618q2 f77849e = new C27618q2(2);

    /* renamed from: b */
    public final /* synthetic */ int f77850b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C27618q2(int i) {
        super(0);
        this.f77850b = i;
    }

    public final Object invoke() {
        s sVar = s.a;
        int i = this.f77850b;
        if (i == 0) {
            C23228f0.f64299i = true;
            EnumC23248n0 enumC23248n0 = EnumC23248n0.APP_EVENTS;
            l.e(enumC23248n0, "behavior");
            HashSet<EnumC23248n0> hashSet = C23228f0.f64292b;
            synchronized (hashSet) {
                hashSet.add(enumC23248n0);
                if (hashSet.contains(EnumC23248n0.GRAPH_API_DEBUG_INFO)) {
                    EnumC23248n0 enumC23248n02 = EnumC23248n0.GRAPH_API_DEBUG_WARNING;
                    if (!hashSet.contains(enumC23248n02)) {
                        hashSet.add(enumC23248n02);
                    }
                }
            }
            return sVar;
        } else if (i == 1) {
            Objects.requireNonNull(KnownEndpoints.Companion);
            KnownEndpoints.isStaging = true;
            return sVar;
        } else if (i != 2) {
            throw null;
        } else {
            C23228f0 c23228f0 = C23228f0.f64291a;
            if (!C1220a.m41623b(C23228f0.class)) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("data_processing_options", new JSONArray((Collection) C25225a.m3897h3(new String[]{"LDU"})));
                    jSONObject.put("data_processing_options_country", 0);
                    jSONObject.put("data_processing_options_state", 0);
                    Context context = C23228f0.f64300j;
                    if (context == null) {
                        l.l("applicationContext");
                        throw null;
                    }
                    context.getSharedPreferences("com.facebook.sdk.DataProcessingOptions", 0).edit().putString("data_processing_options", jSONObject.toString()).apply();
                } catch (JSONException e) {
                } catch (Throwable th) {
                    C1220a.m41624a(th, C23228f0.class);
                }
            }
            AdSettings.setDataProcessingOptions(new String[]{"LDU"}, 0, 0);
            return sVar;
        }
    }
}
