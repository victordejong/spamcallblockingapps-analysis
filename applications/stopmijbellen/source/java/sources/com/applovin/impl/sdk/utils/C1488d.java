package com.applovin.impl.sdk.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import com.applovin.impl.sdk.C1479t;
/* renamed from: com.applovin.impl.sdk.utils.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/d.class */
public class C1488d {

    /* renamed from: a */
    private static C1488d f5585a;

    /* renamed from: b */
    private static final Object f5586b = new Object();

    /* renamed from: c */
    private final Bundle f5587c;

    /* renamed from: d */
    private final int f5588d;

    /* renamed from: e */
    private final boolean f5589e;

    private C1488d(Context context) {
        boolean z;
        int i;
        Throwable th;
        int i2;
        boolean z2;
        int next;
        boolean z3;
        int i3;
        Bundle bundle = null;
        try {
            try {
                bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                C1479t.m5113c("AndroidManifest", "Failed to get meta data.", e);
            }
            this.f5587c = bundle;
            try {
                XmlResourceParser openXmlResourceParser = context.getAssets().openXmlResourceParser("AndroidManifest.xml");
                int eventType = openXmlResourceParser.getEventType();
                int i4 = 0;
                boolean z4 = false;
                do {
                    i2 = i4;
                    z2 = z4;
                    if (2 == eventType) {
                        i2 = i4;
                        z2 = z4;
                        i = i4;
                        z = z4;
                        try {
                            if (openXmlResourceParser.getName().equals("application")) {
                                int i5 = 0;
                                while (true) {
                                    i2 = i4;
                                    z2 = z4;
                                    if (i5 >= openXmlResourceParser.getAttributeCount()) {
                                        break;
                                    }
                                    int i6 = i4;
                                    String attributeName = openXmlResourceParser.getAttributeName(i5);
                                    int i7 = i4;
                                    String attributeValue = openXmlResourceParser.getAttributeValue(i5);
                                    int i8 = i4;
                                    if (attributeName.equals("networkSecurityConfig")) {
                                        int i9 = i4;
                                        i3 = Integer.valueOf(attributeValue.substring(1)).intValue();
                                        z3 = z4;
                                    } else {
                                        i3 = i4;
                                        z3 = z4;
                                        if (attributeName.equals("usesCleartextTraffic")) {
                                            int i10 = i4;
                                            z3 = Boolean.valueOf(attributeValue).booleanValue();
                                            i3 = i4;
                                        }
                                    }
                                    i5++;
                                    i4 = i3;
                                    z4 = z3;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                C1479t.m5113c("AndroidManifest", "Failed to parse AndroidManifest.xml.", th);
                                this.f5588d = i;
                                this.f5589e = z;
                            } catch (Throwable th3) {
                                this.f5588d = i;
                                this.f5589e = z;
                                throw th3;
                            }
                        }
                    }
                    next = openXmlResourceParser.next();
                    eventType = next;
                    i4 = i2;
                    z4 = z2;
                } while (next != 1);
                this.f5588d = i2;
                z = z2;
            } catch (Throwable th4) {
                th = th4;
                z = false;
                i = 0;
            }
            this.f5589e = z;
        } catch (Throwable th5) {
            this.f5587c = null;
            throw th5;
        }
    }

    /* renamed from: a */
    public static C1488d m5084a(Context context) {
        C1488d c1488d;
        synchronized (f5586b) {
            if (f5585a == null) {
                f5585a = new C1488d(context);
            }
            c1488d = f5585a;
        }
        return c1488d;
    }

    /* renamed from: a */
    public String m5082a(String str, String str2) {
        Bundle bundle = this.f5587c;
        String str3 = str2;
        if (bundle != null) {
            str3 = bundle.getString(str, str2);
        }
        return str3;
    }

    /* renamed from: a */
    public boolean m5085a() {
        return this.f5588d != 0;
    }

    /* renamed from: a */
    public boolean m5083a(String str) {
        Bundle bundle = this.f5587c;
        return bundle != null ? bundle.containsKey(str) : false;
    }

    /* renamed from: a */
    public boolean m5081a(String str, boolean z) {
        Bundle bundle = this.f5587c;
        boolean z2 = z;
        if (bundle != null) {
            z2 = bundle.getBoolean(str, z);
        }
        return z2;
    }
}
