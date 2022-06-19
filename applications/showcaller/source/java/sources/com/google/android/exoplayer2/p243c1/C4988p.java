package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.c1.p */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/p.class */
public final class C4988p {

    /* renamed from: a */
    private static final Pattern f15499a = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: b */
    public int f15500b = -1;

    /* renamed from: c */
    public int f15501c = -1;

    /* renamed from: b */
    private boolean m20974b(String str) {
        Matcher matcher = f15499a.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt(matcher.group(1), 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt <= 0 && parseInt2 <= 0) {
                    return false;
                }
                this.f15500b = parseInt;
                this.f15501c = parseInt2;
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: a */
    public boolean m20975a() {
        return (this.f15500b == -1 || this.f15501c == -1) ? false : true;
    }

    /* renamed from: c */
    public boolean m20973c(Metadata metadata) {
        for (int i = 0; i < metadata.m20392d(); i++) {
            Metadata.Entry m20393c = metadata.m20393c(i);
            if (m20393c instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) m20393c;
                if ("iTunSMPB".equals(commentFrame.f16148f) && m20974b(commentFrame.f16149g)) {
                    return true;
                }
            } else if (m20393c instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) m20393c;
                if ("com.apple.iTunes".equals(internalFrame.f16155e) && "iTunSMPB".equals(internalFrame.f16156f) && m20974b(internalFrame.f16157g)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    /* renamed from: d */
    public boolean m20972d(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        if (i2 > 0 || i3 > 0) {
            this.f15500b = i2;
            this.f15501c = i3;
            return true;
        }
        return false;
    }
}
