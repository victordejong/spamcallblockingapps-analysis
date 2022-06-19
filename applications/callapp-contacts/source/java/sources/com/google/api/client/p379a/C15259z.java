package com.google.api.client.p379a;

import com.google.common.base.C15391m;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.api.client.a.z */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/z.class */
public final class C15259z {

    /* renamed from: a */
    private static final Pattern f55143a = Pattern.compile("-----BEGIN ([A-Z ]+)-----");

    /* renamed from: b */
    private static final Pattern f55144b = Pattern.compile("-----END ([A-Z ]+)-----");

    /* renamed from: c */
    private BufferedReader f55145c;

    /* renamed from: com.google.api.client.a.z$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/z$a.class */
    public static final class C15260a {

        /* renamed from: a */
        public final byte[] f55146a;

        /* renamed from: b */
        private final String f55147b;

        C15260a(String str, byte[] bArr) {
            this.f55147b = (String) C15391m.m8946a(str);
            this.f55146a = (byte[]) C15391m.m8946a(bArr);
        }
    }

    public C15259z(Reader reader) {
        this.f55145c = new BufferedReader(reader);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static C15260a m9202a(Reader reader, String str) throws IOException {
        C15260a c15260a;
        C15259z c15259z = new C15259z(reader);
        StringBuilder sb = null;
        String str2 = null;
        while (true) {
            try {
                String readLine = c15259z.f55145c.readLine();
                if (readLine == null) {
                    C15391m.m8936a(str2 == null, "missing end tag (%s)", str2);
                    c15260a = null;
                } else if (sb == null) {
                    Matcher matcher = f55143a.matcher(readLine);
                    if (matcher.matches()) {
                        String group = matcher.group(1);
                        if (group.equals(str)) {
                            sb = new StringBuilder();
                            str2 = group;
                        }
                    }
                } else {
                    Matcher matcher2 = f55144b.matcher(readLine);
                    if (matcher2.matches()) {
                        String group2 = matcher2.group(1);
                        C15391m.m8936a(group2.equals(str2), "end tag (%s) doesn't match begin tag (%s)", group2, str2);
                        c15260a = new C15260a(str2, C15223d.m9251a(sb.toString()));
                        break;
                    }
                    sb.append(readLine);
                }
            } catch (Throwable th) {
                c15259z.f55145c.close();
                throw th;
            }
        }
        c15259z.f55145c.close();
        return c15260a;
    }
}
