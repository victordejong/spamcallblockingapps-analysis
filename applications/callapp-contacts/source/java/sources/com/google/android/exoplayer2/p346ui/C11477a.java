package com.google.android.exoplayer2.p346ui;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p346ui.C11479c;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11620q;
import java.util.Locale;
/* renamed from: com.google.android.exoplayer2.ui.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/a.class */
public final class C11477a implements AbstractC11511i {

    /* renamed from: a */
    private final Resources f38166a;

    public C11477a(Resources resources) {
        this.f38166a = (Resources) C11593a.m20020b(resources);
    }

    /* renamed from: a */
    private String m20274a(String... strArr) {
        int length = strArr.length;
        String str = "";
        int i = 0;
        while (i < length) {
            String str2 = strArr[i];
            String str3 = str;
            if (str2.length() > 0) {
                str3 = TextUtils.isEmpty(str) ? str2 : this.f38166a.getString(C11479c.C11489j.exo_item_list, str, str2);
            }
            i++;
            str = str3;
        }
        return str;
    }

    /* renamed from: b */
    private String m20273b(Format format) {
        int i = format.bitrate;
        return i == -1 ? "" : this.f38166a.getString(C11479c.C11489j.exo_track_bitrate, Float.valueOf(i / 1000000.0f));
    }

    /* renamed from: c */
    private String m20272c(Format format) {
        String m20274a = m20274a(m20270e(format), m20269f(format));
        return TextUtils.isEmpty(m20274a) ? m20271d(format) : m20274a;
    }

    /* renamed from: d */
    private static String m20271d(Format format) {
        return TextUtils.isEmpty(format.label) ? "" : format.label;
    }

    /* renamed from: e */
    private static String m20270e(Format format) {
        String str = format.language;
        if (TextUtils.isEmpty(str) || "und".equals(str)) {
            return "";
        }
        return (C11599af.f38648a >= 21 ? Locale.forLanguageTag(str) : new Locale(str)).getDisplayName();
    }

    /* renamed from: f */
    private String m20269f(Format format) {
        String string = (format.roleFlags & 2) != 0 ? this.f38166a.getString(C11479c.C11489j.exo_track_role_alternate) : "";
        String str = string;
        if ((format.roleFlags & 4) != 0) {
            str = m20274a(string, this.f38166a.getString(C11479c.C11489j.exo_track_role_supplementary));
        }
        String str2 = str;
        if ((format.roleFlags & 8) != 0) {
            str2 = m20274a(str, this.f38166a.getString(C11479c.C11489j.exo_track_role_commentary));
        }
        String str3 = str2;
        if ((format.roleFlags & 1088) != 0) {
            str3 = m20274a(str2, this.f38166a.getString(C11479c.C11489j.exo_track_role_closed_captions));
        }
        return str3;
    }

    @Override // com.google.android.exoplayer2.p346ui.AbstractC11511i
    /* renamed from: a */
    public final String mo20227a(Format format) {
        String str;
        int m19845g = C11620q.m19845g(format.sampleMimeType);
        if (m19845g == -1) {
            if (C11620q.m19848d(format.codecs) == null) {
                if (C11620q.m19847e(format.codecs) == null) {
                    if (format.width == -1 && format.height == -1) {
                        if (format.channelCount == -1 && format.sampleRate == -1) {
                            m19845g = -1;
                        }
                    }
                }
                m19845g = 1;
            }
            m19845g = 2;
        }
        if (m19845g == 2) {
            String m20269f = m20269f(format);
            int i = format.width;
            int i2 = format.height;
            String str2 = "";
            if (i != -1) {
                str2 = i2 == -1 ? "" : this.f38166a.getString(C11479c.C11489j.exo_track_resolution, Integer.valueOf(i), Integer.valueOf(i2));
            }
            str = m20274a(m20269f, str2, m20273b(format));
        } else if (m19845g == 1) {
            String m20272c = m20272c(format);
            int i3 = format.channelCount;
            String str3 = "";
            if (i3 != -1) {
                str3 = i3 <= 0 ? "" : i3 != 1 ? i3 != 2 ? (i3 == 6 || i3 == 7) ? this.f38166a.getString(C11479c.C11489j.exo_track_surround_5_point_1) : i3 != 8 ? this.f38166a.getString(C11479c.C11489j.exo_track_surround) : this.f38166a.getString(C11479c.C11489j.exo_track_surround_7_point_1) : this.f38166a.getString(C11479c.C11489j.exo_track_stereo) : this.f38166a.getString(C11479c.C11489j.exo_track_mono);
            }
            str = m20274a(m20272c, str3, m20273b(format));
        } else {
            str = m20272c(format);
        }
        String str4 = str;
        if (str.length() == 0) {
            str4 = this.f38166a.getString(C11479c.C11489j.exo_track_unknown);
        }
        return str4;
    }
}
