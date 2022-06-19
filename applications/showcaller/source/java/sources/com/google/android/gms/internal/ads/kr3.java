package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kr3.class */
public final class kr3 {

    /* renamed from: a */
    private static final Pattern f25306a = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: b */
    public int f25307b = -1;

    /* renamed from: c */
    public int f25308c = -1;

    /* renamed from: c */
    private final boolean m13831c(String str) {
        Matcher matcher = f25306a.matcher(str);
        if (matcher.find()) {
            try {
                String group = matcher.group(1);
                int i = C7101wa.f31475a;
                int parseInt = Integer.parseInt(group, 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt <= 0 && parseInt2 <= 0) {
                    return false;
                }
                this.f25307b = parseInt;
                this.f25308c = parseInt2;
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m13833a(zzaiv zzaivVar) {
        for (int i = 0; i < zzaivVar.m8118a(); i++) {
            zzaiu m8117b = zzaivVar.m8117b(i);
            if (m8117b instanceof zzajq) {
                zzajq zzajqVar = (zzajq) m8117b;
                if ("iTunSMPB".equals(zzajqVar.f33514f) && m13831c(zzajqVar.f33515g)) {
                    return true;
                }
            } else if (m8117b instanceof zzajz) {
                zzajz zzajzVar = (zzajz) m8117b;
                if ("com.apple.iTunes".equals(zzajzVar.f33521e) && "iTunSMPB".equals(zzajzVar.f33522f) && m13831c(zzajzVar.f33523g)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m13832b() {
        return (this.f25307b == -1 || this.f25308c == -1) ? false : true;
    }
}
