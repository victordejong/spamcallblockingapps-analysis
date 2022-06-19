package p1727n3.p1874y.p1876b.p1877a.p1882q0;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.CommentFrame;
import androidx.media2.exoplayer.external.metadata.id3.InternalFrame;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: n3.y.b.a.q0.j */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/j.class */
public final class C27182j {

    /* renamed from: c */
    public static final Pattern f76037c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f76038a = -1;

    /* renamed from: b */
    public int f76039b = -1;

    /* renamed from: a */
    public boolean m747a() {
        return (this.f76038a == -1 || this.f76039b == -1) ? false : true;
    }

    /* renamed from: b */
    public final boolean m746b(String str) {
        Matcher matcher = f76037c.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt(matcher.group(1), 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt <= 0 && parseInt2 <= 0) {
                    return false;
                }
                this.f76038a = parseInt;
                this.f76039b = parseInt2;
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: c */
    public boolean m745c(Metadata metadata) {
        int i = 0;
        while (true) {
            CommentFrame[] commentFrameArr = metadata.f991a;
            if (i < commentFrameArr.length) {
                CommentFrame commentFrame = commentFrameArr[i];
                if (commentFrame instanceof CommentFrame) {
                    CommentFrame commentFrame2 = commentFrame;
                    if ("iTunSMPB".equals(commentFrame2.c) && m746b(commentFrame2.d)) {
                        return true;
                    }
                } else if (commentFrame instanceof InternalFrame) {
                    InternalFrame internalFrame = (InternalFrame) commentFrame;
                    if ("com.apple.iTunes".equals(internalFrame.b) && "iTunSMPB".equals(internalFrame.c) && m746b(internalFrame.d)) {
                        return true;
                    }
                } else {
                    continue;
                }
                i++;
            } else {
                return false;
            }
        }
    }
}
