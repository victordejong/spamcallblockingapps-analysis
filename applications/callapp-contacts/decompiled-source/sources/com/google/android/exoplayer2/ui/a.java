package com.google.android.exoplayer2.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ui.c;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.q;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/a.class */
public final class a implements i {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f22029a;

    public a(Resources resources) {
        this.f22029a = (Resources) com.google.android.exoplayer2.util.a.b(resources);
    }

    private String a(String... strArr) {
        String str = "";
        for (String str2 : strArr) {
            str = str;
            if (str2.length() > 0) {
                str = TextUtils.isEmpty(str) ? str2 : this.f22029a.getString(c.j.exo_item_list, str, str2);
            }
        }
        return str;
    }

    private String b(Format format) {
        int i = format.bitrate;
        return i == -1 ? "" : this.f22029a.getString(c.j.exo_track_bitrate, Float.valueOf(i / 1000000.0f));
    }

    private String c(Format format) {
        String a2 = a(e(format), f(format));
        return TextUtils.isEmpty(a2) ? d(format) : a2;
    }

    private static String d(Format format) {
        return TextUtils.isEmpty(format.label) ? "" : format.label;
    }

    private static String e(Format format) {
        String str = format.language;
        if (TextUtils.isEmpty(str) || "und".equals(str)) {
            return "";
        }
        return (af.f22275a >= 21 ? Locale.forLanguageTag(str) : new Locale(str)).getDisplayName();
    }

    private String f(Format format) {
        String string = (format.roleFlags & 2) != 0 ? this.f22029a.getString(c.j.exo_track_role_alternate) : "";
        String str = string;
        if ((format.roleFlags & 4) != 0) {
            str = a(string, this.f22029a.getString(c.j.exo_track_role_supplementary));
        }
        String str2 = str;
        if ((format.roleFlags & 8) != 0) {
            str2 = a(str, this.f22029a.getString(c.j.exo_track_role_commentary));
        }
        String str3 = str2;
        if ((format.roleFlags & 1088) != 0) {
            str3 = a(str2, this.f22029a.getString(c.j.exo_track_role_closed_captions));
        }
        return str3;
    }

    @Override // com.google.android.exoplayer2.ui.i
    public final String a(Format format) {
        String str;
        int g = q.g(format.sampleMimeType);
        if (g == -1) {
            if (q.d(format.codecs) == null) {
                if (q.e(format.codecs) == null) {
                    if (format.width == -1 && format.height == -1) {
                        if (format.channelCount == -1 && format.sampleRate == -1) {
                            g = -1;
                        }
                    }
                }
                g = 1;
            }
            g = 2;
        }
        if (g == 2) {
            String f = f(format);
            int i = format.width;
            int i2 = format.height;
            String str2 = "";
            if (i != -1) {
                str2 = i2 == -1 ? "" : this.f22029a.getString(c.j.exo_track_resolution, Integer.valueOf(i), Integer.valueOf(i2));
            }
            str = a(f, str2, b(format));
        } else if (g == 1) {
            String c2 = c(format);
            int i3 = format.channelCount;
            String str3 = "";
            if (i3 != -1) {
                str3 = i3 <= 0 ? "" : i3 != 1 ? i3 != 2 ? (i3 == 6 || i3 == 7) ? this.f22029a.getString(c.j.exo_track_surround_5_point_1) : i3 != 8 ? this.f22029a.getString(c.j.exo_track_surround) : this.f22029a.getString(c.j.exo_track_surround_7_point_1) : this.f22029a.getString(c.j.exo_track_stereo) : this.f22029a.getString(c.j.exo_track_mono);
            }
            str = a(c2, str3, b(format));
        } else {
            str = c(format);
        }
        String str4 = str;
        if (str.length() == 0) {
            str4 = this.f22029a.getString(c.j.exo_track_unknown);
        }
        return str4;
    }
}
