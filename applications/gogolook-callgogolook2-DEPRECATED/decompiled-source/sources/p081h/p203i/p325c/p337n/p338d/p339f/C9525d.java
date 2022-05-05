package p081h.p203i.p325c.p337n.p338d.p339f;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p340g.AbstractC9528a;
import p081h.p203i.p325c.p337n.p338d.p340g.AbstractC9529b;
/* renamed from: h.i.c.n.d.f.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/f/d.class */
public class C9525d implements AbstractC9523b, AbstractC9529b {
    @Nullable

    /* renamed from: a */
    public AbstractC9528a f21697a;

    @NonNull
    /* renamed from: a */
    public static String m14977a(@NonNull String str, @NonNull Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p340g.AbstractC9529b
    /* renamed from: a */
    public void mo14975a(@Nullable AbstractC9528a aVar) {
        this.f21697a = aVar;
        C9513b.m15015a().m15013a("Registered Firebase Analytics event receiver for breadcrumbs");
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p339f.AbstractC9523b
    public void onEvent(@NonNull String str, @NonNull Bundle bundle) {
        AbstractC9528a aVar = this.f21697a;
        if (aVar != null) {
            try {
                aVar.mo14768a("$A$:" + m14977a(str, bundle));
            } catch (JSONException e) {
                C9513b.m15015a().m15007d("Unable to serialize Firebase Analytics event to breadcrumb.");
            }
        }
    }
}
