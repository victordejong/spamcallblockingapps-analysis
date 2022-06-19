package com.google.android.gms.common.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.common.internal.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/p.class */
public class C2656p {

    /* renamed from: a */
    private static final C2645j f7413a = new C2645j("LibraryVersion", "");

    /* renamed from: b */
    private static C2656p f7414b = new C2656p();

    /* renamed from: c */
    private ConcurrentHashMap<String, String> f7415c = new ConcurrentHashMap<>();

    protected C2656p() {
    }

    /* renamed from: a */
    public static C2656p m13995a() {
        return f7414b;
    }

    /* renamed from: a */
    public String m13994a(String str) {
        String str2;
        C2662s.m13978a(str, (Object) "Please provide a valid libraryName");
        if (this.f7415c.containsKey(str)) {
            str2 = this.f7415c.get(str);
        } else {
            Properties properties = new Properties();
            String str3 = null;
            try {
                InputStream resourceAsStream = C2656p.class.getResourceAsStream(String.format("/%s.properties", str));
                if (resourceAsStream != null) {
                    properties.load(resourceAsStream);
                    String property = properties.getProperty("version", null);
                    f7413a.m14005b("LibraryVersion", new StringBuilder(String.valueOf(str).length() + 12 + String.valueOf(property).length()).append(str).append(" version is ").append(property).toString());
                    str3 = property;
                } else {
                    C2645j c2645j = f7413a;
                    String valueOf = String.valueOf(str);
                    c2645j.m14004c("LibraryVersion", valueOf.length() != 0 ? "Failed to get app version for libraryName: ".concat(valueOf) : new String("Failed to get app version for libraryName: "));
                    str3 = null;
                }
            } catch (IOException e) {
                C2645j c2645j2 = f7413a;
                String valueOf2 = String.valueOf(str);
                c2645j2.m14006a("LibraryVersion", valueOf2.length() != 0 ? "Failed to get app version for libraryName: ".concat(valueOf2) : new String("Failed to get app version for libraryName: "), e);
            }
            str2 = str3;
            if (str3 == null) {
                str2 = "UNKNOWN";
                f7413a.m14007a("LibraryVersion", ".properties file is dropped during release process. Failure to read app version isexpected druing Google internal testing where locally-built libraries are used");
            }
            this.f7415c.put(str, str2);
        }
        return str2;
    }
}
