package com.airbnb.lottie;

import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/TextDelegate.class */
public class TextDelegate {

    /* renamed from: a */
    private final Map<String, String> f5861a = new HashMap();

    /* renamed from: b */
    private boolean f5862b = true;

    @VisibleForTesting
    TextDelegate() {
    }

    /* renamed from: a */
    private String m16197a(String str) {
        return str;
    }

    /* renamed from: b */
    public final String m16196b(String str) {
        if (this.f5862b && this.f5861a.containsKey(str)) {
            return this.f5861a.get(str);
        }
        m16197a(str);
        if (this.f5862b) {
            this.f5861a.put(str, str);
        }
        return str;
    }
}
