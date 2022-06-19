package com.appsflyer.internal;

import android.util.Base64;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.appsflyer.internal.i */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/i.class */
public final class C3426i {

    /* renamed from: ǃ */
    private byte[] f12964;

    /* renamed from: ɩ */
    public String f12965;

    /* renamed from: Ι */
    public String f12966;

    /* renamed from: ι */
    public String f12967;

    C3426i() {
    }

    public C3426i(String str, byte[] bArr, String str2) {
        this.f12966 = str;
        this.f12964 = bArr;
        this.f12965 = str2;
    }

    public C3426i(char[] cArr) {
        Scanner scanner = new Scanner(new String(cArr));
        int i = 0;
        int i2 = 0;
        while (scanner.hasNextLine()) {
            String nextLine = scanner.nextLine();
            if (nextLine.startsWith("url=")) {
                this.f12966 = nextLine.substring(4).trim();
            } else if (nextLine.startsWith("version=")) {
                this.f12965 = nextLine.substring(8).trim();
                Matcher matcher = Pattern.compile("^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$").matcher(this.f12965);
                if (matcher.matches()) {
                    i = Integer.parseInt(matcher.group(1));
                    i2 = Integer.parseInt(matcher.group(2));
                }
            } else if (nextLine.startsWith("data=")) {
                String trim = nextLine.substring(5).trim();
                this.f12964 = (i > 4 || i2 >= 11) ? Base64.decode(trim, 2) : trim.getBytes();
            }
        }
        scanner.close();
    }

    /* renamed from: Ι */
    public final byte[] m37966() {
        return this.f12964;
    }
}
