package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.tagmanager.c;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cb.class */
final class cb implements c.b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4342a;

    public cb(Context context) {
        this.f4342a = context;
    }

    @Override // com.google.android.gms.tagmanager.c.b
    public final void a(Map<String, Object> map) {
        String queryParameter;
        Object obj;
        Object obj2 = map.get("gtm.url");
        Object obj3 = (obj2 != null || (obj = map.get("gtm")) == null || !(obj instanceof Map)) ? obj2 : ((Map) obj).get("url");
        if (obj3 != null && (obj3 instanceof String) && (queryParameter = Uri.parse((String) obj3).getQueryParameter("referrer")) != null) {
            ae.c(this.f4342a, queryParameter);
        }
    }
}
