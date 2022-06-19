package com.facebook.p105c.p106a;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.C2079x;
import com.facebook.p105c.p107b.AbstractC1955a;
import com.facebook.p105c.p107b.C1956b;
import com.facebook.p105c.p107b.C1959c;
import com.facebook.p105c.p107b.C1966g;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.c.a.d */
/* loaded from: classes-dex2jar.jar:com/facebook/c/a/d.class */
public class C1954d {
    /* renamed from: a */
    public static Bundle m15767a(AbstractC1955a abstractC1955a) {
        Bundle bundle = new Bundle();
        C1956b m15762b = abstractC1955a.m15762b();
        if (m15762b != null) {
            C2079x.m15484a(bundle, "hashtag", m15762b.m15761a());
        }
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m15766a(C1959c c1959c) {
        Bundle m15767a = m15767a((AbstractC1955a) c1959c);
        C2079x.m15486a(m15767a, "href", c1959c.m15764a());
        C2079x.m15484a(m15767a, "quote", c1959c.m15753c());
        return m15767a;
    }

    /* renamed from: a */
    public static Bundle m15765a(C1966g c1966g) {
        Bundle m15767a = m15767a((AbstractC1955a) c1966g);
        C2079x.m15484a(m15767a, "action_type", c1966g.m15743c().m15750a());
        try {
            JSONObject m15769a = C1952c.m15769a(C1952c.m15772a(c1966g), false);
            if (m15769a != null) {
                C2079x.m15484a(m15767a, "action_properties", m15769a.toString());
            }
            return m15767a;
        } catch (JSONException e) {
            throw new FacebookException("Unable to serialize the ShareOpenGraphContent to JSON", e);
        }
    }
}
