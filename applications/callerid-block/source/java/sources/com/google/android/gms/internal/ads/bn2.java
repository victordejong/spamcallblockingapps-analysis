package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bn2.class */
public final class bn2 {

    /* renamed from: c */
    private static final Pattern f6180c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f6181a = -1;

    /* renamed from: b */
    public int f6182b = -1;

    /* renamed from: a */
    public final boolean m7945a(zzmz zzmzVar) {
        for (int i = 0; i < zzmzVar.m4473a(); i++) {
            zznd m4472b = zzmzVar.m4472b(i);
            if (m4472b instanceof zznd) {
                zznd zzndVar = m4472b;
                String str = zzndVar.d;
                String str2 = zzndVar.e;
                if (!"iTunSMPB".equals(str)) {
                    continue;
                } else {
                    Matcher matcher = f6180c.matcher(str2);
                    if (matcher.find()) {
                        try {
                            int parseInt = Integer.parseInt(matcher.group(1), 16);
                            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                            if (parseInt > 0 || parseInt2 > 0) {
                                this.f6181a = parseInt;
                                this.f6182b = parseInt2;
                                return true;
                            }
                        } catch (NumberFormatException e) {
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m7944b() {
        return (this.f6181a == -1 || this.f6182b == -1) ? false : true;
    }
}
