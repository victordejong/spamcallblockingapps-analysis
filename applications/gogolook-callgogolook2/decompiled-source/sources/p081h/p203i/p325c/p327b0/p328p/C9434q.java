package p081h.p203i.p325c.p327b0.p328p;

import android.os.Bundle;
import androidx.annotation.NonNull;
import org.json.JSONObject;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
/* renamed from: h.i.c.b0.p.q */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/q.class */
public class C9434q {

    /* renamed from: a */
    public final AbstractC9452a f21534a;

    public C9434q(@NonNull AbstractC9452a aVar) {
        this.f21534a = aVar;
    }

    /* renamed from: a */
    public void m15184a(@NonNull String str, @NonNull C9419f fVar) {
        JSONObject optJSONObject;
        JSONObject d = fVar.m15252d();
        if (d.length() >= 1) {
            JSONObject b = fVar.m15254b();
            if (b.length() >= 1 && (optJSONObject = d.optJSONObject(str)) != null) {
                Bundle bundle = new Bundle();
                bundle.putString("_fpid", optJSONObject.optString("personalizationId"));
                bundle.putString("_fpct", b.optString(str));
                this.f21534a.mo15115b("fp", "_fpc", bundle);
            }
        }
    }
}
