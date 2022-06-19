package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.ads.rd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rd.class */
public final class C6919rd {

    /* renamed from: a */
    public static final AbstractC7032uf f28854a = new C6882qd();

    /* renamed from: b */
    private static final Pattern f28855b = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: c */
    public int f28856c = -1;

    /* renamed from: d */
    public int f28857d = -1;

    /* renamed from: a */
    public final boolean m11609a(zzaru zzaruVar) {
        for (int i = 0; i < zzaruVar.m8097a(); i++) {
            zzart m8096b = zzaruVar.m8096b(i);
            if (m8096b instanceof zzary) {
                zzary zzaryVar = (zzary) m8096b;
                String str = zzaryVar.f33587f;
                String str2 = zzaryVar.f33588g;
                if (!"iTunSMPB".equals(str)) {
                    continue;
                } else {
                    Matcher matcher = f28855b.matcher(str2);
                    if (matcher.find()) {
                        try {
                            int parseInt = Integer.parseInt(matcher.group(1), 16);
                            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                            if (parseInt > 0 || parseInt2 > 0) {
                                this.f28856c = parseInt;
                                this.f28857d = parseInt2;
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
    public final boolean m11608b() {
        return (this.f28856c == -1 || this.f28857d == -1) ? false : true;
    }
}
