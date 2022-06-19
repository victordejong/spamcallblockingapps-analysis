package com.google.firebase.abt.component;

import android.content.Context;
import com.google.firebase.abt.C15583b;
import com.google.firebase.analytics.connector.AbstractC15587a;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.firebase.abt.component.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/abt/component/a.class */
public class C15584a {

    /* renamed from: a */
    private final Map<String, C15583b> f55927a = new HashMap();

    /* renamed from: b */
    private final Context f55928b;

    /* renamed from: c */
    private final AbstractC15587a f55929c;

    public C15584a(Context context, AbstractC15587a abstractC15587a) {
        this.f55928b = context;
        this.f55929c = abstractC15587a;
    }

    /* renamed from: a */
    public final C15583b m8622a(String str) {
        C15583b c15583b;
        synchronized (this) {
            if (!this.f55927a.containsKey(str)) {
                this.f55927a.put(str, new C15583b(this.f55928b, this.f55929c, str));
            }
            c15583b = this.f55927a.get(str);
        }
        return c15583b;
    }
}
