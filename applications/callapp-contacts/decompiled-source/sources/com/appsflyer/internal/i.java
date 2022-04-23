package com.appsflyer.internal;

import android.util.Base64;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/i.class */
public final class i {

    /* renamed from: ǃ  reason: contains not printable characters */
    private byte[] f288;

    /* renamed from: ɩ  reason: contains not printable characters */
    public String f289;

    /* renamed from: Ι  reason: contains not printable characters */
    public String f290;

    /* renamed from: ι  reason: contains not printable characters */
    public String f291;

    i() {
    }

    public i(String str, byte[] bArr, String str2) {
        this.f290 = str;
        this.f288 = bArr;
        this.f289 = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(char[] cArr) {
        Scanner scanner = new Scanner(new String(cArr));
        int i = 0;
        int i2 = 0;
        while (scanner.hasNextLine()) {
            String nextLine = scanner.nextLine();
            if (nextLine.startsWith("url=")) {
                this.f290 = nextLine.substring(4).trim();
            } else if (nextLine.startsWith("version=")) {
                this.f289 = nextLine.substring(8).trim();
                Matcher matcher = Pattern.compile("^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$").matcher(this.f289);
                if (matcher.matches()) {
                    i = Integer.parseInt(matcher.group(1));
                    i2 = Integer.parseInt(matcher.group(2));
                }
            } else if (nextLine.startsWith("data=")) {
                String trim = nextLine.substring(5).trim();
                this.f288 = (i > 4 || i2 >= 11) ? Base64.decode(trim, 2) : trim.getBytes();
            }
        }
        scanner.close();
    }

    /* renamed from: Ι  reason: contains not printable characters */
    public final byte[] m1006() {
        return this.f288;
    }
}
