package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzmh;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxz.class */
public final class dxz {

    /* renamed from: c */
    private static final eac f47990c = new dxy();

    /* renamed from: d */
    private static final Pattern f47991d = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f47992a = -1;

    /* renamed from: b */
    public int f47993b = -1;

    /* renamed from: a */
    private final boolean m15487a(String str, String str2) {
        if (!"iTunSMPB".equals(str)) {
            return false;
        }
        Matcher matcher = f47991d.matcher(str2);
        if (!matcher.find()) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1), 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.f47992a = parseInt;
            this.f47993b = parseInt2;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m15489a() {
        return (this.f47992a == -1 || this.f47993b == -1) ? false : true;
    }

    /* renamed from: a */
    public final boolean m15488a(zzmh zzmhVar) {
        for (int i = 0; i < zzmhVar.length(); i++) {
            zzmh.zza zzbb = zzmhVar.zzbb(i);
            if (zzbb instanceof zzmj) {
                zzmj zzmjVar = (zzmj) zzbb;
                if (m15487a(zzmjVar.description, zzmjVar.text)) {
                    return true;
                }
            }
        }
        return false;
    }
}
