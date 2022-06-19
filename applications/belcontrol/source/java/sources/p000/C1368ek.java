package p000;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.CommentFrame;
import androidx.media2.exoplayer.external.metadata.id3.InternalFrame;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: ek */
/* loaded from: classes-dex2jar.jar:ek.class */
public final class C1368ek {

    /* renamed from: c */
    public static final Pattern f6355c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f6356a = -1;

    /* renamed from: b */
    public int f6357b = -1;

    /* renamed from: a */
    public boolean m2144a() {
        return (this.f6356a == -1 || this.f6357b == -1) ? false : true;
    }

    /* renamed from: b */
    public final boolean m2143b(String str) {
        Matcher matcher = f6355c.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt(matcher.group(1), 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt <= 0 && parseInt2 <= 0) {
                    return false;
                }
                this.f6356a = parseInt;
                this.f6357b = parseInt2;
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: c */
    public boolean m2142c(Metadata metadata) {
        for (int i = 0; i < metadata.m6443d(); i++) {
            CommentFrame m6444c = metadata.m6444c(i);
            if (m6444c instanceof CommentFrame) {
                CommentFrame commentFrame = m6444c;
                if ("iTunSMPB".equals(commentFrame.c) && m2143b(commentFrame.d)) {
                    return true;
                }
            } else if (m6444c instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) m6444c;
                if ("com.apple.iTunes".equals(internalFrame.b) && "iTunSMPB".equals(internalFrame.c) && m2143b(internalFrame.d)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    /* renamed from: d */
    public boolean m2141d(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        if (i2 > 0 || i3 > 0) {
            this.f6356a = i2;
            this.f6357b = i3;
            return true;
        }
        return false;
    }
}
