package com.google.android.gms.common.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/LibraryVersion.class */
public class LibraryVersion {
    private static final GmsLogger zzel = new GmsLogger("LibraryVersion", "");
    private static LibraryVersion zzem = new LibraryVersion();
    private ConcurrentHashMap<String, String> zzen = new ConcurrentHashMap<>();

    protected LibraryVersion() {
    }

    public static LibraryVersion getInstance() {
        return zzem;
    }

    public String getVersion(String str) {
        Preconditions.checkNotEmpty(str, "Please provide a valid libraryName");
        if (this.zzen.containsKey(str)) {
            return this.zzen.get(str);
        }
        Properties properties = new Properties();
        String str2 = null;
        try {
            InputStream resourceAsStream = LibraryVersion.class.getResourceAsStream(String.format("/%s.properties", str));
            if (resourceAsStream != null) {
                properties.load(resourceAsStream);
                String property = properties.getProperty("version", null);
                GmsLogger gmsLogger = zzel;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12 + String.valueOf(property).length());
                sb.append(str);
                sb.append(" version is ");
                sb.append(property);
                gmsLogger.m3796v("LibraryVersion", sb.toString());
                str2 = property;
            } else {
                GmsLogger gmsLogger2 = zzel;
                String valueOf = String.valueOf(str);
                gmsLogger2.m3800e("LibraryVersion", valueOf.length() != 0 ? "Failed to get app version for libraryName: ".concat(valueOf) : new String("Failed to get app version for libraryName: "));
                str2 = null;
            }
        } catch (IOException e) {
            GmsLogger gmsLogger3 = zzel;
            String valueOf2 = String.valueOf(str);
            gmsLogger3.m3799e("LibraryVersion", valueOf2.length() != 0 ? "Failed to get app version for libraryName: ".concat(valueOf2) : new String("Failed to get app version for libraryName: "), e);
        }
        String str3 = str2;
        if (str2 == null) {
            zzel.m3802d("LibraryVersion", ".properties file is dropped during release process. Failure to read app version isexpected druing Google internal testing where locally-built libraries are used");
            str3 = "UNKNOWN";
        }
        this.zzen.put(str, str3);
        return str3;
    }
}
