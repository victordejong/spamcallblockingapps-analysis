package p131c.p161d.p170b.p188c.p210w0;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: c.d.b.c.w0.k */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/k.class */
public final class C3046k {

    /* renamed from: c */
    public static final Pattern f10971c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f10972a = -1;

    /* renamed from: b */
    public int f10973b = -1;

    /* renamed from: a */
    public boolean m28045a() {
        return (this.f10972a == -1 || this.f10973b == -1) ? false : true;
    }

    /* renamed from: a */
    public boolean m28044a(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        if (i2 <= 0 && i3 <= 0) {
            return false;
        }
        this.f10972a = i2;
        this.f10973b = i3;
        return true;
    }

    /* renamed from: a */
    public boolean m28043a(Metadata metadata) {
        for (int i = 0; i < metadata.m18520a(); i++) {
            Metadata.Entry a = metadata.m18519a(i);
            if (a instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) a;
                if ("iTunSMPB".equals(commentFrame.f22177c) && m28042a(commentFrame.f22178d)) {
                    return true;
                }
            } else if (a instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) a;
                if ("com.apple.iTunes".equals(internalFrame.f22184b) && "iTunSMPB".equals(internalFrame.f22185c) && m28042a(internalFrame.f22186d)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m28042a(String str) {
        Matcher matcher = f10971c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1), 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.f10972a = parseInt;
            this.f10973b = parseInt2;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
