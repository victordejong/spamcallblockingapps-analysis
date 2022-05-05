package com.flurry.sdk;

import android.content.Context;
import p081h.p203i.p204a.p224e.p235d.C6790c;
/* renamed from: com.flurry.sdk.ld */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ld.class */
public class C3448ld {

    /* renamed from: a */
    public static final String f5924a = "ld";

    /* renamed from: com.flurry.sdk.ld$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ld$a.class */
    public enum EnumC3449a {
        UNKNOWN(-1),
        ACTIVE(0),
        INACTIVE(1),
        BACKGROUND(2);
        

        /* renamed from: e */
        public int f5930e;

        EnumC3449a(int i) {
            this.f5930e = i;
        }
    }

    /* renamed from: com.flurry.sdk.ld$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ld$b.class */
    public enum EnumC3450b {
        UNAVAILABLE(-2),
        UNKNOWN(-1),
        SUCCESS(0),
        SERVICE_MISSING(1),
        SERVICE_UPDATING(2),
        SERVICE_VERSION_UPDATE_REQUIRED(3),
        SERVICE_DISABLED(4),
        SERVICE_INVALID(5);
        

        /* renamed from: i */
        public int f5940i;

        EnumC3450b(int i) {
            this.f5940i = i;
        }
    }

    /* renamed from: a */
    public static EnumC3450b m32441a(Context context) {
        try {
            int c = C6790c.m21910a().mo21883c(context);
            return c != 0 ? c != 1 ? c != 2 ? c != 3 ? c != 9 ? c != 18 ? EnumC3450b.UNAVAILABLE : EnumC3450b.SERVICE_UPDATING : EnumC3450b.SERVICE_INVALID : EnumC3450b.SERVICE_DISABLED : EnumC3450b.SERVICE_VERSION_UPDATE_REQUIRED : EnumC3450b.SERVICE_MISSING : EnumC3450b.SUCCESS;
        } catch (Exception | NoClassDefFoundError e) {
            C3356jq.m32613a(f5924a, "Error retrieving Google Play Services Availability. This probably means google play services is unavailable.");
            return EnumC3450b.UNAVAILABLE;
        }
    }
}
