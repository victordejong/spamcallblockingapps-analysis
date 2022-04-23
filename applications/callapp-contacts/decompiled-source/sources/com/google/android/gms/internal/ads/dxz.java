package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzmh;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxz.class */
public final class dxz {

    /* renamed from: c  reason: collision with root package name */
    private static final eac f27386c = new dxy();

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f27387d = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a  reason: collision with root package name */
    public int f27388a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f27389b = -1;

    private final boolean a(String str, String str2) {
        if (!"iTunSMPB".equals(str)) {
            return false;
        }
        Matcher matcher = f27387d.matcher(str2);
        if (!matcher.find()) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1), 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.f27388a = parseInt;
            this.f27389b = parseInt2;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public final boolean a() {
        return (this.f27388a == -1 || this.f27389b == -1) ? false : true;
    }

    public final boolean a(zzmh zzmhVar) {
        for (int i = 0; i < zzmhVar.length(); i++) {
            zzmh.zza zzbb = zzmhVar.zzbb(i);
            if (zzbb instanceof zzmj) {
                zzmj zzmjVar = (zzmj) zzbb;
                if (a(zzmjVar.description, zzmjVar.text)) {
                    return true;
                }
            }
        }
        return false;
    }
}
