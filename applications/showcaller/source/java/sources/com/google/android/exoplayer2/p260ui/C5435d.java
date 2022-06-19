package com.google.android.exoplayer2.p260ui;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5529r;
import java.util.Locale;
/* renamed from: com.google.android.exoplayer2.ui.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/d.class */
public class C5435d implements AbstractC5446n {

    /* renamed from: a */
    private final Resources f17561a;

    public C5435d(Resources resources) {
        this.f17561a = (Resources) C5508e.m18911e(resources);
    }

    /* renamed from: b */
    private String m19109b(Format format) {
        int i = format.f14474y;
        return (i == -1 || i < 1) ? "" : i != 1 ? i != 2 ? (i == 6 || i == 7) ? this.f17561a.getString(C5441j.exo_track_surround_5_point_1) : i != 8 ? this.f17561a.getString(C5441j.exo_track_surround) : this.f17561a.getString(C5441j.exo_track_surround_7_point_1) : this.f17561a.getString(C5441j.exo_track_stereo) : this.f17561a.getString(C5441j.exo_track_mono);
    }

    /* renamed from: c */
    private String m19108c(Format format) {
        int i = format.f14457h;
        return i == -1 ? "" : this.f17561a.getString(C5441j.exo_track_bitrate, Float.valueOf(i / 1000000.0f));
    }

    /* renamed from: d */
    private String m19107d(Format format) {
        return TextUtils.isEmpty(format.f14454e) ? "" : format.f14454e;
    }

    /* renamed from: e */
    private String m19106e(Format format) {
        String m19101j = m19101j(m19105f(format), m19103h(format));
        String str = m19101j;
        if (TextUtils.isEmpty(m19101j)) {
            str = m19107d(format);
        }
        return str;
    }

    /* renamed from: f */
    private String m19105f(Format format) {
        String str = format.f14449D;
        if (TextUtils.isEmpty(str) || "und".equals(str)) {
            return "";
        }
        return (C5515h0.f17876a >= 21 ? Locale.forLanguageTag(str) : new Locale(str)).getDisplayName();
    }

    /* renamed from: g */
    private String m19104g(Format format) {
        int i = format.f14466q;
        int i2 = format.f14467r;
        return (i == -1 || i2 == -1) ? "" : this.f17561a.getString(C5441j.exo_track_resolution, Integer.valueOf(i), Integer.valueOf(i2));
    }

    /* renamed from: h */
    private String m19103h(Format format) {
        String string = (format.f14456g & 2) != 0 ? this.f17561a.getString(C5441j.exo_track_role_alternate) : "";
        String str = string;
        if ((format.f14456g & 4) != 0) {
            str = m19101j(string, this.f17561a.getString(C5441j.exo_track_role_supplementary));
        }
        String str2 = str;
        if ((format.f14456g & 8) != 0) {
            str2 = m19101j(str, this.f17561a.getString(C5441j.exo_track_role_commentary));
        }
        String str3 = str2;
        if ((format.f14456g & 1088) != 0) {
            str3 = m19101j(str2, this.f17561a.getString(C5441j.exo_track_role_closed_captions));
        }
        return str3;
    }

    /* renamed from: i */
    private static int m19102i(Format format) {
        int m18729h = C5529r.m18729h(format.f14461l);
        if (m18729h != -1) {
            return m18729h;
        }
        if (C5529r.m18726k(format.f14458i) != null) {
            return 2;
        }
        if (C5529r.m18735b(format.f14458i) != null) {
            return 1;
        }
        if (format.f14466q != -1 || format.f14467r != -1) {
            return 2;
        }
        return (format.f14474y == -1 && format.f14475z == -1) ? -1 : 1;
    }

    /* renamed from: j */
    private String m19101j(String... strArr) {
        int length = strArr.length;
        String str = "";
        int i = 0;
        while (i < length) {
            String str2 = strArr[i];
            String str3 = str;
            if (str2.length() > 0) {
                str3 = TextUtils.isEmpty(str) ? str2 : this.f17561a.getString(C5441j.exo_item_list, str, str2);
            }
            i++;
            str = str3;
        }
        return str;
    }

    @Override // com.google.android.exoplayer2.p260ui.AbstractC5446n
    /* renamed from: a */
    public String mo19089a(Format format) {
        int m19102i = m19102i(format);
        String m19101j = m19102i == 2 ? m19101j(m19103h(format), m19104g(format), m19108c(format)) : m19102i == 1 ? m19101j(m19106e(format), m19109b(format), m19108c(format)) : m19106e(format);
        String str = m19101j;
        if (m19101j.length() == 0) {
            str = this.f17561a.getString(C5441j.exo_track_unknown);
        }
        return str;
    }
}
