package com.google.api.client.a;

import com.google.common.base.m;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f31676a = Pattern.compile("-----BEGIN ([A-Z ]+)-----");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f31677b = Pattern.compile("-----END ([A-Z ]+)-----");

    /* renamed from: c  reason: collision with root package name */
    private BufferedReader f31678c;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/z$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f31679a;

        /* renamed from: b  reason: collision with root package name */
        private final String f31680b;

        a(String str, byte[] bArr) {
            this.f31680b = (String) m.a(str);
            this.f31679a = (byte[]) m.a(bArr);
        }
    }

    public z(Reader reader) {
        this.f31678c = new BufferedReader(reader);
    }

    public static a a(Reader reader, String str) throws IOException {
        z zVar = new z(reader);
        a aVar = null;
        StringBuilder sb = null;
        String str2 = null;
        while (true) {
            try {
                String readLine = zVar.f31678c.readLine();
                if (readLine == null) {
                    m.a(str2 == null, "missing end tag (%s)", str2);
                } else if (sb == null) {
                    Matcher matcher = f31676a.matcher(readLine);
                    if (matcher.matches()) {
                        String group = matcher.group(1);
                        if (group.equals(str)) {
                            sb = new StringBuilder();
                            str2 = group;
                        }
                    }
                } else {
                    Matcher matcher2 = f31677b.matcher(readLine);
                    if (matcher2.matches()) {
                        String group2 = matcher2.group(1);
                        m.a(group2.equals(str2), "end tag (%s) doesn't match begin tag (%s)", group2, str2);
                        aVar = new a(str2, d.a(sb.toString()));
                        break;
                    }
                    sb.append(readLine);
                }
            } finally {
                zVar.f31678c.close();
            }
        }
        return aVar;
    }
}
