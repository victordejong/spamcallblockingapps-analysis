package com.razorpay;

import org.json.JSONObject;
import proguard.annotation.Keep;
import proguard.annotation.KeepClassMembers;
@Keep
@KeepClassMembers
/* loaded from: classes3-dex2jar.jar:com/razorpay/AnalyticsProperty.class */
public class AnalyticsProperty {
    public Scope scope;
    public Object value;

    /* loaded from: classes3-dex2jar.jar:com/razorpay/AnalyticsProperty$Scope.class */
    public enum Scope {
        PAYMENT,
        ORDER
    }

    public AnalyticsProperty(int i, Scope scope) {
        this.value = Integer.valueOf(i);
        this.scope = scope;
    }

    public AnalyticsProperty(long j, Scope scope) {
        this.value = Long.valueOf(j);
        this.scope = scope;
    }

    public AnalyticsProperty(String str, Scope scope) {
        this.value = str;
        this.scope = scope;
    }

    public AnalyticsProperty(JSONObject jSONObject, Scope scope) {
        this.value = jSONObject;
        this.scope = scope;
    }

    public AnalyticsProperty(boolean z, Scope scope) {
        this.value = Boolean.valueOf(z);
        this.scope = scope;
    }
}
